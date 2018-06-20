//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           dct_top.v
// Module:         dct_top
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Content:        top level entity of 8x8 DCT/IDCT 
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
//     
//=============================================================================

module dct_top (
    clock,
    reset_n,
    dct_flag,
    // from rate match
    rm_data_en,
    rm_data_idx,
    rm_data,
    // output interface
    dct_out_en,
    dct_out_idx,
    dct_output
);

parameter   D_WIDTH = 13;

/* interface declaration */

input                                   reset_n;
input                                   clock;
input                                   dct_flag;

input                                   rm_data_en;
input   [6:0]                           rm_data_idx;
input   [D_WIDTH-1:0]                   rm_data;

output                                  dct_out_en;
output  [5:0]                           dct_out_idx;
output  [D_WIDTH-1:0]                   dct_output;

/* wire-type signals definition */

wire                                    dct_stage;
wire    [3:0]                           dct_input_idx;
wire                                    dct_input_en;
wire    [D_WIDTH-1:0]                   dct_input;
wire                                    dct_output_en;
wire    [2:0]                           dct_output_idx;
wire                                    dct_output_stage;

wire                                    dct_ram_we;
wire    [D_WIDTH-1:0]                   dct_output;
wire    [7:0]                           dct_ram_waddr;
wire    [7:0]                           dct_ram_raddr;
wire    [D_WIDTH-1:0]                   dct_ram_rdata;

/* reg-type signals definition */


// --------------------------------------------------------------------------------------

// 1xD DCT process
dct_calc                        dct_core_inst (
    .clock                          (clock              ),      
    .reset_n                        (reset_n            ),        
    .dct_flag                       (dct_flag           ),          
    .dct_stage                      (dct_stage          ),          
    .dct_input_idx                  (dct_input_idx      ),              
    .dct_input_en                   (dct_input_en       ),             
    .dct_input                      (dct_input          ),          
    .dct_output                     (dct_output         ),           
    .dct_output_en                  (dct_output_en      ),              
    .dct_output_idx                 (dct_output_idx     ),               
    .dct_output_stage               (dct_output_stage   ) 
);

// transpose RAM of 2xD DCT internal process
dct_buffer                      dct_buffer_inst (
    .clock                          (clock              ),          
    .dct_ram_we                     (dct_ram_we         ),               
    .dct_ram_waddr                  (dct_ram_waddr      ),                  
    .dct_ram_wdata                  (dct_output         ),                  
    .dct_ram_raddr                  (dct_ram_raddr      ),                  
    .dct_ram_rdata                  (dct_ram_rdata      )
);

dct_ctrl                        dct_ctrl_inst(
    .clock                          (clock              ),    
    .reset_n                        (reset_n            ),      
    .dct_flag                       (dct_flag           ),        
    .rm_data_en                     (rm_data_en         ),         
    .rm_data_idx                    (rm_data_idx        ),          
    .rm_data                        (rm_data            ),      
    .dct_ram_we                     (dct_ram_we         ),         
    .dct_ram_waddr                  (dct_ram_waddr      ),            
    .dct_ram_raddr                  (dct_ram_raddr      ),            
    .dct_ram_rdata                  (dct_ram_rdata      ),            
    .dct_data_in                    (dct_input          ),          
    .dct_data_in_en                 (dct_input_en       ),             
    .dct_data_in_idx                (dct_input_idx      ),              
    .dct_stage                      (dct_stage          ),        
    .dct_data_out_en                (dct_output_en      ),              
    .dct_data_out_stage             (dct_output_stage   ),                 
    .dct_data_out_idx               (dct_output_idx     ),               
    .dct_out_en                     (dct_out_en         ),         
    .dct_out_idx                    (dct_out_idx        )
);


// --------------------------------------------------------------------------------------
endmodule
