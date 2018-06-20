//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           YCbCr2RGB_converter.v
// Module:         YCbCr2RGB_converter 
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2016/04/10
// Content:         
//                 
// History:
// 2014-06-01:     Harvey Zhao first edition.
//     
//=============================================================================

module YCbCr2RGB_converter (
   clock,
   reset_n,
   decompress_data_en,
   decompress_data,
   RGB_en,
   RGB_Data
);

input          clock;
input          reset_n;
input          decompress_data_en;
input  [7:0]   decompress_data;
output         RGB_en;
output [15:0]  RGB_Data;


//Wire & Reg Definition
wire          cb_8X4_flag;
wire          cr_8X4_flag;
wire  [7:0]   ram0_data_out;
wire  [7:0]   ram1_data_out;
wire          data_sel_lh;
wire          data_sel_hl;
wire  [7:0]   r_data;
wire          r_val ;
wire  [7:0]   g_data;
wire          g_val ;
wire  [7:0]   b_data;
wire          b_val ;

reg  [7:0]    Y_cnt_flag;
reg  [7:0]    Cb_cnt_flag;
reg  [7:0]    Cr_cnt_flag;
reg  [7 :0]   Cb_cnt_1;
reg  [7 :0]   Cb_cnt_2;
reg  [7 :0]   Cr_cnt_1;
reg  [7 :0]   Cr_cnt_2;
reg  [7 :0]   cnt_8X4_flag;
reg  [7 :0]   cnt_8X4_flag_cr;
reg           data_sel = 0;
reg [8:0]     addr_ram0; 
reg [8:0]     addr_ram1; 
reg           wr0_en;
reg           wr1_en;
reg           rd0_en = 0; 
reg           rd1_en = 0; 
reg  [8:0]    addr_rd_ram0;
reg  [8:0]    addr_rd_ram1;
reg           data_sel_d;
reg           YCbCr_en = 0;
reg  [2:0]    YCbCr2RGB;  
reg  [7:0]    YCbCr_out_cnt;
reg           ycbcr_sel; 
reg           ycbcr_start;
reg           RGB_en;
reg   [15:0]  RGB_Data;
reg   [7:0]   decompress_data_d;
reg   [7:0]   decompress_data_dd;


//RTL Begin 
assign  cb_8X4_flag = (reset_n == 0) ? 1'b0 : (cnt_8X4_flag <4) ? 1'b1:1'b0;
assign  cr_8X4_flag = (reset_n == 0) ? 1'b0 : (cnt_8X4_flag_cr <4) ? 1'b1:1'b0;
assign  data_sel_lh  = data_sel & ~data_sel_d; 
assign  data_sel_hl  = ~data_sel & data_sel_d; 


//0-127 Y_DATA0  
//128-255  Cb_DATA0 
//256-384  Cr_DATA0
RAM_PDP_512x8   YCbCr_Data0_RAM(
   .wclk              (lock       ), 
   .waddr             (addr_ram0   ), 
   .write_en          (wr0_en      ),
   .din               (decompress_data_d),
   .raddr             (addr_rd_ram0), 
   .rclk              (clock       ), 
   .read_en           (rd0_en      ),
   .dout              (ram0_data_out   ) 
); 

//0-127    Y_DATA1  
//128-255  Cb_DATA1 
//256-384  Cr_DATA1
RAM_PDP_512x8   YCbCr_Data1_RAM(
   .wclk              (clock          ), 
   .waddr             (addr_ram1      ), 
   .write_en          (wr1_en         ),
   .din               (decompress_data_d),
   .raddr             (addr_rd_ram1   ), 
   .rclk              (clock          ), 
   .read_en           (rd1_en         ),
   .dout              (ram1_data_out  ) 
); 


always @(posedge clock or negedge reset_n)
begin
   if(!reset_n)
      data_sel_d <= 0;
   else
      data_sel_d <= data_sel ;
