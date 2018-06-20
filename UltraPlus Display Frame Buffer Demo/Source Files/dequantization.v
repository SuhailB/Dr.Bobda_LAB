//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           dequantization.v
// Module:         dequantization
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Content:        quantization matrix inverse processing
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
//     
//=============================================================================

module dequantization (
    clock,
    reset_n,
    q_data,
    q_data_en,
    q_data_idx,
    deq_data,
    deq_data_en,
    deq_data_idx
);

/* interface declaration */

input                                   clock;
input                                   reset_n;

input   [7:0]                           q_data;
input                                   q_data_en;
input   [5:0]                           q_data_idx;

output  [12:0]                          deq_data;
output                                  deq_data_en;
output  [5:0]                           deq_data_idx;

/* wire-type signals definition */
wire    [18:0]                          mult_q;
wire    [12:0]                          mult_q_fp;
/* reg-type signals definition */
reg     [7:0]                           q_data_reg;
reg                                     q_data_en_reg;
reg     [5:0]                           q_data_idx_reg;

reg                                     mult_q_en_reg;
reg     [5:0]                           mult_q_idx_reg;
reg     [14:0]                          mult_q_reg;

reg     [6:0]                           q_coef; /* synthesis syn_romstyle = "logic" */
reg     [6:0]                           q_coef_reg; 
// --------------------------------------------------------------------------------------

always @* begin
    case (q_data_idx)
        6'd0 : q_coef = 7'd16;
        6'd1 : q_coef = 7'd11;
        6'd2 : q_coef = 7'd10;
        6'd3 : q_coef = 7'd16;
        6'd4 : q_coef = 7'd24;
        6'd5 : q_coef = 7'd40;
        6'd6 : q_coef = 7'd51;
        6'd7 : q_coef = 7'd61;
        6'd8 : q_coef = 7'd12;
        6'd9 : q_coef = 7'd12;
        6'd10: q_coef = 7'd14;
        6'd11: q_coef = 7'd19;
        6'd12: q_coef = 7'd26;
        6'd13: q_coef = 7'd58;
        6'd14: q_coef = 7'd60;
        6'd15: q_coef = 7'd55;
        6'd16: q_coef = 7'd14;
        6'd17: q_coef = 7'd13;
        6'd18: q_coef = 7'd16;
        6'd19: q_coef = 7'd24;
        6'd20: q_coef = 7'd40;
        6'd21: q_coef = 7'd57;
        6'd22: q_coef = 7'd69;
        6'd23: q_coef = 7'd56;
        6'd24: q_coef = 7'd14;
        6'd25: q_coef = 7'd17;
        6'd26: q_coef = 7'd22;
        6'd27: q_coef = 7'd29;
        6'd28: q_coef = 7'd51;
        6'd29: q_coef = 7'd87;
        6'd30: q_coef = 7'd80;
        6'd31: q_coef = 7'd62;
        6'd32: q_coef = 7'd18;
        6'd33: q_coef = 7'd22;
        6'd34: q_coef = 7'd37;
        6'd35: q_coef = 7'd56;
        6'd36: q_coef = 7'd68;
        6'd37: q_coef = 7'd109;
        6'd38: q_coef = 7'd103;
        6'd39: q_coef = 7'd77;
        6'd40: q_coef = 7'd24;
        6'd41: q_coef = 7'd35;
        6'd42: q_coef = 7'd55;
        6'd43: q_coef = 7'd64;
        6'd44: q_coef = 7'd81;
        6'd45: q_coef = 7'd104;
        6'd46: q_coef = 7'd113;
        6'd47: q_coef = 7'd92;
        6'd48: q_coef = 7'd49;
        6'd49: q_coef = 7'd64;
        6'd50: q_coef = 7'd78;
        6'd51: q_coef = 7'd87;
        6'd52: q_coef = 7'd103;
        6'd53: q_coef = 7'd121;
        6'd54: q_coef = 7'd120;
        6'd55: q_coef = 7'd101;
        6'd56: q_coef = 7'd72;
        6'd57: q_coef = 7'd92;
        6'd58: q_coef = 7'd95;
        6'd59: q_coef = 7'd98;
        6'd60: q_coef = 7'd112;
        6'd61: q_coef = 7'd100;
        6'd62: q_coef = 7'd103;
        6'd63: q_coef = 7'd99;
    endcase
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        q_data_reg <= 8'd0;
        q_data_en_reg <= 1'b0;
        q_data_idx_reg <= 6'd0;
    end
    else begin
        q_data_reg <= q_data;
        q_data_en_reg <= q_data_en;
        q_data_idx_reg <= q_data_idx;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        mult_q_en_reg <= 1'b0;
        q_coef_reg <= 7'd0;
        mult_q_idx_reg <= 6'd0;
    end
    else begin
        mult_q_en_reg <= q_data_en_reg;
        q_coef_reg <= q_coef;
        mult_q_idx_reg <= q_data_idx_reg;
    end
