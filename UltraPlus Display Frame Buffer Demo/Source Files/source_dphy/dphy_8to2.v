//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           dphy_8to2.v
// Module:         dphy_8to2 
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/05/01
// Content:        
//  
//                 
// History:
// 2016-05-01:     Harvey Zhao        first edition.
//     
//=============================================================================

`timescale 1ns/100ps

module dphy_8to2 (
   input            reset_n,
   input            wclk,
   input            rclk,
   input      [7:0] data,
   input            wen,
   output           q_valid_test,
   output     [1:0] q_test
);

parameter fifo_width = 7;

reg          q_valid_int;
reg  [7:0]   fifo_mem [7:0];
reg  [2:0]   wp,rp,wp_r;
reg  [3:0]   i;
reg          wrflag;
reg          wrflag_r0;
reg          wrflag_r1;
reg          empty;
reg          empty_d;
reg  [1:0]   idx ;



wire q_valid;

reg [1:0] q_reg;
reg        q_valid_d;
reg        q_valid_dd;
reg [1:0]  idx_d;
reg [2:0]  rp_d;
assign q_valid_test = q_valid_dd;
assign q_test       = q_reg;
assign q_valid      = q_valid_int&(wp_r!=rp);


always @(posedge wclk or negedge reset_n)
begin
   if (~reset_n) 
   begin
      for (i=0;i<=7;i=i+1) 
      begin
         fifo_mem[i] <= 0;
      end
      wp <= 0;
      wrflag <= 0;
   end
   else 
   begin
      if (wen) 
      begin
         fifo_mem[wp] <= data;
         wp <= wp + 1; //auto roll over;
         wrflag <= ~wrflag; //for rd clk to sample wp at the edge;
      end
   end
end

always @(posedge rclk or negedge reset_n)
begin
   if (~reset_n) 
   begin
      q_valid_d  <= 0;
      q_valid_dd <= 0;
      idx_d      <= 0;
      rp_d       <= 0;
   end
   else
   begin
      q_valid_d  <= q_valid;
      q_valid_dd <= q_valid_d;
      idx_d      <= idx;
      rp_d       <= rp;
   end
end


always @(posedge rclk or negedge reset_n) 
begin
   if (~reset_n) 
   begin
      q_reg <= 0;
   end
   else
   begin
      if (q_valid_d)
         case (idx_d)
            0: q_reg <= fifo_mem[rp_d][1:0];
            1: q_reg <= fifo_mem[rp_d][3:2];
            2: q_reg <= fifo_mem[rp_d][5:4];
            3: q_reg <= fifo_mem[rp_d][7:6];
            default : q_reg <= 2'b00;
         endcase
      else
      q_reg <= 0;
   end
end


always @(posedge rclk or negedge reset_n)
begin
   if (~reset_n) 
   begin
      rp <= 0;
      wrflag_r0 <= 0;
      wrflag_r1 <= 0;
      empty <= 1;
      empty_d <= 1;
      wp_r <= 0;
   end
   else 
   begin
      empty_d <= empty;
      wrflag_r0 <= wrflag;
      wrflag_r1 <= wrflag_r0;
      if (~empty) 
      begin
         if (empty_d & ~empty) 
         begin  ///trig idx counter at ddr side with empty falling edge;
            idx <= 0;
            q_valid_int <=1;
         end
         else 
         begin
            idx <= idx + 1;
         end
      end
      else 
      begin
         idx <= 0;
         q_valid_int <= 0;
      end
      wp_r      <= (wrflag_r0^wrflag_r1)?wp:wp_r;///sample wp right after each edge of wrflag;
      if (wp_r==rp)
         empty <= 1;
      else if (wp_r-rp>3)  ///need not conside wp_r < rp; 0-7=-7=~(7)+1=1; empty become low after 3 data filled;
         empty <= 0; 

      if (&idx) 
      begin
      rp <= rp + 1; //auto roll over;
      end
   end
end

endmodule
