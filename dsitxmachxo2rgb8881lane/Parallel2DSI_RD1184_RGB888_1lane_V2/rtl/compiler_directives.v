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
// Compiler Directive Definitions -- Parallel to CSI2 TX Bridge Reference Design
// 
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 07/16/13  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------

`define HS_0                                    //Defines the number of HS (High Speed) Data Lanes;  HS_3 = 4 lanes, HS_2 = 3 lanes, HS_1 = 2 lanes, HS_0 = 1 lanes        
`define LP_CLK                                  //Defines IO control for the LP (Low Power) Clock Lane                                                                     
`define LP_0                                    //Defines IO control for the LP (Low Power) Data Lane 0                                                                    
//`define LP_1                                    //Defines IO control for the LP (Low Power) Data Lane 1                                                                    
//`define LP_2                                    //Defines IO control for the LP (Low Power) Data Lane 2                                                                    
//`define LP_3                                    //Defines IO control for the LP (Low Power) Data Lane 3   
//`define PLL                                     //adds PLL within the DPHY TX module   