end
always @(posedge clock or negedge reset_n)
begin
   if(!reset_n)
   begin
      decompress_data_d  <= 0;
      decompress_data_dd <= 0;
      addr_ram0       <= 0;
      addr_ram1       <= 0;
      wr0_en          <= 0;
      wr1_en          <= 0;
      data_sel        <= 0;
      Cb_cnt_1        <= 0;
      Cb_cnt_2        <= 0;
      Cr_cnt_1        <= 0;
      Cr_cnt_2        <= 0;
      Y_cnt_flag      <= 0;
      Cb_cnt_flag     <= 0;
      Cr_cnt_flag     <= 0;
      cnt_8X4_flag    <= 0;
      cnt_8X4_flag_cr <= 0;
   end
   else 
   begin

     decompress_data_d  <= decompress_data;
     decompress_data_dd <= decompress_data_d;
     if(decompress_data_en) 
     begin
        if(Y_cnt_flag <= 127)
        begin
           Y_cnt_flag    <= Y_cnt_flag + 1'b1; 
           if(data_sel == 0) 
           begin
              wr0_en                <= 1;
              addr_ram0             <= Y_cnt_flag ;
           end
           else 
           begin
              wr1_en                <= 1;
              addr_ram1             <= Y_cnt_flag ;
           end
        end
        else if(Cb_cnt_flag <= 63)
        begin
           Cb_cnt_flag         <= Cb_cnt_flag + 1'b1; 

           if(cnt_8X4_flag ==7)
           begin
              cnt_8X4_flag <=0;
           end
           else
           begin
              cnt_8X4_flag <= cnt_8X4_flag + 1'b1;
           end


           if(cb_8X4_flag ==1) 
           begin
              Cb_cnt_1            <= Cb_cnt_1 + 1'b1;
              if(data_sel == 0) 
              begin
                 wr0_en                <= 1;
                 addr_ram0             <= 128 + 2*Cb_cnt_1;
              end
              else 
              begin
                 wr1_en                <= 1;
                 addr_ram1             <= 128 + 2*Cb_cnt_1;
              end
           end
           else
           begin
              Cb_cnt_2            <= Cb_cnt_2 + 1'b1;
              if(data_sel == 0) 
              begin
                 wr0_en                <= 1;
                 addr_ram0             <= 128 + 64 +2*Cb_cnt_2;
              end
              else
              begin
                 wr1_en                <= 1;
                 addr_ram1             <= 128 + 64 +2*Cb_cnt_2;
              end
           end
        end
        else if(Cr_cnt_flag <= 63)
        begin

           if(cnt_8X4_flag_cr ==7)
           begin
              cnt_8X4_flag_cr <=0;
           end
           else
           begin
              cnt_8X4_flag_cr <= cnt_8X4_flag_cr + 1'b1;
           end

           Cr_cnt_flag         <= Cr_cnt_flag + 1'b1; 
           if(cr_8X4_flag ==1) 
           begin
              Cr_cnt_1            <= Cr_cnt_1 + 1'b1;
              if(data_sel == 0) 
              begin
                 wr0_en                <= 1;
                 addr_ram0             <= 256 +2*Cr_cnt_1;
              end
              else
              begin
                 wr1_en                <= 1;
                 addr_ram1             <= 256 +2*Cr_cnt_1;
              end
           end
           else
           begin
              Cr_cnt_2            <= Cr_cnt_2 + 1'b1;
              if(data_sel == 0) 
              begin
                 wr0_en                <= 1;
                 addr_ram0             <= 256 +64+2*Cr_cnt_2;
              end
              else
              begin
                 wr1_en                <= 1;
                 addr_ram1             <= 256 +64+2*Cr_cnt_2;
              end
           end
        end
     end

     if(Cr_cnt_flag == 64)  
     begin
        wr0_en          <= 0;
        wr1_en          <= 0;
        Cb_cnt_1        <= 0;
        Cb_cnt_2        <= 0;
        Cr_cnt_1        <= 0;
        Cr_cnt_2        <= 0;
        Cb_cnt_flag   <= 0;
        Cr_cnt_flag   <= 0;
        data_sel     <= ~data_sel;        
        Y_cnt_flag  <= 0;
     end
        
   end
end

// Gendrate YCbCr Data and YCbCr En 
always @(posedge clock or negedge reset_n)
begin
   if(!reset_n)
   begin
      YCbCr2RGB   <= 0;
      YCbCr_out_cnt <= 0;
      ycbcr_sel     <= 0;
      ycbcr_start   <= 0;
   end
   else 
   begin
     if(data_sel_lh || data_sel_hl   )  
        ycbcr_start <= 1;

    if(ycbcr_start)
      begin
         if(YCbCr2RGB<2)  
         begin
            YCbCr2RGB     <= YCbCr2RGB + 1'b1;
         end
         else
         begin
            YCbCr2RGB     <= 0;
            if(YCbCr_out_cnt  == 127)
            begin
               YCbCr_out_cnt <= 0;
               ycbcr_sel     <= ~ycbcr_sel  ;
               ycbcr_start   <= 0;
            end
            else
               YCbCr_out_cnt <= YCbCr_out_cnt + 1'b1;
         end
      end
   end
end

//comb logical
wire [7:0]  YCbCr_data1;  
reg  [7:0]  YCbCr_data_out;  
reg         YCbCr_en_d; 
reg         YCbCr_en_dd; 
assign   YCbCr_data1 = ycbcr_sel  ? ram1_data_out : ram0_data_out ; 

