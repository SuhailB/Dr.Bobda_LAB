//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           rate_match_s2.v
// Module:         rate_match_s2
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Content:        
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
//     
//=============================================================================

module rate_match_s2 (
    clock,
    reset_n,
    dct_flag,
    // compress
    q_data,
    q_data_en,
    q_index,
    dct_q_ready,
    //dct_q_raddr,
    dct_q_rdata,
    entropy_enc_we,
    entropy_enc_wdata,
    entropy_enc_waddr,
    entropy_enc_raddr,
    entropy_enc_rdata,
    // decompress
    last_dec_blk,
    idct_data,
    idct_data_en,
    idct_data_idx,
    decompress_data,
    decompress_data_en,
    decompress_finish
);

/* interface declaration */

input                                   clock;
input                                   reset_n;
input                                   dct_flag;

input   [7:0]                           q_data;
input                                   q_data_en;
input   [5:0]                           q_index;

input   [12:0]                          idct_data;
input                                   idct_data_en;
input   [5:0]                           idct_data_idx;
input                                   last_dec_blk;

output                                  dct_q_ready;
output  [7:0]                           dct_q_rdata;
//input   [5:0]                           dct_q_raddr;

input                                   entropy_enc_we;
input   [7:0]                           entropy_enc_wdata;
input   [7:0]                           entropy_enc_waddr;
input   [7:0]                           entropy_enc_raddr;
output  [7:0]                           entropy_enc_rdata;

output  [7:0]                           decompress_data;
output                                  decompress_data_en;
output                                  decompress_finish;

reg                                     dec_val;
wire      [7:0]                         dec_data;


/* wire-type signals definition */

wire    [15:0]                          ram_rd_data;             /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
wire    [7:0]                           ram_rd_addr;             /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
/* reg-type signals definition */
reg                                     dct_q_ready;
reg                                     idct_data_ready;
reg     [7:0]                           ram_wr_addr;             /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
reg                                     ram_wr_en;               /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
reg     [15:0]                          ram_wr_data;             /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
reg                                     decompress_data_en;
reg     [7:0]                           decompress_data;
reg                                     idct_data_rd_window;
reg     [7:0]                           cntr_idct_rd;
reg                                     last_idct_data;
reg                                     decompress_finish;
reg                                     idct_wr_blk_idx;
reg                                     idct_rd_blk_idx;

// --------------------------------------------
//
// write 
//
// --------------------------------------------

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        ram_wr_data <= 16'd0;
        ram_wr_addr <= 8'd0;
        ram_wr_en   <= 1'b0;
    end
    else begin
        ram_wr_data <= dct_flag ? (q_data_en ? {8'd0,q_data} : {8'd0,entropy_enc_wdata}) : {3'd0,idct_data[12:0]};
        ram_wr_addr <= dct_flag ? (q_data_en ? {2'd0,q_index} : entropy_enc_waddr) : {1'b0,idct_wr_blk_idx,idct_data_idx};
        ram_wr_en   <= dct_flag ? (q_data_en | entropy_enc_we) : idct_data_en;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_q_ready <= 1'b0;
    end
    else begin
        dct_q_ready <= dct_flag & q_data_en & (q_index == 6'b111111);
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        idct_data_ready <= 1'b0;
    end
    else begin
        idct_data_ready <= ~dct_flag & idct_data_en & (idct_data_idx == 6'b100111);
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        idct_wr_blk_idx <= 1'b0;
    end
    else if (~dct_flag && idct_data_en && (idct_data_idx == 6'b100111)) begin
        idct_wr_blk_idx <= ~idct_wr_blk_idx;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        last_idct_data <= 1'b0;
    end
    else if (~dct_flag && idct_data_en && (idct_data_idx == 6'b100111) && last_dec_blk) begin
        last_idct_data <= 1'b1;
    end
end

// --------------------------------------------
//
// RAM instance
//
// --------------------------------------------

RAM_PDP_256x16 RM_BUFF_256x16 (
    .din             (ram_wr_data      ), 
    .write_en        (ram_wr_en        ), 
    .waddr           (ram_wr_addr      ), 
    .wclk            (clock            ), 
    .raddr           (ram_rd_addr      ), 
    .rclk            (clock            ), 
    .dout            (ram_rd_data      ) 
);

// --------------------------------------------
//
// read
//
// --------------------------------------------

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        idct_data_rd_window <= 1'b0;
    end
    else if (idct_data_ready) begin
        idct_data_rd_window <= 1'b1;
    end
    else if (cntr_idct_rd == 8'hFF) begin
        idct_data_rd_window <= 1'b0;
    end
end

always @ (posedge clock) begin
    if (idct_data_ready) begin
        cntr_idct_rd <= 8'd0;
    end
    else if (idct_data_rd_window) begin
        cntr_idct_rd <= cntr_idct_rd + 1;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        idct_rd_blk_idx <= 1'b1;
    end
    else if (idct_data_ready) begin
        idct_rd_blk_idx <= ~idct_rd_blk_idx;
    end
end

assign ram_rd_addr = dct_flag ? entropy_enc_raddr : {1'd0,idct_rd_blk_idx,cntr_idct_rd[7:2]};

// --------------------------------------------
//
// output interface
//
// --------------------------------------------

assign dct_q_rdata = ram_rd_data[7:0];
assign entropy_enc_rdata = ram_rd_data[7:0];

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        decompress_finish <= 1'b0;
    end
    else begin
        decompress_finish <= last_idct_data & idct_data_rd_window & (~cntr_idct_rd[1]) & (~cntr_idct_rd[0]) & (cntr_idct_rd[7:2] == 6'd63);
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        decompress_data_en <= 1'b0;
        decompress_data    <= 8'd0;
        dec_val            <= 1'b0;
    end
    else begin
        //decompress_data_en <= idct_data_rd_window & (~cntr_idct_rd[1]) & (~cntr_idct_rd[0]);
        dec_val              <= idct_data_rd_window & (~cntr_idct_rd[1]) & (~cntr_idct_rd[0]);
        decompress_data_en   <= dec_val;
        decompress_data      <= dec_data;
    end
end

//assign decompress_data = (ram_rd_data[10] == ram_rd_data[9]) ? ram_rd_data[9:2] : {ram_rd_data[10],{7{~ram_rd_data[10]}}};
assign dec_data = (ram_rd_data[10] == ram_rd_data[9]) ? ram_rd_data[9:2] : {ram_rd_data[10],{7{~ram_rd_data[10]}}};



// --------------------------------------------------------------------------------------
endmodule
