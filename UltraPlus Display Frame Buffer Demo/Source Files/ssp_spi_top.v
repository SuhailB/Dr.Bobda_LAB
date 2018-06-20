//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           ssp_spi_top.v
// Module:         ssp_spi_top 
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/04/01
// Content:        ssp spi reviver 
//  
//                 
// History:
// 2016-06-01:     Harvey Zhao        first edition.
//     
//=============================================================================

`timescale 1ns/100ps


module ssp_spi_top (
    clock,
    reset_n,
    o_miso,
    i_mosi,
    i_csn,
    i_sclk,
    o_bus_wdata,
    spram_wren,
    o_bus_addr,
    spi_rdata,
    rmi_control,  
    rmi_control_buffer_len_l, 
    rmi_control_buffer_len_h 
);

input              clock;
input              reset_n;
output             o_miso;
input              i_mosi;
input              i_csn;
input              i_sclk;
output    [7:0]    rmi_control;  
output    [7:0]    rmi_control_buffer_len_l; 
output    [7:0]    rmi_control_buffer_len_h;
output    [7:0]    o_bus_wdata;
output             spram_wren ;
output    [15:0]   o_bus_addr;
input     [7:0]    spi_rdata;

//parameter definiton
parameter    RMI_CONTROL   = 16'h7fff;
parameter    BUFFER_LEN_L  = 16'h8000;
parameter    BUFFER_LEN_H  = 16'h8001;


//External spi write spram  Receive Data form spi 
wire           o_bus_stb ;
wire   [15:0]  o_bus_addr;
wire           o_bus_wr;
wire   [7:0]   i_bus_rdata;
reg            o_bus_stb_d;
reg            ack;

// rmi control register bit discription
//  bit            0                   1             2              3                 4                 5 
// function   rmi read/write    write SPRAM0   write SPRAM1    write SPRAM2     default color bar    xxxx  
// default         0                   1             0              0                 1                   0

reg   [7:0]     rmi_control;  //0x7fff
reg   [7:0]     rmi_control_buffer_len_l; //0x8000
reg   [7:0]     rmi_control_buffer_len_h; //0x8001
reg   [7:0]     rdata;
reg    [7:0]    spi_rdata_o;
reg             ack_o;
wire            wr_control_buffer_len_l;
wire            wr_control;
wire            wr_control_buffer_len_h;
wire            spram_wren ;
wire            pre_end;

// Use RMI Write control regsiter 
assign  spram_wren               = (o_bus_stb & ~o_bus_stb_d & o_bus_wr & (~wr_control) & (~wr_control_buffer_len_l) & (~wr_control_buffer_len_h));
assign  wr_control               = o_bus_stb && (o_bus_addr  == RMI_CONTROL ) && o_bus_wr;
assign  wr_control_buffer_len_l  = o_bus_stb && (o_bus_addr  == BUFFER_LEN_L) && o_bus_wr;
assign  wr_control_buffer_len_h  = o_bus_stb && (o_bus_addr  == BUFFER_LEN_H) && o_bus_wr;

//Generate  stb and ack signals
always @( posedge clock or  negedge  reset_n )       
begin
   if(~reset_n)
      o_bus_stb_d  <= 0;
   else 
      o_bus_stb_d  <= o_bus_stb;
end

always @( posedge clock or  negedge  reset_n )       
begin
   if(~reset_n)
      ack <= 0 ;
   else
      ack <= ~o_bus_stb_d  & o_bus_stb;
end

always @( posedge clock or  negedge  reset_n )       
begin       
   if(~reset_n)
   begin
      rmi_control <= 8'b0001_0010;
   end
   else 
   begin
      if (wr_control) 
         rmi_control <= o_bus_wdata;
   end
end

always @( posedge clock or  negedge  reset_n )       
begin       
   if(~reset_n)
   begin
      rmi_control_buffer_len_l <= 8'h00;
   end
   else 
   begin
      if (wr_control_buffer_len_l) 
         rmi_control_buffer_len_l <= o_bus_wdata;
   end
end

always @( posedge clock or  negedge  reset_n )       
begin       
   if(~reset_n)
   begin
      rmi_control_buffer_len_h <= 8'h00;
   end
   else 
   begin
      if (wr_control_buffer_len_h) 
         rmi_control_buffer_len_h <= o_bus_wdata;
   end
end
 
// use case instead of if/else  
always @( posedge clock or  negedge  reset_n )       
begin 
 if(~reset_n)
  begin
     rdata <= 0;
  end
  else if(o_bus_stb)
  begin
     case(o_bus_addr) 
        RMI_CONTROL  : begin   rdata <= rmi_control; end
        BUFFER_LEN_L : begin   rdata <= rmi_control_buffer_len_l; end
        BUFFER_LEN_H : begin   rdata <= rmi_control_buffer_len_h; end
        default      : begin   rdata <= 8'd0; end
     endcase
  end
end

always @( posedge clock or  negedge  reset_n )       
begin
   if(~reset_n)
   begin
     spi_rdata_o <= 0;
     ack_o       <= 0;
   end
   else 
   begin
     spi_rdata_o <= (o_bus_addr >= RMI_CONTROL) ? rdata : spi_rdata;
     ack_o       <= ack;
   end
end

rmi_spi_slave                 inst_rmi_spi_slave    (
   .mosi                      (i_mosi                ),
   .ss_n                      (i_csn                 ),
   .sclk                      (i_sclk                ),
   .miso                      (o_miso                ),
   .lb_clk                    (clock                 ),
   .lb_rst                    (~reset_n              ),
   .lb_stb                    (o_bus_stb             ),
   .lb_wren                   (o_bus_wr              ),
   .lb_addr                   (o_bus_addr            ),
   .lb_wdata                  (o_bus_wdata           ),
   .lb_rtxc                   (                      ),
   .lb_rdata                  (spi_rdata_o           ),
   .lb_ack                    (ack_o                 )
);
endmodule 
