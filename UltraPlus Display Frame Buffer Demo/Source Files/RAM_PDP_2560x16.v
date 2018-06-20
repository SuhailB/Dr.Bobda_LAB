//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           RAM_PDP_2560x16.v
// Module:         RAM_PDP_2560x16 
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/05/01
// Content:        Store 8*240*16 data (8 line)
//  
//                 
// History:
// 2016-05-01:     Harvey Zhao        first edition.
//     
//=============================================================================

module RAM_PDP_2560x16 (
    din,
    write_en,
    read_en,
    waddr,
    wclk, 
    raddr, 
    rclk, 
    dout
); 

//parameter definition
parameter addr_width = 12; 
parameter data_width = 16; 
    
//input&output definition
input   [addr_width-1:0]   waddr; 
input   [addr_width-1:0]   raddr; 
input   [data_width-1:0]   din; 
input                      write_en; 
input                      read_en; 
input                      wclk; 
input                      rclk; 
output   [data_width-1:0]  dout;


reg     [data_width-1:0]  dout;
wire    [data_width-1:0]  doutw[9:0];
wire    [9:0]             ram_en_wr;

assign ram_en_wr[0] = (waddr[11:8] == 4'b0000)  ? 1'b1 : 1'b0;
assign ram_en_wr[1] = (waddr[11:8] == 4'b0001)  ? 1'b1 : 1'b0;
assign ram_en_wr[2] = (waddr[11:8] == 4'b0010)  ? 1'b1 : 1'b0;
assign ram_en_wr[3] = (waddr[11:8] == 4'b0011)  ? 1'b1 : 1'b0;
assign ram_en_wr[4] = (waddr[11:8] == 4'b0100)  ? 1'b1 : 1'b0;
assign ram_en_wr[5] = (waddr[11:8] == 4'b0101)  ? 1'b1 : 1'b0;
assign ram_en_wr[6] = (waddr[11:8] == 4'b0110)  ? 1'b1 : 1'b0;
assign ram_en_wr[7] = (waddr[11:8] == 4'b0111)  ? 1'b1 : 1'b0;
assign ram_en_wr[8] = (waddr[11:8] == 4'b1000)  ? 1'b1 : 1'b0;
assign ram_en_wr[9] = (waddr[11:8] == 4'b1001)  ? 1'b1 : 1'b0;


reg [3:0] sel_dout = 0; 
always @(posedge rclk )
        sel_dout <=  raddr[11:8];

always @(*)
begin
   case(sel_dout )
      0      : dout = doutw[0];
      1      : dout = doutw[1];
      2      : dout = doutw[2];
      3      : dout = doutw[3];
      4      : dout = doutw[4];
      5      : dout = doutw[5];
      6      : dout = doutw[6];
      7      : dout = doutw[7];
      8      : dout = doutw[8];
      9      : dout = doutw[9];
      10     : dout = 16'hffff;
      default: dout = 16'hffff;
      endcase
end

genvar ii;

generate
for(ii=0;ii<10;ii=ii+1) begin
pmi_ice_ram_dp  
  #( .pmi_init_file ((ii==0) ? "inst0.hex" : 
                          (ii==1) ? "inst1.hex" : 
                          (ii==2) ? "inst2.hex" : 
                          (ii==3) ? "inst3.hex" : 
                          (ii==4) ? "inst4.hex" : 
                          (ii==5) ? "inst5.hex" : 
                          (ii==6) ? "inst6.hex" : 
                          (ii==7) ? "inst7.hex" : 
                          (ii==8) ? "inst8.hex" : 
                          (ii==9) ? "inst9.hex" : 
                          "inst0.hex" ))
inst0 (
    .WrAddress  (waddr[7:0]            ),
    .Data       (din                   ),
    .WrClock    (wclk                  ),
    .WE         (write_en & ram_en_wr[ii] ),
    .WrClockEn  (1'b1                  ),
    .RdAddress  (raddr[7:0]            ),
    .RdClock    (rclk                  ),
    .RdClockEn  (1'b1                  ),
    .Reset      (1'b0                  ),
    .Q          (doutw[ii][15:0]       ) 
);
end
endgenerate

endmodule 
