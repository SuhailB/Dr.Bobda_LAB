//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           frame_buffer.v
// Module:         frame_buffer
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2016/06/01
// Content:        rate match and data buffering between pixels data from display processor and DCT compress module
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
// 2016-04-27:     Harvey Zhao      change ram to SPRAM    
//=============================================================================

module frame_buffer (
    clock,
    reset_n,
    inter_reset,           
    frame_end_dd,        
    buffer_len,
    spi_rmi_en,
    spi_wdata,
    spi_wren,
    spi_rdata,
    spi_addr ,
    // compress
    compress_start,
    compress_finish,
    enc_wr_data_in,
    enc_wr_data_en,
    enc_wr_data_finish,
    enc_wr_data_count,
    frame_buffer_write_over,  
    // decompress 
    decompress_start,
    enc_data_req,
    enc_rd_data_ready,
    enc_rd_data_out,
    enc_rd_data_out_finish
);

/* interface declaration */
input                                   frame_end_dd;        
input    [14:0]                         buffer_len;
input    [7:0]                          spi_rmi_en;
input    [7:0]                          spi_wdata;
input                                   spi_wren;
output   [7:0]                          spi_rdata;
input    [13:0]                         spi_addr;

input                                   clock;
input                                   reset_n;
input                                   inter_reset;           

input                                   compress_start;
input   [7:0]                           enc_wr_data_in;
input                                   enc_wr_data_en;
input                                   enc_wr_data_finish;

output  [14:0]                          enc_wr_data_count;
output                                  frame_buffer_write_over;  
output                                  compress_finish;

input                                   decompress_start;
input                                   enc_data_req;
output                                  enc_rd_data_ready;
output  [7:0]                           enc_rd_data_out;
output                                  enc_rd_data_out_finish;
/* wire-type signals definition */

wire    [14:0]                          ram_wr_addr;      
wire    [7:0]                           ram_wr_data;      
wire                                    ram_wr_en;       
wire    [14:0]                          ram_rd_addr;    
wire    [7:0]                           ram_rd_data;   
wire    [14:0]                          cntr_enc_read;
wire                                    cntr_enc_read_step;

/* reg-type signals definition */

reg                                     compress_finish;
reg                                     enc_ram_wr_window;
reg     [11:0]                          enc_blk_count;
reg     [14:0]                          cntr_enc_read_reg;
reg                                     enc_data_prefetch;
reg                                     enc_data_prefetch_1d;
reg                                     enc_rd_data_ready;
reg     [7:0]                           enc_rd_data_1d;
reg                                     enc_rd_data_out_finish;
// --------------------------------------------------------------------------------------
wire                                    frame_buffer_write_over; 
wire    [13:0]                          spram_addr;        
wire    [15:0 ]                         spram_data_out; 
wire    [15:0 ]                         spram_data_out0; 
wire    [15:0 ]                         spram_data_out1; 
wire    [15:0 ]                         spram_data_out2; 
wire                                    spram_wren ;
reg                                     frame_buffer_write_over0; 
reg                                     frame_buffer_write_over1; 
reg                                     frame_buffer_write_over2; 
reg     [14:0]                          enc_wr_data_cnt0;
reg     [14:0]                          enc_wr_data_cnt1;
reg     [14:0]                          enc_wr_data_cnt2;
reg                                     read_pic0;
reg                                     read_pic1;
reg                                     read_pic2;
reg     [15:0 ]                         spram_data_in; 
reg     [7:0]                           ram_wr_data_d;
reg                                     pic_first;
reg                                     pic_second;
reg                                     pic_third;

//RTL Begin 
assign   frame_buffer_write_over  =   frame_buffer_write_over0  & frame_buffer_write_over1 & frame_buffer_write_over2 ;

always @ (posedge clock or negedge reset_n) begin 
   if (~reset_n) 
   begin
      frame_buffer_write_over0  <= 0;
   end 
   else if ((enc_wr_data_cnt0 == buffer_len) && (spi_rmi_en[1] == 1))
      frame_buffer_write_over0  <= 1;
end

always @ (posedge clock or negedge reset_n) begin 
   if (~reset_n) 
   begin
      frame_buffer_write_over1  <= 0;
   end 
   else if ((enc_wr_data_cnt1 == buffer_len) && (spi_rmi_en[2] == 1))
      frame_buffer_write_over1  <= 1;
end

always @ (posedge clock or negedge reset_n) begin 
   if (~reset_n) 
   begin
      frame_buffer_write_over2  <= 0;
   end 
   else if ((enc_wr_data_cnt2 == buffer_len) && (spi_rmi_en[3] == 1))
      frame_buffer_write_over2  <= 1;