reg  [2:0]  YCbCr2RGB_d;  
reg  [2:0]  YCbCr2RGB_dd;  
reg  [2:0]  YCbCr2RGB_ddd;  
always @(posedge clock or negedge reset_n)
begin
   if(!reset_n)
   begin
      YCbCr2RGB_d    <= 0;
      YCbCr2RGB_dd  <= 0;
      YCbCr2RGB_ddd  <= 0;
      YCbCr_en_d     <= 0; 
      YCbCr_en_dd    <= 0; 
      YCbCr_data_out <= 0;
   end
   else 
   begin
      YCbCr2RGB_d    <= YCbCr2RGB    ;
      YCbCr2RGB_dd   <= YCbCr2RGB_d  ;
      YCbCr2RGB_ddd  <= YCbCr2RGB_dd ;
      YCbCr_en_d     <= YCbCr_en     ; 
      YCbCr_en_dd    <= YCbCr_en_d   ; 
      YCbCr_data_out <= YCbCr_data1 + 128;
      case(YCbCr2RGB_d)   
         1 : begin
                if(YCbCr_data_out >235)  
                   YCbCr_data_out <=235; 
                if(YCbCr_data_out <16)  
                   YCbCr_data_out <= 16; 
             end
         0 : begin
                if(YCbCr_data_out >240)  
                   YCbCr_data_out <=240; 
                if(YCbCr_data_out <16)  
                   YCbCr_data_out <= 16; 
             end
         2 : begin
                if(YCbCr_data_out >240)  
                   YCbCr_data_out <=240; 
                if(YCbCr_data_out <16)  
                   YCbCr_data_out <= 16; 
             end
        default :    YCbCr_data_out <= YCbCr_data_out; 
      endcase
   end
end

/*
always @(*)
begin
  if(ycbcr_start)
  begin
     case(YCbCr2RGB ) 
         0  :        begin
                        if(ycbcr_sel == 0)
                        begin
                           rd0_en      = 1;
                           rd1_en      = 0;
                           addr_rd_ram0 = YCbCr_out_cnt;
                        end
                        else
                        begin
                           rd0_en      = 0;
                           rd1_en      = 1;
                           addr_rd_ram1 = YCbCr_out_cnt;
                        end
                        YCbCr_en    = 1;
                     end
         1  :        begin
                        if(ycbcr_sel == 0)
                        begin
                           rd0_en      = 1;
                           rd1_en      = 0;
                           if(YCbCr_out_cnt[0] ==0) 
                              addr_rd_ram0 = YCbCr_out_cnt + 128;
                           else
                              addr_rd_ram0 = YCbCr_out_cnt + 127;
                        end
                        else
                        begin
                           rd0_en      = 0;
                           rd1_en      = 1;
                           if(YCbCr_out_cnt[0] ==0) 
                              addr_rd_ram1 = YCbCr_out_cnt + 128;
                           else
                              addr_rd_ram1 = YCbCr_out_cnt + 127;
                        end
                        YCbCr_en    = 0;
                     end
         2  :        begin
                        if(ycbcr_sel == 0)
                        begin
                           rd0_en      = 1;
                           rd1_en      = 0;
                           if(YCbCr_out_cnt[0] ==0) 
                              addr_rd_ram0 = YCbCr_out_cnt + 256;
                           else
                              addr_rd_ram0 = YCbCr_out_cnt + 255;
                        end
                        else
                        begin
                           rd0_en      = 0;
                           rd1_en      = 1;
                           if(YCbCr_out_cnt[0] ==0) 
                              addr_rd_ram1 = YCbCr_out_cnt + 256;
                           else
                              addr_rd_ram1 = YCbCr_out_cnt + 255;
                        end
                     end
         default  :  begin
                        YCbCr_en    = 0;
                        rd0_en      = 0;
                        rd1_en      = 0;
                     end
      endcase
   end
end
*/
always @(posedge clock or negedge reset_n)
begin
   if(!reset_n)
   begin
      rd0_en       <= 0;
      rd1_en       <= 0;
      addr_rd_ram0 <= 0;
      addr_rd_ram1 <= 0;

      YCbCr_en     <= 0;
   end
   else
   begin
      if(ycbcr_start)
      begin
         if(ycbcr_sel == 0) //Read RAM0
         begin
            rd1_en       <= 0;
            addr_rd_ram1 <= 0;

            rd0_en       <= 1;
            case(YCbCr2RGB ) 
               0       : begin 
                            addr_rd_ram0 <= YCbCr_out_cnt;
                            YCbCr_en        <= 1;
                         end
               1       : begin 
                            YCbCr_en        <= 0;
                            if(YCbCr_out_cnt[0] ==0) 
                               addr_rd_ram0 <= YCbCr_out_cnt + 128;
                            else
                               addr_rd_ram0 <= YCbCr_out_cnt + 127;
                         end
               2       : begin 
                            if(YCbCr_out_cnt[0] ==0) 
                               addr_rd_ram0 <= YCbCr_out_cnt + 256;
                            else
                               addr_rd_ram0 <= YCbCr_out_cnt + 255;
                         end
               default :  begin 
                             addr_rd_ram0 <= YCbCr_out_cnt;
                             YCbCr_en        <= 0;
                          end
            endcase
         end
         else               //Read RAM1
         begin
             rd0_en       <= 0;
             addr_rd_ram0 <= 0;

             rd1_en       <= 1;
            case(YCbCr2RGB ) 
               0       : begin 
                            addr_rd_ram1 <= YCbCr_out_cnt;
                            YCbCr_en        <= 1;
                         end
               1       : begin 
                            YCbCr_en        <= 0;
                            if(YCbCr_out_cnt[0] ==0) 
                               addr_rd_ram1 <= YCbCr_out_cnt + 128;
                            else
                               addr_rd_ram1 <= YCbCr_out_cnt + 127;
                         end
               2       : begin 
                            if(YCbCr_out_cnt[0] ==0) 
                               addr_rd_ram1 <= YCbCr_out_cnt + 256;
                            else
                               addr_rd_ram1 <= YCbCr_out_cnt + 255;
                         end
               default :  begin 
                             addr_rd_ram1 <= YCbCr_out_cnt;
                             YCbCr_en        <= 0;
                          end
            endcase
         end
      end
   end
