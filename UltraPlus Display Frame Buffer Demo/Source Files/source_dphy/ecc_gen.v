//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           ecc_gen.v
// Module:         ecc_gen
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

module ecc_gen (
   input    [23:0] din,
   output   [7:0]  ecc_out
);
   

   assign ecc_out[0] = din[0]^din[1]^din[2]^din[4]^din[5]^din[7]^din[10]^din[11]^din[13]^din[16]^din[20]^din[21]^din[22]^din[23];                              
   assign ecc_out[1] = din[0]^din[1]^din[3]^din[4]^din[6]^din[8]^din[10]^din[12]^din[14]^din[17]^din[20]^din[21]^din[22]^din[23];                              
   assign ecc_out[2] = din[0]^din[2]^din[3]^din[5]^din[6]^din[9]^din[11]^din[12]^din[15]^din[18]^din[20]^din[21]^din[22];                             
   assign ecc_out[3] = din[1]^din[2]^din[3]^din[7]^din[8]^din[9]^din[13]^din[14]^din[15]^din[19]^din[20]^din[21]^din[23];                             
   assign ecc_out[4] = din[4]^din[5]^din[6]^din[7]^din[8]^din[9]^din[16]^din[17]^din[18]^din[19]^din[20]^din[22]^din[23];                                            
   assign ecc_out[5] = din[10]^din[11]^din[12]^din[13]^din[14]^din[15]^din[16]^din[17]^din[18]^din[19]^din[21]^din[22]^din[23];               
   assign ecc_out[6] = 0;              
   assign ecc_out[7] = 0;              

endmodule
