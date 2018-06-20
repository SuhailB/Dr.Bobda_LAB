//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           dct_ctrl.v
// Module:         dct_ctrl
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Content:        DCT/IDCT control of RAM addressing and data flow
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
//     
//=============================================================================

module dct_ctrl (
    clock,
    reset_n,
    // config
    dct_flag,
    // from external source
    rm_data_en,
    rm_data_idx,
    rm_data,
    // internal RAM control
    dct_ram_we,
    dct_ram_waddr,
    dct_ram_raddr,
    dct_ram_rdata,
    // 1xD dct control
    dct_data_in,
    dct_data_in_en,
    dct_data_in_idx,
    dct_stage,
    dct_data_out_en,
    dct_data_out_stage,
    dct_data_out_idx,
    // to output interface
    dct_out_en,
    dct_out_idx
);

parameter   D_WIDTH                     = 13;

/* interface declaration */

input                                   reset_n;
input                                   clock;

input                                   dct_flag;

input                                   rm_data_en;
input   [6:0]                           rm_data_idx;
input   [D_WIDTH-1:0]                   rm_data;

output                                  dct_ram_we;
output  [7:0]                           dct_ram_waddr;
output  [7:0]                           dct_ram_raddr;
input   [D_WIDTH-1:0]                   dct_ram_rdata;

output  [D_WIDTH-1:0]                   dct_data_in;
output                                  dct_data_in_en;
output  [3:0]                           dct_data_in_idx;
output                                  dct_stage;
input                                   dct_data_out_en;
input                                   dct_data_out_stage;
input   [2:0]                           dct_data_out_idx;

output                                  dct_out_en;
output  [5:0]                           dct_out_idx;

/* wire-type signals definition */
wire                                    dct_ram_we;
wire    [7:0]                           dct_ram_waddr;
wire    [7:0]                           dct_ram_raddr;

wire                                    rm_last_blk;
wire                                    rm_last_data;

wire                                    dct_out_en;
wire    [5:0]                           dct_out_idx;

/* reg-type signals definition */
reg     [3:0]                           dct_data_in_idx;
reg                                     dct_data_in_en;
reg                                     dct_stage;
reg     [D_WIDTH-1:0]                   dct_data_in;
reg     [D_WIDTH-1:0]                   dct_data_in_mux;

reg     [6:0]                           cntr_ram_rd;
reg                                     dct_ram_rd_en;
reg                                     dct_ram_rdata_en;
reg     [2:0]                           dct_blk_idx;
reg     [2:0]                           cntr_ram_rd_dct;
reg     [3:0]                           ram_rdata_idx;
// --------------------------------------------------------------------------------------


// --------------------------------------------
//
// DCT input control
//
// --------------------------------------------

always @* begin
    if (rm_data_en) begin
        dct_data_in_mux = rm_data;
    end
    else begin
        dct_data_in_mux = dct_ram_rdata;  
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_data_in <= 0;
    end
    else begin
        dct_data_in <= dct_data_in_mux;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_data_in_idx <= 0;
    end
    else if (rm_data_en) begin
        dct_data_in_idx <= rm_data_idx[3:0];
    end
    else begin
        dct_data_in_idx <= ram_rdata_idx;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_data_in_en <= 0;
    end
    else begin
        dct_data_in_en <= rm_data_en | dct_ram_rdata_en;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_stage <= 1'b0;
    end
    else if (rm_data_en) begin
        dct_stage <= 1'b0;
    end
    else if (dct_ram_rdata_en) begin
        dct_stage <= 1'b1;
    end
end

// --------------------------------------------
//
// DCT RAM control
//
// --------------------------------------------

assign rm_last_blk = dct_flag ? (rm_data_idx[6:4] == 3'b100) : (rm_data_idx[6:4] == 3'b111);
assign rm_last_data = (rm_data_idx[3:0] == 4'd14);

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_blk_idx <= 3'd0;
    end
    else if (rm_data_en && rm_last_data) begin
        dct_blk_idx <= rm_data_idx[6:4];
    end
    else if (dct_ram_rdata_en && cntr_ram_rd[3:0] == 4'd14) begin
        dct_blk_idx <= cntr_ram_rd[6:4];
    end
end

assign dct_ram_we = dct_data_out_en & (~dct_data_out_stage);
assign dct_ram_waddr = {2'd0,dct_blk_idx,dct_data_out_idx};

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_ram_rd_en <= 1'b0;
    end
    else if (rm_data_en && rm_last_blk && rm_last_data) begin
        dct_ram_rd_en <= 1'b1;
    end
    else if (cntr_ram_rd == 7'd127) begin
        dct_ram_rd_en <= 1'b0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_ram_rdata_en <= 1'b0;
    end
    else begin
        dct_ram_rdata_en <= dct_ram_rd_en;
    end
end

always @ (posedge clock) begin
    if (~dct_ram_rd_en) begin
        cntr_ram_rd <= 7'd0;
    end
    else begin
        cntr_ram_rd <= cntr_ram_rd + 1;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        ram_rdata_idx <= 4'd0;
    end
    else begin
        ram_rdata_idx <= cntr_ram_rd[3:0];
    end
end

always @* begin
    case (cntr_ram_rd[3:1])
        3'd0: cntr_ram_rd_dct = 3'd0;
        3'd1: cntr_ram_rd_dct = 3'd7;
        3'd2: cntr_ram_rd_dct = 3'd1;
        3'd3: cntr_ram_rd_dct = 3'd6;
        3'd4: cntr_ram_rd_dct = 3'd2;
        3'd5: cntr_ram_rd_dct = 3'd5;
        3'd6: cntr_ram_rd_dct = 3'd3;
        3'd7: cntr_ram_rd_dct = 3'd4;
    endcase
end

assign dct_ram_raddr = dct_flag ? {2'd0,cntr_ram_rd_dct,cntr_ram_rd[6:4]} : {2'd0,cntr_ram_rd[3:1],cntr_ram_rd[6:4]}; 

// --------------------------------------------
//
// DCT output control
//
// --------------------------------------------

assign dct_out_en = dct_data_out_en & dct_data_out_stage;
assign dct_out_idx = {dct_data_out_idx,dct_blk_idx};

// --------------------------------------------------------------------------------------
endmodule
