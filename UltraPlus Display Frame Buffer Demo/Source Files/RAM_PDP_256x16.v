//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           RAM_PDP_256x16.v
// Module:         RAM_PDP_256x16 
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/05/01
// Content:        
//  
//                 
// History:
// 2016-05-01:     Harvey Zhao        first edition.
//     
//=============================================================================


module RAM_PDP_256x16 (
    din,
    write_en,
    waddr, 
    wclk, 
    raddr, 
    rclk, 
    dout
); 

//`ifdef SVP_ICE
/*
    parameter addr_width = 8; 
    parameter data_width = 16; 
    
    input [addr_width-1:0] waddr, raddr; 
    input [data_width-1:0] din; 
    input write_en, wclk, rclk; 
    output [data_width-1:0] dout;

    SB_RAM256x16    ram256x16_inst (
    .RDATA(dout[15:0]),
    .RADDR(raddr[7:0]),
    .RCLK(rclk),
    .RCLKE(1'b1),
    .RE(1'b1),
    .WADDR(waddr[7:0]),
    .WCLK(wclk),
    .WCLKE(1'b1),
    .WDATA(din[15:0]),
    .WE(write_en),
    .MASK(16'b0000000000000000)
    );
    defparam ram256x16_inst.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam ram256x16_inst.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
*/
//`else
    parameter addr_width = 8; 
    parameter data_width = 16; 
    
    input [addr_width-1:0] waddr, raddr; 
    input [data_width-1:0] din; 
    input write_en, wclk, rclk; 
    output [data_width-1:0] dout;
    
    reg [data_width-1:0] dout; 
    reg [data_width-1:0] mem [(1<<addr_width)-1:0] /* synthesis syn_ramstyle = "no_rw_check" */ ; 
    
    always @(posedge wclk) // Write memory. 
    begin if (write_en) 
        mem[waddr] <= din; // Using write address bus. 
    end 
    
    always @(posedge rclk) // Read memory. 
    begin
        dout <= mem[raddr]; // Using read address bus. 
    end
//`endif

endmodule
