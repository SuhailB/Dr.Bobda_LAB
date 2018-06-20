//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved.  
//=============================================================================
// File:           rmi_spi_slave_phy.v
// Module:         rmi_spi_slave_phy
// Author:         Leo 
// Creation Date:  2014/11/10
//                
// History:
//     2014/00/10     Leo      Creation.
//      
//=============================================================================

module rmi_spi_slave_phy (
    o_miso,
    o_miso_oe,
    i_mosi,
    i_csn,
    i_sclk,
    
    spi_clk,
    spi_rst,
    spi_tx_en,
    spi_tx_data,
    spi_tx_rdy,
    spi_rx_vld,
    spi_rx_data
);

//=============================================================================
// Local parameter.
//=============================================================================
localparam SDBRE = 1'b0;   // 1MHz
localparam CPOL  = 1'b0;   // CPOL is 0
localparam CPHA  = 1'b0;   // CPHA is 0
localparam LSBF  = 1'b0;   // MSB first

//=============================================================================
// Input & output.
//=============================================================================
output         o_miso;
output         o_miso_oe;
input          i_mosi;
input          i_csn;
input          i_sclk;
    

input          spi_clk;
input          spi_rst;
input          spi_tx_en;
input  [7:0]   spi_tx_data;
output         spi_tx_rdy;
output         spi_rx_vld;
output [7:0]   spi_rx_data;

//=============================================================================
// Wire & reg.
//=============================================================================
reg  [7:0]     rx_data_int = 8'd0; 
reg  [8:0]     tx_data_int = 9'd0; 
reg  [7:0]     tx_data_sys; 
reg  [2:0]     sclk_cnt;
reg  [2:0]     sclk_cnt_d;

reg  [1:0]     spi_cnt;

reg  [7:0]     spi_rx_data = 8'd0;
wire           spi_ack;
wire           o_miso;
wire           o_miso_oe;

wire           tx_update;   
reg            tx_rdy_p;
reg            spi_tx_rdy;
reg  [7:0]     spi_tx_data_d; 

reg            rx_vld_p;
reg            rx_vld_d1;
reg            rx_vld_d2;
reg            rx_vld;

//=============================================================================
// sclk sample counter.
//=============================================================================
always @ (posedge i_sclk or posedge i_csn) begin
    if (i_csn) begin
        sclk_cnt  <= 3'b000;
        sclk_cnt_d<= 3'b000;
    end
    else begin
        sclk_cnt  <= sclk_cnt + 1;
        sclk_cnt_d<= sclk_cnt;
    end
end


//=============================================================================
// SPI transmit logic
//=============================================================================
// TX shift
assign tx_update = (sclk_cnt_d==6);
always @ (negedge i_sclk or posedge i_csn) begin
    if (i_csn) begin
        tx_data_int <= 9'b000000000;
    end else if (tx_update) begin
        tx_data_int <= {tx_data_int[7], tx_data_sys};
    end else begin
        tx_data_int <= {tx_data_int[7:0], 1'b0};
    end
end
assign o_miso = tx_data_int[8];
// TX buffer in sclk domain
always @ (negedge i_sclk or posedge i_csn) begin
    if (i_csn) begin
        tx_data_sys <= 8'b00000000;
    end else begin
        tx_data_sys <= spi_tx_data_d;
    end
end

// TX buffer in system clock domain
always @ (posedge spi_clk or posedge spi_rst) begin
    if (spi_rst) begin
        spi_tx_data_d <= 8'b00000000;
    end else if(spi_tx_en) begin
        spi_tx_data_d <= spi_tx_data;
    end
end

// TX ready
always @ (posedge i_sclk or posedge spi_tx_en) begin
    if (spi_tx_en) begin
        tx_rdy_p <= 1'b0;
     end else if(sclk_cnt==0) begin
        tx_rdy_p <= 1'b1;
     end else if(sclk_cnt==6) begin
        tx_rdy_p <= 1'b0;
     end
end
// TX ready to system clock domain
always @ (posedge spi_clk or posedge spi_rst) begin
    if (spi_rst) begin
        spi_tx_rdy <= 1'b0;
    end else if(spi_tx_en) begin
        spi_tx_rdy <= 1'b0;
    end else begin
        spi_tx_rdy <= tx_rdy_p;
    end
end

//=============================================================================
// SPI receiver logic
//=============================================================================
// Sample shift
always @ (posedge i_sclk) begin
    if (i_csn == 1'b0) begin
        rx_data_int <= {rx_data_int[6:0], i_mosi};
    end
end
// Receive byte buffer
always @ (posedge i_sclk) begin
    if(sclk_cnt==7) begin
        spi_rx_data <= {rx_data_int[6:0], i_mosi};
    end
end

// Receive valid flag
always @ (posedge i_sclk or posedge i_csn) begin
    if (i_csn) begin
        rx_vld_p <= 1'b0;
    end else if(sclk_cnt==7) begin
        rx_vld_p <= 1'b1;
    end else begin
        rx_vld_p <= 1'b0;
    end
end
// clock domain switch
always @ (posedge spi_clk or posedge spi_rst) begin
    if (spi_rst) begin
        rx_vld_d1 <= 1'b0;
        rx_vld_d2 <= 1'b0;
        rx_vld    <= 1'b1;
    end else begin
        rx_vld_d1 <= rx_vld_p;
        rx_vld_d2 <= rx_vld_d1;
        rx_vld    <= (rx_vld_d2==1'b0 && rx_vld_d1==1'b1);
    end
end
assign spi_rx_vld = rx_vld;

endmodule
