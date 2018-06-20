//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           crc16_8b.v
// Module:         crc16_8b
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/04/01
// Content:        
//                 
// History:
// 2016-06-01:     Harvey Zhao        first edition.
//     
//=============================================================================

`timescale 1ns/100ps



module crc16_8b (
input          clk,
input          rstn,
input   [7:0]  din,
input          din_en,
output  [15:0] crc
);
 
wire [15:0] crc1;
reg  [15:0] next_crc1;
reg  [7:0]  crc2;

assign    crc       = {crc2,crc1[7:0]};
assign    crc1[15]  = din[3] ^ din[7] ^ next_crc1[7] ^ next_crc1[3];                              
assign    crc1[14]  = din[2] ^ din[6] ^ next_crc1[6] ^ next_crc1[2];                              
assign    crc1[13]  = din[1] ^ din[5] ^ next_crc1[5] ^ next_crc1[1];                             
assign    crc1[12]  = din[0] ^ din[4] ^ next_crc1[4] ^ next_crc1[0];                             
assign    crc1[11]  = din[3] ^ next_crc1[3];                                            
assign    crc1[10]  = din[2] ^ din[3] ^ din[7] ^ next_crc1[7] ^ next_crc1[3] ^ next_crc1[2];               
assign    crc1[9]   = din[1] ^ din[2] ^ din[6] ^ next_crc1[6] ^ next_crc1[2] ^ next_crc1[1];               
assign    crc1[8]   = din[0] ^ din[1] ^ din[5] ^ next_crc1[5] ^ next_crc1[1] ^ next_crc1[0];              
assign    crc1[7]   = din[0] ^ din[4] ^ next_crc1[15] ^ next_crc1[4] ^ next_crc1[0];                      
assign    crc1[6]   = din[3] ^ next_crc1[14] ^ next_crc1[3];                                     
assign    crc1[5]   = din[2] ^ next_crc1[13] ^ next_crc1[2];                                     
assign    crc1[4]   = din[1] ^ next_crc1[12] ^ next_crc1[1];                                     
assign    crc1[3]   = din[0] ^ din[3] ^ din[7] ^ next_crc1[11] ^ next_crc1[7] ^ next_crc1[3] ^ next_crc1[0];        
assign    crc1[2]   = din[2] ^ din[6] ^ next_crc1[10] ^ next_crc1[6] ^ next_crc1[2];                       
assign    crc1[1]   = din[1] ^ din[5] ^ next_crc1[9] ^ next_crc1[5] ^ next_crc1[1];                      
assign    crc1[0]   = din[0] ^ din[4] ^ next_crc1[8] ^ next_crc1[4] ^ next_crc1[0];                      

always @ (posedge clk or negedge rstn) begin
   if (!rstn) 
      next_crc1 <= 16'hffff;                                                                                              
   else if (~din_en)
      next_crc1 <= 16'hffff;                                                                                                  
   else
      next_crc1 <= crc1;
end

always @ (posedge clk or negedge rstn) begin
   if (!rstn) 
      crc2 <= 8'h00;                                                                                                                                                                           
   else
      crc2 <= crc1[15:8];
end


endmodule
