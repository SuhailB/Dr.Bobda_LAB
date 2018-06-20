//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           clk_rst_top.v
// Module:         clk_rst_top
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/04/01
// Content:        Sysclk and  reset generate  
//  
//                 
// History:
// 2016-04-01:     Harvey Zhao        first edition.
//     
//=============================================================================

`timescale 1ns/100ps

module clk_rst_top (
   clock,
   hs_start,
   sys_reset_n,
   pwr_sq_reset_n,
   ddr_clk,
   dck_int,
   sysclk,
   clk_27m
);

input           clock;
input           hs_start;
output          sys_reset_n;
output          pwr_sq_reset_n;
output          ddr_clk;
output          dck_int;
output          sysclk;
output          clk_27m;

//Reg & Wire definition 
reg             sysclk;
reg             clk_27m;
reg  [1:0]      div;

// RTL Begin 
assign sys_reset_n = hs_start;

`ifdef  LATTICE_SIM
reg     [7:0]   rst_cnt = 0;
wire            por_reset_n ;
assign por_reset_n= (rst_cnt < 250)  ? 1'b0 : 1'b1;
always @(posedge clock )
   if(rst_cnt < 255)
      rst_cnt <= rst_cnt + 1;
`else
assign por_reset_n= 1'b1; 
`endif 

// system clock generate  
always @(posedge ddr_clk or negedge sys_reset_n)
begin
   if (~sys_reset_n)
   begin
      div     <= 0;
      sysclk  <= 0;
      clk_27m <= 0;
   end
   else 
   begin
      clk_27m <= ~clk_27m;
      if(div==1)
      begin
         sysclk <= ~sysclk;
         div    <= 0;
      end
      else
         div <= div + 1;
   end
end

dphy_pll                       pll0                         ( 
   .PACKAGEPIN                 (clock                       ), 
   .PLLOUTCOREA                (                            ),
   .PLLOUTCOREB                (                            ),
   .PLLOUTGLOBALA              (ddr_clk                     ),
   .PLLOUTGLOBALB              (dck_int                     ),
   .RESET                      (por_reset_n                 ),
   .LOCK                       (pwr_sq_reset_n              )
);


endmodule 
