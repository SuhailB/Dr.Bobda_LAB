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
   pmi_pipeline_2                   "on"|"off"                         "on"
   pmi_family                       "ICE40"                            "ICE40"
   // sign of a and b must be unsigned right now
   //---not support right now
   pmi_input_reg                    "on"|"off"                         "on"
   pmi_cinput_reg                   "on"|"off"                         "on"
   pmi_output_reg                   "on"|"off"                         "on"
------------------------------------------------------------------------------
*/

`timescale  1 ns / 1 ps

module pmi_ice_dsp_mac (CLK,
                        RST,
                        CE,
                        DATAA,
                        DATAB,
                        AHOLD,
                        BHOLD,
                        CIN,
                        CHOLD,
                        OHOLD,
                        ADDSUB,
                        ACCUMSLOAD,
                        ACCUM
                     );
parameter   pmi_dataa_width      = 16;
parameter   pmi_datab_width      = 16;
parameter   pmi_dataa_sign       = 1;
parameter   pmi_datab_sign       = 1;
parameter   pmi_pipeline         = "off";

//not set as the software limitation
parameter   pmi_pipeline_2       = "on";
parameter   pmi_input_reg        = "on";
parameter   pmi_cinput_reg       = "on";
parameter   pmi_output_reg       = "on";
parameter   pmi_family           = "ICE40";

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
input  [31:0]                    CIN;
input                            CHOLD;
input                            OHOLD;
input                            ADDSUB;
input                            ACCUMSLOAD;
output [31:0]                    ACCUM;

wire [15:0]                      EXT_DATAA;
wire [15:0]                      EXT_DATAB;
wire [15:0]                      EXT_DATAC;
wire [15:0]                      EXT_DATAD;

assign EXT_DATAC     = CIN[31:16];
assign EXT_DATAD     = CIN[15: 0];

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
endgenerate

SB_MAC16 u_sb_mac
    ( .CLK              (CLK        ),
      .CE               (CE         ),
      .A                (EXT_DATAA  ),
      .B                (EXT_DATAB  ),
      .C                (EXT_DATAC  ),
      .D                (EXT_DATAD  ),
      .AHOLD            (AHOLD      ),
      .BHOLD            (BHOLD      ),
      .CHOLD            (CHOLD      ),
      .DHOLD            (CHOLD      ),
      .IRSTTOP          (RST        ),
      .IRSTBOT          (RST        ),
      .ORSTTOP          (RST        ),
      .ORSTBOT          (RST        ),
      .OLOADTOP         (ACCUMSLOAD ),
      .OLOADBOT         (ACCUMSLOAD ),
      .ADDSUBTOP        (ADDSUB     ),
      .ADDSUBBOT        (ADDSUB     ),
      .OHOLDTOP         (OHOLD      ),
      .OHOLDBOT         (OHOLD      ),
      .CI               (FALSE      ),
      .ACCUMCI          (FALSE      ),
      .SIGNEXTIN        (FALSE      ),
      .CO               (           ),
      .ACCUMCO          (           ),
      .SIGNEXTOUT       (           ),
      .O                (ACCUM      ));

//---SB_MAC16 parameter setting, remain paramters keep default
defparam u_sb_mac.C_REG                      = (pmi_cinput_reg == "on") ? 1'b1 : 1'b0;    // C0
defparam u_sb_mac.A_REG                      = (pmi_input_reg  == "on") ? 1'b1 : 1'b0;    // C1
defparam u_sb_mac.B_REG                      = (pmi_input_reg  == "on") ? 1'b1 : 1'b0;    // C2
defparam u_sb_mac.D_REG                      = (pmi_cinput_reg == "on") ? 1'b1 : 1'b0;    // C3

defparam u_sb_mac.TOP_8x8_MULT_REG           = (pmi_pipeline   == "on") ? 1'b1 : 1'b0;    // C4
defparam u_sb_mac.BOT_8x8_MULT_REG           = (pmi_pipeline   == "on") ? 1'b1 : 1'b0;    // C5
defparam u_sb_mac.PIPELINE_16x16_MULT_REG1   = (pmi_pipeline   == "on") ? 1'b1 : 1'b0;    // C6 pipeline register
defparam u_sb_mac.PIPELINE_16x16_MULT_REG2   = (pmi_pipeline_2 == "on") ? 1'b1 : 1'b0;    // C7 Mult16x16 output register

defparam u_sb_mac.TOPOUTPUT_SELECT           = (pmi_output_reg == "on") ? 2'b01 : 2'b00;  //{C9, C8 } = COMB, ACCUM_REG, MULT_8x8, MULT_16x16         
defparam u_sb_mac.TOPADDSUB_LOWERINPUT       = 2'b10;                                     //{C11,C10} = DATA, MULT_8x8, MULT_16x16, SIGNEXT           
defparam u_sb_mac.TOPADDSUB_UPPERINPUT       = 1'b0;                                      //{C12    } = ACCUM_REG, DATAC                              
defparam u_sb_mac.TOPADDSUB_CARRYSELECT      = 2'b10;                                     //{C14,C13} = LOGIC0, LOGIC1, LCOCAS, GENERATED_CARRY (LCO) 

defparam u_sb_mac.BOTOUTPUT_SELECT           = (pmi_output_reg == "on") ? 2'b01 : 2'b00;  //{C16,C15} = COMB, ACCUM_REG, MULT_8x8, MULT_16x16         
defparam u_sb_mac.BOTADDSUB_LOWERINPUT       = 2'b10;                                     //{C18,C17} = DATA, MULT_8x8, MULT_16x16, SIGNEXTIN         
defparam u_sb_mac.BOTADDSUB_UPPERINPUT       = 1'b0;                                      //{C19    } = ACCUM_REG, DATAD                              
defparam u_sb_mac.BOTADDSUB_CARRYSELECT      = 2'b00;                                     //{C21,C20} = LOGIC0, LOGIC1, ACCUMCI, CI                   

defparam u_sb_mac.MODE_8x8                   = 1'b0;                                      // C22 
defparam u_sb_mac.A_SIGNED                   = (pmi_dataa_sign==0) ? 1'b0 : 1'b1;         // C23
defparam u_sb_mac.B_SIGNED                   = (pmi_dataa_sign==0) ? 1'b0 : 1'b1;         // C24    

endmodule

