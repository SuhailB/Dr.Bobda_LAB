// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2013 by Lattice Semiconductor Corporation
// --------------------------------------------------------------------
//
// Permission:
//
//   Lattice Semiconductor grants permission to use this code for use
//   in synthesis for any Lattice programmable logic product.  Other
//   use of this code, including the selling or duplication of any
//   portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL or Verilog source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Lattice Semiconductor provides no warranty
//   regarding the use or functionality of this code.
//
// --------------------------------------------------------------------
//
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A
//
//                     TEL: 1-800-Lattice (USA and Canada)
//                          408-826-6000 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
//
// --------------------------------------------------------------------
//
// top.v -- MIPI DSI TX Bridge Reference Design
//
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 07/16/13  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------

`include "compiler_directives.v"

module top #(
     parameter              VC         = 0             ,  //2-bit Virtual Channel Number
     //parameter              WC         = 16'h05A0      ,  //16-bit Word Count in byte packets.  16'h05A0 = 16'd1440 bytes = 1440 * (8-bits per byte) / (24-bits per pixel for RGB888) = 480 pixels
     parameter              WC         = 16'h02D0      ,  //16-bit Word Count in byte packets.  16'h02D0 = 16'd720 bytes = 720 * (8-bits per byte) / (24-bits per pixel for RGB888) = 240 pixel width
	 parameter              word_width = 24            ,  //Pixel Bus Width.  Example: RGB888 = 8-bits Red, 8-bits Green, 8-bits Blue = 24 bits/pixel
     parameter              DT         = 6'h3E         ,  //6-bit MIPI DSI Data Type.  Example: dt = 6'h3E = RGB888
     parameter              testmode   = 1             ,  //adds colorbar pattern generator for testing purposes.  Operates off of PIXCLK input clock and reset_n input reset
     parameter              crc16      = 1             ,  //appends 16-bit checksum to the end of long packet transfers.  0 = off, 1 = on.  Turning off will append 16'hFFFF to end of long packet.  Turning off will reduce resource utilization.
     parameter              EoTp       = 1             ,  //appends End of Transfer packet after any short packet or long packet data transfer.  0 = off, 1 = on.  appened as a data burst after packet.
     parameter              reserved   = 0                //reserved=0 at all times
)(
     input                  reset_n                    ,  // resets design (active low)

     output                 DCK                        ,  // HS (High Speed) Clock

     `ifdef HS_3
          output        D3                             ,  //HS (High Speed) Data Lane 3
          output        D2                             ,  //HS (High Speed) Data Lane 2
          output        D1                             ,  //HS (High Speed) Data Lane 1
          output        D0                             ,  //HS (High Speed) Data Lane 0

     `elsif HS_2
          output        D2                             ,
          output        D1                             ,
          output        D0                             ,

     `elsif HS_1
          output        D1                             ,
          output        D0                             ,

     `elsif HS_0
          output        D0                             ,
     `endif
     `ifdef LP_CLK
          inout   [1:0] LPCLK                          ,  //LP (Low Power) External Interface Signals for Clock Lane
     `endif
     `ifdef LP_3
          inout   [1:0] LP3                            ,  //LP (Low Power) External Interface Signals for Data Lane 3
     `endif
     `ifdef LP_2
          inout   [1:0] LP2                            ,  //LP (Low Power) External Interface Signals for Data Lane 2
     `endif
     `ifdef LP_1
          inout   [1:0] LP1                            ,  //LP (Low Power) External Interface Signals for Data Lane 1
     `endif
     `ifdef LP_0
          inout   [1:0] LP0                            ,  //LP (Low Power) External Interface Signals for Data Lane 0
     `endif

     input                  PIXCLK                     ,  //Pixel clock input for parallel interface
     input                  VSYNC                      ,  //Vertical Sync input for parallel interface
     input                  HSYNC                      ,  //Horizontal Sync input for parallel interface
     input                  DE                         ,  //Data Enable input for parallel interface
     input [word_width-1:0] PIXDATA                    ,  //Pixel data bus for parallel interface

		 output [1:0] LED,
		 input  LCD_sync,
		 output LCD_reset,
		 output LCD_enable_1v8,
		 output LCD_enable_3v0,
		 output LCD_backlight_PWM
);
     wire [7:0] byte_D3, byte_D2, byte_D1, byte_D0;
     wire [7:0] byte_D3_out, byte_D2_out, byte_D1_out, byte_D0_out;
     wire [15:0] word_cnt;
     wire [1:0] lp_clk;
     wire [1:0] lp_data;
     wire [word_width-1:0] w_pixdata;
     wire w_pixclk, CLKOP, CLKOS, byte_clk;


		 // LCD reset
	 	wire LCD_reset_wire;
	 	assign LCD_reset = LCD_reset_wire;

	 	// LCD backlight
	 	assign LCD_backlight_PWM = done;

	 	// LCD enable
	 	wire LCD_enable_1v8_wire;
	 	wire LCD_enable_3v0_wire;
	 	assign LCD_enable_1v8 = LCD_enable_1v8_wire; // 1.8V enable
	 	assign LCD_enable_3v0 = LCD_enable_3v0_wire; // 3.0V enable

	 	// // LCD synchronization signal
	 	wire LCD_sync_wire;
	 	assign LCD_sync_wire = LCD_sync;
	 	assign LED[1] = LCD_sync_wire;


	 	wire powerSequenceDone;

	 	pwr_sq_ctrl	LCD_Power_Controller(
	 		.clk					(w_pixclk),
	 		.resetn				(reset_n),
	 		.lcd_rst			(LCD_reset_wire),
	 		.lcd_1v8_en		(LCD_enable_1v8_wire),
	 		.lcd_3v0_en		(LCD_enable_3v0_wire),
	 		.hs_start			(powerSequenceDone)
	 	);




     parameter  lane_width = `ifdef HS_3  4
                             `elsif HS_2  3
                             `elsif HS_1  2
                             `elsif HS_0  1
                             `endif ;

generate
    if(DT=='h3E & lane_width==1)
         // pll_pix2byte_RGB888_1lane u_pll_pix2byte_RGB888_1lane(.RST(~reset_n), .CLKI(w_pixclk), .CLKOP(CLKOP), .CLKOS(CLKOS), .CLKOS2(byte_clk), .LOCK());
				 pll_pix2byte_RGB888_1lane u_pll_pix2byte_RGB888_1lane(.RST(~powerSequenceDone), .CLKI(w_pixclk), .CLKOP(CLKOP), .CLKOS(CLKOS), .CLKOS2(byte_clk), .LOCK());
endgenerate
generate
    if(DT=='h3E & lane_width==2)
         pll_pix2byte_RGB888_2lane u_pll_pix2byte_RGB888_2lane(.RST(~reset_n), .CLKI(w_pixclk), .CLKOP(CLKOP), .CLKOS(CLKOS), .CLKOS2(byte_clk), .LOCK());
endgenerate
generate
    if(DT=='h3E & lane_width==4)
         pll_pix2byte_RGB888_4lane u_pll_pix2byte_RGB888_4lane(.RST(~reset_n), .CLKI(w_pixclk), .CLKOP(CLKOP), .CLKOS(CLKOS), .CLKOS2(byte_clk), .LOCK());
endgenerate

  assign word_cnt = w_de? WC : 16'h0000;
     BYTE_PACKETIZER #(
          .word_width(word_width) ,
          .lane_width(lane_width) ,
          .dt        (DT        ) ,
          .crc16     (crc16     )
     )
     u_BYTE_PACKETIZER (
          .reset_n         (reset_n)  ,
          .PIXCLK          (w_pixclk)   ,
          .VSYNC           (w_vsync)    ,
          .HSYNC           (w_hsync)    ,
          .DE              (w_de)       ,
          .PIXDATA         (w_pixdata)  ,

          .VC              (VC)       ,
          .WC              (word_cnt)       ,

          .byte_clk        (byte_clk) ,

          .hs_en           (hs_en)    ,
          .byte_D3         (byte_D3)  ,
          .byte_D2         (byte_D2)  ,
          .byte_D1         (byte_D1)  ,
          .byte_D0         (byte_D0)  ,
          .EoTp            (EoTp)
     );

     LP_HS_DELAY_CNTRL
     u_LP_HS_DELAY_CNTRL(
         .reset_n   (reset_n),
         .byte_clk  (byte_clk),
         .hs_en     (hs_en),
         .byte_D3_in(byte_D3),
         .byte_D2_in(byte_D2),
         .byte_D1_in(byte_D1),
         .byte_D0_in(byte_D0),
		  .hs_clk_en  (hs_clk_en)               ,
    .hsxx_clk_en(hsxx_clk_en)         ,
    .hs_data_en (hs_data_en)          ,
         .lp_clk  (lp_clk),
         .lp_data (lp_data),
         .byte_D3_out(byte_D3_out),
         .byte_D2_out(byte_D2_out),
         .byte_D1_out(byte_D1_out),
         .byte_D0_out(byte_D0_out)
);


   DPHY_TX_INST u_DPHY_TX_INST (
          .reset_n         (reset_n)       ,      //Resets the Design
          .DCK             (DCK)           ,      //HS (High Speed) Clock
		  `ifdef PLL
              .byte_clk (byte_clk)         ,      //Byte Clock
		   `else
          .CLKOP           (CLKOP)         ,      //Byte Clock
          .CLKOS           (CLKOS)         ,
            `endif
          `ifdef HS_3
               .D3         (D3)            ,      //HS (High Speed) Data Lane 3
               .D2         (D2)            ,      //HS (High Speed) Data Lane 2
               .D1         (D1)            ,      //HS (High Speed) Data Lane 1
               .D0         (D0)            ,      //HS (High Speed) Data Lane 0
               .byte_D3    (byte_D3_out)       ,      //HS (High Speed) Byte Data, Lane 3
               .byte_D2    (byte_D2_out)       ,      //HS (High Speed) Byte Data, Lane 2
               .byte_D1    (byte_D1_out)       ,      //HS (High Speed) Byte Data, Lane 1
               .byte_D0    (byte_D0_out)       ,      //HS (High Speed) Byte Data, Lane 0
          `elsif HS_2
               .D2         (D2)            ,
               .D1         (D1)            ,
               .D0         (D0)            ,
               .byte_D2    (byte_D2_out)       ,
               .byte_D1    (byte_D1_out)       ,
               .byte_D0    (byte_D0_out)       ,
          `elsif HS_1
               .D1         (D1)            ,
               .D0         (D0)            ,
               .byte_D1    (byte_D1_out)       ,
               .byte_D0    (byte_D0_out)       ,
          `elsif HS_0
               .D0         (D0)            ,
               .byte_D0    (byte_D0_out)       ,
          `endif
          `ifdef LP_CLK
               .LPCLK      (LPCLK)         ,
               .lpclk_out  (lp_clk)         ,
               .lpclk_in   ()              ,
               .lpclk_dir  (1'b1)             ,
          `endif
          `ifdef LP_3
               .LP3        (LP3)           ,
               .lp3_out    (lp_data)         ,
               .lp3_in     ()              ,
               .lp3_dir    (1'b1)             ,
          `endif
          `ifdef LP_2
               .LP2        (LP2)           ,
               .lp2_out    (lp_data)         ,
               .lp2_in     ()              ,
               .lp2_dir    (1'b1)             ,
          `endif
          `ifdef LP_1
               .LP1        (LP1)           ,
               .lp1_out    (lp_data)         ,
               .lp1_in     ()              ,
               .lp1_dir    (1'b1)             ,
          `endif
          `ifdef LP_0
               .LP0        (LP0)           ,
               .lp0_out    (w_LP0)         ,
               .lp0_in     ()              ,
               .lp0_dir    (1'b1)             ,
          `endif
               .hs_clk_en  (~(|lp_clk)& done)         ,
               .hsxx_clk_en(hsxx_clk_en ),
               .hs_data_en (~(|lp_data) & done)
);
wire [1:0] w_LP0;
assign w_LP0 = done ? lp_data : {Lp,Ln};

wire [7:0] dcs_data;


     DCS_ROM u_DCS_ROM
     (
        .resetn    (reset_n      ) ,
        .clk       (byte_clk     ) ,
        .data_en   (dcs_data_en  ) ,
        .escape_en (dcs_escape_en) ,
        .stop_en   (dcs_stop_en  ) ,
        .data      (dcs_data     ) ,
        .ready     (dcs_ready    ) ,
        .done      (done         )
     );
     DCS_Encoder u_DCS_Encoder
     (
        .resetn     (reset_n      ) ,
        .clk        (byte_clk     ) ,
        .data_en    (dcs_data_en  ) ,
        .escape_en  (dcs_escape_en) ,
        .stop_en    (dcs_stop_en  ) ,
        .data       (dcs_data     ) ,
        .ready      (dcs_ready    ) ,
        .Lp         (Lp           ),
        .Ln         (Ln           )
     );


generate
    if(testmode==1) begin
        colorbar_gen 	#(
	        .h_active  ('d240 ),
	        .h_total   ('d620 ),
	        .v_active  ('d240 ),
	        .v_total   ('d830 ),
	        .H_FRONT_PORCH ('d40),
            .H_SYNCH       ('d44),
            .V_FRONT_PORCH ('d5),
            .V_SYNCH       ('d5),
            .mode          (testmode)
        ) u_colorbar_gen
        (
            .rstn       (done  ) ,
            .m148_5_clk (w_pixclk) ,
            .fv         () ,
            .lv         (w_de) ,
            .data       (w_pixdata),
            .vsync      (w_vsync),
            .hsync      (w_hsync)
        );
    end
    else begin
        assign w_pixclk  = PIXCLK;
        assign w_de      = DE;
        assign w_vsync   = VSYNC;
        assign w_hsync   = HSYNC;
        assign w_pixdata = PIXDATA;
    end
endgenerate

generate
    if(reserved==1) begin
        OSCH #(.NOM_FREQ("20.46")) u_OSCH(.STDBY(0),.OSC(w_pixclk));  //reserved for internal use only
    end
    else begin
        assign w_pixclk  = PIXCLK;
    end
endgenerate
endmodule
