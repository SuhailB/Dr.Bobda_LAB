//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           entropy_decoder.v
// Module:         entropy_decoder
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Content:        entropy decoder used for restoring pixel data after lossless entropy encoder
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
//     
//=============================================================================

module entropy_decoder (
    clock,
    reset_n,
    decompress_start,
    enc_data_ready,
    enc_data_out,
    enc_data_req,
    dec_data_fifo_ready,
    dec_data,
    dec_data_en,
    dec_data_index
);

/* interface declaration */

input                                   clock;
input                                   reset_n;
input                                   decompress_start;

input                                   enc_data_ready;
input   [7:0]                           enc_data_out;
output                                  enc_data_req;

input                                   dec_data_fifo_ready;
output  [7:0]                           dec_data;
output                                  dec_data_en;
output  [5:0]                           dec_data_index;

/* wire-type signals definition */
wire    [3:0]                           dec_fw_msb_ptr_wire;
wire    [3:0]                           dec_fw_msb_ptr_next;
wire                                    enc_fw_width_shift_en;
wire    [5:0]                           fw_data_num_wire;
wire    [3:0]                           fw_enc_num_wire;
wire    [2:0]                           FW_WIDTH_WORDS_NUM_wire;
wire    [2:0]                           bd_index_sum1;
wire    [2:0]                           bd_index_sum2;
wire                                    dec_blk_start;
wire                                    dec_fw_data_en;
wire    [5:0]                           dec_fw_prefetch_flag;
/* reg-type signals definition */
reg                                     enc_header_req;
reg                                     enc_header_finish;
reg     [2:0]                           cntr_enc_header;
reg     [5:0]                           DEC_RLE_NUM;
reg     [1:0]                           DEC_BD_FLAG;
//reg     [2:0]                           DEC_DC_MSB;
reg     [7:0]                           DEC_DC_LSB;
reg     [3:0]                           DEC_BD_IDX_BITMAP_MSB1;
reg     [7:0]                           DEC_BD_IDX_BITMAP_MSB2;
reg     [7:0]                           DEC_BD_IDX_BITMAP_LSB;
reg     [5:0]                           cntr_rle_bd;
reg     [2:0]                           FW_WIDTH_WORDS_NUM;
reg     [7:0]                           DEC_FW_WIDTH_WORDS1;
reg     [7:0]                           DEC_FW_WIDTH_WORDS2;
reg     [7:0]                           DEC_FW_WIDTH_WORDS3;
reg     [7:0]                           DEC_FW_WIDTH_WORDS4;
reg                                     enc_payload_req;
reg                                     enc_fw_width_req;
reg     [6:0]                           cntr_dec_out;
reg     [5:0]                           cntr_zigzag;    /* synthesis syn_romstyle = "logic" */ 
reg     [7:0]                           enc_data_out_buf;
reg     [7:0]                           dec_data;
reg                                     dec_data_en;
reg     [5:0]                           dec_data_index;
reg     [1:0]                           dec_stage;  /* synthesis syn_preserve = 1 */
reg                                     dec_blk_finish;
reg                                     dec_blk_finish_1d;
reg                                     dec_blk_finish_2d;
reg                                     dec_blk_finish_3d;
reg                                     dec_blk_finish_4d;
reg                                     dec_dc_data_en;
reg                                     dec_bd_start;
reg                                     dec_bd_enable;
reg                                     dec_bd_data_en;
reg                                     dec_rle_zero_en;
reg     [5:0]                           cntr_dec_rle;
reg                                     dec_fw_start;
reg                                     dec_fw_start_1d;
reg                                     dec_fw_enable;
reg     [2:0]                           cntr_fw_width;
reg     [5:0]                           cntr_fw_words;
reg     [2:0]                           FW_WIDTH_CURRENT;
reg     [1:0]                           FW_WIDTH_CURRENT_2BITS;
reg     [2:0]                           FW_WIDTH_NEXT;
reg     [2:0]                           dec_fw_msb_ptr;
reg                                     dec_fw_words_b3;
reg                                     dec_fw_words_b2;
reg                                     dec_fw_words_b1;
reg                                     dec_fw_words_b0;
reg     [3:0]                           dec_fw_words_4bits;
reg                                     dec_fw_bd_mask_en;
reg                                     dec_fw_words_update_bd;
reg                                     dec_fw_data_en_1d;

