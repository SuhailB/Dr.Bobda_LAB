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
// BYTE_PACKETIZER.v
// 
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 07/16/13  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------

module BYTE_PACKETIZER #(
     parameter              word_width = 24    ,
     parameter              lane_width = 2     ,
     parameter              dt         = 6'h3E ,
     parameter              crc16      = 1     ,
	 parameter              version    = 1
)(
     input                   reset_n       ,
     input                   PIXCLK        ,
     input                   VSYNC         ,
     input                   HSYNC         ,
     input                   DE            ,
     input [word_width-1:0]  PIXDATA       ,
                                
     input [1:0]             VC            ,
     input [15:0]            WC            ,
                  
     input                   byte_clk      ,   
                  
     output                  hs_en         ,
     output [7:0]            byte_D3       ,
     output [7:0]            byte_D2       ,
     output [7:0]            byte_D1       ,
     output [7:0]            byte_D0       ,
     
     input                   EoTp                             
);
reg q_DE;
reg [1:0] q_VC;
reg [15:0] q_WC;
wire w_edge_detect;
wire [31:0] byte_data;
wire [31:0] bytepkt;
wire [5:0]  data_type;
wire [15:0] crc;

      parallel2byte #(
          .word_width(word_width)        ,
          .lane_width(lane_width)        ,
          .dt(dt)      
      ) u_parallel2byte(
          .reset_n   (reset_n)           ,
          .PIXCLK    (PIXCLK)            ,
          .DE        (DE)                ,
          .PIXDATA   (PIXDATA)           ,           
     
          .byte_en   (byte_en)           ,
          .byte_clk  (byte_clk)          ,
          .byte_data (byte_data)         ,
          
          .VSYNC      (VSYNC)                 ,
          .HSYNC      (HSYNC)                 ,
          .VSYNC_start(VSYNC_start)           ,
          .VSYNC_end  (VSYNC_end)             ,
          .HSYNC_start(HSYNC_start)           ,
          .HSYNC_end  (HSYNC_end)             ,
          .data_type  (data_type) 
     );
     
     assign w_edge_detect = (VSYNC_start | HSYNC_start | VSYNC_end | HSYNC_end | ~q_DE&DE);     
     always @(posedge byte_clk or negedge reset_n)
          if(!reset_n) begin
               q_DE          <= 0;
               q_VC          <= 0;
               q_WC          <= 0;
          end
          else begin
               q_DE          <= DE;
               q_VC          <= w_edge_detect ? VC : q_VC;
               q_WC          <= w_edge_detect ? WC : q_WC;
          end    
                 
     packetheader #(
          .lane_width(lane_width)           
      ) u_packetheader
     (
         .reset_n   (reset_n                                           )           ,
         .short_en  (VSYNC_start | HSYNC_start | VSYNC_end | HSYNC_end )           ,
         .long_en   (byte_en                                           )           ,
         .byte_clk  (byte_clk                                          )           ,
         .byte_data (byte_data                                         )           ,
         
         .vc        (q_VC                    )           , //VC
         .dt        (data_type               )           , //data_type
         .wc        (q_WC                    )           , //WC
         .chksum_rdy(chksum_rdy              )           ,
         .chksum    (crc                     )           ,
         
         .bytepkt_en(hs_en                   )           ,
         .bytepkt   (bytepkt                 )           ,
         .EoTp      (EoTp                    )
     );

     generate
          if(crc16 & lane_width==1) begin     
              crc16_1lane u_crc16(
                  .reset  ((~q_DE&DE)   )  ,
                  .clk    (byte_clk      )  ,
                  .enable (byte_en       )  ,
                  .data   (byte_data)  ,
                  .ready  (chksum_rdy   )  ,
                  .crc    (crc)        
              );     
          end
          if(crc16 & lane_width==2) begin     
              crc16_2lane u_crc16(
                  .reset  ((~q_DE&DE)   )  ,
                  .clk    (byte_clk      )  ,
                  .enable (byte_en       )  ,
                  .data   (byte_data)  ,
                  .ready  (chksum_rdy   )  ,
                  .crc    (crc)        
              );     
          end
          if(crc16 & lane_width==4) begin     
              crc16_4lane u_crc16(
                  .reset  ((~q_DE&DE)   )  ,
                  .clk    (byte_clk      )  ,
                  .enable (byte_en       )  ,
                  .data   (byte_data)  ,
                  .ready  (chksum_rdy   )  ,
                  .crc    (crc)        
              );     
          end
    endgenerate                  
                          
    
	assign byte_D3 = bytepkt[31:24];
	assign byte_D2 = bytepkt[23:16];
	assign byte_D1 = bytepkt[15:8];
	assign byte_D0 = bytepkt[7:0];

endmodule