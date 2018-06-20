//   ==================================================================
//   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
//   ------------------------------------------------------------------
//   Copyright (c) 2013 by Lattice Semiconductor Corporation
//   ALL RIGHTS RESERVED 
//   ------------------------------------------------------------------
//
//   Permission:
//
//      Lattice SG Pte. Ltd. grants permission to use this code
//      pursuant to the terms of the Lattice Reference Design License Agreement. 
//
//
//   Disclaimer:
//
//      This VHDL or Verilog source code is intended as a design reference
//      which illustrates how these types of functions can be implemented.
//      It is the user's responsibility to verify their design for
//      consistency and functionality through the use of formal
//      verification methods.  Lattice provides no warranty
//      regarding the use or functionality of this code.
//
//   --------------------------------------------------------------------
//
//                  Lattice SG Pte. Ltd.
//                  101 Thomson Road, United Square #07-02 
//                  Singapore 307591
//
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                       +65-6631-2000 (Singapore)
//                       +1-503-268-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
//   --------------------------------------------------------------------
// 
//  Project  : BC design
//  File Name: spi_slave.v
// 
//  Description: This module instantiates an Hard SPI core as slave
//
//  Code Revision History :
//-------------------------------------------------------------------------
// Ver: | Author        | Mod. Date    |Changes Made:
// V1.0 | LSH SS        | 06-Nov-14    |Initial version   
// V1.1 | LSH SS        | 11-Nov-15    |Change lb_addr as burst increasement 
//-------------------------------------------------------------------------

module	rmi_spi_slave	(
input             mosi,
input             ss_n,
input             sclk,
output            miso,

input             lb_clk,
input             lb_rst,
output reg        lb_stb,
output reg        lb_wren,
output reg [15:0] lb_addr,
output reg [7:0]  lb_wdata,
output            lb_rtxc,
input      [7:0]  lb_rdata,
input             lb_ack
);
//=============================================================================
// Local parameter.
//=============================================================================
localparam SDBRE        = 1'b0;   // 1MHz
localparam CPOL         = 1'b0;   // CPOL is 0
localparam CPHA         = 1'b0;   // CPHA is 0
localparam LSBF         = 1'b0;   // MSB first

localparam SPI_OP_WR    = 2'b00;
localparam SPI_OP_RD    = 2'b01;
localparam SPI_OP_FB_WR = 2'b10;
localparam SPI_OP_FB_RD = 2'b11;

localparam IDLE         = 0,
           HADDR        = 1,
           LADDR        = 2,
           CMD          = 3,
           RDATA        = 4,
           PADDING      = 5,
           TDATA        = 6,
           END          = 7;

//=============================================================================
// Wire & reg.
//=============================================================================

reg  [2:0]        main_fsm;
wire [7:0]        spi_tx_data;
wire [7:0]        spi_rx_data;
wire              spi_tx_en;
reg               spi_tx_en_keep;
wire              spi_tx_addr_en;
wire              spi_rx_addr_en;//write data address  add enable
wire              spi_tx_rdy;
wire              spi_rx_vld;
reg  [7:0]        lb_addr_h;
reg  [7:0]        lb_addr_l;
reg  [7:0]        spi_cmd;
wire              spi_cmd_read;
wire              spi_cmd_write;
wire              spi_cmd_fb_read;
wire              spi_cmd_fb_write;
reg               spi_rx_vld_d;

reg               ss_n_d1;
reg               ss_n_d2;
wire              ss_n_sw;
reg               spi_tx_rdy_d1;
reg               spi_tx_rdy_d2;
wire              spi_tx_rdy_pos;

reg  [7:0]        lb_addr_l_last;
reg  [7:0]        spi_cmd_last;
reg               fa_continue;
reg               fake_ack;

//=============================================================================
// check ss_n falling edge
//=============================================================================
always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      ss_n_d1 <= 1'b1;
      ss_n_d2 <= 1'b1;
   end else begin
      ss_n_d1 <= ss_n;
      ss_n_d2 <= ss_n_d1;
   end
end
assign ss_n_sw = (ss_n_d2==1'b0 && ss_n_d1==1'b1);

always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      spi_tx_rdy_d1 <= 1'b0;
      spi_tx_rdy_d2 <= 1'b0;
   end else begin
      spi_tx_rdy_d1 <= spi_tx_rdy;
      spi_tx_rdy_d2 <= spi_tx_rdy_d1;
   end