parameter [1:0]                         DEC_STAGE_IDLE  = 2'b00;
parameter [1:0]                         DEC_STAGE_WAIT  = 2'b01;
parameter [1:0]                         DEC_STAGE_START = 2'b11;
parameter [1:0]                         DEC_STAGE_BUSY  = 2'b10;

// --------------------------------------------------------------------------------------

// compressed 8x8 pixels frame info:
// [   7   ] [   6   ] [   5   ] [   4   ] [   3   ] [   2   ] [   1   ] [   0   ]
// --------------------------------------------------------------------------------------
// |                       RLE NUM                           | | Big Data Flag   |
// |               DC Data MSB           | |          Big Data Index 0  [19:16]  |
// |                          DC    Data     LSB                                 |
// |                     Big        Data     Index 1 (optional)                  |
// |                     Big        Data     Index 2 (optional)                  |
// |                     Four Bits Width Words 1     (optional)                  |
// |                     Four Bits Width Words 2     (optional)                  |
// |                     Four Bits Width Words 3     (optional)                  |
// |                     Four Bits Width Words 4     (optional)                  |
// |                     Big       Data        1     (optional)                  |
// |                               .....                                         |
// |                     Big       Data        N     (optional)                  |
// |                     Four Bits Encoding Words    (optional)                  |
// |                               .....                                         |
// |                     Four Bits Encoding Words    (optional)                  |
// --------------------------------------------------------------------------------------



// --------------------------------------------
//
// entropy encode header parse 
//
// --------------------------------------------

assign enc_data_req = enc_header_req | enc_fw_width_req | enc_payload_req;


always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_stage <= DEC_STAGE_IDLE;
    end
    else begin
        case (dec_stage) 
            DEC_STAGE_IDLE: begin
                                    if (decompress_start) begin
                                        dec_stage <= DEC_STAGE_WAIT;
                                    end
            end
            DEC_STAGE_WAIT: begin
                                    if (enc_data_ready && dec_data_fifo_ready) begin
                                        dec_stage <= DEC_STAGE_START;
                                    end
            end
            DEC_STAGE_START:begin
                                        dec_stage <= DEC_STAGE_BUSY;
            end
            DEC_STAGE_BUSY:begin
                                    if (dec_blk_finish_4d) begin
                                        dec_stage <= DEC_STAGE_WAIT;
                                    end
            end
        endcase
    end
end


assign dec_blk_start = (dec_stage == DEC_STAGE_START);

always @ (posedge clock) begin
    if (dec_blk_start) begin
        cntr_enc_header <= 3'd0;
    end
    else if (enc_data_ready && enc_header_req) begin
        cntr_enc_header <= cntr_enc_header + 1;
    end
end


