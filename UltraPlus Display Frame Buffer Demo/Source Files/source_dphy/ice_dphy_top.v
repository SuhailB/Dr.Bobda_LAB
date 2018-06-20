//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           ice_dphy_top.v
// Module:         ice_dphy_top 
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/05/01
// Content:        dphy controller 
//  
//                 
// History:
// 2016-05-01:     Harvey Zhao        first edition.
//     
//=============================================================================

module ice_dphy_top (
input             sysclk,
input             colorbar_en,
input             ddr_clk,
input             dck_int,
input             pll_lock,
input             start,
input             reset_n, 
output            frame_end_out,
output reg        pre_end,
output reg [3:0]  st,
output reg [7:0]  row_cnt,
output reg [7:0]  col_cnt,
input      [15:0] pix_data,
output reg [11:0] pix_addr,
output reg        pix_en,
output reg [1:0]  LPCLK,
output reg [1:0]  LPDATA,
output            DCK_P,
output            DCK_N,
output            DATA_P,
output            DATA_N
);


//parameter definition
localparam        IDLE      = 0; 
localparam        LPCLK01   = 1;
localparam        LPCLK00   = 2;
localparam        HSCLKEN   = 3;
localparam        LPDATA01  = 4;
localparam        LPDATA00  = 5;
localparam        HSDATAEN  = 6;
localparam        HSDATADIS = 7;
localparam        LPDATA11  = 8;
localparam        HSCLKDIS  = 9;
localparam        LPCLK11   = 10;

//Reg & Wire definition
reg [23:0]        data_ecc;
reg [2:0]         timer;
reg               timer_clr;
reg               timer_out;
reg               dly_timer_clr;
reg               dly_timer_out;
reg [1:0]         rgb_cnt;
reg               hs_clk_en;
reg               hs_data_en;
reg               pkt_en;
reg [7:0]         byte_data;
reg [2:0]         pkt_idx;
reg [4:0]         byte_cnt; 
reg               init;
reg               crc_end;
reg               crc_end_d;
reg               last_data_over;
reg               crc_end_dd;
reg               pre_flag;
reg               pre_end_d;
reg               stop_en;
reg               frame_end;
reg               frame_end_d;
reg               frame_end_dd;
reg  [7:0]        dly_timer;
//reg               data_start_flag;
wire [7:0]        crcl;
wire [7:0]        crch;
wire [7:0]        ecc;
wire              din_en; 
wire [23:0]       datain; 
wire [23:0]       datain1; 
reg               colorbar_flag;
wire [7:0]        PKT [12:0];