end
assign spi_tx_rdy_pos = (spi_tx_rdy_d1==1'b1 && spi_tx_rdy_d2==1'b0);
assign spi_tx_en      = (lb_ack && lb_wren==1'b0) || fake_ack;
assign spi_tx_addr_en = (lb_ack && lb_wren==1'b0) ; //Read data address increas
assign spi_rx_addr_en = (lb_ack && lb_wren==1'b1) ; //Write data address increas//RX Data from SPI Master and transfer to Locoal Bus 
assign spi_tx_data    = lb_rdata;

//=============================================================================
// Address  increase change by harvey zhao 
//=============================================================================
//assign lb_addr = {lb_addr_h,lb_addr_l};

always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      lb_addr <= {lb_addr_h,lb_addr_l};
   end else if(spi_rx_vld && main_fsm==HADDR) begin
      lb_addr <= {spi_rx_data,lb_addr[7:0]};
   end else if(spi_rx_vld && main_fsm==LADDR) begin
      lb_addr <= {lb_addr[15:8],spi_rx_data};
   end else if((spi_tx_addr_en || spi_rx_addr_en) && (spi_cmd_write || spi_cmd_read)) begin
      lb_addr <= lb_addr  + 1'b1; 
   end
end

/*
always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) 
         spi_rx_addr_en <= 1'b0;
    else if (lb_ack)
         spi_rx_addr_en <= 1'b1;
    else if ( spi_rx_addr_en) 
         spi_rx_addr_en <= 1'b0;
 end
 */
//=============================================================================
// Wrapper FSM
//=============================================================================
always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      main_fsm <= IDLE;
   end else begin
      if(ss_n_sw) begin
         main_fsm <= IDLE;
      end else if(~ss_n_d2) begin
         case(main_fsm)
            IDLE :   begin
                     main_fsm <= HADDR;
            end
            HADDR :  begin
                     if(spi_rx_vld_d) begin
                        main_fsm <= LADDR;
                     end
            end
            LADDR :  begin
                     if(spi_rx_vld_d) begin
                        main_fsm <= CMD;
                     end
            end
            CMD :    begin
                     if(spi_rx_vld_d) begin
                        if(spi_cmd_write || spi_cmd_fb_write) begin
                           main_fsm <= RDATA;
                        end else if(spi_cmd_read || spi_cmd_fb_read) begin
                           main_fsm <= PADDING;
                        end
                     end
            end
            PADDING :begin
                     if(spi_tx_en) begin
                        main_fsm <= TDATA;
                     end
            end
            TDATA :  begin
                     if(spi_tx_en) begin
                        main_fsm <= TDATA;
                     end
            end
            RDATA :  begin
                     if(spi_rx_vld_d) begin
                        main_fsm <= RDATA;
                     end
            end
            default: begin
                     main_fsm <= IDLE;
            end
         endcase
      end
   end
end
always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      spi_cmd   <= 8'h01;
   end else if(spi_rx_vld && main_fsm==CMD) begin
      spi_cmd   <= spi_rx_data;
   end
end
always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      spi_rx_vld_d   <= 1'b0;
   end else begin
      spi_rx_vld_d   <= spi_rx_vld;
   end
end
assign spi_cmd_write    = (spi_cmd[1:0]==SPI_OP_WR);
assign spi_cmd_read     = (spi_cmd[1:0]==SPI_OP_RD);
assign spi_cmd_fb_write = (spi_cmd[1:0]==SPI_OP_FB_WR);
assign spi_cmd_fb_read  = (spi_cmd[1:0]==SPI_OP_FB_RD);

//=============================================================================
// Local bus operation generation
//=============================================================================
always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      lb_addr_h <= 8'hFF;
      lb_addr_l <= 8'hFF;
      lb_wdata  <= 8'h00;
      lb_wren   <= 1'b0;
      lb_stb    <= 1'b0;
   end else begin
      if(spi_rx_vld && main_fsm==HADDR) begin
         lb_addr_h <= spi_rx_data;
      end
      if(spi_rx_vld && main_fsm==LADDR) begin
         lb_addr_l <= spi_rx_data;
      end
      if(spi_rx_vld_d && main_fsm==RDATA) begin
         lb_wdata  <= spi_rx_data;
      end

      if(lb_ack) begin
         lb_wren   <= 1'b0;
      end else if(spi_rx_vld_d && main_fsm==RDATA) begin
         lb_wren   <= 1'b1; //Write enable data 
      end
      if(lb_ack) begin
         lb_stb    <= 1'b0;
      end else if(spi_rx_vld_d && main_fsm==RDATA) begin
         lb_stb    <= 1'b1;
      end else if(spi_tx_rdy_pos && ((main_fsm==PADDING && (~fa_continue)) || main_fsm==TDATA)) begin
         lb_stb    <= 1'b1;
      end
   end
end

always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      fa_continue <= 1'b0;
   end else begin
      fa_continue <= ((lb_addr_l == lb_addr_l_last) && (spi_cmd==SPI_OP_FB_RD) && (spi_cmd_last==SPI_OP_FB_RD));
   end
end

always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      fake_ack <= 1'b0;
   end else begin
      fake_ack <= (spi_tx_rdy_pos && (main_fsm==PADDING && fa_continue));
   end
end

always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      lb_addr_l_last <= 8'hFF;
      spi_cmd_last   <= 8'hFF;
   end else if(lb_ack) begin
      lb_addr_l_last <= lb_addr_l;
      spi_cmd_last   <= spi_cmd;
   end
end

always @(posedge lb_clk or posedge lb_rst) begin
   if(lb_rst) begin
      spi_tx_en_keep <= 1'b0;
   end else if(spi_tx_en) begin
      spi_tx_en_keep <= 1'b1;
   end else if(spi_tx_rdy || ss_n_d2) begin
      spi_tx_en_keep <= 1'b0;
   end
end
assign lb_rtxc = spi_tx_en_keep && spi_tx_rdy;

//=============================================================================
// SPI phy inst
//=============================================================================
rmi_spi_slave_phy spi_phy(
    .o_miso       (miso       ),
    .o_miso_oe    (miso_oe    ),
    .i_mosi       (mosi       ),
    .i_csn        (ss_n       ),
    .i_sclk       (sclk       ),    

    .spi_clk      (lb_clk     ),
    .spi_rst      (lb_rst     ),
    .spi_tx_en    (spi_tx_en  ),
    .spi_tx_data  (spi_tx_data),
    .spi_tx_rdy   (spi_tx_rdy ),
    .spi_rx_data  (spi_rx_data),
    .spi_rx_vld   (spi_rx_vld ));

endmodule