end
// ----------------------------------------------


always @ (posedge clock or negedge reset_n) 
begin
    if (~reset_n) begin
        enc_wr_data_cnt0 <= 15'd0;
    end
    else if (enc_ram_wr_window && enc_wr_data_en && spi_rmi_en[1]) begin
        enc_wr_data_cnt0 <= enc_wr_data_cnt0 + 1;
    end
end

always @ (posedge clock or negedge reset_n) 
begin
    if (~reset_n) begin
        enc_wr_data_cnt1 <= 15'd0;
    end
    else if (enc_ram_wr_window && enc_wr_data_en && spi_rmi_en[2]) begin
        enc_wr_data_cnt1 <= enc_wr_data_cnt1 + 1;
    end
end

always @ (posedge clock or negedge reset_n) 
begin
    if (~reset_n) begin
        enc_wr_data_cnt2 <= 15'd0;
    end
    else if (enc_ram_wr_window && enc_wr_data_en &&  spi_rmi_en[3]) begin
        enc_wr_data_cnt2 <= enc_wr_data_cnt2 + 1;
    end
end


always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_blk_count <= 12'd0;
    end
    else if (~inter_reset) begin
        enc_blk_count <= 12'd0;
    end
    else if (enc_wr_data_finish) begin
        enc_blk_count <= enc_blk_count + 1;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        compress_finish <= 1'b0;
    end
    else begin
        compress_finish <= enc_wr_data_finish;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_ram_wr_window <= 1'b1;
    end
    else if (compress_start) begin
        enc_ram_wr_window <= 1'b1;
    end
    else if (compress_finish) begin
        enc_ram_wr_window <= 1'b0;
    end
end

assign ram_wr_addr = spi_rmi_en[1] ? enc_wr_data_cnt0 : spi_rmi_en[2] ? enc_wr_data_cnt1 : spi_rmi_en[3] ? enc_wr_data_cnt2 : 0;
assign ram_wr_data = enc_wr_data_in;
assign ram_wr_en   = enc_wr_data_en & enc_ram_wr_window;

// --------------------------------------------
// RAM instance
// --------------------------------------------

assign    enc_wr_data_count  =  read_pic0 ? enc_wr_data_cnt0  : read_pic1 ? enc_wr_data_cnt1: read_pic2 ? enc_wr_data_cnt2 : enc_wr_data_cnt0;
assign    spram_data_out     =  read_pic0 ?  spram_data_out0  : read_pic1 ? spram_data_out1 : read_pic2 ? spram_data_out2 : spram_data_out0; 
assign    spram_wren         =  ram_wr_en &&  (ram_wr_addr[0] ==1) ;
assign    spram_addr         =  enc_ram_wr_window ? ram_wr_addr[14:1] : ram_rd_addr[14:1] ; 
assign    ram_rd_data        =  (enc_ram_wr_window) ? 8'd0 : ram_rd_addr[0] ?   spram_data_out[7:0] : spram_data_out[15:8];

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) 
       ram_wr_data_d  <= 0;
    else if (~inter_reset) 
       ram_wr_data_d  <= 0;
    else if (ram_wr_en)
       ram_wr_data_d  <= ram_wr_data;
end

always @(*)
begin
   if(enc_ram_wr_window == 0) 
      spram_data_in  = 0;
   else  
   begin
      if (ram_wr_en)
         spram_data_in  = {ram_wr_data,ram_wr_data_d};
   end
end

