`timescale 1ms/1ms

module platform1_tb();

reg reset_n;
wire [1:0] LEDPIO_OUT;
wire  SPIFlashCEJ;
wire  SPIFlashSCK;
wire  SPIFlashSI;
reg SPIFlashSO;
wire  SPIFlashWPJ;


platform1_top DUT (
.reset_n(reset_n)
, .LEDPIO_OUT(LEDPIO_OUT) // [8-1:0]
, .SPIFlashCEJ(SPIFlashCEJ) // 
, .SPIFlashSCK(SPIFlashSCK) // 
, .SPIFlashSI(SPIFlashSI) // 
, .SPIFlashSO(SPIFlashSO) // 
, .SPIFlashWPJ(SPIFlashWPJ)
);

initial begin

reset_n = 'b1;

#1;

reset_n = 'b0;

#1;

reset_n = 'b1;

#4000

$finish;

end

endmodule

