//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           ice_dphy.v
// Module:         ice_dphy 
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/05/01
// Content:        dphy transmit 
//  
//                 
// History:
// 2016-05-01:     Harvey Zhao        first edition.
//     
//=============================================================================

module ice_dphy(
   input       reset_n,
   input       ddr_clk,
   input       dck_int,
   input       sysclk,
   input       hs_clk_en,
   input       hs_data_en,
   input       pkt_en,
   input [7:0] byte_data,
   output      q_valid,
   output      DCK_P,
   output      DCK_N,
   output      DATA_P,
   output      DATA_N
);


wire   [1:0] q;

reg hs_clk_en_d1;
reg hs_clk_en_d2;
reg hs_clk_en_d3;
reg hs_clk_en_d4;
reg hs_clk_en_d5;

reg hs_data_en_d1;
reg hs_data_en_d2;
reg hs_data_en_d3;
reg hs_data_en_d4;
reg hs_data_en_d5;

always @(posedge dck_int or negedge reset_n)
begin
   if(~reset_n)
   begin
      hs_clk_en_d1 <= 0;
      hs_clk_en_d2 <= 0;
      hs_clk_en_d3 <= 0;
      hs_clk_en_d4 <= 0;
      hs_clk_en_d5 <= 0;
   end
   else
   begin
      hs_clk_en_d1 <= hs_clk_en   ;
      hs_clk_en_d2 <= hs_clk_en_d1;
      hs_clk_en_d3 <= hs_clk_en_d2;
      hs_clk_en_d4 <= hs_clk_en_d3;
      hs_clk_en_d5 <= hs_clk_en_d4;
   end
end

always @(posedge ddr_clk or negedge reset_n)
begin
   if(~reset_n)
   begin
      hs_data_en_d1 <= 0;
      hs_data_en_d2 <= 0;
      hs_data_en_d3 <= 0;
      hs_data_en_d4 <= 0;
      hs_data_en_d5 <= 0;
   end
   else
   begin
      hs_data_en_d1 <= hs_data_en   ;
      hs_data_en_d2 <= hs_data_en_d1;
      hs_data_en_d3 <= hs_data_en_d2;
      hs_data_en_d4 <= hs_data_en_d3;
      hs_data_en_d5 <= hs_data_en_d4;
   end
end

dphy_8to2              dphy_8to2 (
   .reset_n            (reset_n      ),
   .wclk               (sysclk       ),
   .rclk               (ddr_clk      ),
   .data               (byte_data    ),
   .wen                (pkt_en       ),
   .q_valid_test       (q_valid      ),
   .q_test             (q            )
);
             
             
SB_IO                   Data_P     (
   .PACKAGE_PIN         (DATA_P    ),
   .LATCH_INPUT_VALUE   (1'b0      ), 
   .CLOCK_ENABLE        (1'b1      ), 
   .INPUT_CLK           (1'b0      ), 
   .OUTPUT_CLK          (ddr_clk   ), 
   .OUTPUT_ENABLE       (hs_data_en), 
   .D_OUT_0             (q[1]      ), 
   .D_OUT_1             (q[0]      ), 
   .D_IN_0              (          ), 
   .D_IN_1              (          ) 
);
defparam Data_P.PIN_TYPE = 6'b100000;
defparam Data_P.PULLUP = 1'b0;
defparam Data_P.NEG_TRIGGER = 1'b0;
defparam Data_P.IO_STANDARD = "SB_LVCMOS";  
             

SB_IO                   Data_N     (
   .PACKAGE_PIN         (DATA_N    ),
   .LATCH_INPUT_VALUE   (1'b0      ), 
   .CLOCK_ENABLE        (1'b1      ), 
   .INPUT_CLK           (1'b0      ), 
   .OUTPUT_CLK          (ddr_clk   ), 
   .OUTPUT_ENABLE       (hs_data_en), 
   .D_OUT_0             (~q[1]     ), 
   .D_OUT_1             (~q[0]     ), 
   .D_IN_0              (          ), 
   .D_IN_1              (          ) 
);
defparam Data_N.PIN_TYPE = 6'b100000;
defparam Data_N.PULLUP = 1'b0;
defparam Data_N.NEG_TRIGGER = 1'b0;
defparam Data_N.IO_STANDARD = "SB_LVCMOS";  

SB_IO                   DCK_P0    (
   .PACKAGE_PIN         (DCK_P    ),
   .LATCH_INPUT_VALUE   (1'b0     ), 
   .CLOCK_ENABLE        (1'b1     ), 
   .INPUT_CLK           (1'b0     ), 
   .OUTPUT_CLK          (dck_int  ), 
   .OUTPUT_ENABLE       (hs_clk_en_d1 | hs_clk_en_d4 ), 
   .D_OUT_0             (1'b0     ), 
   .D_OUT_1             ((hs_clk_en_d1 && hs_clk_en_d5 ) ? 1'b1:1'b0), 
   .D_IN_0              (         ),
   .D_IN_1              (         ) 
);
defparam DCK_P0.PIN_TYPE = 6'b100000;
defparam DCK_P0.PULLUP = 1'b0;
defparam DCK_P0.NEG_TRIGGER = 1'b0;
defparam DCK_P0.IO_STANDARD = "SB_LVCMOS";  

SB_IO                   DCK_N0    (
   .PACKAGE_PIN         (DCK_N    ),
   .LATCH_INPUT_VALUE   (1'b0     ), 
   .CLOCK_ENABLE        (1'b1     ), 
   .INPUT_CLK           (1'b0     ), 
   .OUTPUT_CLK          (dck_int  ), 
   .OUTPUT_ENABLE       (hs_clk_en_d1 | hs_clk_en_d4 ), 
   .D_OUT_0             (1'b1     ), 
   .D_OUT_1             ((hs_clk_en_d1 && hs_clk_en_d5 ) ? 1'b0:1'b1), 
   .D_IN_0              (         ), 
   .D_IN_1              (         ) 
);
defparam DCK_N0.PIN_TYPE    = 6'b100000;
defparam DCK_N0.PULLUP      = 1'b0;
defparam DCK_N0.NEG_TRIGGER = 1'b0;
defparam DCK_N0.IO_STANDARD = "SB_LVCMOS";  

endmodule