//Instance 3 spram instore 3 pictures
SB_SPRAM256KA                 inst_SPRAM256KA               (
     .ADDRESS                 (spram_addr                   ),
     .DATAIN                  (spram_data_in                ),
     .MASKWREN                (4'hf                         ),
     .WREN                    (spram_wren & spi_rmi_en[1]   ),
     .CHIPSELECT              (1'b1                         ),
     .CLOCK                   (clock                        ),
     .STANDBY                 (1'b0                         ),
     .SLEEP                   (1'b0                         ),
     .POWEROFF                (1'b1                         ),
     .DATAOUT                 (spram_data_out0              )
); 

SB_SPRAM256KA                 inst1_SPRAM256KA              (
     .ADDRESS                 (spram_addr                   ),
     .DATAIN                  (spram_data_in                ),
     .MASKWREN                (4'hf                         ),
     .WREN                    (spram_wren & spi_rmi_en[2]   ),
     .CHIPSELECT              (1'b1                         ),
     .CLOCK                   (clock                        ),
     .STANDBY                 (1'b0                         ),
     .SLEEP                   (1'b0                         ),
     .POWEROFF                (1'b1                         ),
     .DATAOUT                 (spram_data_out1              )
); 

SB_SPRAM256KA                 inst2_SPRAM256KA              (
     .ADDRESS                 (spram_addr                   ),
     .DATAIN                  (spram_data_in                ),
     .MASKWREN                (4'hf                         ),
     .WREN                    (spram_wren & spi_rmi_en[3]   ),
     .CHIPSELECT              (1'b1                         ),
     .CLOCK                   (clock                        ),
     .STANDBY                 (1'b0                         ),
     .SLEEP                   (1'b0                         ),
     .POWEROFF                (1'b1                         ),
     .DATAOUT                 (spram_data_out2              )
); 

// Read picture control
always @ (posedge clock or negedge reset_n) begin
   if (~reset_n) 
   begin
      read_pic0   <= 1;
      read_pic1   <= 0;
      read_pic2   <= 0;
      pic_second  <= 1;
      pic_first   <= 0;
      pic_second  <= 1;
      pic_third   <= 0;
   end
   else 
   begin
      if(enc_rd_data_out_finish && (pic_second == 1)) //second picture 
      begin
         read_pic0   <= 0;
         read_pic1   <= 1;
         read_pic2   <= 0;
         pic_second  <= 0;
         pic_third   <= 1;
      end
      else if(enc_rd_data_out_finish && (pic_third == 1)) //third picture
      begin
         read_pic0   <= 0;
         read_pic1   <= 0;
         read_pic2   <= 1;
         pic_first   <= 1;
         pic_third   <= 0;
      end
      else if(enc_rd_data_out_finish && (pic_first== 1)) //first picture
      begin
         read_pic0   <= 1;
         read_pic1   <= 0;
         read_pic2   <= 0;
         pic_second  <= 1;
         pic_first   <= 0;
      end
   end
end

// --------------------------------------------
// read control
// --------------------------------------------
always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_data_prefetch <= 1'b0;
    end
    else if (~inter_reset ) begin
        enc_data_prefetch <= 1'b0;
    end
    else if (decompress_start) begin
        enc_data_prefetch <= 1'b1;
    end
    else if (enc_data_prefetch) begin
        enc_data_prefetch <= 1'b0;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_data_prefetch_1d <= 1'b0;
    end
    else if (~inter_reset ) begin
        enc_data_prefetch_1d <= 1'b0;
    end
    else begin
        enc_data_prefetch_1d <= enc_data_prefetch;
    end
end

assign ram_rd_addr = cntr_enc_read; 

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_rd_data_ready <= 1'b0;
    end
    else if (~inter_reset ) begin
        enc_rd_data_ready <= 1'b0;
    end
    else if (decompress_start) begin
        enc_rd_data_ready <= 1'b0;
    end
    else if (enc_data_prefetch_1d) begin
        enc_rd_data_ready <= 1'b1;
    end
    else if ((cntr_enc_read_reg == enc_wr_data_count) && enc_rd_data_ready && enc_data_req) begin
        enc_rd_data_ready <= 1'b0;
    end
end

assign cntr_enc_read_step = enc_data_prefetch_1d | (enc_rd_data_ready & enc_data_req);
assign cntr_enc_read = cntr_enc_read_reg + {14'd0,cntr_enc_read_step};

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        cntr_enc_read_reg <= 15'd0;
    end
    else if (~inter_reset ) begin
        cntr_enc_read_reg <= 15'd0;
    end
    else if (decompress_start) begin
        cntr_enc_read_reg <= 15'd0;
    end
    else begin
        cntr_enc_read_reg <= cntr_enc_read;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_rd_data_out_finish <= 1'b0;
    end
    else if (~inter_reset ) begin
        enc_rd_data_out_finish <= 1'b0;
    end
    else begin
        enc_rd_data_out_finish <= (cntr_enc_read_reg == enc_wr_data_count) & enc_rd_data_ready & enc_data_req;
    end
end

always @ (posedge clock or negedge reset_n) begin
    if (~reset_n) begin
        enc_rd_data_1d <= 8'd0;
    end
    else if (~inter_reset ) begin
        enc_rd_data_1d <= 8'd0;
    end
    else if (enc_data_prefetch_1d || (enc_rd_data_ready && enc_data_req) ) begin
        enc_rd_data_1d <= ram_rd_data;
    end
end

assign enc_rd_data_out = enc_rd_data_1d;


// --------------------------------------------------------------------------------------
endmodule
