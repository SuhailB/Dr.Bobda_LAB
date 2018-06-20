// ---------------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
// ---------------------------------------------------------------------------
// Copyright (c) 2005-2014 by Lattice Semiconductor Corporation
// ---------------------------------------------------------------------------
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A.
//
//                     TEL: 1-800-Lattice  (USA and Canada)
//                          1-408-826-6000 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
// ---------------------------------------------------------------------------
//
//
// Parameter Definition
// Name                              Value                             Default
/*
------------------------------------------------------------------------------
pmi_addr_depth          <integer>                                         32
pmi_addr_width          <integer>                                          5
pmi_data_width          <integer>                                          8
pmi_regmode             "reg"|"noreg"                                    "reg"
pmi_init_file           <string>                                        "none"
pmi_init_file_format    "binary"|"hex"                                "binary"
------------------------------------------------------------------------------
*/

`timescale  1 ns / 1 ps

module pmi_ice_ram_dp 
  #(parameter pmi_addr_depth = 256,
    parameter pmi_addr_width = 8,
    parameter pmi_data_width = 16,
    parameter pmi_regmode = "noreg",
    parameter pmi_init_file = "none",
    parameter pmi_init_file_format = "hex",
    parameter pmi_family = "ICE40")

    (
    input [(pmi_addr_width-1):0] WrAddress,
    input [(pmi_data_width-1):0] Data,
    input WrClock,
    input WE,
    input WrClockEn,
    input [(pmi_addr_width-1):0] RdAddress,
    input RdClock,
    input RdClockEn,
    input Reset,
    output [(pmi_data_width-1):0] Q);



reg  [pmi_data_width-1:0]  mem [(2**pmi_addr_width)-1:0]/* synthesis syn_ramstyle = "block_ram" */;
reg  [pmi_data_width-1:0]  Data_r;
reg  [pmi_data_width-1:0]  Data_r2;
integer                    h;

initial begin
   if(pmi_init_file == "none") begin
      for (h = 0; h < 2**pmi_addr_width; h = h+1) begin
         mem[h] = {pmi_data_width{1'b0}};
      end
   end else begin
      if(pmi_init_file_format == "binary") begin
         $readmemb(pmi_init_file, mem);
      end else if(pmi_init_file_format == "hex") begin
         $readmemh(pmi_init_file, mem);
      end
   end
end

//--- Port Write
always @ (posedge WrClock) begin
   if (WrClockEn == 1'b1) begin
      if (WE == 1'b1) begin
         mem[WrAddress] <= Data;
      end
   end
end

//--- Port Read
always @ (posedge RdClock) begin
   if (RdClockEn == 1'b1) begin		
      Data_r <= mem[RdAddress];
   end
end

always @ (posedge RdClock or posedge Reset) begin
   if (Reset) begin
      Data_r2<= 0;
   end else if (RdClockEn == 1'b1) begin		
      Data_r2<= Data_r;
   end
end	
assign Q = (pmi_regmode=="reg") ? Data_r2 : Data_r;

endmodule

