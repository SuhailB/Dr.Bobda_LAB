//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           dsi_frame_buffer.v
// Module:         dsi_frame_buffer
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2015/04/01
// Content:        top entity of one image frame compression/frame buffer/decompression
//                 
// History:
// 2016-06-01:     Harvey Zhao        first edition.
//     
//=============================================================================

`timescale 1ns/100ps

module dsi_frame_buffer(
   wclk,
   rclk,
   reset_n,
   reset_start,        
   st,
   dsi_start,
   pre_end,
   col_cnt,
   row_cnt,
   rgb_en,
   rgb_data,
   pix_addr,
   pix_data,
   pix_en
);

//Input & Outpout Definition 
input             wclk;
input             rclk;
input             reset_n;
input             reset_start;        
input             rgb_en;
input  [15:0]     rgb_data;
input  [11:0]     pix_addr;
output [15:0]     pix_data;
input             pix_en;
output            dsi_start;
input             pre_end;

input  [7:0]      col_cnt;
input  [7:0]      row_cnt;
input  [3:0]      st;


//Reg & Wire Definition 
reg    [11:0]     ram_addr;
reg    [11:0]     ram_addr1;
reg               ram_full;
reg               dsi_start;
wire    [15:0]    ram_data;
wire    [15:0]    ram_data1;
wire    [11:0]    pix_addr;
wire              pix_en;
wire              dsp_start_hl;
wire              ram_full_lh;
wire              ram_full_hl;
reg               read_ram0_flag;
reg               dsi_start_d;
reg               ram_full_d;
reg               flag;
reg    [1:0]      cnt_read;
reg               buffer0_read_over_d;
reg               buffer1_read_over_d; 
reg               buffer0_read_over;
reg               buffer1_read_over;


// RTL Begin -------------------------------- 
assign    ram_full_lh  = ram_full & ~ram_full_d ;
assign    ram_full_hl  = ~ram_full & ram_full_d ;
assign    dsp_start_hl = ~dsi_start & dsi_start_d;
assign    pix_data     = read_ram0_flag ? ram_data1 : ram_data;

always @(posedge wclk or negedge reset_n)
begin
  if(~reset_n)
     ram_full_d   <= 0;
  else 
     ram_full_d   <= ram_full;
end

always @(posedge rclk or negedge reset_n)
begin
  if(~reset_n)
     dsi_start_d  <= 0;
  else 
     dsi_start_d  <= dsi_start;
end

always @(posedge wclk or negedge reset_n)
begin
  if(~reset_n)
  begin
     buffer0_read_over_d <= 0; 
     buffer1_read_over_d <= 0; 
  end
  else 
  begin 
     buffer0_read_over_d <= buffer0_read_over ; 
     buffer1_read_over_d <= buffer1_read_over ; 
  end
end

always @(posedge wclk or negedge reset_n)
begin
   if(~reset_n)
   begin
      ram_addr  <= 0; 
      ram_full  <= 0;
      ram_addr1 <= 0; 
   end
   else 
   begin
      if(ram_addr  == 12'h780) 
      begin
         ram_addr  <= 0; 
         ram_full  <= 1;
      end
      else if(rgb_en && ram_full ==0)             
         ram_addr  <= ram_addr + 1'b1; 

     if(ram_addr1  == 12'h780) 
     begin
        ram_addr1  <= 0; 
        ram_full   <= 0;
     end
     else if(rgb_en && ram_full ==1)             
        ram_addr1  <= ram_addr1 + 1'b1; 
   end
end

// generate signal control dphy refresh MIPI dispaly screen
always @(posedge wclk or negedge reset_start)
begin
   if(~reset_start)
   begin
      dsi_start <= 1;
      flag      <= 0;
   end
   else if (pre_end)
      dsi_start <= 0;
   else if((ram_addr  == 12'h780) && (flag == 0) ) 
   begin
      dsi_start <= 1;
      flag      <= 1;
   end
   else if (~buffer0_read_over & buffer0_read_over_d  )  
   begin
      dsi_start <= 0;
   end
   else if(ram_full_lh) 
       dsi_start <= 1;
   else if (~buffer1_read_over & buffer1_read_over_d  )  
   begin
      dsi_start <= 0;
   end
   else if(ram_full_hl) 
      dsi_start <= 1;
end

always @(posedge rclk or negedge reset_start)
begin
   if(~reset_start)
      cnt_read        <= 0;
   else if ( (cnt_read <1) &&  (dsp_start_hl))
      cnt_read        <= cnt_read + 1;
end

always @(posedge rclk or negedge reset_n)
begin
   if(~reset_n)
      read_ram0_flag  <= 0; 
   else if((dsp_start_hl) && (cnt_read >0))  
      read_ram0_flag  <= ~read_ram0_flag; 
end

always @(posedge rclk or negedge reset_n )
begin
   if(~reset_n)
      buffer0_read_over  <= 0;
   else if ((pix_addr == 12'h77f)  && (read_ram0_flag ==0 ))
   begin
      buffer0_read_over  <= 1;
   end
   else if(st ==0) 
      buffer0_read_over  <= 0;
end

always @(posedge rclk or negedge reset_n )
begin
   if(~reset_n)
      buffer1_read_over  <= 0;
   else if ((pix_addr == 12'h77f)  && (read_ram0_flag ==1 ))
   begin
      buffer1_read_over  <= 1;
   end
   else if(st ==0) 
      buffer1_read_over  <= 0;
end

//Frame buffer0  (240*8*16)
RAM_PDP_2560x16                inst_8X320X16(
    .din                       (rgb_data                      ),
    .write_en                  (rgb_en && (ram_full ==0)      ),
    .read_en                   (pix_en && (read_ram0_flag ==0)),
    .waddr                     (ram_addr                      ), 
    .wclk                      (wclk                          ), 
    .raddr                     (pix_addr                      ), 
    .rclk                      (rclk                          ),
    .dout                      (ram_data                      )
); 

//Frame buffer1  (240*8*16)
RAM_PDP_2560x16               inst1_8X320X16(
    .din                      (rgb_data                       ),
    .write_en                 (rgb_en && (ram_full ==1)       ),
    .read_en                  (pix_en && (read_ram0_flag ==1) ),
    .waddr                    (ram_addr1                      ), 
    .wclk                     (wclk                           ), 
    .raddr                    (pix_addr                       ), 
    .rclk                     (rclk                           ),
    .dout                     (ram_data1                      )
); 

endmodule 