end

///////////////////////////////////////

reg [8:0]  rd_addr;
reg [23:0] cnt_decom;
reg        decompress_data_en_d;
reg        decompress_data_en_dd;
reg [7:0] cnt_8;
wire  decompress_data_en_in = YCbCr_en_d ; 
always @(posedge clock or negedge reset_n)
begin
   if(!reset_n)
   begin
      rd_addr   <= 0;
      cnt_decom <= 0;
      decompress_data_en_d <= 0;
      decompress_data_en_dd<= 0;
      cnt_8     <= 0;
   end
   else 
   begin
      decompress_data_en_d <= decompress_data_en_in;
      decompress_data_en_dd <= decompress_data_en_d;

      if (cnt_decom  == 768000000)
      begin
         if(cnt_8  == 2)    
         cnt_8     <= 0;
         else
         cnt_8     <= cnt_8 + 1'b1;
         cnt_decom <= 0 ;
      end
      else if (decompress_data_en_in ) 
         cnt_decom <= cnt_decom  + 1'b1;

       if(cnt_8  == 0)
       begin 
          if (decompress_data_en_in | decompress_data_en_d | decompress_data_en_dd )
             if(rd_addr == 2)
                rd_addr <= 0 ;
             else
                rd_addr <= rd_addr + 1'b1;
      end
      else if(cnt_8  == 1)
      begin 
          if (decompress_data_en_in | decompress_data_en_d | decompress_data_en_dd )
             if(rd_addr == 5)
                rd_addr <= 3 ;
             else
                rd_addr <= rd_addr + 1'b1;
      end
      else 
       begin 
          if (decompress_data_en_in | decompress_data_en_d | decompress_data_en_dd )
             if(rd_addr == 8)
                rd_addr <= 6 ;
             else
                rd_addr <= rd_addr + 1'b1;
       end
   end
end





wire  [7:0] ram_out_y;

YCbCr_512x8_initial inst_YCbCr_512x8_initial (
    .din       (8'd0      ),
    .write_en  (1'b0      ),
    .read_en   (decompress_data_en_in | decompress_data_en_d | decompress_data_en_dd ),
    .waddr     (9'd0      ), 
    .wclk      (1'b0      ), 
    .raddr     (rd_addr   ), 
    .rclk      (clock     ), 
    .dout      (ram_out_y ) 
); 


// YCbCr2RGB
ycbcr2rgb inst_ycbcr2rgb   (
    .clk        (clock          ),
    .reset_n    (reset_n        ),
    .r_val      (r_val          ),
    .r_data     (r_data         ),
    .g_val      (g_val          ),
    .g_data     (g_data         ),
    .b_val      (b_val          ),
    .b_data     (b_data         ),
    .ycbcr_val  ( YCbCr_en_dd   ),
    .ycbcr_data ( ram_out_y     )//YCbCr_data_out )
);

always @(posedge clock or negedge reset_n)
begin
   if(!reset_n)
   begin
      RGB_en    <= 0;
      RGB_Data  <= 0;
   end
   else
   begin
      RGB_en    <= r_val;
      RGB_Data  <= {r_data[7:3],g_data[7:2],b_data[7:3]};
   end
end

endmodule 
