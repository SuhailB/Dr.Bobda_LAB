//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           rate_match_s1.v
// Module:         rate_match_s1
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Content:        rate match and data buffering between pixels data from display processor and DCT compress module
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
//     
//=============================================================================

module rate_match_s1 (
    clock,
    reset_n,
    // compress
    compress_start,
    compress_on,
    Y_data,
    C_data,
    YC_enable,
    YC_sof,
    // decompress 
    decompress_start,
    dec_data_fifo_ready,
    dec_data,
    dec_data_en,
    dec_data_index,
    last_dec_blk,
    // output
    rm_rdata,
    rm_rdata_idx,
    rm_rdata_en
);

parameter   D_WIDTH = 13;
/* interface declaration */

input                                   clock;
input                                   reset_n;

input   [7:0]                           Y_data;
input   [7:0]                           C_data;
input                                   YC_enable;
input                                   YC_sof;

input                                   compress_on;
input                                   compress_start;
input                                   decompress_start;

output                                  dec_data_fifo_ready;
input   [12:0]                          dec_data;
input                                   dec_data_en;
input   [5:0]                           dec_data_index;
output                                  last_dec_blk;

output  [D_WIDTH-1:0]                   rm_rdata;
output  [6:0]                           rm_rdata_idx;
output                                  rm_rdata_en;
/* wire-type signals definition */

wire    [7:0]                           ram_wr_addr;       /* synthesis syn_keep=1 */
wire                                    last_wr_data;
wire    [15:0]                          ram_rd_data;       /* synthesis syn_keep=1 */

/* reg-type signals definition */

reg                                     ram_wr_en;         /* synthesis syn_keep=1 */
reg     [15:0]                          ram_wr_data;       /* synthesis syn_keep=1 */
reg     [7:0]                           ram_rd_addr;       /* synthesis syn_keep=1 */
reg                                     ram_wr_addr_msb;

reg     [7:0]                           counter_waddr;
reg     [10:0]                          counter_raddr;
reg     [2:0]                           counter_raddr_dct;
reg     [2:0]                           counter_raddr_dct2;

reg                                     ram_rd_en;

reg                                     block_pair_idx;

reg                                     YCbCr_switch;
reg                                     rm_rdata_en;
reg     [6:0]                           rm_rdata_idx;
reg     [D_WIDTH-1:0]                   rm_rdata;

reg     [5:0]                           dec_data_index_1d;
reg                                     dec_data_ram1_busy;
reg                                     dec_data_ram2_busy;
reg     [9:0]                           cntr_idct_rate_ctrl;
reg                                     dec_data_idct_on;
reg                                     dec_data_idct_wait;
reg     [10:0]                          cntr_idct_blk;
reg                                     last_dec_blk;
// --------------------------------------------------------------------------------------



// --------------------------------------------
//
// write control
//
// --------------------------------------------

// write fifo backpressureram_rd_en


always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_data_ram1_busy <= 1'b0;
    end
    else if (ram_wr_addr_msb && ~ram_wr_addr[7] && ~ram_rd_addr[7]) begin
        dec_data_ram1_busy <= 1'b1;
    end
    else if (dec_data_ram1_busy && ram_rd_en && ram_rd_addr[7]) begin
        dec_data_ram1_busy <= 1'b0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_data_ram2_busy <= 1'b0;
    end
    else if (~ram_wr_addr_msb && ram_wr_addr[7] && ram_rd_addr[7]) begin
        dec_data_ram2_busy <= 1'b1;
    end
    else if (dec_data_ram2_busy && ram_rd_en && ~ram_rd_addr[7]) begin
        dec_data_ram2_busy <= 1'b0;
    end
end

assign dec_data_fifo_ready = ~(dec_data_ram1_busy | dec_data_ram2_busy);