// header parse (Run Length Encode, DC and Big Data)

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        DEC_RLE_NUM <= 6'd0;
        DEC_BD_FLAG <= 2'd0;
    end
    else if ((cntr_enc_header == 3'd0) && enc_data_ready && enc_header_req) begin
        DEC_RLE_NUM <= enc_data_out[7:2];
        DEC_BD_FLAG <= enc_data_out[1:0];
    end
end

//always @ (posedge clock or negedge reset_n) begin
//    if (~reset_n) begin
//        DEC_DC_MSB <= 3'd0;
//    end
//    else if ((cntr_enc_header == 3'd1) && enc_data_ready && enc_header_req) begin
//        DEC_DC_MSB <= enc_data_out[6:4];
//    end
//end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        DEC_BD_IDX_BITMAP_MSB1 <= 4'd0;
    end
    else if ((cntr_enc_header == 3'd1) && enc_data_ready && enc_header_req) begin
        DEC_BD_IDX_BITMAP_MSB1 <= enc_data_out[3:0];
    end
    else if (dec_bd_enable || (dec_fw_bd_mask_en && (dec_rle_zero_en || dec_fw_enable))) begin
        DEC_BD_IDX_BITMAP_MSB1 <= {DEC_BD_IDX_BITMAP_LSB[0],DEC_BD_IDX_BITMAP_MSB1[3:1]};
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        DEC_DC_LSB <= 8'd0;
    end
    else if ((cntr_enc_header == 3'd2) && enc_data_ready && enc_header_req) begin
        DEC_DC_LSB <= enc_data_out[7:0];
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        DEC_BD_IDX_BITMAP_MSB2 <= 8'd0;
    end
    else if (enc_data_ready && enc_header_req) begin
        if (DEC_BD_FLAG[1]) begin
            if (cntr_enc_header == 3'd3) begin
                DEC_BD_IDX_BITMAP_MSB2 <= enc_data_out[7:0];
            end
        end 
        else begin
            DEC_BD_IDX_BITMAP_MSB2 <= 8'd0;
        end
    end
    else if (dec_bd_enable || (dec_fw_bd_mask_en && (dec_rle_zero_en || dec_fw_enable))) begin
        DEC_BD_IDX_BITMAP_MSB2 <= {DEC_BD_IDX_BITMAP_MSB1[0],DEC_BD_IDX_BITMAP_MSB2[7:1]};
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        DEC_BD_IDX_BITMAP_LSB <= 8'd0;
    end
    else if (enc_data_ready && enc_header_req) begin
        if (DEC_BD_FLAG[0]) begin
            if (cntr_enc_header == 3'd3 && ~DEC_BD_FLAG[1]) begin
                DEC_BD_IDX_BITMAP_LSB <= enc_data_out[7:0];
            end
            else if (cntr_enc_header == 3'd4 && DEC_BD_FLAG[1]) begin
                DEC_BD_IDX_BITMAP_LSB <= enc_data_out[7:0];
            end
        end
        else begin
            DEC_BD_IDX_BITMAP_LSB <= 8'd0;
        end
    end
    else if (dec_bd_enable || (dec_fw_bd_mask_en && (dec_rle_zero_en || dec_fw_enable))) begin
        DEC_BD_IDX_BITMAP_LSB <= {DEC_BD_IDX_BITMAP_MSB2[0],DEC_BD_IDX_BITMAP_LSB[7:1]};
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_header_req <= 1'b0;
    end
    else if (dec_blk_start) begin
        enc_header_req <= 1'b1;
    end
    else if (enc_data_ready && enc_header_req) begin
        case (cntr_enc_header)
            3'd2:begin
                if (DEC_BD_FLAG == 2'b00) begin
                    enc_header_req <= 1'b0;
                end
            end
            3'd3:begin
                if (DEC_BD_FLAG == 2'b01 || DEC_BD_FLAG == 2'b10) begin
                    enc_header_req <= 1'b0;
                end
            end
            3'd4:begin
                if (DEC_BD_FLAG == 2'b11) begin
                    enc_header_req <= 1'b0;
                end
            end
            default:begin
                    enc_header_req <= enc_header_req;
            end
        endcase
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_header_finish <= 1'b0;
    end
    else if (dec_blk_start) begin
        enc_header_finish <= 1'b0;
    end
    else if (enc_data_ready && enc_header_req) begin
        enc_header_finish <= ((cntr_enc_header == 3'd2) & (DEC_BD_FLAG == 2'b00)) | ((cntr_enc_header == 3'd3) & ((DEC_BD_FLAG == 2'b01) | (DEC_BD_FLAG == 2'b10))) | ((cntr_enc_header == 3'd4) & (DEC_BD_FLAG == 2'b11));
    end
    else begin
        enc_header_finish <= 1'b0;
    end
end 

// Four Words width header parse and words number parse

assign bd_index_sum1 = {2'd0,enc_data_out[3]} + {2'd0,enc_data_out[2]} + {2'd0,enc_data_out[1]} + {2'd0,enc_data_out[0]};
assign bd_index_sum2 = {2'd0,enc_data_out[7]} + {2'd0,enc_data_out[6]} + {2'd0,enc_data_out[5]} + {2'd0,enc_data_out[4]};

always @ (posedge clock) begin
    if (dec_blk_start) begin
        cntr_rle_bd <= 6'd0;
    end
    else if (enc_data_ready && enc_header_req) begin
        case (cntr_enc_header) 
            3'd0:begin
                        cntr_rle_bd <= enc_data_out[7:2];
            end
            3'd1:begin
                        cntr_rle_bd <= cntr_rle_bd + {3'd0,bd_index_sum1};
            end
            3'd3:begin  
                        if (DEC_BD_FLAG[1] || DEC_BD_FLAG[0]) begin
                            cntr_rle_bd <= cntr_rle_bd + {3'd0,bd_index_sum1} + {3'd0,bd_index_sum2};
                        end
            end
            3'd4:begin
                        if (DEC_BD_FLAG[1] && DEC_BD_FLAG[0]) begin
                            cntr_rle_bd <= cntr_rle_bd + {3'd0,bd_index_sum1} + {3'd0,bd_index_sum2};
                        end
            end
            default:begin
                        cntr_rle_bd <= cntr_rle_bd;    
            end
        endcase
    end
end

always @* begin
    case (cntr_dec_out)
        7'd0 :    cntr_zigzag = 6'd0;
        7'd1 :    cntr_zigzag = 6'd40;
        7'd2 :    cntr_zigzag = 6'd33;
        7'd3 :    cntr_zigzag = 6'd26;
        7'd4 :    cntr_zigzag = 6'd19;
        7'd5 :    cntr_zigzag = 6'd12;
        7'd6 :    cntr_zigzag = 6'd5;
        7'd7 :    cntr_zigzag = 6'd4;
        7'd8 :    cntr_zigzag = 6'd11;
        7'd9 :    cntr_zigzag = 6'd18;
        7'd10:    cntr_zigzag = 6'd25;
        7'd11:    cntr_zigzag = 6'd32;
        7'd12:    cntr_zigzag = 6'd24;
        7'd13:    cntr_zigzag = 6'd17;
        7'd14:    cntr_zigzag = 6'd10;
        7'd15:    cntr_zigzag = 6'd3;
        7'd16:    cntr_zigzag = 6'd2;
        7'd17:    cntr_zigzag = 6'd9;
        7'd18:    cntr_zigzag = 6'd16;
        7'd19:    cntr_zigzag = 6'd8;
        7'd20:    cntr_zigzag = 6'd1;
        7'd21:    cntr_zigzag = 6'd63;
        7'd22:    cntr_zigzag = 6'd62;
        7'd23:    cntr_zigzag = 6'd55;
        7'd24:    cntr_zigzag = 6'd47;  
        7'd25:    cntr_zigzag = 6'd54;
        7'd26:    cntr_zigzag = 6'd61;
        7'd27:    cntr_zigzag = 6'd60;
        7'd28:    cntr_zigzag = 6'd53;
        7'd29:    cntr_zigzag = 6'd46;
        7'd30:    cntr_zigzag = 6'd39;
        7'd31:    cntr_zigzag = 6'd31;
        7'd32:    cntr_zigzag = 6'd38;
        7'd33:    cntr_zigzag = 6'd45;
        7'd34:    cntr_zigzag = 6'd52;
        7'd35:    cntr_zigzag = 6'd59;
        7'd36:    cntr_zigzag = 6'd58;
        7'd37:    cntr_zigzag = 6'd51;
        7'd38:    cntr_zigzag = 6'd44;
        7'd39:    cntr_zigzag = 6'd37;
        7'd40:    cntr_zigzag = 6'd30;
        7'd41:    cntr_zigzag = 6'd23;
        7'd42:    cntr_zigzag = 6'd15;
        7'd43:    cntr_zigzag = 6'd22;
        7'd44:    cntr_zigzag = 6'd29;
        7'd45:    cntr_zigzag = 6'd36;
        7'd46:    cntr_zigzag = 6'd43;
        7'd47:    cntr_zigzag = 6'd50;
        7'd48:    cntr_zigzag = 6'd57;
        7'd49:    cntr_zigzag = 6'd56;
        7'd50:    cntr_zigzag = 6'd49;
        7'd51:    cntr_zigzag = 6'd42;
        7'd52:    cntr_zigzag = 6'd35;
        7'd53:    cntr_zigzag = 6'd28;
        7'd54:    cntr_zigzag = 6'd21;
        7'd55:    cntr_zigzag = 6'd14;
        7'd56:    cntr_zigzag = 6'd7;
        7'd57:    cntr_zigzag = 6'd6;
        7'd58:    cntr_zigzag = 6'd13;
        7'd59:    cntr_zigzag = 6'd20;
        7'd60:    cntr_zigzag = 6'd27;
        7'd61:    cntr_zigzag = 6'd34;
        7'd62:    cntr_zigzag = 6'd41;
        7'd63:    cntr_zigzag = 6'd48;
        7'd64:    cntr_zigzag = 6'd40;
        7'd65:    cntr_zigzag = 6'd33;
        7'd66:    cntr_zigzag = 6'd26;
        7'd67:    cntr_zigzag = 6'd19;
        7'd68:    cntr_zigzag = 6'd12;
        7'd69:    cntr_zigzag = 6'd5;
        7'd70:    cntr_zigzag = 6'd4;
        7'd71:    cntr_zigzag = 6'd11;
        7'd72:    cntr_zigzag = 6'd18;
        7'd73:    cntr_zigzag = 6'd25;
        7'd74:    cntr_zigzag = 6'd32;
        7'd75:    cntr_zigzag = 6'd24;
        7'd76:    cntr_zigzag = 6'd17;
        7'd77:    cntr_zigzag = 6'd10;
        7'd78:    cntr_zigzag = 6'd3;
        7'd79:    cntr_zigzag = 6'd2;
        7'd80:    cntr_zigzag = 6'd9;
        7'd81:    cntr_zigzag = 6'd16;
        7'd82:    cntr_zigzag = 6'd8;
        7'd83:    cntr_zigzag = 6'd1;
        default:  cntr_zigzag = 6'd1;
    endcase
end

// --------------------------------------------
//
// output control
//
// --------------------------------------------

// DC 

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_dc_data_en <= 1'd0;
    end
    else begin
        dec_dc_data_en <= enc_header_finish; 
    end
end

// BD

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_bd_start <= 1'd0;
    end
    else begin
        dec_bd_start <= (dec_dc_data_en & (FW_WIDTH_WORDS_NUM == 0)) | (enc_fw_width_req & (cntr_fw_width == FW_WIDTH_WORDS_NUM)); 
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_bd_enable <= 1'd0;
    end
    else if (dec_bd_start) begin
        dec_bd_enable <= 1'b1;
    end
    else if (cntr_dec_out == 7'd19) begin
        dec_bd_enable <= 1'd0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_bd_data_en <= 1'd0;
    end
    else begin
        dec_bd_data_en <= dec_bd_enable;
    end
end

// RLE

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_rle_zero_en <= 1'd0;
    end
    else if (~dec_bd_enable && dec_bd_data_en) begin
        dec_rle_zero_en <= 1'b1;
    end
    else if (cntr_dec_rle == DEC_RLE_NUM) begin
        dec_rle_zero_en <= 1'd0;
    end
end

always @ (posedge clock) begin
    if (dec_bd_start) begin
        cntr_dec_rle <= 6'd0;
    end
    else if ((~dec_bd_enable && dec_bd_data_en) || dec_rle_zero_en)  begin
        cntr_dec_rle <= cntr_dec_rle + 1;
    end
end

// FW

assign fw_data_num_wire = ~cntr_rle_bd;
assign fw_enc_num_wire = (fw_data_num_wire[1:0] == 2'd0) ? fw_data_num_wire[5:2] : (fw_data_num_wire[5:2]+1);
assign FW_WIDTH_WORDS_NUM_wire = (fw_enc_num_wire[1:0] == 2'd0) ? {1'b0,fw_enc_num_wire[3:2]} : ({1'b0,fw_enc_num_wire[3:2]} + 3'd1);

always @ (posedge clock) begin
    if (dec_blk_start) begin
        FW_WIDTH_WORDS_NUM <= 3'd0;
    end
    else if (enc_header_finish) begin
        FW_WIDTH_WORDS_NUM <= FW_WIDTH_WORDS_NUM_wire;
    end
end

always @ (posedge clock) begin
    if (dec_blk_start) begin
        DEC_FW_WIDTH_WORDS1 <= 8'd0;
    end
    else if (cntr_fw_width == 3'd1 && enc_fw_width_req && enc_data_ready) begin
        DEC_FW_WIDTH_WORDS1 <= enc_data_out;
    end
    else if (enc_fw_width_shift_en) begin
        DEC_FW_WIDTH_WORDS1 <= {DEC_FW_WIDTH_WORDS1[5:0],DEC_FW_WIDTH_WORDS2[7:6]};
    end
end

always @ (posedge clock) begin
    if (dec_blk_start) begin
        DEC_FW_WIDTH_WORDS2 <= 8'd0;
    end
    else if (cntr_fw_width == 3'd2 && enc_fw_width_req && enc_data_ready) begin
        DEC_FW_WIDTH_WORDS2 <= enc_data_out;
    end
    else if (enc_fw_width_shift_en) begin
        DEC_FW_WIDTH_WORDS2 <= {DEC_FW_WIDTH_WORDS2[5:0],DEC_FW_WIDTH_WORDS3[7:6]};
    end
end

always @ (posedge clock) begin
    if (dec_blk_start) begin
        DEC_FW_WIDTH_WORDS3 <= 8'd0;
    end
    else if (cntr_fw_width == 3'd3 && enc_fw_width_req && enc_data_ready) begin
        DEC_FW_WIDTH_WORDS3 <= enc_data_out;
    end
    else if (enc_fw_width_shift_en) begin
        DEC_FW_WIDTH_WORDS3 <= {DEC_FW_WIDTH_WORDS3[5:0],DEC_FW_WIDTH_WORDS4[7:6]};
    end
end

always @ (posedge clock) begin
    if (dec_blk_start) begin
        DEC_FW_WIDTH_WORDS4 <= 8'd0;
    end
    else if (cntr_fw_width == 3'd4 && enc_fw_width_req && enc_data_ready) begin
        DEC_FW_WIDTH_WORDS4 <= enc_data_out;
    end
    else if (enc_fw_width_shift_en) begin
        DEC_FW_WIDTH_WORDS4 <= {DEC_FW_WIDTH_WORDS4[5:0],2'b00};
    end
end

always @ (posedge clock) begin
    if (dec_blk_start) begin
        cntr_fw_width <= 3'd0;
    end
    else if ((dec_dc_data_en && FW_WIDTH_WORDS_NUM != 0) || enc_fw_width_req) begin
        cntr_fw_width <= cntr_fw_width + 1;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_fw_width_req <= 1'b0;
    end
    else if (dec_blk_start) begin
        enc_fw_width_req <= 1'b0;
    end
    else if (dec_dc_data_en && FW_WIDTH_WORDS_NUM != 0) begin
        enc_fw_width_req <= 1'b1;
    end
    else if (cntr_fw_width == FW_WIDTH_WORDS_NUM) begin
        enc_fw_width_req <= 1'b0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_fw_start <= 1'd0;
    end
    else begin
        dec_fw_start <= (FW_WIDTH_WORDS_NUM != 0) & dec_rle_zero_en & (cntr_dec_rle == DEC_RLE_NUM);
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_fw_start_1d <= 1'd0;
    end
    else begin
        dec_fw_start_1d <= dec_fw_start;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_fw_enable <= 1'b0;
    end
    else if (dec_fw_start_1d) begin
        dec_fw_enable <= dec_fw_start_1d;
    end
    else if (dec_fw_data_en && (cntr_fw_words ==  fw_data_num_wire-1)) begin
        dec_fw_enable <= 1'b0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_data_out_buf <= 8'd0; 
    end
    else if (enc_payload_req & enc_data_ready) begin
        enc_data_out_buf <= enc_data_out;
    end
end

always @ (posedge clock) begin
    if (dec_fw_start) begin
        cntr_fw_words <= 6'd0;
    end
    else if (dec_fw_data_en) begin
        cntr_fw_words <= cntr_fw_words + 1;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        FW_WIDTH_CURRENT <= 3'd0;
    end
    else if (dec_fw_start || ((cntr_fw_words[1:0] == 2'b11) && dec_fw_data_en)) begin
        case (DEC_FW_WIDTH_WORDS1[7:6])
            2'd0:  FW_WIDTH_CURRENT <= 3'd1;
            2'd1:  FW_WIDTH_CURRENT <= 3'd2;
            2'd2:  FW_WIDTH_CURRENT <= 3'd3;
            2'd3:  FW_WIDTH_CURRENT <= 3'd4;
        endcase
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        FW_WIDTH_CURRENT_2BITS <= 2'd0;
    end
    else if (dec_fw_start || ((cntr_fw_words[1:0] == 2'b11) && dec_fw_data_en)) begin
        FW_WIDTH_CURRENT_2BITS <= DEC_FW_WIDTH_WORDS1[7:6];
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        FW_WIDTH_NEXT <= 3'd0;
    end
    else if (dec_fw_start) begin
        case (DEC_FW_WIDTH_WORDS1[7:6])
            2'd0:  FW_WIDTH_NEXT <= 3'd1;
            2'd1:  FW_WIDTH_NEXT <= 3'd2;
            2'd2:  FW_WIDTH_NEXT <= 3'd3;
            2'd3:  FW_WIDTH_NEXT <= 3'd4;
        endcase
    end
    else if ((cntr_fw_words[1:0] == 2'b10) && dec_fw_data_en) begin
        case (DEC_FW_WIDTH_WORDS1[5:4])
            2'd0:  FW_WIDTH_NEXT <= 3'd1;
            2'd1:  FW_WIDTH_NEXT <= 3'd2;
            2'd2:  FW_WIDTH_NEXT <= 3'd3;
            2'd3:  FW_WIDTH_NEXT <= 3'd4;
        endcase
    end
end

assign dec_fw_data_en = dec_fw_enable & (~dec_fw_bd_mask_en | (dec_fw_bd_mask_en & ~DEC_BD_IDX_BITMAP_LSB[0]));
assign enc_fw_width_shift_en = (cntr_fw_words[1:0] == 2'b10) & dec_fw_data_en;

assign dec_fw_msb_ptr_wire = {1'b0,dec_fw_msb_ptr} + {1'd0,FW_WIDTH_CURRENT};
assign dec_fw_msb_ptr_next = dec_fw_msb_ptr_wire + {1'b0,FW_WIDTH_NEXT};

always @ (posedge clock) begin
    if (dec_fw_start) begin
        dec_fw_msb_ptr <= 3'd0;
    end
    else if (dec_fw_data_en) begin
        dec_fw_msb_ptr <= dec_fw_msb_ptr_wire[2:0];
    end
end

always @* begin
    case (dec_fw_msb_ptr[2:0])
        3'd0: dec_fw_words_b3 = enc_data_out_buf[7];
        3'd1: dec_fw_words_b3 = enc_data_out_buf[6];
        3'd2: dec_fw_words_b3 = enc_data_out_buf[5];
        3'd3: dec_fw_words_b3 = enc_data_out_buf[4];
        3'd4: dec_fw_words_b3 = enc_data_out_buf[3];
        3'd5: dec_fw_words_b3 = enc_data_out_buf[2];
        3'd6: dec_fw_words_b3 = enc_data_out_buf[1];
        3'd7: dec_fw_words_b3 = enc_data_out_buf[0];
    endcase
end

always @* begin
    case (dec_fw_msb_ptr[2:0])
        3'd0: dec_fw_words_b2 = enc_data_out_buf[6];
        3'd1: dec_fw_words_b2 = enc_data_out_buf[5];
        3'd2: dec_fw_words_b2 = enc_data_out_buf[4];
        3'd3: dec_fw_words_b2 = enc_data_out_buf[3];
        3'd4: dec_fw_words_b2 = enc_data_out_buf[2];
        3'd5: dec_fw_words_b2 = enc_data_out_buf[1];
        3'd6: dec_fw_words_b2 = enc_data_out_buf[0];
        3'd7: dec_fw_words_b2 = enc_data_out[7];
    endcase
end

always @* begin
    case (dec_fw_msb_ptr[2:0])
        3'd0: dec_fw_words_b1 = enc_data_out_buf[5];
        3'd1: dec_fw_words_b1 = enc_data_out_buf[4];
        3'd2: dec_fw_words_b1 = enc_data_out_buf[3];
        3'd3: dec_fw_words_b1 = enc_data_out_buf[2];
        3'd4: dec_fw_words_b1 = enc_data_out_buf[1];
        3'd5: dec_fw_words_b1 = enc_data_out_buf[0];
        3'd6: dec_fw_words_b1 = enc_data_out[7];
        3'd7: dec_fw_words_b1 = enc_data_out[6];
    endcase
end

always @* begin
    case (dec_fw_msb_ptr[2:0])
        3'd0: dec_fw_words_b0 = enc_data_out_buf[4];
        3'd1: dec_fw_words_b0 = enc_data_out_buf[3];
        3'd2: dec_fw_words_b0 = enc_data_out_buf[2];
        3'd3: dec_fw_words_b0 = enc_data_out_buf[1];
        3'd4: dec_fw_words_b0 = enc_data_out_buf[0];
        3'd5: dec_fw_words_b0 = enc_data_out[7];
        3'd6: dec_fw_words_b0 = enc_data_out[6];
        3'd7: dec_fw_words_b0 = enc_data_out[5];
    endcase
end

always @* begin
    case (FW_WIDTH_CURRENT_2BITS)
        2'b00: dec_fw_words_4bits = {3'b0,dec_fw_words_b3};
        2'b01: dec_fw_words_4bits = {{3{dec_fw_words_b3}},dec_fw_words_b2};
        2'b10: dec_fw_words_4bits = {{2{dec_fw_words_b3}},dec_fw_words_b2,dec_fw_words_b1};
        2'b11: dec_fw_words_4bits = {dec_fw_words_b3,dec_fw_words_b2,dec_fw_words_b1,dec_fw_words_b0};
    endcase
end

always @ (posedge clock) begin
    if (dec_blk_start) begin
        cntr_dec_out <= 7'd0;
    end
    else if (dec_dc_data_en || dec_bd_data_en || dec_rle_zero_en || dec_fw_enable) begin
        cntr_dec_out <= cntr_dec_out + 1;
    end
end

always @ (posedge clock) begin
    if (dec_blk_start) begin
        dec_fw_bd_mask_en <= 1'b0;
    end 
    else if ((dec_rle_zero_en || dec_fw_enable) && (cntr_dec_out == 7'd63)) begin
        if (cntr_dec_out == 7'd63) begin
            dec_fw_bd_mask_en <= 1'b1;
        end
    end
end

assign dec_fw_prefetch_flag = cntr_fw_words + cntr_rle_bd;

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_payload_req <= 1'd0;
    end
    else if (dec_bd_enable) begin
        enc_payload_req <= DEC_BD_IDX_BITMAP_LSB[0]; 
    end
    else begin
        enc_payload_req <= dec_fw_start | (dec_fw_data_en & ((dec_fw_prefetch_flag[5:2] != 4'b1111) | (dec_fw_prefetch_flag == 6'b111100)) & ~dec_fw_msb_ptr_wire[3] & dec_fw_msb_ptr_next[3]) | (dec_fw_data_en & (cntr_fw_words ==  fw_data_num_wire-1) & dec_fw_msb_ptr_wire[3] & (dec_fw_msb_ptr_wire[2:0] != 3'd0)); 
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_fw_data_en_1d <= 1'd0;
    end
    else begin
        dec_fw_data_en_1d <= dec_fw_data_en;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_fw_words_update_bd <= 1'b0;
    end
    else if (dec_blk_start) begin
        dec_fw_words_update_bd <= 1'b0;
    end
    else if (enc_payload_req && dec_fw_enable && ~dec_fw_data_en) begin
        dec_fw_words_update_bd <= 1'b1; 
    end
    else if (~dec_fw_data_en_1d && dec_fw_data_en) begin
        dec_fw_words_update_bd <= 1'b0;
    end
end

// --------------------------------------------
//
// output interface
//
// --------------------------------------------

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_data <= 8'd0;
    end
    else begin
        if (dec_dc_data_en) begin
            dec_data <= DEC_DC_LSB;
        end
        else if (dec_bd_data_en) begin
            dec_data <= enc_data_out;
        end
        else if (dec_rle_zero_en) begin
            dec_data <= 8'd0;
        end
        else if ((dec_fw_data_en && ~dec_fw_words_update_bd) || (enc_payload_req && dec_fw_enable && ~dec_fw_data_en)) begin
            dec_data <= {{4{dec_fw_words_4bits[3]}},dec_fw_words_4bits};
        end
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_data_en <= 1'd0;
    end
    else begin
        dec_data_en <= dec_dc_data_en | (dec_bd_data_en & enc_payload_req) | dec_rle_zero_en | dec_fw_data_en;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_data_index <= 6'd0;
    end
    else begin
        dec_data_index <= cntr_zigzag;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_blk_finish <= 1'b0;
    end
    else if (FW_WIDTH_WORDS_NUM == 0) begin
        dec_blk_finish <= dec_rle_zero_en & (cntr_dec_rle == DEC_RLE_NUM);
    end
    else begin
        dec_blk_finish <= dec_fw_data_en & (cntr_fw_words == fw_data_num_wire-1);
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        dec_blk_finish_1d <= 1'b0;
        dec_blk_finish_2d <= 1'b0;
        dec_blk_finish_3d <= 1'b0;
        dec_blk_finish_4d <= 1'b0;

    end
    else begin
        dec_blk_finish_1d <= dec_blk_finish;
        dec_blk_finish_2d <= dec_blk_finish_1d;
        dec_blk_finish_3d <= dec_blk_finish_2d;
        dec_blk_finish_4d <= dec_blk_finish_3d;
    end
end
// --------------------------------------------------------------------------------------
endmodule
