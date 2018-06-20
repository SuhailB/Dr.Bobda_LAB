//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           compress_top.v
// Module:         compress_top
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Content:        top entity of one image frame compression/frame buffer/decompression
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
// 2016-04-01:     Harvey Zhao      Add interface write SPRAM 
//     
//=============================================================================

module compress_top (
   clock,
   reset_n,
   inter_reset,
   buffer_len,
   spi_rmi_en,
   spi_wdata,
   spi_wren,
   spi_rdata,
   spi_addr ,
   frame_end,        
   enc_wr_data_in,
   enc_wr_data_en,
   decompress_data,
   decompress_data_en
);

/* interface declaration */
input    [15:0]                         buffer_len;
input    [7:0]                          spi_rmi_en;
input    [7:0]                          spi_wdata;
input                                   spi_wren;
output   [7:0]                          spi_rdata;
input    [13:0]                         spi_addr;
input                                   clock;
input                                   reset_n;
output                                  inter_reset;
input    [7:0]                          enc_wr_data_in;
input                                   enc_wr_data_en;
output   [7:0]                          decompress_data;
output                                  decompress_data_en;
input                                   frame_end;        


/* wire-type signals definition */
wire                                    decompress_finish;
wire                                    compress_on;
wire                                    compress_start;
wire                                    decompress_start;
wire                                    decompress_finish_wire;
wire                                    compress_finish_wire;
wire                                    dct_out_en;
wire    [5:0]                           dct_out_idx;
wire    [12:0]                          dct_output;
wire                                    dec_data_fifo_ready;
wire    [12:0]                          rm_rdata;
wire    [6:0]                           rm_rdata_idx;
wire                                    rm_rdata_en;
wire                                    dct_q_ready;
wire    [7:0]                           dct_q_rdata;
wire    [7:0]                           enc_ram_rdata;
wire                                    enc_rd_data_ready;
wire    [7:0]                           enc_rd_data_out;
wire                                    enc_rd_data_out_finish;
wire                                    enc_data_req;
wire    [7:0]                           dec_data;
wire                                    dec_data_en;
wire    [5:0]                           dec_data_index;
wire                                    last_dec_blk;
wire    [12:0]                          deq_data;
wire                                    deq_data_en;
wire    [5:0]                           deq_data_idx;
wire                                    compress_finish;
wire                                    frame_buffer_write_over;
reg                                     decompress_request_buffer;
reg                                     compress_finish_buffer;
reg                                     decompress_request;
reg    [5:0]                            compress_finish_shift;
reg    [8:0]                            compressed_data_to_buffer_shift; 
//Generate 1S PWM
reg    [23:0]                           cnt_1s   = 0;
reg                                     start_1s = 0;
wire                                    inter_1s;

parameter   CNT_1S_RESET  = 24'hcdfe60;

`ifdef LATTICE_SIM 
assign inter_1s    = (cnt_1s == 24'h002a3e) ? 1'b1 : 1'b0;
assign inter_reset = ( (cnt_1s == 24'h002a10) || (cnt_1s == 24'h002a11)) ? 1'b0 : 1'b1;

always @ (posedge clock) 
begin
   if (~reset_n) 
      start_1s <= 0;
   else if (frame_end)
      start_1s <= 1;
   else if (cnt_1s == 24'h002a3e)
      start_1s <= 0;
end

always @ (posedge clock) 
begin
   if (~reset_n) 
      cnt_1s <= 0;
   else if  (start_1s )
   begin
      if (cnt_1s == 24'h002a3e)
         cnt_1s <= 0;
      else 
         cnt_1s <= cnt_1s + 1'b1;
   end
end
`else 
assign inter_1s    = (cnt_1s == CNT_1S_RESET  ) ? 1'b1 : 1'b0;
assign inter_reset = ( (cnt_1s == (CNT_1S_RESET - 50)) || (cnt_1s == (CNT_1S_RESET-49))) ? 1'b0 : 1'b1;