end

//`ifdef DSP_BYPASS
//
//    assign mult_q = {q_coef_reg,q_data_reg};
//    always @ (posedge clock or negedge reset_n) begin
//        if (~reset_n) begin
//            mult_q_reg <= 0;
//        end
//        else begin
//            mult_q_reg <= mult_q[14:0];
//        end
//    end
//`else
//    `ifdef SVP_ECP3
//
//         mult_s11_u7 mult_s11_u7_inst (
//             .Clock         (clock          ), 
//             .ClkEn         (1'b1           ),
//             .Aclr          (1'b0           ),
//             .DataA         ({{3{q_data_reg[7]}},q_data_reg}),
//             .DataB         (q_coef_reg     ),
//             .Result        (mult_q         )
//         );
//         always @* begin
//             mult_q_reg <= mult_q[14:0];
//         end
// 
//    `else
//
//        `ifdef SVP_ICE
//            //assign mult_q = $signed({1'b0,q_coef_reg}) * $signed(q_data_reg);
            //always @ (posedge clock or negedge reset_n) begin
            //    if (~reset_n) begin
            //        mult_q_reg <= 0;
            //    end
            //    else begin
            //        mult_q_reg <= mult_q[14:0];
            //    end
            //end

            //wire    [18:0]   mult_q_ice;
            pmi_ice_dsp_mult #(
               .pmi_dataa_width  (11               ),
               .pmi_datab_width  (8                ),
               .pmi_dataa_sign   (1                ),
               .pmi_datab_sign   (1                ),
               .pmi_input_reg    ("off"            ),
               .pmi_output_reg   ("off"            ),
               .pmi_family       ("ICE"            )
            )   inst_mult       (
               .CLK              (clock   ),
               .RST              (~reset_n),
               .CE               (1'b1    ),
               .DATAA            ({{3{q_data_reg[7]}},q_data_reg}),
               .DATAB            ({1'b0,q_coef_reg}),
               .AHOLD            (1'b0    ),
               .BHOLD            (1'b0    ),
               .OHOLD            (1'b0    ),
               .RESULT           (mult_q)
            );
            //always @* begin
            //   mult_q_reg = mult_q_ice [14:0];
            //end
           
             always @ (posedge clock or negedge reset_n) begin
               if (~reset_n) 
                  mult_q_reg <= 0;
               else 
                  mult_q_reg <= mult_q[14:0];
            end
           
//        `endif
//
//    `endif
//`endif





//round_special #(
//.SIGN               (1 ),
//.INPUT_WIDTH        (15),
//.OUTPUT_WIDTH       (13),
//.ROUND_WIDTH        (1 ),
//.OVERFLOW_CTRL      (0 )
//)
//round_inst_q(
//.data_in            (mult_q_reg),
//.data_out           (mult_q_fp)
//);

assign deq_data = {mult_q_reg[11:0],1'b0};
assign deq_data_en = mult_q_en_reg;
assign deq_data_idx = mult_q_idx_reg;

// --------------------------------------------------------------------------------------
endmodule
