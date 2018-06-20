module dphy_top (
input         clock,
output        lcd_1v8_en,
output        lcd_3v0_en,
output        lcd_rst,
output [1:0]  LPCLK,
output [1:0]  LPDATA,
output        DCK_P,
output        DCK_N,
output        DATA_P,
output        DATA_N


);

wire         dck_int;
wire         ddr_clk;
reg [19:0]   rst_cnt = 0;
reg          reset_n; 
reg  [1:0]   div;
wire         pll_lock;
reg          sysclk;

wire   pwr_lcd_rst    ;
wire   pwr_lcd_1v8_en ;
wire   pwr_lcd_3v0_en ;
wire   hs_start       ;

SB_IO_OD inst_lcd_rst ( 
   .PACKAGEPIN      (lcd_rst ), 
   .LATCHINPUTVALUE (1'b0    ), 
   .CLOCKENABLE     (1'b0    ), 
   .INPUTCLK        (1'b0    ), 
   .OUTPUTCLK       (1'b0    ), 
   .OUTPUTENABLE    (1'b0    ), 
   .DOUT0           (pwr_lcd_rst ), // wire signal from control signal 
   .DOUT1           (1'b0    ), 
   .DIN0            (), 
   .DIN1            () 
); 
defparam inst_lcd_rst.PIN_TYPE = 6'b011000; 
defparam inst_lcd_rst.NEG_TRIGGER = 1'b0; 


SB_IO_OD inst_lcd_1v8_en ( 
   .PACKAGEPIN      (lcd_1v8_en), 
   .LATCHINPUTVALUE (1'b0), 
   .CLOCKENABLE     (1'b0), 
   .INPUTCLK        (1'b0), 
   .OUTPUTCLK       (1'b0), 
   .OUTPUTENABLE    (1'b0), 
   .DOUT0           (pwr_lcd_1v8_en), // wire signal from control signal 
   .DOUT1           (1'b0), 
   .DIN0            (), 
   .DIN1            () 
); 
defparam inst_lcd_1v8_en.PIN_TYPE = 6'b011000; 
defparam inst_lcd_1v8_en.NEG_TRIGGER = 1'b0; 

SB_IO_OD inst_lcd_3v0_en 
( 
.PACKAGEPIN      (lcd_3v0_en), 
.LATCHINPUTVALUE (1'b0), 
.CLOCKENABLE     (1'b0), 
.INPUTCLK        (1'b0), 
.OUTPUTCLK       (1'b0), 
.OUTPUTENABLE    (1'b0), 
.DOUT0           (pwr_lcd_3v0_en), // wire signal from control signal 
.DOUT1           (1'b0), 
.DIN0            (), 
.DIN1            () 
); 
defparam inst_lcd_3v0_en.PIN_TYPE = 6'b011000; 
defparam inst_lcd_3v0_en.NEG_TRIGGER = 1'b0; 


always @(posedge clock)
begin
   if (~(&rst_cnt)) 
   begin
      reset_n <= 1'b0;
      rst_cnt <= rst_cnt + 1'b1;
   end
   else 
      reset_n  <= 1'b1;
end

always @(posedge ddr_clk or negedge pll_lock)
begin
   if (~pll_lock)
   begin
      div <= 0;
      sysclk <= 0;
   end
   else if(div==1)
   begin
      sysclk <= ~sysclk;
      div    <= 0;
   end
   else
      div <= div + 1;
end


dphy_pll pll0      ( 
   .REFERENCECLK   (clock      ), 
   .PLLOUTCOREA    (ddr_clk    ),
   .PLLOUTCOREB    (dck_int    ),
   .PLLOUTGLOBALA  (           ),
   .PLLOUTGLOBALB  (           ),
   .RESET          (hs_start   ),
   .LOCK           (pll_lock   )
);


ice_dphy_top        inst_ice_dphy_top (
    .sysclk         (sysclk  ),
    .ddr_clk        (ddr_clk ),
    .dck_int        (dck_int ),
    .pll_lock       (pll_lock),
    .start          (1'b1    ),    
    .reset_n        (pll_lock),    
    .frame_end_out  (        ),    
    .pre_end        (        ),    
    .st             (        ),    
    .row_cnt        (        ),    
    .col_cnt        (        ),    
    .pix_data       (16'd0   ),    
    .pix_addr       (        ),    
    .pix_en         (        ),    
    .LPCLK          (LPCLK   ),    
    .LPDATA         (LPDATA  ),    
    .DCK_P          (DCK_P   ),    
    .DCK_N          (DCK_N   ),    
    .DATA_P         (DATA_P  ),    
    .DATA_N         (DATA_N  )     
);


pwr_sq_ctrl        inst_pwr_sq_ctrl (
   .clk             (clock          ),   
   .resetn          (reset_n        ),   
   .lcd_rst         (pwr_lcd_rst    ),   
   .lcd_1v8_en      (pwr_lcd_1v8_en ),   
   .lcd_3v0_en      (pwr_lcd_3v0_en ),   
   .hs_start        (hs_start       )    
);                     

endmodule 