always @ (posedge clock) 
begin
   if (~reset_n) 
      start_1s <= 0;
   else if (frame_end)
      start_1s <= 1;
   else if (cnt_1s == CNT_1S_RESET)
      start_1s <= 0;
end

always @ (posedge clock) 
begin
   if (~reset_n) 
      cnt_1s <= 0;
   else if  (start_1s )
   begin
      if (cnt_1s == CNT_1S_RESET)
         cnt_1s <= 0;
      else 
         cnt_1s <= cnt_1s + 1'b1;
   end
end
`endif

//Generate decompress start signal
always @ (posedge clock) 
begin
   if (~reset_n) begin
      compress_finish_shift <= 6'd0;
   end
   else 
   begin
      compress_finish_shift <= {compress_finish_shift[4:0],  compress_finish};
   end
end

always @ (posedge clock) 
begin
   if (~reset_n) 
   begin
      decompress_request <= 1'b0;
   end
   else 
   begin
      decompress_request <= compress_finish_shift[4] & ~compress_finish_shift[5];
   end
end

//define register 
always @ (posedge clock) 
begin
   if (~reset_n) 
   begin
      compressed_data_to_buffer_shift <= 0;
   end
   else
   begin
      compressed_data_to_buffer_shift <={compressed_data_to_buffer_shift[7:0],  frame_buffer_write_over} ;
   end
end

always @ (posedge clock) 
begin
   if (~reset_n) 
   begin
   	  decompress_request_buffer <= 1'b0;
   	  compress_finish_buffer    <= 1'b0;
   end
   else 
   begin
      decompress_request_buffer <= compressed_data_to_buffer_shift[7] & ~compressed_data_to_buffer_shift[8];
      compress_finish_buffer    <= compressed_data_to_buffer_shift[3] & ~compressed_data_to_buffer_shift[4];
   end
end

//Module instance 
//Compress and decompress ctrl module
compress_ctrl               compress_ctrl_inst (
    .clock                      (clock                    ), 
    .reset_n                    (reset_n && inter_reset   ),
    .inter_reset_n              (reset_n                  ),
    .compress_request           (1'b0                     ),
    .compress_start             (compress_start           ),
    .compress_finish            (compress_finish_wire     ),
    .compress_finish_o          (compress_finish          ),
    .compress_on                (compress_on              ),
    .decompress_request         (decompress_request || inter_1s ),
    .decompress_start           (decompress_start         ),
    .decompress_finish          (decompress_finish_wire   ),
    .decompress_finish_o        (decompress_finish        )
);

// compress: Rate matching between display Input and DCT
// decompress: Rate matching between entropy decoder/Dequantization and IDCT
rate_match_s1               rate_match_inst_1(
    .clock                      (clock                  ),
    .reset_n                    (reset_n && inter_reset ),
    .compress_start             (compress_start         ),
    .compress_on                (compress_on            ),
    .Y_data                     (8'd0                   ),
    .C_data                     (8'd0                   ),
    .YC_enable                  (1'b0                   ),
    .YC_sof                     (1'b0                   ),
    .decompress_start           (decompress_start       ),
    .dec_data_fifo_ready        (dec_data_fifo_ready    ), //output
    .dec_data                   (deq_data               ),
    .dec_data_en                (deq_data_en            ),
    .dec_data_index             (deq_data_idx           ),
    .last_dec_blk               (last_dec_blk           ), //output
    .rm_rdata                   (rm_rdata               ), //output
    .rm_rdata_idx               (rm_rdata_idx           ), //output
    .rm_rdata_en                (rm_rdata_en            )  //output
);

// DCT/IDCT calculation
dct_top                     dct_inst(
    .clock                      (clock                  ),
    .reset_n                    (reset_n && inter_reset ),
    .dct_flag                   (compress_on            ),
    .rm_data_en                 (rm_rdata_en            ),
    .rm_data_idx                (rm_rdata_idx           ),
    .rm_data                    (rm_rdata               ),
    .dct_out_en                 (dct_out_en             ),//output
    .dct_out_idx                (dct_out_idx            ),//output
    .dct_output                 (dct_output             ) //output
);

// compress: Rate Matching between DCT and entropy encoder
// decompress: Rate Matching between IDCT and decompression output
rate_match_s2               rate_match_inst_2(
    .clock                      (clock                  ),
    .reset_n                    (reset_n && inter_reset ),
    .dct_flag                   (compress_on            ),
    .q_data                     (8'd0                   ),
    .q_data_en                  (1'b0                   ),
    .q_index                    (6'd0                   ),
    .dct_q_ready                (dct_q_ready            ),
    .dct_q_rdata                (dct_q_rdata            ), 
    .entropy_enc_we             (1'b0                   ),
    .entropy_enc_wdata          (8'd0                   ),
    .entropy_enc_waddr          (8'd0                   ),
    .entropy_enc_raddr          (8'd0                   ),
    .entropy_enc_rdata          (                       ),
    .last_dec_blk               (last_dec_blk           ),
    .idct_data                  (dct_output             ),
    .idct_data_en               (dct_out_en             ),
    .idct_data_idx              (dct_out_idx            ),
    .decompress_data            (decompress_data        ),
    .decompress_data_en         (decompress_data_en     ),
    .decompress_finish          (decompress_finish_wire )
);


// compressed frame buffer
frame_buffer                compressed_frame_buff_inst(
    .clock                      (clock                  ),
    .reset_n                    (reset_n                ),
    .frame_end_dd               (frame_end              ),       
    .inter_reset                (inter_reset            ),
    .buffer_len                 (buffer_len[14:0]       ), 
    .compress_start             (compress_start         ),//input
    .compress_finish            (compress_finish_wire   ),
    .enc_wr_data_in             (enc_wr_data_in         ),
    .enc_wr_data_en             (enc_wr_data_en         ),
    .enc_wr_data_finish         (compress_finish_buffer ),//input
    .enc_wr_data_count          (                       ),
    .spi_addr                   (spi_addr               ),     
    .spi_rdata                  (spi_rdata              ),
    .spi_wdata                  (spi_wdata              ),
    .spi_wren                   (spi_wren               ),
    .spi_rmi_en                 (spi_rmi_en             ),    
    .frame_buffer_write_over    (frame_buffer_write_over),
    .decompress_start           (decompress_start       ),//input
    .enc_data_req               (enc_data_req           ),//input
    .enc_rd_data_ready          (enc_rd_data_ready      ),
    .enc_rd_data_out            (enc_rd_data_out        ),
    .enc_rd_data_out_finish     (enc_rd_data_out_finish ) //use for other module [ reset ];
);

// entropy decoer
entropy_decoder             entropy_decoder_inst(   
    .clock                      (clock                  ),
    .reset_n                    (reset_n && inter_reset ),
    .decompress_start           (decompress_start       ),
    .enc_data_ready             (enc_rd_data_ready      ),
    .enc_data_out               (enc_rd_data_out        ),
    .enc_data_req               (enc_data_req           ),
    .dec_data_fifo_ready        (dec_data_fifo_ready    ),
    .dec_data                   (dec_data               ), //output 
    .dec_data_en                (dec_data_en            ), //output 
    .dec_data_index             (dec_data_index         )  //output 
);

// dequantization
dequantization              dequantization_inst(
    .clock                      (clock                  ),
    .reset_n                    (reset_n && inter_reset ),
    .q_data                     (dec_data               ),
    .q_data_en                  (dec_data_en            ),
    .q_data_idx                 (dec_data_index         ),
    .deq_data                   (deq_data               ),
    .deq_data_en                (deq_data_en            ),
    .deq_data_idx               (deq_data_idx           )
);


endmodule
