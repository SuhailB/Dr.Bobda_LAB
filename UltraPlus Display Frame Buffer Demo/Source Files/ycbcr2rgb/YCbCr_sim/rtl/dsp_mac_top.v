///////////////////////////////////////////////////////////////////////
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ====================================================================
// Copyright 2014 (c) Lattice Semiconductor Corporation
// ALL RIGHTS RESERVED
//
// This confidential and proprietary software may be used only as
// authorised by a licensing agreement from Lattice Semiconductor 
// Corporation.
// The entire notice above must be reproduced on all authorized
// copies and copies may only be made to the extent permitted
// by a licensing agreement from Lattice Semiconductor Corporation.
//
// ====================================================================
// File Details         
// ====================================================================
// Project     : Frame Buffer 
// File        : .v
// Title       : 
// 
// Description : 
//                    
// Additional info. : 
// ====================================================================

`timescale 1ns/100ps

module dsp_mac_top #(
   parameter  OFFSET = 32'h0,//16'h24d0,
   parameter  Y1     = 0,//16'h24d0,
   parameter  Y2     = 0,//16'h0,
   parameter  Y3     = 0) //16'h3279) 
( 
   rst,
   clk,
   clk_en,
   dvalid_in,
   vdata_in,
   dvalid_out,
   vdata_out
);

//parameter definition
parameter   DWIDTH         = 16;
parameter   CWIDTH         = 16;
parameter   OWIDTH         = 32;

input            rst;
input            clk;
input            clk_en;
input            dvalid_in;
input  [7:0]     vdata_in;
output           dvalid_out;
output [7:0]     vdata_out;

//Wire & Reg Definition 
wire   [31:0]   cin; 
reg    [2:0]    val_dat_cnt; 
reg             dvalid_in_d1;
reg             dvalid_in_d2;
reg             dvalid_in_d3;
reg             dvalid_in_d4;
reg             dvalid_in_d5;
reg             dvalid_in_d6;
reg    [15:0]   Y_DATA[2:0] ;
//reg    [15:0]   Y_DATA1[1:0] ;
reg    [7:0]    vdata_out_d;
reg    [25:0]   v_mult_pulse_c_in; 
//wire   [15:0]   cdata; 
//wire   [15:0]   vdata; 
wire   [31:0]   vmac;
wire   [31:0]   v_mult;


assign  cin        =  OFFSET + 4096;//32'hFFE47664; 
assign  vdata_out  =  vdata_out_d;
assign  vdvalid    =  dvalid_in_d2;        
assign  dvalid_out =  dvalid_in_d6;

//assign  cdata      =  Y_DATA [val_dat_cnt];
//assign  vdata      =  Y_DATA1[val_dat_cnt];

always @(posedge clk or negedge rst)
begin
   if(!rst)
   begin
      dvalid_in_d1 <= 0;
      dvalid_in_d2 <= 0;
      dvalid_in_d3 <= 0;
      dvalid_in_d4 <= 0;
      dvalid_in_d5 <= 0;
      dvalid_in_d6 <= 0;
   end
   else 
   begin
      dvalid_in_d1 <=dvalid_in;
      dvalid_in_d2 <=dvalid_in_d1;
      dvalid_in_d3 <=dvalid_in_d2;
      dvalid_in_d4 <=dvalid_in_d3;
      dvalid_in_d5 <=dvalid_in_d4;
      dvalid_in_d6 <=dvalid_in_d5;
   end
end

always @(posedge clk or negedge rst)
begin
   if(!rst)
   begin
       val_dat_cnt <= 0;
   end
   else 
   begin
      if(val_dat_cnt == 2) 
         val_dat_cnt <= 0;
      else if(val_dat_cnt > 0) 
         val_dat_cnt <= val_dat_cnt + 1;

      if (dvalid_in)
         val_dat_cnt <= val_dat_cnt + 1;
   end
end

/*
always @(*)
begin
        case(val_dat_cnt) 
           0 : Y_DATA1[0] =   vdata_in;
           1 : Y_DATA1[1] =   vdata_in;
           2 : Y_DATA1[2] =   vdata_in;
           default : 
           begin 
              Y_DATA1[0] =   0;
              Y_DATA1[1] =   0;
              Y_DATA1[2] =   0;
           end
           endcase
end
*/
        


always @(posedge clk or negedge rst)
begin
   if(!rst)
   begin
      Y_DATA[0] <= 16'h0;
      Y_DATA[1] <= 16'h0;
      Y_DATA[2] <= 16'h0;
   end
   else
   begin
      Y_DATA[0] <= Y1 ;
      Y_DATA[1] <= Y2 ;
      Y_DATA[2] <= Y3 ;
   end
end


always @(posedge clk or negedge rst)
begin
   if(!rst)
     vdata_out_d <= 0;
   else 
   begin
      if( v_mult_pulse_c_in[25] ==1)
         vdata_out_d <= 0;
      else if( v_mult_pulse_c_in[24:13] >=256)
         vdata_out_d <= 255;
      else 
        vdata_out_d  <=  v_mult_pulse_c_in[20:13];
   end
end

always @(posedge clk or negedge rst)
begin
   if(!rst)
      v_mult_pulse_c_in  <= 0;
   else if (dvalid_in_d2 ) 
      v_mult_pulse_c_in  <=  v_mult[25:0] +  cin[25:0];
   else 
      v_mult_pulse_c_in  <=  v_mult_pulse_c_in +  v_mult[25:0];
end

//instance ice40 dsp mult 
pmi_ice_dsp_mult #(
   .pmi_dataa_width  (16               ),
   .pmi_datab_width  (16               ),
   .pmi_dataa_sign   (1                ),
   .pmi_datab_sign   (1                ),
   .pmi_family       ("ICE"            )
)   inst_mult (
   .CLK              (clk    ),
   .RST              (~rst   ),
   .CE               (clk_en ),
   //.DATAA            (vdata  ),
   //.DATAB            (cdata  ),
   .DATAA            ({8'd0, vdata_in} ),//Y_DATA1[val_dat_cnt] ),//vdata  ),
   .DATAB            (Y_DATA [val_dat_cnt] ),//cdata  ),
   .AHOLD            (1'b0   ),
   .BHOLD            (1'b0   ),
   .OHOLD            (1'b0   ),
   .RESULT           (v_mult   )
);

endmodule