always @ (posedge clock) begin
    if ((compress_on && YC_sof) || decompress_start) begin
        counter_waddr <= 8'd0;
    end
    else if (ram_wr_en) begin
        counter_waddr <= counter_waddr + 1;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        ram_wr_data <= 16'd0;
    end
    else begin
        if (compress_on && YC_enable) begin
            ram_wr_data <= {Y_data,C_data};
        end
        else begin
            ram_wr_data <= {3'd0,dec_data};
        end
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_data_index_1d <= 6'd0;
    end
    else if (dec_data_en) begin
        dec_data_index_1d <= dec_data_index;
    end
end


always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        ram_wr_en <= 1'b0;
    end
    else if (compress_on) begin
        ram_wr_en <= YC_enable;
    end
    else begin
        ram_wr_en <= dec_data_en;
    end
end

assign ram_wr_addr = compress_on ? counter_waddr : {counter_waddr[7:6],dec_data_index_1d};

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        ram_wr_addr_msb <= 1'b0;
    end
    else begin
        ram_wr_addr_msb <= ram_wr_addr[7];
    end
end

// --------------------------------------------
//
// RAM instance
//
// --------------------------------------------

RAM_PDP_256x16 RM_BUFF_256x16 (
    .din             (ram_wr_data   ), 
    .write_en        (ram_wr_en     ), 
    .waddr           (ram_wr_addr   ), 
    .wclk            (clock       ), 
    .raddr           (ram_rd_addr   ), 
    .rclk            (clock       ), 
    .dout            (ram_rd_data   ) 
);

// --------------------------------------------
//
// read control
//
// --------------------------------------------

assign last_wr_data = (counter_waddr[6:0] == 7'h7F) & (ram_wr_en == 1'b1);



always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_data_idct_wait <= 1'b0;
    end
    else if (decompress_start) begin
        dec_data_idct_wait <= 1'b1;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_data_idct_on <= 1'b0;
    end
    else if (decompress_start) begin
        dec_data_idct_on <= 1'b0;
    end
    else if (dec_data_idct_wait && (counter_waddr[6:0] == 7'h7F) & (ram_wr_en == 1'b1)) begin
        dec_data_idct_on <= 1'b1;
    end
    //else if (dec_data_idct_on && cntr_idct_rate_ctrl == 10'd521 && cntr_idct_blk == 11'd1599) begin
    else if (dec_data_idct_on && cntr_idct_rate_ctrl == 10'd521 && cntr_idct_blk == 11'd899) begin
        dec_data_idct_on <= 1'b0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        last_dec_blk <= 1'b0;
    end
    else if (decompress_start) begin
        last_dec_blk <= 1'b0;
    end
    //else if (dec_data_idct_on && cntr_idct_rate_ctrl == 10'd521 && cntr_idct_blk == 11'd1599) begin
    else if (dec_data_idct_on && cntr_idct_rate_ctrl == 10'd521 && cntr_idct_blk == 11'd899) begin
        last_dec_blk <= 1'b1;
    end
end

always @ (posedge clock) begin
    if (decompress_start) begin
        cntr_idct_rate_ctrl <= 10'd0;
    end
    else if (dec_data_idct_on) begin
        if (cntr_idct_rate_ctrl != 10'd521) begin
            cntr_idct_rate_ctrl <= cntr_idct_rate_ctrl + 1;
        end
        else begin
            cntr_idct_rate_ctrl <= 10'd0;
        end
    end
end

always @ (posedge clock) begin
    if (decompress_start) begin
        cntr_idct_blk <= 11'd0;
    end
    else if (dec_data_idct_on && cntr_idct_rate_ctrl == 10'd521) begin
        cntr_idct_blk <= cntr_idct_blk + 1;
    end
end


always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        block_pair_idx <= 1'b0;
    end
    else if (compress_on) begin
        if (last_wr_data) begin
            block_pair_idx <= counter_waddr[7];
        end
    end
    else begin
        if (decompress_start) begin
            block_pair_idx <= 1'b0;
        end
        else if (ram_rd_en && (counter_raddr == 10'd511)) begin
            block_pair_idx <= ~block_pair_idx;
        end
    end
end

// kick off 128-point continuous block read upon rising edge of read request
always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        ram_rd_en <= 1'b0;
    end
    else if (compress_on) begin
        if (last_wr_data) begin
            ram_rd_en <= 1'b1;
        end
        else if (counter_raddr == 10'h3FF) begin
            ram_rd_en <= 1'b0;
        end
    end
    else if (dec_data_idct_on) begin
        if (cntr_idct_rate_ctrl == 10'd0) begin
            ram_rd_en <= 1'b1;
        end
        else if (ram_rd_en && (counter_raddr == 10'd511)) begin
            ram_rd_en <= 1'b0;
        end
    end
end

// 2bits (2Y+Cb+Cr), 1bit (Read Gap), 6bits (8x8), 1bit (one data per 2 cycles)
always @ (posedge clock) begin
    if (~ram_rd_en) begin
        counter_raddr <= 10'd0;
    end
    else begin
        counter_raddr <= counter_raddr + 1;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        YCbCr_switch <= 1'b0;
    end
    else begin
        YCbCr_switch <= counter_raddr[9];
    end
end

always @* begin
    case (counter_raddr[3:1])
        3'd0: counter_raddr_dct = 3'd0;
        3'd1: counter_raddr_dct = 3'd7;
        3'd2: counter_raddr_dct = 3'd1;
        3'd3: counter_raddr_dct = 3'd6;
        3'd4: counter_raddr_dct = 3'd2;
        3'd5: counter_raddr_dct = 3'd5;
        3'd6: counter_raddr_dct = 3'd3;
        3'd7: counter_raddr_dct = 3'd4;
    endcase
end

always @* begin
    case (counter_raddr[6:4])
        3'd0: counter_raddr_dct2 = 3'd0;
        3'd1: counter_raddr_dct2 = 3'd7;
        3'd2: counter_raddr_dct2 = 3'd1;
        3'd3: counter_raddr_dct2 = 3'd6;
        3'd4: counter_raddr_dct2 = 3'd2;
        3'd5: counter_raddr_dct2 = 3'd5;
        3'd6: counter_raddr_dct2 = 3'd3;
        3'd7: counter_raddr_dct2 = 3'd4;
    endcase
end

always @* begin
    if (compress_on) begin
        if (~counter_raddr[9]) begin
            ram_rd_addr = (~{8{counter_raddr[7]}}) & {block_pair_idx,counter_raddr[8],counter_raddr_dct2,counter_raddr_dct};
        end
        else begin
            ram_rd_addr = (~{8{counter_raddr[7]}}) & {block_pair_idx,counter_raddr_dct[2],counter_raddr_dct2,counter_raddr_dct[1:0],counter_raddr[8]};
        end
    end
    else begin
        ram_rd_addr = (~{8{counter_raddr[7]}}) & {block_pair_idx,counter_raddr[8],counter_raddr[6:1]};
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        rm_rdata_en <= 1'b0;
    end
    else begin
        rm_rdata_en <= ram_rd_en & (~counter_raddr[7]) ;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        rm_rdata_idx <= 7'd0;
    end
    else if (compress_on) begin
        rm_rdata_idx <= {counter_raddr_dct2,counter_raddr[3:0]};
    end
    else begin
        rm_rdata_idx <= counter_raddr[6:0];
    end
end

always @* begin
    if (compress_on) begin
        if (YCbCr_switch) begin
            rm_rdata = {{3{ram_rd_data[7]}},ram_rd_data[7:0],2'd0};
        end
        else begin
            rm_rdata = {{3{ram_rd_data[15]}},ram_rd_data[15:8],2'd0};
        end
    end
    else begin
        rm_rdata = ram_rd_data[D_WIDTH-1:0];
    end
end

// --------------------------------------------------------------------------------------
endmodule
