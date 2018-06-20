module top_pll(PACKAGEPIN,
               PLLOUTCOREA,
               PLLOUTCOREB,
               PLLOUTGLOBALA,
               PLLOUTGLOBALB,
               RESET);

input PACKAGEPIN;
input RESET;    /* To initialize the simulation properly, the RESET signal (Active Low) must be asserted at the beginning of the simulation */ 
output PLLOUTCOREA;
output PLLOUTCOREB;
output PLLOUTGLOBALA;
output PLLOUTGLOBALB;

SB_PLL40_2F_PAD top_pll_inst(.PACKAGEPIN(PACKAGEPIN),
                             .PLLOUTCOREA(PLLOUTCOREA),
                             .PLLOUTCOREB(PLLOUTCOREB),
                             .PLLOUTGLOBALA(PLLOUTGLOBALA),
                             .PLLOUTGLOBALB(PLLOUTGLOBALB),
                             .EXTFEEDBACK(),
                             .DYNAMICDELAY(),
                             .RESETB(RESET),
                             .BYPASS(1'b0),
                             .LATCHINPUTVALUE(),
                             .LOCK(),
                             .SDI(),
                             .SDO(),
                             .SCLK());

//\\ Fin=27, Fout=54;
defparam top_pll_inst.DIVR = 4'b0000;
defparam top_pll_inst.DIVF = 7'b0000001;
defparam top_pll_inst.DIVQ = 3'b010;
defparam top_pll_inst.FILTER_RANGE = 3'b011;
defparam top_pll_inst.FEEDBACK_PATH = "PHASE_AND_DELAY";
defparam top_pll_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
defparam top_pll_inst.FDA_FEEDBACK = 4'b0000;
defparam top_pll_inst.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
defparam top_pll_inst.FDA_RELATIVE = 4'b0000;
defparam top_pll_inst.SHIFTREG_DIV_MODE = 2'b00;
defparam top_pll_inst.PLLOUT_SELECT_PORTA = "SHIFTREG_90deg";
defparam top_pll_inst.PLLOUT_SELECT_PORTB = "SHIFTREG_90deg";
defparam top_pll_inst.ENABLE_ICEGATE_PORTA = 1'b0;
defparam top_pll_inst.ENABLE_ICEGATE_PORTB = 1'b0;

endmodule
