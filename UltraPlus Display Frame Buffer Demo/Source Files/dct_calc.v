//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           dct_calc.v
// Module:         dct_calc
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Function:       perform 1xD 8-point Forward/Inverse Discrete Cosine Transform (DCT/IDCT) calculation, this module is configurable according to dct config parameter and bitwidth definition are considered in various stages.
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
//     
//=============================================================================

module dct_calc (
    clock,
    reset_n,
    dct_flag,
    dct_stage,
    dct_input_idx,
    dct_input_en,
    dct_input,
    dct_output,
    dct_output_en,
    dct_output_idx,
    dct_output_stage
);

/* parameters */

parameter   D_WIDTH                     = 13;


/* interface declaration */

input                                   reset_n;
input                                   clock;
input                                   dct_flag;
input                                   dct_stage;

input   [3:0]                           dct_input_idx;
input                                   dct_input_en;
input   [D_WIDTH-1:0]                   dct_input;

output  [D_WIDTH-1:0]                   dct_output;
output                                  dct_output_en;
output  [2:0]                           dct_output_idx;
output                                  dct_output_stage;

/* wire-type signals definition */

wire    [D_WIDTH-1:0]                   dct_input_add;
wire    [D_WIDTH-1:0]                   dct_input_sub;

wire    [3:0]                           cntr_mult_merge;

wire    [D_WIDTH+8:0]                   mult1;
wire    [D_WIDTH+8:0]                   mult2;

wire    [D_WIDTH+10:0]                  accu_0_sum; 
wire    [D_WIDTH+10:0]                  accu_1_sum;
wire    [D_WIDTH+10:0]                  accu_2_sum;
wire    [D_WIDTH+10:0]                  accu_3_sum;
wire    [D_WIDTH+10:0]                  accu_4_sum;
wire    [D_WIDTH+10:0]                  accu_5_sum;
wire    [D_WIDTH+10:0]                  accu_6_sum;
wire    [D_WIDTH+10:0]                  accu_7_sum;
wire    [12:0]                          dct_output;
/* reg-type signals definition */

reg     [D_WIDTH-1:0]                   dct_input_buf;

reg     [D_WIDTH-1:0]                   mult1_b; 
reg     [D_WIDTH-1:0]                   mult2_b;

reg     [8:0]                           mult1_a; /* synthesis syn_romstyle = "logic" */ 
reg     [8:0]                           mult2_a; /* synthesis syn_romstyle = "logic" */

reg     [D_WIDTH+7:0]                   mult1_reg;
reg     [D_WIDTH+7:0]                   mult2_reg;

reg     [D_WIDTH+9:0]                   accu_0_sum_reg; 
reg     [D_WIDTH+9:0]                   accu_1_sum_reg;
reg     [D_WIDTH+9:0]                   accu_2_sum_reg;
reg     [D_WIDTH+9:0]                   accu_3_sum_reg;
reg     [D_WIDTH+9:0]                   accu_4_sum_reg;
reg     [D_WIDTH+9:0]                   accu_5_sum_reg;
reg     [D_WIDTH+9:0]                   accu_6_sum_reg;
reg     [D_WIDTH+9:0]                   accu_7_sum_reg;

reg     [D_WIDTH-1:0]                   mux1_output_reg; 
reg     [D_WIDTH-1:0]                   mux2_output_reg;
reg     [D_WIDTH-1:0]                   mux_output_reg;

reg     [D_WIDTH-1:0]                   mux_idct_output;
reg     [D_WIDTH-1:0]                   mux_dct_output;

reg     [3:0]                           cntr_mult;
reg                                     mult_cntr_en;
reg                                     mult_01_en; 
reg                                     mult_23_en;
reg                                     mult_45_en;
reg                                     mult_67_en;

reg                                     cntr_output_en;
reg                                     cntr_output_en_1d;
reg     [2:0]                           cntr_output;
reg     [2:0]                           cntr_output_1d;

reg                                     dct_output_en;
reg     [2:0]                           dct_output_idx;
reg                                     dct_output_stage;



// --------------------------------------------------------------------------------------


// --------------------------------------------
//
// DCT/IDCT control signals
//
// --------------------------------------------