assign PKT[0]        =   8'hb8;
assign PKT[1]        =   (pkt_idx==0)?8'h05:(pkt_idx==1)?8'h15:(pkt_idx==2)?8'h05:8'h39;
assign PKT[2]        =   (pkt_idx==0)?8'h11:(pkt_idx==1)?8'h36:(pkt_idx==2)?8'h29:(pkt_idx==3)?8'h05 :(pkt_idx==4)?8'h05:8'hd1;
assign PKT[3]        =   (pkt_idx==1)?8'h08:(pkt_idx==5)?8'h02:8'h00;
assign PKT[4]        =   ecc;
assign PKT[5]        =   (pkt_idx==3)?8'h2a:(pkt_idx==4)?8'h2b: 8'h2c;//{3'b001,{1{data_start_flag}},4'b1100};
assign PKT[6]        =   8'h00;
assign PKT[7]        =   (pkt_idx==3)?8'h00:row_cnt[7:0];
assign PKT[8]        =   8'h00;
assign PKT[9]        =   (pkt_idx==3)?8'hef:row_cnt[7:0];
assign PKT[10]       =   crcl;
assign PKT[11]       =   crch;
assign PKT[12]       =   8'h00;
assign din_en        =   (byte_cnt>5) &(byte_cnt<=12);
assign frame_end_out =   ~frame_end_dd & frame_end_d & ~colorbar_flag;
assign datain        =   colorbar_en ? datain1 : {pix_data[4:0],3'd0,pix_data[10:5],2'd0,pix_data[15:11],3'd0}; 
assign datain1       =  (row_cnt <80 )  ? {8'hff,8'h00,8'h00} : ( (row_cnt <160 ) && (row_cnt >= 80 )) ? {8'h00,8'hff,8'h00} :{8'h00,8'h00,8'hff} ;


always @(posedge sysclk or negedge reset_n)
begin
   if(~reset_n)
      colorbar_flag <= 1;
   else if (~frame_end_dd & frame_end_d )
      colorbar_flag <= 0;
end

always @(posedge sysclk or negedge reset_n)
begin
   if(~reset_n)
      pix_addr <= 0;
   else if ((pkt_idx==5) & (byte_cnt>=5)) 
     // pix_addr <=  row_cnt[2:0]*8 + col_cnt[7:3] *64 + col_cnt[2:0];
        pix_addr <=   (row_cnt[2:0] << 3)  +  (col_cnt[7:3] << 6) + col_cnt[2:0];
end

always @(posedge sysclk or negedge reset_n)
begin
   if (~reset_n) 
      stop_en <= 0;
   else if ((pkt_idx==5) && (byte_cnt>=5) && (st == 6) && (col_cnt == 239) && (rgb_cnt ==2)) 
      stop_en <= 1;
   else if (st ==7)
      stop_en <= 0;
end

always @(posedge sysclk or negedge reset_n)
begin
   if(~reset_n)
      pix_en <= 0;
   else if ( st == 7)
      pix_en <= 0;
   else if (stop_en)
      pix_en <= 0;
   else if ((pkt_idx==5) && (byte_cnt>=5) && (st == 6)) 
      pix_en <= 1;
   else 
      pix_en <= 0;
end

//time out
always @(posedge sysclk or negedge reset_n)
if (~reset_n) begin
   timer <= 0;
   timer_out <= 0;
end
else 
begin
   if (timer_clr & (dly_timer_clr|dly_timer_out)) 
   begin
     timer <= 0;
     timer_out <= 0;
   end
   else if (&timer)
      timer_out <= 1;
   else
     timer <= timer + 1;
end

//initialization : sleep out 11h; wait 130ms;  set pixel mode 3a 77(24bit RGB); display on 29h;
// packets:
/*
     1. start coloum/end coloum; start page/end page
     2. rgb data
     3  repeat
   calculation of ECC and CRC!!! for each packet.
*/

always @(posedge sysclk or negedge reset_n)
if (~reset_n) begin
   dly_timer <= 0;
   dly_timer_out <= 0;
end
else 
begin
   if (dly_timer_clr) 
   begin
      dly_timer <= 0;
      dly_timer_out <= 0;
   end
   else if (&dly_timer)
      dly_timer_out <= 1;
   else if (timer_out)
      dly_timer <= dly_timer + 1;
end

always @(posedge sysclk or negedge reset_n)
begin
   if (~reset_n) 
   begin
      frame_end <= 0;
   end
   else if ((col_cnt == 8'd239) && (row_cnt==8'd239))
      frame_end <= 1;
   else 
      frame_end <= 0;
end

always @(posedge sysclk or negedge reset_n)
begin
   if (~reset_n) 
   begin
      frame_end_d  <= 0;
      frame_end_dd <= 0;
   end
   else
   begin
      frame_end_d  <= frame_end;
      frame_end_dd <= frame_end_d;
   end
end

ice_dphy        ice_dphy (
   .reset_n     (reset_n    ),
   .ddr_clk     (ddr_clk    ),
   .dck_int     (dck_int    ),
   .sysclk      (sysclk     ),
   .hs_clk_en   (hs_clk_en  ),
   .hs_data_en  (hs_data_en ),
   .pkt_en      (pkt_en     ),
   .q_valid     (q_valid    ),
   .byte_data   (byte_data  ),
   .DCK_P       (DCK_P      ),
   .DCK_N       (DCK_N      ),
   .DATA_P      (DATA_P     ),
   .DATA_N      (DATA_N     )
 );

always @(negedge reset_n or posedge sysclk)
begin
   if (~reset_n) 
   begin
      pre_flag   <= 0;
      pre_end    <= 0;
      pre_end_d  <= 0;
   end
   else 
   begin
     pre_end_d  <= pre_end ;
     if( (pkt_idx == 3'd4 ) && (st == 0) && (pre_flag ==0) )
     begin
         pre_flag <= 1;
         pre_end  <= 1;
     end
     else if (pre_end_d) 
         pre_end  <= 0;
   end
end

// -------------------------------------------
always @(negedge reset_n or posedge sysclk)
if (~reset_n) 
begin
   st         <= IDLE;
   LPCLK      <=2'b11;
   LPDATA     <=2'b11;
   pkt_en     <=1'b0;
   hs_data_en <=1'b0;
   hs_clk_en  <=1'b0;
   byte_data  <=8'h00;
   byte_cnt   <=3'h0; 
   pkt_idx    <=3'b000;
   timer_clr  <=1'b1;
   init       <=1'b1;  
   data_ecc   <=0;
   row_cnt    <=8'd0;            
   col_cnt    <=8'd0; 
   rgb_cnt    <=0; 
   crc_end    <=0;
   crc_end_d  <=0;            
   last_data_over <= 0;
   crc_end_dd  <= 0;            
   dly_timer_clr <= 1'b1;
  // data_start_flag <= 0;
end
else 
begin  
   data_ecc <= {PKT[3],PKT[2],PKT[1]};
   crc_end_d  <= crc_end;
   crc_end_dd <= crc_end_d;
   case (st)
      IDLE : 
      begin    
         rgb_cnt   <= 0;
         crc_end   <= 0;
         timer_clr <= 1'b0;            
         LPCLK     <=2'b11;
         LPDATA    <=2'b11;
         pkt_en    <=1'b0;
         hs_data_en<=1'b0;
         byte_data <=8'h00;
         byte_cnt  <= 3'h0; 
         if(start | colorbar_flag )
         begin
            if (pll_lock) 
            begin
               if (timer_out) 
               begin
                  st <= LPCLK01;               
               end
            end
         end
      end
      LPCLK01 : 
      begin
         LPCLK <= 2'b01;
         if (LPCLK==2'b01) ///wait for 1 clock;
            st <= LPCLK00;
         timer_clr <= 1'b1; ///reset timer;            
      end
      LPCLK00 : 
      begin
         LPCLK <= 2'b00;
         st    <= HSCLKEN;            
      end
      HSCLKEN : 
      begin
         hs_clk_en <= 1'b1;
         st <= LPDATA01;
      end
      LPDATA01 : 
      begin
         LPDATA <= 2'b01;
         if (LPDATA==2'b01) ///wait for 1 clock;
            st <= LPDATA00;
         timer_clr <= 1'b1; ///reset timer;
      end
      LPDATA00 : 
      begin
         LPDATA <= 2'b00;
         hs_data_en <= 1;
         if (LPDATA==0)
            st <= HSDATAEN;
      end
      HSDATAEN : 
      begin
         if (hs_data_en) 
         begin  
            if ((pkt_idx==5) & (byte_cnt>=6)) 
            begin
              // data_start_flag <= 1;
               if (rgb_cnt<2) 
               begin
                  rgb_cnt <= rgb_cnt+1;
                  if(rgb_cnt ==0)
                     byte_data <= datain[7:0]; //RED
                  else if (rgb_cnt ==1)
                     byte_data <= datain[15:8]; //Green      
               end
               else 
               begin
                  rgb_cnt <= 0;
                  if (col_cnt< 8'd239) 
                  begin
                     col_cnt   <= col_cnt + 1;
                  end
                  byte_data <= datain[23:16]; //Blue
               end

               if ((col_cnt==8'd239)&& (rgb_cnt==2) && (crc_end == 0)) 
                    last_data_over <= 1;
                       
                       
               if(last_data_over)
               begin
                  last_data_over <= 0;
                  byte_data <= crcl;                    
                  crc_end   <= 1;
               end
               else if (crc_end) 
               begin
                  byte_data <= crch;         
                  if (crc_end_d) 
                  begin
                     pkt_en <= 1'b0;
                     if (~q_valid) 
                     begin
                        crc_end <= 0;
                        col_cnt <= 8'h00;
                        st      <= HSDATADIS;   
                        timer_clr <= 1'b1;
                        if (row_cnt < 8'd239) 
                        begin 
                           row_cnt <= row_cnt + 1;
                        end
                        else 
                        begin
                           row_cnt <= 8'h00;
                        end            
                     end 
                  end 
               end 
            end
            else 
            begin
               if (((byte_cnt<5)&&(pkt_idx!=3)&&(pkt_idx!=4))|((byte_cnt<12)&&((pkt_idx==3)|(pkt_idx==4)|(pkt_idx==5)))) 
               begin 
                  byte_cnt <= byte_cnt + 1'b1;
                  pkt_en <= 1'b1;
               end
               else 
               begin
                  pkt_en <= 1'b0;
                  if (~q_valid) 
                  begin
                     st <= HSDATADIS;   
                     timer_clr <= 1'b1;
                  end      
               end
               byte_data <= PKT[byte_cnt];
            end
         end
      end
      HSDATADIS : 
      begin
         timer_clr <= 1'b0;
         if (timer_out) 
         begin  ///wait for 1 clock
            timer_clr <= 1'b1;
            st <= LPDATA11;
         end
      end
      LPDATA11 : 
      begin
         hs_data_en <= 0;
         timer_clr <= 1'b0;
         if (timer_out) 
         begin
            LPDATA <= 2'b11;
            timer_clr <= 1'b1;
            st <= HSCLKDIS;
         end
      end
      HSCLKDIS : 
      begin
         timer_clr <= 1'b0;
         if (timer_out) 
         begin
            timer_clr <= 1'b1;
            st <= LPCLK11;
            hs_clk_en <=1'b0;
         end
      end
      LPCLK11 : 
      begin
         timer_clr <= 1'b0;
         dly_timer_clr <= 1'b0; ///delay ctrl for sleep out
         LPCLK <= 2'b11;
         if (timer_out & dly_timer_out) 
         begin
            if (init & (pkt_idx<4))
               pkt_idx <= pkt_idx + 1'b1;
            else 
            begin
               if (pkt_idx==5)
                  pkt_idx <= 3;
               else
                  pkt_idx <= pkt_idx +1;
               init <= 0; 
            end
            timer_clr <= 1'b1;            
            st <= IDLE;
         end
      end
      default : 
      begin
         st       <= IDLE;
         pkt_idx  <= 0;
         init     <= 1;
      end
   endcase
end

//ecc instance
ecc_gen      ecc_gen (
   .din      (data_ecc),
   .ecc_out  (ecc)
);

//crc instance
crc16_8b   crc16_8b(
  .clk     (sysclk     ),
  .rstn    (reset_n    ),
  .din     (byte_data  ),
  .din_en  (din_en     ),
  .crc     ({crch,crcl})
);

endmodule
