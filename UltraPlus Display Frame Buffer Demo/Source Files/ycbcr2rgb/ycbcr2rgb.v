//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           ycbcr2rgb.v
// Module:         ycbcr2rgb 
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/05/01
// Content:        
//  
//                 
// History:
// 2016-05-01:     Harvey Zhao        first edition.
//     
//=============================================================================

`timescale 1ns/100ps

module ycbcr2rgb (
        clk,
        reset_n,
        r_val,
        r_data,
        g_val,
        g_data,
        b_val,
        b_data,
        ycbcr_val,
        ycbcr_data
);

input          clk;
input          reset_n;
output         r_val;
output   [7:0] r_data;
output         g_val;
output   [7:0] g_data;
output         b_val;
output   [7:0] b_data;
input          ycbcr_val;
input    [7:0] ycbcr_data;

parameter      Y_DATA_OFFSET    = 32'hFFE422cc; 
parameter      Y_DATA_Y1        = 16'h253f    ; 
parameter      Y_DATA_Y2        = 16'h0       ; 
parameter      Y_DATA_Y3        = 16'h3312    ; 

parameter      CB_DATA_OFFSET   = 32'h10ef8c  ; 
parameter      CB_DATA_Y1       = 16'h253f    ; 
parameter      CB_DATA_Y2       = 16'hf37d    ; 
parameter      CB_DATA_Y3       = 16'he5fc    ; 

parameter      CR_DATA_OFFSET   = 32'hFFDD6248; 
parameter      CR_DATA_Y1       = 16'h253f    ; 
parameter      CR_DATA_Y2       = 16'h4093    ; 
parameter      CR_DATA_Y3       = 16'h0       ; 


wire data_val_d;
assign  data_val_d = ycbcr_val;

dsp_mac_top  #(
   .OFFSET    (Y_DATA_OFFSET  ),
   .Y1        (Y_DATA_Y1      ),
   .Y2        (Y_DATA_Y2      ),
   .Y3        (Y_DATA_Y3      ) 
   )          inst_Y_Data     (
   .rst       (reset_n        ),
   .clk       (clk            ),
   .clk_en    (1'b1           ),
   .dvalid_in (data_val_d     ),
   .vdata_in  (ycbcr_data     ),
   .dvalid_out(r_val          ),
   .vdata_out (r_data         ) 
);


dsp_mac_top  #(
   .OFFSET    (CB_DATA_OFFSET ),
   .Y1        (CB_DATA_Y1     ),
   .Y2        (CB_DATA_Y2     ),
   .Y3        (CB_DATA_Y3     ) 
   )          inst_Cb_Data    (
   .rst       (reset_n        ),
   .clk       (clk            ),
   .clk_en    (1'b1           ),
   .dvalid_in (data_val_d     ),
   .vdata_in  (ycbcr_data     ),
   .dvalid_out(g_val          ),
   .vdata_out (g_data         ) 
);

dsp_mac_top  #(
   .OFFSET    (CR_DATA_OFFSET ),
   .Y1        (CR_DATA_Y1     ),
   .Y2        (CR_DATA_Y2     ),
   .Y3        (CR_DATA_Y3     )
   )          inst_Cr_Data    (
   .rst       (reset_n        ),
   .clk       (clk            ),
   .clk_en    (1'b1           ),
   .dvalid_in (data_val_d     ),
   .vdata_in  (ycbcr_data     ),
   .dvalid_out(b_val          ),
   .vdata_out (b_data         ) 
);


endmodule 
