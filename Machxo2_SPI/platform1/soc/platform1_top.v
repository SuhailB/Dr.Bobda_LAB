`include "../soc/platform1.v"

module platform1_top
(
	//input clk_i,
	input reset_n,
	output [1:0] LEDPIO_OUT,
	output  SPIFlashCEJ,
	output  SPIFlashSCK,
	output  SPIFlashSI,
	input  SPIFlashSO,
	output  SPIFlashWPJ

);

wire interalClock;
OSCH OSCH_inst (.OSC(interalClock), .SEDSTDBY(), .STDBY(1'b0));
defparam OSCH_inst.NOM_FREQ = "26.60";

platform1 platform1_u ( 
.clk_i(interalClock),
.reset_n(reset_n)
, .LEDPIO_OUT(LEDPIO_OUT) // [2-1:0]
, .SPIFlashCEJ(SPIFlashCEJ) // 
, .SPIFlashSCK(SPIFlashSCK) // 
, .SPIFlashSI(SPIFlashSI) // 
, .SPIFlashSO(SPIFlashSO) // 
, .SPIFlashWPJ(SPIFlashWPJ)
);

endmodule