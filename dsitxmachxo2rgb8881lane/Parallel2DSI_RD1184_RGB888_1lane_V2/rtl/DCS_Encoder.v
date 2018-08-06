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
// DCS_Encoder.v -- MIPI DSI TX Bridge Reference Design
// 
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 07/16/13  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------
module DCS_Encoder (
     input  resetn           ,
     input  clk              ,
     input  data_en          ,    //Initiates an 8-bit data transfer
     input  escape_en        ,    //Initiates a LP11,LP10,LP00,LP01,LP00 transmission
     input  stop_en          ,    //Returns LP output ports to LP11 idle state
     
     input  [7:0] data       ,    
     output ready            ,    //Tells status of encoder.  1'b1-ready for next transfer, 1'b0-processing current transfer.
     
     output Lp               ,
     output Ln
     
);
     wire [31:0] oneh_data;
     reg [5:0] bitcntr;
     reg q_enable, q_escape_en, q_stop_en;
     reg [31:0] q_oneh_data;
     reg [1:0] LP;
     
     assign start_data          = data_en   & ~q_enable;
     assign start_escape        = escape_en & ~q_escape_en;
     assign stop_data           = stop_en   & ~q_stop_en;
     assign oneh_data[31:30]    = data[0] ? 2'b10 : 2'b01;
     assign oneh_data[29:28]    = 2'b00;                  
     assign oneh_data[27:26]    = data[1] ? 2'b10 : 2'b01;
     assign oneh_data[25:24]    = 2'b00;                  
     assign oneh_data[23:22]    = data[2] ? 2'b10 : 2'b01;
     assign oneh_data[21:20]    = 2'b00;                  
     assign oneh_data[19:18]    = data[3] ? 2'b10 : 2'b01;
     assign oneh_data[17:16]    = 2'b00;                  
     assign oneh_data[15:14]    = data[4] ? 2'b10 : 2'b01;
     assign oneh_data[13:12]    = 2'b00;                  
     assign oneh_data[11:10]    = data[5] ? 2'b10 : 2'b01;
     assign oneh_data[9:8]      = 2'b00;                  
     assign oneh_data[7:6]      = data[6] ? 2'b10 : 2'b01;
     assign oneh_data[5:4]      = 2'b00;                  
     assign oneh_data[3:2]      = data[7] ? 2'b10 : 2'b01;
     assign oneh_data[1:0]      = 2'b00;


     always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
           
           q_escape_en    <= 0;
           q_enable       <= 0;
           q_stop_en      <= 0;
           
           q_oneh_data    <= 0;
           bitcntr        <= 0;
           LP             <= 2'b11;
     
        end
        else begin
           q_escape_en  <= escape_en;
           q_enable     <= data_en;
           q_stop_en    <= stop_en;
           q_oneh_data  <= start_escape            ? 32'b1111_1111_1111_1111_1111_1111_1000_0100 :
                           start_data              ? oneh_data                    :
                                                     q_oneh_data                  ;
     
           bitcntr      <= start_data|start_escape ? 5'd16          : 
                           bitcntr>0               ? bitcntr-1      : 
                                                     0              ;

           LP[1]       <= (bitcntr!=0) ? q_oneh_data[2*bitcntr-1]                :
                          (stop_data ) ? 1'b1                                    : 
                                         LP[1];
           LP[0]       <= (bitcntr!=0) ? q_oneh_data[2*bitcntr-2]                  :
                          (stop_data ) ? 1'b1                                    : 
                                         LP[0];           
        end
     end
     
     assign ready = (bitcntr<=2) & ~data_en & ~escape_en;
     
     assign Lp = LP[1];
     assign Ln = LP[0];
                           
endmodule 