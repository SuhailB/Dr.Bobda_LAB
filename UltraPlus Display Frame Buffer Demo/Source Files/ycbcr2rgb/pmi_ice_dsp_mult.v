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
   pmi_dataa_width                   2 to 16                            16
   pmi_datab_width                   2 to 16                            16
   pmi_dataa_sign                    0 | 1                              0
   pmi_datab_sign                    0 | 1                              0
   pmi_pipeline                     "on"|"off"                         "off"
   pmi_family                       "ICE40"                            "ICE40"
   // sign of a and b must be same
   //---not support right now
   pmi_input_reg                    "on"|"off"                         "on"
   pmi_output_reg                   "on"|"off"                         "on"
------------------------------------------------------------------------------
*/

`timescale  1 ns / 100 ps

module pmi_ice_dsp_mult (CLK,
                         RST,
                         CE,
                         DATAA,
                         DATAB,
                         AHOLD,
                         BHOLD,
                         OHOLD,
                         RESULT
                        );
parameter   pmi_dataa_width      = 16;
parameter   pmi_datab_width      = 16;
parameter   pmi_dataa_sign       = 0;
parameter   pmi_datab_sign       = 0;
parameter   pmi_pipeline         = "off";
parameter   pmi_family           = "ICE40";

//not set as the software limitation
parameter   pmi_input_reg        = "on";
parameter   pmi_output_reg       = "on";

localparam  pmi_datar_width      = pmi_dataa_width + pmi_datab_width;
localparam  pmi_sb_mult_dealy    = 2;
localparam  TRUE                 = 1'b1;
localparam  FALSE                = 1'b0;


input                            CLK;
input                            RST;
input                            CE;
input  [(pmi_dataa_width-1):0]   DATAA;
input  [(pmi_datab_width-1):0]   DATAB;
input                            AHOLD;
input                            BHOLD;
input                            OHOLD;
output [(pmi_datar_width-1):0]   RESULT;

wire [15:0]                      EXT_DATAA;
wire [15:0]                      EXT_DATAB;
wire [15:0]                      EXT_DATAC;
wire [15:0]                      EXT_DATAD;
wire [31:0]                      RO;
wire                             CHOLD;
wire                             ADDSUB;
wire                             ACCUMSLOAD;

//--- set unused ports
assign EXT_DATAC        = 16'h0000;
assign EXT_DATAD        = 16'h0000;
assign CHOLD            = 1'b0;
assign ADDSUB           = 1'b0;
assign ACCUMSLOAD       = 1'b0;

//--- Sign EXT of input data
generate
   if(pmi_dataa_width==16) begin
      assign EXT_DATAA = DATAA;
   end else begin
      if(pmi_dataa_sign==0) begin // Unsigned
         assign EXT_DATAA = {{(16-pmi_dataa_width){1'b0}},DATAA};
      end else begin              // Signed
         assign EXT_DATAA = {{(16-pmi_dataa_width){DATAA[pmi_dataa_width-1]}},DATAA};
      end
   end
   if(pmi_datab_width==16) begin
      assign EXT_DATAB = DATAB;
   end else begin
      if(pmi_datab_sign==0) begin // Unsigned
         assign EXT_DATAB = {{(16-pmi_datab_width){1'b0}},DATAB};
      end else begin              // Signed
         assign EXT_DATAB = {{(16-pmi_datab_width){DATAB[pmi_datab_width-1]}},DATAB};
      end
   end
   assign RESULT = RO[pmi_datar_width-1:0];
endgenerate

generate
if(pmi_family=="XP2") begin
   pmi_mult    #( .pmi_dataa_width           (16            ),
                  .pmi_datab_width           (16            ),
                  .pmi_sign                  ("on"          ),
                  .pmi_additional_pipeline   (0             ),
                  .pmi_input_reg             ("on"          ),
                  .pmi_output_reg            ("on"          ),
                  .pmi_family                ("XP2"         ),
                  .pmi_implementation        ("DSP"         ),
                  .module_type               ("pmi_mult"    ))
   u_mult0     (  .DataA                     (EXT_DATAA     ),
                  .DataB                     (EXT_DATAB     ),
                  .Clock                     (CLK           ),
                  .ClkEn                     (CE            ),
                  .Aclr                      (RST           ),
                  .Result                    (RO            ));

end else begin
   SB_MAC16 u_sb_mult
       ( .CLK              (CLK           ),
         .CE               (CE            ),
         .A                (EXT_DATAA     ),
         .B                (EXT_DATAB     ),
         .C                (EXT_DATAC     ),
         .D                (EXT_DATAD     ),
         .AHOLD            (AHOLD         ),
         .BHOLD            (BHOLD         ),
         .CHOLD            (CHOLD         ),
         .DHOLD            (CHOLD         ),
         .IRSTTOP          (RST           ),
         .IRSTBOT          (RST           ),
         .ORSTTOP          (RST           ),
         .ORSTBOT          (RST           ),
         .OLOADTOP         (ACCUMSLOAD    ),
         .OLOADBOT         (ACCUMSLOAD    ),
         .ADDSUBTOP        (ADDSUB        ),
         .ADDSUBBOT        (ADDSUB        ),
         .OHOLDTOP         (OHOLD         ),
         .OHOLDBOT         (OHOLD         ),
         .CI               (FALSE         ),
         .ACCUMCI          (FALSE         ),
         .SIGNEXTIN        (FALSE         ),
         .CO               (              ),
         .ACCUMCO          (              ),
         .SIGNEXTOUT       (              ),
         .O                (RO            ));
   
   //---SB_MAC16 parameter setting, remain paramters keep default
   defparam u_sb_mult.A_REG                     = (pmi_input_reg  == "on") ? 1'b1 : 1'b0; // C1
   defparam u_sb_mult.B_REG                     = (pmi_input_reg  == "on") ? 1'b1 : 1'b0; // C2
   
   defparam u_sb_mult.TOP_8x8_MULT_REG          = (pmi_pipeline   == "on") ? 1'b1 : 1'b0; // C4
   defparam u_sb_mult.BOT_8x8_MULT_REG          = (pmi_pipeline   == "on") ? 1'b1 : 1'b0; // C5
   defparam u_sb_mult.PIPELINE_16x16_MULT_REG1  = (pmi_pipeline   == "on") ? 1'b1 : 1'b0; // C6 pipeline register
   defparam u_sb_mult.PIPELINE_16x16_MULT_REG2  = (pmi_output_reg == "on") ? 1'b1 : 1'b0; // C7 Mult16x16 output register
   
   defparam u_sb_mult.TOPOUTPUT_SELECT          = 2'b11;                                  //{C9, C8 } = COMB, ACCUM_REG, MULT_8x8, MULT_16x16
   defparam u_sb_mult.BOTOUTPUT_SELECT          = 2'b11;                                  //{C16,C15} = COMB, ACCUM_REG, MULT_8x8, MULT_16x16
   
   defparam u_sb_mult.A_SIGNED                  = (pmi_dataa_sign == 1   ) ? 1'b1 : 1'b0; // C23
   defparam u_sb_mult.B_SIGNED                  = (pmi_dataa_sign == 1   ) ? 1'b1 : 1'b0; // C24    
   
end
endgenerate

endmodule

