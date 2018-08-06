// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2013 by Lattice Semiconductor Corporation
// --------------------------------------------------------------------
//
// Permission:
//
//   Lattice Semiconductor grants permission to use this code for use
//   in synthesis for any Lattice programmable logic product.  Other
//   use of this code, including the selling or duplication of any
//   portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL or Verilog source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Lattice Semiconductor provides no warranty
//   regarding the use or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A
//
//                     TEL: 1-800-Lattice (USA and Canada)
//                          408-826-6000 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
//
// --------------------------------------------------------------------
//
// MIPI DPHY RX Design
// 
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 07/16/13  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------

module IO_Controller_TX (
     input reset_n              ,
     input hs_clk               ,
     input hs_D0                ,
     input hs_D1                ,
     input hs_D2                ,
     input hs_D3                ,
                                
     output DCK                 ,
     output D0                  ,
     output D1                  ,
     output D2                  ,
     output D3                  ,
                                
     inout [1:0] LPCLK          ,
     inout [1:0] LP0            ,
     inout [1:0] LP1            ,
     inout [1:0] LP2            ,
     inout [1:0] LP3            ,
                                
     input       hs_clk_en      ,
     input       hs_data_en     ,
     input       lpclk_dir      ,
     input       lp0_dir        ,
     input       lp1_dir        ,
     input       lp2_dir        ,
     input       lp3_dir        ,
     
     input [1:0] lpclk_out      ,
     input [1:0] lp0_out        ,
     input [1:0] lp1_out        ,
     input [1:0] lp2_out        ,
     input [1:0] lp3_out        ,
     
     output  [1:0] lpclk_in     ,
     output  [1:0] lp0_in       ,
     output  [1:0] lp1_in       ,
     output  [1:0] lp2_in       ,
     output  [1:0] lp3_in       
);

     assign DCK = hs_clk_en   ? hs_clk : 1'bz;
     assign D0  = hs_data_en  ? hs_D0  : 1'bz;
     assign D1  = hs_data_en  ? hs_D1  : 1'bz;
     assign D2  = hs_data_en  ? hs_D2  : 1'bz;
     assign D3  = hs_data_en  ? hs_D3  : 1'bz;
     
     assign LPCLK = hs_clk_en  ? 2'b00     :
                    lpclk_dir  ? lpclk_out : 2'bzz;
     assign LP0   = hs_data_en ? 2'b00     :
                    lp0_dir    ? lp0_out : 2'bzz;
     assign LP1   = hs_data_en ? 2'b00     :
                    lp1_dir    ? lp1_out : 2'bzz;    
     assign LP2   = hs_data_en ? 2'b00     :
                    lp2_dir    ? lp2_out : 2'bzz;
     assign LP3   = hs_data_en ? 2'b00     :
                    lp3_dir    ? lp3_out : 2'bzz;
                    
     assign lpclk_in = LPCLK;               
     assign lp0_in   = LP0; 
     assign lp1_in   = LP1;
     assign lp2_in   = LP2;
     assign lp3_in   = LP3;
                    
endmodule