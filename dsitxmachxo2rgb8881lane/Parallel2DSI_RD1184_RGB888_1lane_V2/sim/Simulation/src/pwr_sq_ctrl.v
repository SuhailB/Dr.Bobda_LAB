//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved.
//=============================================================================
// File:           pwr_sq_ctrl.v
// Module:         pwr_sq_ctrl
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

module pwr_sq_ctrl(
   input             clk,
   input             resetn,
   output            lcd_rst,
   output            lcd_1v8_en,
   output            lcd_3v0_en,
   output  reg       hs_start
);

//5ms timer
localparam ST_IDLE = 0;
localparam ST_1V8_UP = 1;
localparam ST_RES_UP = 2;
localparam ST_RES_DW = 3;
localparam ST_RES_UP1 = 4;
localparam ST_3V0_UP = 5;
localparam ST_CMD11 = 6;
localparam ST_SYS_RUN = 7;

localparam TIMER_CNT_1MS = 27000;

reg        lcd_rst;
reg        lcd_1v8_en;
reg        lcd_3v0_en;
reg [2:0]  state;
reg [15:0] timer;
reg [10:0] timer_1ms;
reg        timer_out;
reg        clr_timer;


always @(posedge clk or negedge resetn)
begin
   if (~resetn)
   begin
      timer <= 0;
      timer_out <= 0;
      timer_1ms <= 0;
   end
   else if (clr_timer)
   begin
      timer <= 0;
      timer_out <= 0;
      timer_1ms <= 0;
   end
   else if (timer <TIMER_CNT_1MS)
   begin  //1ms with 9MHz clk
      timer <= timer +1;
      timer_out <= 0;
   end
   else
   begin
      timer      <= 0;
      timer_1ms  <= timer_1ms + 1;
   end
end

//Generate l.8v_en,3.3v_en,reset control according to LH154Q lcd display screen
always @(posedge clk or negedge resetn)
begin
   if (~resetn)
   begin
      state      <= ST_IDLE;
      clr_timer  <= 1;
      lcd_1v8_en <= 0;
      lcd_rst    <= 0;
      lcd_3v0_en <= 0;
      hs_start   <= 0;
   end
   else
   begin
       case (state)
       ST_IDLE :
       begin
          state <= ST_1V8_UP;
          clr_timer <= 1;
          lcd_1v8_en <= 0;
          lcd_rst <= 0;
          lcd_3v0_en <= 0;
       end
       ST_1V8_UP :
       begin
          lcd_1v8_en <= 1;
          clr_timer <= 0;
          if (timer_1ms==1)
          begin   //5ms
             clr_timer <= 1;
             state <= ST_RES_UP;
          end
       end
       ST_RES_UP :
       begin
          lcd_rst <= 1;
          clr_timer <= 0;
          if (timer_1ms==260)
          begin   //250ms
             clr_timer <= 1;
             state <= ST_RES_DW;
          end
       end
       ST_RES_DW :
       begin
          lcd_rst <= 0;
          clr_timer <= 0;
          if (timer_1ms==6 )
          begin //5ms
             clr_timer <= 1;
             state <= ST_RES_UP1;
          end
       end
       ST_RES_UP1 :
       begin
          lcd_rst <= 1;
          clr_timer <= 0;
          if (timer_1ms==6 && timer==0)
          begin  //5ms
             clr_timer <= 1;
             state <= ST_3V0_UP;
          end
       end
       ST_3V0_UP :
       begin
          lcd_3v0_en <= 1;
          clr_timer <= 0;
          clr_timer <= 1;
          state <= ST_CMD11;
       end
       ST_CMD11 :
       begin
          if (timer_1ms==6 )
             hs_start<=(timer==0)?1:hs_start; ///set low before system_down

          clr_timer <= 0;
          if (timer_1ms==200 )
          begin
             clr_timer <= 0; ////keep running for PWM control;
             state <= ST_SYS_RUN;
          end
       end
       ST_SYS_RUN :
       begin
          if (~resetn)
             state <= ST_IDLE;
       end
       default :
       begin
          state <= ST_IDLE;
       end
       endcase
   end
end

// // SB IO instance  for LCD Display power up sequence
// SB_IO_OD                       inst_lcd_rst                 (
//    .PACKAGEPIN                 (pwr_lcd_rst                 ),
//    .LATCHINPUTVALUE            (1'b0                        ),
//    .CLOCKENABLE                (1'b0                        ),
//    .INPUTCLK                   (1'b0                        ),
//    .OUTPUTCLK                  (1'b0                        ),
//    .OUTPUTENABLE               (1'b0                        ),
//    .DOUT0                      (lcd_rst                     ),
//    .DOUT1                      (1'b0                        ),
//    .DIN0                       (                            ),
//    .DIN1                       (                            )
// );
// defparam inst_lcd_rst.PIN_TYPE = 6'b011000;
// defparam inst_lcd_rst.NEG_TRIGGER = 1'b0;
//
// SB_IO_OD                       inst_lcd_1v8_en              (
//    .PACKAGEPIN                 (pwr_lcd_1v8_en              ),
//    .LATCHINPUTVALUE            (1'b0                        ),
//    .CLOCKENABLE                (1'b0                        ),
//    .INPUTCLK                   (1'b0                        ),
//    .OUTPUTCLK                  (1'b0                        ),
//    .OUTPUTENABLE               (1'b0                        ),
//    .DOUT0                      (lcd_1v8_en                  ),
//    .DOUT1                      (1'b0                        ),
//    .DIN0                       (                            ),
//    .DIN1                       (                            )
// );
// defparam inst_lcd_1v8_en.PIN_TYPE = 6'b011000;
// defparam inst_lcd_1v8_en.NEG_TRIGGER = 1'b0;
//
// SB_IO_OD                       inst_lcd_3v0_en              (
//    .PACKAGEPIN                 (pwr_lcd_3v0_en              ),
//    .LATCHINPUTVALUE            (1'b0                        ),
//    .CLOCKENABLE                (1'b0                        ),
//    .INPUTCLK                   (1'b0                        ),
//    .OUTPUTCLK                  (1'b0                        ),
//    .OUTPUTENABLE               (1'b0                        ),
//    .DOUT0                      (lcd_3v0_en                  ),
//    .DOUT1                      (1'b0                        ),
//    .DIN0                       (                            ),
//    .DIN1                       (                            )
// );
// defparam inst_lcd_3v0_en.PIN_TYPE = 6'b011000;
// defparam inst_lcd_3v0_en.NEG_TRIGGER = 1'b0;
endmodule
