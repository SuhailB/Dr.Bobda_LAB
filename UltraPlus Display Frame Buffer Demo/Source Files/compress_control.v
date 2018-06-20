//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           compress_ctrl.v
// Module:         compress_ctrl
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Content:        image frame decompress control module
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
//     
//=============================================================================

module compress_ctrl (
    clock,
    reset_n,
    inter_reset_n,   
    // compress process
    compress_request,
    compress_start,
    compress_on,
    compress_finish,
    compress_finish_o,
    // decompress process
    decompress_request,
    decompress_start,
    decompress_finish,
    decompress_finish_o
);

/* interface declaration */

input                                   clock;
input                                   reset_n;
input                                   inter_reset_n;   

input                                   compress_request;
output                                  compress_start;
output                                  compress_on;
input                                   compress_finish;
output                                  compress_finish_o;

input                                   decompress_request;
output                                  decompress_start;
input                                   decompress_finish;
output                                  decompress_finish_o;

/* wire-type signals definition */


/* reg-type signals definition */
reg                                     compress_start;
reg                                     compress_on;

reg                                     decompress_start;
reg                                     decompress_ready;

reg                                     compress_finish_o;
reg                                     decompress_finish_o;

// --------------------------------------------------------------------------------------

// --------------------------------------------
//
// compression control
//
// --------------------------------------------

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        compress_start <= 1'b0;
    end
    else begin
        compress_start <= compress_request;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        compress_on <= 1'b0;
    end
    else if (compress_start) begin
        //compress_on <= 1'b1;
        compress_on <= 1'b0;
    end
    else if (compress_finish) begin
        compress_on <= 1'b0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        compress_finish_o <= 1'b0;
    end
    else if (compress_start) begin
        compress_finish_o <= 1'b0;
    end
    else if (compress_finish) begin
        compress_finish_o <= 1'b1;
    end
    else if (decompress_start) begin
        compress_finish_o <= 1'b0;
    end
end

// --------------------------------------------
//
// decompression control
//
// --------------------------------------------

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
    //if (~inter_reset_n) begin
        decompress_ready <= 1'b0;
    end
    else if (compress_finish) begin
        decompress_ready <= 1'b1;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        decompress_start <= 1'b0;
    end
    //else if (decompress_ready) begin
    else begin
        decompress_start <= decompress_request;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        decompress_finish_o <= 1'b0;
    end
    else if (decompress_start) begin
        decompress_finish_o <= 1'b0;
    end
    else if (decompress_finish) begin
        decompress_finish_o <= 1'b1;
    end
end


// --------------------------------------------------------------------------------------
endmodule
