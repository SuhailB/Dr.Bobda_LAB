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
// DCS_ROM.v -- MIPI DSI TX Bridge Reference Design
// 
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 07/16/13  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------
module DCS_ROM #(
   parameter wait_time = 1000         //Time to wait between data transfers
)(
   input  resetn                ,           
   input  clk                   ,
   output reg data_en           ,     //Set 'high' to transfer data[7:0]
   output reg escape_en         ,     //Set 'high' to initate escape mode
   output reg stop_en           ,     //Set 'high' to initate LP11 idle state
   
   output [7:0] data            ,
   input  ready                 ,     //Controller will idle unless ready=1'b1
   
   output reg done                    //Data transfer from ROM is complete
);
   wire [7:0] dcs_data [175:0];
   reg  [15:0] wait_cnt;
   reg  [7:0] current_data;  
   reg  [10:0] byte_cnt;

   always @(posedge clk or negedge resetn)
       if(!resetn) begin
       	   current_data     <= 0;
           byte_cnt         <= 0;
           wait_cnt         <= 0;
           data_en          <= 0;
           escape_en        <= 0;
           stop_en          <= 0;
           done             <= 0;
                      
       end
       else begin
          current_data    <= dcs_data[byte_cnt]; 
          byte_cnt        <= (byte_cnt == 'd176   ) ? byte_cnt     :
                             (ready & wait_cnt==1) ? byte_cnt + 1 : byte_cnt;
          wait_cnt        <= (dcs_data[byte_cnt]==8'h87 & current_data!=8'h87) ? wait_time :
                             wait_cnt > 1 ? wait_cnt - 1  : 1; 
          data_en         <= (ready & wait_cnt==1);
          escape_en       <= (wait_cnt==2);             
          stop_en         <= (wait_cnt==wait_time-'d16); 
          done            <= byte_cnt == 'd176;     
       end

   assign data = current_data;
   assign dcs_data[0  ] = 8'h87; 
   assign dcs_data[1  ] = 8'h05;
   assign dcs_data[2  ] = 8'h01;
   assign dcs_data[3  ] = 8'h00;
   assign dcs_data[4  ] = 8'h10;
   
   assign dcs_data[5  ] = 8'h87; 
   assign dcs_data[6  ] = 8'h05;
   assign dcs_data[7  ] = 8'h28;
   assign dcs_data[8  ] = 8'h00;
   assign dcs_data[9  ] = 8'h06;
   
   assign dcs_data[10 ] = 8'h87; 
   assign dcs_data[11 ] = 8'h15;
   assign dcs_data[12 ] = 8'h35;
   assign dcs_data[13 ] = 8'h00;
   assign dcs_data[14 ] = 8'h2F;
   
   assign dcs_data[15 ] = 8'h87; 
   assign dcs_data[16 ] = 8'h15;
   assign dcs_data[17 ] = 8'h36;
   assign dcs_data[18 ] = 8'hC8;
   assign dcs_data[19 ] = 8'h1D;																	
   assign dcs_data[20 ] = 8'h87; 
   assign dcs_data[21 ] = 8'h15;
   assign dcs_data[22 ] = 8'hFA;
   assign dcs_data[23 ] = 8'h04;
   assign dcs_data[24 ] = 8'h1D;																	
   assign dcs_data[25 ] = 8'h87; 
   assign dcs_data[26 ] = 8'h39;
   assign dcs_data[27 ] = 8'h04;
   assign dcs_data[28 ] = 8'h00;
   assign dcs_data[29 ] = 8'h2C;
   assign dcs_data[30 ] = 8'hC1;
   assign dcs_data[31 ] = 8'h15;
   assign dcs_data[32 ] = 8'h56;
   assign dcs_data[33 ] = 8'h16;
   assign dcs_data[34 ] = 8'hFB;												
   assign dcs_data[35 ] = 8'h6A; 
   assign dcs_data[36 ] = 8'h87;
   assign dcs_data[37 ] = 8'h39;
   assign dcs_data[38 ] = 8'h05;
   assign dcs_data[39 ] = 8'h00;
   assign dcs_data[40 ] = 8'h36;
   assign dcs_data[41 ] = 8'hB6;
   assign dcs_data[42 ] = 8'h02;
   assign dcs_data[43 ] = 8'hE2;
   assign dcs_data[44 ] = 8'hFF;
   assign dcs_data[45 ] = 8'h04;											
   assign dcs_data[46 ] = 8'h1F; 
   assign dcs_data[47 ] = 8'h69;
   assign dcs_data[48 ] = 8'h87;
   assign dcs_data[49 ] = 8'h39;
   assign dcs_data[50 ] = 8'h04;
   assign dcs_data[51 ] = 8'h00;
   assign dcs_data[52 ] = 8'h2C;
   assign dcs_data[53 ] = 8'hB1;
   assign dcs_data[54 ] = 8'h00;
   assign dcs_data[55 ] = 8'h10;												
   assign dcs_data[56 ] = 8'h1A; 
   assign dcs_data[57 ] = 8'h4C;
   assign dcs_data[58 ] = 8'h54;
   assign dcs_data[59 ] = 8'h87;
   assign dcs_data[60 ] = 8'h15;																	
   assign dcs_data[61 ] = 8'hB4; 
   assign dcs_data[62 ] = 8'h00;
   assign dcs_data[63 ] = 8'h19;
   assign dcs_data[64 ] = 8'h87;
   assign dcs_data[65 ] = 8'h39;
   assign dcs_data[66 ] = 8'h03;
   assign dcs_data[67 ] = 8'h00;
   assign dcs_data[68 ] = 8'h09;
   assign dcs_data[69 ] = 8'hC5;													
   assign dcs_data[70 ] = 8'h00; 
   assign dcs_data[71 ] = 8'h48;
   assign dcs_data[72 ] = 8'h58;
   assign dcs_data[73 ] = 8'hC4;
   assign dcs_data[74 ] = 8'h87;
   assign dcs_data[75 ] = 8'h39;
   assign dcs_data[76 ] = 8'h11;
   assign dcs_data[77 ] = 8'h00;
   assign dcs_data[78 ] = 8'h33;
   assign dcs_data[79 ] = 8'hE0;
   assign dcs_data[80 ] = 8'h00;
   assign dcs_data[81 ] = 8'h07;
   assign dcs_data[82 ] = 8'h0D;
   assign dcs_data[83 ] = 8'h10;
   assign dcs_data[84 ] = 8'h13;
   assign dcs_data[85 ] = 8'h19;
   assign dcs_data[86 ] = 8'h0F;
   assign dcs_data[87 ] = 8'h0C;
   assign dcs_data[88 ] = 8'h05;
   assign dcs_data[89 ] = 8'h08;
   assign dcs_data[90 ] = 8'h06;
   assign dcs_data[91 ] = 8'h13;
   assign dcs_data[92 ] = 8'h0F;
   assign dcs_data[93 ] = 8'h30; 
   assign dcs_data[94 ] = 8'h20;
   assign dcs_data[95 ] = 8'h1F;
   assign dcs_data[96 ] = 8'hD8;
   assign dcs_data[97 ] = 8'h6A;
   assign dcs_data[98 ] = 8'h87;
   assign dcs_data[99 ] = 8'h39;
   assign dcs_data[100] = 8'h11;
   assign dcs_data[101] = 8'h00;
   assign dcs_data[102] = 8'h33;
   assign dcs_data[103] = 8'hE1;
   assign dcs_data[104] = 8'h1F;
   assign dcs_data[105] = 8'h20;
   assign dcs_data[106] = 8'h30;
   assign dcs_data[107] = 8'h00;
   assign dcs_data[108] = 8'h2D;
   assign dcs_data[109] = 8'h06;
   assign dcs_data[110] = 8'h08;
   assign dcs_data[111] = 8'h15;
   assign dcs_data[112] = 8'h0C;
   assign dcs_data[113] = 8'h0F;
   assign dcs_data[114] = 8'h19;
   assign dcs_data[115] = 8'h13;
   assign dcs_data[116] = 8'h10; 
   assign dcs_data[117] = 8'h0D;
   assign dcs_data[118] = 8'h07;
   assign dcs_data[119] = 8'h00;
   assign dcs_data[120] = 8'hBE;																	
   assign dcs_data[121] = 8'h02; 
   assign dcs_data[122] = 8'h87;
   assign dcs_data[123] = 8'h15;
   assign dcs_data[124] = 8'hEA;
   assign dcs_data[125] = 8'h00;																	
   assign dcs_data[126] = 8'h0F; 
   assign dcs_data[127] = 8'h87;
   assign dcs_data[128] = 8'h15;
   assign dcs_data[129] = 8'hAE;
   assign dcs_data[130] = 8'h03;																	
   assign dcs_data[131] = 8'h05; 
   assign dcs_data[132] = 8'h87;
   assign dcs_data[133] = 8'h15;
   assign dcs_data[134] = 8'h3A;
   assign dcs_data[135] = 8'h77;
   assign dcs_data[136] = 8'h1F;
   
   assign dcs_data[137] = 8'h87;
   assign dcs_data[138] = 8'h39;
   assign dcs_data[139] = 8'h07;
   assign dcs_data[140] = 8'h00;
   assign dcs_data[141] = 8'h2A;
   assign dcs_data[142] = 8'h33;
   assign dcs_data[143] = 8'h00;								
   assign dcs_data[144] = 8'h00; 
   assign dcs_data[145] = 8'h03;
   assign dcs_data[146] = 8'h20;
   assign dcs_data[147] = 8'h00;
   assign dcs_data[148] = 8'h00;
   assign dcs_data[149] = 8'h5D;
   assign dcs_data[150] = 8'h2B;
   assign dcs_data[151] = 8'h87;
   assign dcs_data[152] = 8'h39;									
   assign dcs_data[153] = 8'h03; 
   assign dcs_data[154] = 8'h00;
   assign dcs_data[155] = 8'h09;
   assign dcs_data[156] = 8'h37;
   assign dcs_data[157] = 8'h00;															
   assign dcs_data[158] = 8'h00; 
   assign dcs_data[159] = 8'h98;
   assign dcs_data[160] = 8'h33;
   
   assign dcs_data[161] = 8'h87;
   assign dcs_data[162] = 8'h05;																	
   assign dcs_data[163] = 8'h11; 
   assign dcs_data[164] = 8'h00;
   assign dcs_data[165] = 8'h36;
   
   assign dcs_data[166] = 8'h87;
   assign dcs_data[167] = 8'h05;																	           
   assign dcs_data[168] = 8'h29;
   assign dcs_data[169] = 8'h00;
   assign dcs_data[170] = 8'h1C;
   
   assign dcs_data[171] = 8'h87;
   assign dcs_data[172] = 8'h05;
   assign dcs_data[173] = 8'h2C;
   assign dcs_data[174] = 8'h00;
   assign dcs_data[175] = 8'h25;
   
endmodule