// input data path control
always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        mult_cntr_en <= 1'b0;
    end
    else if (dct_input_en && dct_input_idx == 4'd2) begin
        mult_cntr_en <= 1'b1;
    end
    else if (cntr_mult == 4'd15) begin
        mult_cntr_en <= 1'b0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        cntr_mult <= 4'd0;
    end
    else if (mult_cntr_en) begin
        cntr_mult <= cntr_mult + 1;
    end
    else begin
        cntr_mult <= 4'd0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        mult_01_en <= 1'b0;
        mult_23_en <= 1'b0;
        mult_45_en <= 1'b0;
        mult_67_en <= 1'b0;
    end
    else begin 
        mult_01_en <= mult_cntr_en & (cntr_mult[1:0] == 2'b00);
        mult_23_en <= mult_cntr_en & (cntr_mult[1:0] == 2'b01);
        mult_45_en <= mult_cntr_en & (cntr_mult[1:0] == 2'b10);
        mult_67_en <= mult_cntr_en & (cntr_mult[1:0] == 2'b11);
    end
end

// output control

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        cntr_output_en <= 1'b0;
    end
    else if (cntr_mult == 4'd12) begin
        cntr_output_en <= 1'b1;
    end
    else if (cntr_output == 3'd7) begin
        cntr_output_en <= 1'b0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        cntr_output <= 3'd0;
    end
    else if (cntr_output_en) begin
        cntr_output <= cntr_output + 1;
    end
    else begin
        cntr_output <= 3'd0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        cntr_output_1d      <= 3'd0;
        cntr_output_en_1d   <= 1'b0;
    end
    else begin
        cntr_output_1d      <= cntr_output;
        cntr_output_en_1d   <= cntr_output_en;
    end
end


// --------------------------------------------
//
// DCT/IDCT Data flow
//
// --------------------------------------------

// input buffer
always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_input_buf <= 0;
    end
    else if (dct_input_en) begin
        dct_input_buf <= dct_input;
    end
end

assign  dct_input_add = dct_input_buf + dct_input;
assign  dct_input_sub = dct_input_buf - dct_input;

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        mult1_b <= 0;
    end
    else if (dct_input_en && dct_input_idx[1:0] == 2'b10) begin
        if (dct_flag) begin
            mult1_b <= dct_input_add;
        end
        else begin
            mult1_b <= dct_input_buf;
        end
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        mult2_b <= 0;
    end
    else if (dct_input_en && dct_input_idx[1:0] == 2'b10) begin
        if (dct_flag) begin
            mult2_b <= dct_input_sub;
        end
        else begin
            mult2_b <= dct_input;
        end
    end
end

assign cntr_mult_merge = dct_flag ? cntr_mult : {cntr_mult[1:0],cntr_mult[3:2]};

always @* begin
    case (cntr_mult_merge) 
        4'd0:   mult1_a = 9'h0B5; 
        4'd1:   mult1_a = 9'h0ED;
        4'd2:   mult1_a = 9'h0B5;
        4'd3:   mult1_a = 9'h062;
        4'd4:   mult1_a = 9'h0B5;
        4'd5:   mult1_a = 9'h062;
        4'd6:   mult1_a = 9'h14B;
        4'd7:   mult1_a = 9'h113;
        4'd8:   mult1_a = 9'h0B5;
        4'd9:   mult1_a = 9'h19E;
        4'd10:  mult1_a = 9'h14B;
        4'd11:  mult1_a = 9'h0ED;
        4'd12:  mult1_a = 9'h0B5;
        4'd13:  mult1_a = 9'h113;
        4'd14:  mult1_a = 9'h0B5;
        4'd15:  mult1_a = 9'h19E;
    endcase
end

always @* begin
    case (cntr_mult) 
        4'd0:   mult2_a = 9'h0FB; 
        4'd1:   mult2_a = 9'h0D5;
        4'd2:   mult2_a = 9'h08E;
        4'd3:   mult2_a = 9'h032;
        4'd4:   mult2_a = 9'h0D5;
        4'd5:   mult2_a = 9'h1CE;
        4'd6:   mult2_a = 9'h105;
        4'd7:   mult2_a = 9'h172;
        4'd8:   mult2_a = 9'h08E;
        4'd9:   mult2_a = 9'h105;
        4'd10:  mult2_a = 9'h032;
        4'd11:  mult2_a = 9'h0D5;
        4'd12:  mult2_a = 9'h032;
        4'd13:  mult2_a = 9'h172;
        4'd14:  mult2_a = 9'h0D5;
        4'd15:  mult2_a = 9'h105;
    endcase
end

// multiplier instances (2 DSP Hardmacros are instantiated)


			
//`ifdef DSP_BYPASS
//    assign mult1 = {mult1_b,mult1_a[8:0]};
//    assign mult2 = {mult2_b,mult2_a[8:0]};
//    always @ (posedge clock or negedge reset_n) begin
//        if (~reset_n) begin
//            mult1_reg <= 0;
//            mult2_reg <= 0;
//        end
//        else if (mult_cntr_en) begin
//            mult1_reg <= mult1[D_WIDTH+7:0];
//            mult2_reg <= mult2[D_WIDTH+7:0];
//        end
//    end
//`else
//    `ifdef SVP_ECP3
//         mult_s13_s9 mult_s13_s9_inst1(
//             .Clock         (clock      ), 
//             .ClkEn         (1'b1       ),
//             .Aclr          (1'b0       ),
//             .DataA         (mult1_b    ),
//             .DataB         (mult1_a    ),
//             .Result        (mult1      )
//         );
//
//         mult_s13_s9 mult_s13_s9_inst2(
//             .Clock         (clock      ), 
//             .ClkEn         (1'b1       ),
//             .Aclr          (1'b0       ),
//             .DataA         (mult2_b    ),
//             .DataB         (mult2_a    ),
//             .Result        (mult2      )
//         );
//         always @* begin
//             mult1_reg <= mult1[D_WIDTH+7:0];
//             mult2_reg <= mult2[D_WIDTH+7:0];
//         end
//    `else
//
//        `ifdef SVP_ICE
//             assign mult1 = $signed(mult1_b) * $signed(mult1_a);
//             assign mult2 = $signed(mult2_b) * $signed(mult2_a);
//             always @ (posedge clock or negedge reset_n) begin
//                 if (~reset_n) begin
//                     mult1_reg <= 0;
//                     mult2_reg <= 0;
//                 end
//                 else if (mult_cntr_en) begin
//                     mult1_reg <= mult1[D_WIDTH+7:0];
//                     mult2_reg <= mult2[D_WIDTH+7:0];
//                 end
//             end
//---------------------------------------------------------------
//instance ice40 dsp mult 

wire    [D_WIDTH+8:0]                   v_mult1;
wire    [D_WIDTH+8:0]                   v_mult2;

pmi_ice_dsp_mult #(
   .pmi_dataa_width  (13               ),
   .pmi_datab_width  (9                ),
   .pmi_dataa_sign   (1                ),
   .pmi_datab_sign   (1                ),
   .pmi_input_reg    ("off"            ),
   .pmi_output_reg   ("off"            ),
   .pmi_family       ("ICE"            )
)   inst1_mult       (
   .CLK              (clock   ),
   .RST              (~reset_n),
   .CE               (1'b1    ),
   .DATAA            (mult1_b ),
   .DATAB            (mult1_a ),
   .AHOLD            (1'b0    ),
   .BHOLD            (1'b0    ),
   .OHOLD            (1'b0    ),
   .RESULT           (v_mult1 )
);

pmi_ice_dsp_mult #(
   .pmi_dataa_width  (13               ),
   .pmi_datab_width  (9                ),
   .pmi_dataa_sign   (1                ),
   .pmi_datab_sign   (1                ),
   .pmi_input_reg    ("off"            ),
   .pmi_output_reg   ("off"            ),
   .pmi_family       ("ICE"            )
)   inst2_mult       (
   .CLK              (clock   ),
   .RST              (~reset_n),
   .CE               (1'b1    ),
   .DATAA            (mult2_b ),
   .DATAB            (mult2_a ),
   .AHOLD            (1'b0    ),
   .BHOLD            (1'b0    ),
   .OHOLD            (1'b0    ),
   .RESULT           (v_mult2 )
);

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
       mult1_reg   <= 0; 
       mult2_reg   <= 0; 
    end
    else
    begin
       mult1_reg   <= v_mult1[D_WIDTH+7:0];
       mult2_reg   <= v_mult2[D_WIDTH+7:0];
    end
end

//always @* begin
//   mult1_reg   = v_mult1[D_WIDTH+7:0];
//   mult2_reg   = v_mult2[D_WIDTH+7:0];
//end


//---------------------------------------------------------------
//        `endif
//
//    `endif
//`endif
//


//  Accumulators
assign accu_0_sum = {{2{mult1_reg[D_WIDTH+7]}},mult1_reg} + accu_0_sum_reg;
assign accu_1_sum = {{2{mult2_reg[D_WIDTH+7]}},mult2_reg} + accu_1_sum_reg;

assign accu_2_sum = {{2{mult1_reg[D_WIDTH+7]}},mult1_reg} + accu_2_sum_reg;
assign accu_3_sum = {{2{mult2_reg[D_WIDTH+7]}},mult2_reg} + accu_3_sum_reg;

assign accu_4_sum = {{2{mult1_reg[D_WIDTH+7]}},mult1_reg} + accu_4_sum_reg;
assign accu_5_sum = {{2{mult2_reg[D_WIDTH+7]}},mult2_reg} + accu_5_sum_reg;

assign accu_6_sum = {{2{mult1_reg[D_WIDTH+7]}},mult1_reg} + accu_6_sum_reg;
assign accu_7_sum = {{2{mult2_reg[D_WIDTH+7]}},mult2_reg} + accu_7_sum_reg;

always @(posedge clock) begin
    if (cntr_mult == 4'd0) begin
        accu_0_sum_reg <= 0;
        accu_1_sum_reg <= 0;
    end
    else if (mult_01_en) begin
        accu_0_sum_reg <= accu_0_sum;
        accu_1_sum_reg <= accu_1_sum;
    end
end

always @(posedge clock) begin
    if (cntr_mult == 4'd1) begin
        accu_2_sum_reg <= 0; 
        accu_3_sum_reg <= 0;
    end
    else if (mult_23_en) begin
        accu_2_sum_reg <= accu_2_sum;
        accu_3_sum_reg <= accu_3_sum;
    end
end

always @(posedge clock) begin
    if (cntr_mult == 4'd2) begin
        accu_4_sum_reg <= 0; 
        accu_5_sum_reg <= 0;
    end
    else if (mult_45_en) begin
        accu_4_sum_reg <= accu_4_sum;
        accu_5_sum_reg <= accu_5_sum;
    end
end

always @(posedge clock) begin
    if (cntr_mult == 4'd3) begin
        accu_6_sum_reg <= 0;
        accu_7_sum_reg <= 0;
    end
    else if (mult_67_en) begin
        accu_6_sum_reg <= accu_6_sum;
        accu_7_sum_reg <= accu_7_sum;
    end
end

// output MUX

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        mux1_output_reg <= 0;
        mux2_output_reg <= 0;
    end
    else if (cntr_output_en && ~cntr_output[0]) begin
        case (cntr_output[2:1])
            2'b00:begin
                        mux1_output_reg <= accu_0_sum[D_WIDTH+8:9];
                        mux2_output_reg <= accu_1_sum[D_WIDTH+8:9]; 
            end
            2'b01:begin
                        mux1_output_reg <= accu_2_sum_reg[D_WIDTH+8:9];
                        mux2_output_reg <= accu_3_sum_reg[D_WIDTH+8:9];
            end
            2'b10:begin
                        mux1_output_reg <= accu_4_sum_reg[D_WIDTH+8:9];
                        mux2_output_reg <= accu_5_sum_reg[D_WIDTH+8:9];           
            end
            2'b11:begin
                        mux1_output_reg <= accu_6_sum_reg[D_WIDTH+8:9];
                        mux2_output_reg <= accu_7_sum_reg[D_WIDTH+8:9];
            end
        endcase
    end
end

always @* begin
    if (~cntr_output_1d[0]) begin
        mux_idct_output = mux1_output_reg + mux2_output_reg;
    end
    else begin
        mux_idct_output = mux1_output_reg - mux2_output_reg;
    end
end

always @* begin
    if (~cntr_output_1d[0]) begin
        mux_dct_output = mux1_output_reg;
    end
    else begin
        mux_dct_output = mux2_output_reg;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        mux_output_reg <= 0;
    end
    else if (dct_flag) begin
        mux_output_reg <= mux_dct_output;
    end
    else begin
        mux_output_reg <= mux_idct_output;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_output_idx <= 3'd0;
    end
    else if (dct_flag) begin
        dct_output_idx <= cntr_output_1d;
    end
    else if (~cntr_output_1d[0]) begin
        dct_output_idx <= {1'b0,cntr_output_1d[2:1]};
    end
    else begin
        dct_output_idx <= {1'b1,~cntr_output_1d[2],~cntr_output_1d[1]};
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_output_en <= 1'b0;
    end
    else begin
        dct_output_en <= cntr_output_en_1d;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dct_output_stage <= 1'b0;
    end
    else if (dct_input_en && dct_input_idx == 4'd14) begin
        dct_output_stage <= dct_stage;
    end
end

assign dct_output = mux_output_reg[D_WIDTH-1:0]; 

//round_special #(
//.SIGN               (1 ),
//.INPUT_WIDTH        (D_WIDTH+1),
//.OUTPUT_WIDTH       (13),
//.ROUND_WIDTH        (1 )
//)
//round_inst_q(
//.data_in            (mux_output_reg),
//.data_out           (dct_output)
//);
// --------------------------------------------------------------------------------------
endmodule
