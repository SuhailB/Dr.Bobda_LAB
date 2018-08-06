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
// DPHY_TX_INST.v -- Parallel to CSI2 TX Bridge Reference Design
// 
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 05/30/12  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------
                                                              
`include "compiler_directives.v"

module DPHY_TX_INST (
          input         reset_n          ,      //Resets the Design                   
                                                                                      
          output        DCK              ,      //HS (High Speed) Clock         
     `ifdef PLL         
          input         byte_clk         ,      //Byte Clock
     `else                    
          input         CLKOP            ,      //HS Clock  
          input         CLKOS            ,      //HS Clock + 90 deg phase shift		  
     `endif                                                                                 
     `ifdef HS_3                                                                      
          output        D3               ,      //HS (High Speed) Data Lane 3         
          output        D2               ,      //HS (High Speed) Data Lane 2         
          output        D1               ,      //HS (High Speed) Data Lane 1         
          output        D0               ,      //HS (High Speed) Data Lane 0         
          input [7:0]   byte_D3          ,      //HS (High Speed) Byte Data, Lane 3   
          input [7:0]   byte_D2          ,      //HS (High Speed) Byte Data, Lane 2   
          input [7:0]   byte_D1          ,      //HS (High Speed) Byte Data, Lane 1   
          input [7:0]   byte_D0          ,      //HS (High Speed) Byte Data, Lane 0   
     `elsif HS_2 
          output        D2               ,      
          output        D1               ,
          output        D0               ,
          input [7:0]   byte_D2          ,
          input [7:0]   byte_D1          ,
          input [7:0]   byte_D0          ,        
     `elsif HS_1 
          output        D1               ,
          output        D0               ,
          input [7:0]   byte_D1          ,
          input [7:0]   byte_D0          ,            
     `elsif HS_0 
          output        D0               ,
          input [7:0]   byte_D0          ,                       
     `endif
     `ifdef LP_CLK 
          inout   [1:0] LPCLK            ,        //LP (Low Power) External Interface Signals for Clock Lane     
          input   [1:0] lpclk_out        ,        //LP (Low Power) Data Receiving Signals for Clock Lane         
          output  [1:0] lpclk_in         ,        //LP (Low Power) Data Transmitting Signals for Clock Lane      
          input         lpclk_dir        ,        //LP (Low Power) Data Receive/Transmit Control for Clock Lane  
     `endif                                                                                                      
     `ifdef LP_3                                                                                                 
          inout   [1:0] LP3              ,        //LP (Low Power) External Interface Signals for Data Lane 3    
          input   [1:0] lp3_out          ,        //LP (Low Power) Data Receiving Signals for Data Lane 3        
          output  [1:0] lp3_in           ,        //LP (Low Power) Data Transmitting Signals for Data Lane 3     
          input         lp3_dir          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 3 
     `endif                                                                                                      
     `ifdef LP_2                                                                                                 
          inout   [1:0] LP2              ,        //LP (Low Power) External Interface Signals for Data Lane 2    
          input   [1:0] lp2_out          ,        //LP (Low Power) Data Receiving Signals for Data Lane 2        
          output  [1:0] lp2_in           ,        //LP (Low Power) Data Transmitting Signals for Data Lane 2     
          input         lp2_dir          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 2 
     `endif                                                                                                      
     `ifdef LP_1                                                                                                 
          inout   [1:0] LP1              ,        //LP (Low Power) External Interface Signals for Data Lane 1    
          input   [1:0] lp1_out          ,        //LP (Low Power) Data Receiving Signals for Data Lane 1        
          output  [1:0] lp1_in           ,        //LP (Low Power) Data Transmitting Signals for Data Lane 1     
          input         lp1_dir          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 1 
     `endif                                                                                                      
     `ifdef LP_0                                                                                                 
          inout   [1:0] LP0              ,        //LP (Low Power) External Interface Signals for Data Lane 0    
          input   [1:0] lp0_out          ,        //LP (Low Power) Data Receiving Signals for Data Lane 0        
          output  [1:0] lp0_in           ,        //LP (Low Power) Data Transmitting Signals for Data Lane 0     
          input         lp0_dir          ,        //LP (Low Power) Data Receive/Transmit Control for Data Lane 0 
     `endif                                                                                                 
         input         hs_clk_en        ,        //HS (High Speed) Clock Enable                                                          
          input         hs_data_en     ,            //HS (High Speed) Data Enable      
         input          hsxx_clk_en		  
);                                                                      
      `ifdef PLL                                                                   
           pllx4   u_pllx4(.CLKI(byte_clk), .RST(~reset_n), .CLKOP(bit_clk), .CLKOS(bit_clk_90), .LOCK( ));
      `else
           assign bit_clk    = CLKOP;
	       assign bit_clk_90 = CLKOS;
	  `endif
	  
      //oDDRx4 u_oDDRx4(.clk_s(sclk), .clkop(bit_clk), .clkos(bit_clk_90), .clkout(hs_clk), .lock_chk(1'b1), .reset(~reset_n), .sclk(sclk), .tx_ready( ), .dataout({byte_D3, byte_D2, byte_D1, byte_D0}), .dout({hs_D3,hs_D2,hs_D1,hs_D0}), .hsxx_clk_en(hsxx_clk_en));
      oDDRx4 u_oDDRx4(.clk_s(sclk), .clkop(bit_clk), .clkos(bit_clk_90), .clkout(hs_clk), .lock_chk(1'b1), .reset(~reset_n), .sclk(sclk), .tx_ready( ), .dataout({byte_D3, byte_D2, byte_D1, byte_D0}), .dout({hs_D3,hs_D2,hs_D1,hs_D0}), .hsxx_clk_en(hsxx_clk_en));
      
      IO_Controller_TX u_IO_Controller_TX(
           .reset_n(reset_n)                               , 
           .hs_clk (hs_clk)                                , 
           .hs_D0  (hs_D0)                                 , 
           .hs_D1  (hs_D1)                                 ,
           .hs_D2  (hs_D2)                                 , 
           .hs_D3  (hs_D3)                                 , 
           .DCK    (DCK)                                   , 
           .D0     (D0)                                    , 
           .D1     (D1)                                    , 
           .D2     (D2)                                    , 
           .D3     (D3)                                    , 
           .LPCLK  (`ifdef LP_CLK LPCLK `endif)            ,
           .LP0    (`ifdef LP_0 LP0 `endif)                , 
           .LP1    (`ifdef LP_1 LP1 `endif)                , 
           .LP2    (`ifdef LP_2 LP2 `endif)                , 
           .LP3    (`ifdef LP_3 LP3 `endif)                , 
           .hs_clk_en (hs_clk_en)                          ,  
           .hs_data_en(hs_data_en)                         , 
           .lpclk_dir(lpclk_dir)                           , 
           .lp0_dir(lp0_dir)                               ,
           .lp1_dir(lp1_dir)                               ,
           .lp2_dir(lp2_dir)                               ,
           .lp3_dir(lp3_dir)                               ,
           .lpclk_out(lpclk_out)                           , 
           .lp0_out(lp0_out)                               , 
           .lp1_out(lp1_out)                               , 
           .lp2_out(lp2_out)                               , 
           .lp3_out(lp3_out)                               , 
           .lpclk_in(lpclk_in)                             ,
           .lp0_in(lp0_in)                                 , 
           .lp1_in(lp1_in)                                 , 
           .lp2_in(lp2_in)                                 , 
           .lp3_in(lp3_in)
      );

endmodule