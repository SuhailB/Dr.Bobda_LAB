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
// parallel2byte.v
// 
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 07/16/13  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------

module parallel2byte #(
     parameter              word_width = 24        ,
     parameter              lane_width = 4         ,
     parameter              dt         = 6'h3E     
)(
     input                  reset_n                ,
     input                  PIXCLK                 ,
     input                  DE                     ,
     input [word_width-1:0] PIXDATA                ,           
     
     output                 byte_en                ,
     input                  byte_clk               ,
     output  [31:0]      byte_data              ,
     
     
     input                  VSYNC                  ,
     input                  HSYNC                  ,
     output                 VSYNC_start            ,
     output                 VSYNC_end              ,
     output                 HSYNC_start            ,
     output                 HSYNC_end              ,
     output [5:0]           data_type
);


endmodule