module tb();


reg  clk;
reg  reset_n;
reg  reset_nn;

initial begin
   clk     = 0;
   reset_n = 0;
   reset_nn = 0;
   #10001 reset_n = 1;
   #10001 reset_nn = 1;
end

always #1000 clk = ~clk;

reg [4:0] cnt = 0;

always @(posedge clk or negedge reset_nn )
   if(!reset_nn)
      cnt <= 0;
   else if (cnt == 3)
      cnt <= 0;
   else
      cnt <= cnt + 1'b1;

wire   data_val;
wire   data_val_4;

assign data_val =   (cnt == 3)  ? 1'b1 : 1'b0;
reg    data_val_d;
reg    data_val_dd;
reg    data_val_ddd;
always @(posedge clk or negedge reset_nn)
begin
   if(!reset_nn)
      data_val_d <= 0;
   else
   begin
      data_val_d <= data_val;
      data_val_dd <= data_val_d;
      data_val_ddd <= data_val_dd;
   end
end

reg [7:0] ycbcr_memory [0:307199];

initial begin
	$readmemh("ycbcr_in.txt",ycbcr_memory);
end

reg    [2:0]    val_dat_cnt; 
reg             start;
always @(posedge clk or negedge reset_nn)
begin
   if(!reset_nn)
   begin
       val_dat_cnt <= 0;
       start       <= 0;
   end
   else 
   begin
      if(val_dat_cnt == 3) 
         val_dat_cnt <= 0;
      else if(val_dat_cnt > 0) 
         val_dat_cnt <= val_dat_cnt + 1;

      if (data_val)
      begin
         val_dat_cnt <= val_dat_cnt + 1;
         start       <= 1;
      end
   end
end


reg [7:0]  ycbcr_data;
reg [24:0] cntr_sample;

always @(posedge clk or negedge reset_nn)
begin
	if (~reset_nn) begin
       cntr_sample <= 0;
    end
    else  begin
    if(cntr_sample == 30000) 
       cntr_sample <= 0;
    //else if (start && data_val  )begin 
    else if (data_val_ddd  )begin 
       cntr_sample <= cntr_sample + 1'b1;
    end
    end
end

always @(posedge clk or negedge reset_nn)
begin
	if (~reset_nn) begin
		ycbcr_data <= 8'd0;
	end
    else begin
		ycbcr_data <= ycbcr_memory[cntr_sample];
	end
end

reg        color_res;
reg        color_res_d;
reg [8:0]  rd_addr;
reg [23:0] cnt_decom;
reg        decompress_data_en_d;
reg [7:0] cnt_8;
wire   decompress_data_en = data_val_d;
always @(posedge clk or negedge reset_n)
begin
   if(!reset_n)
   begin
      rd_addr   <= 0;
      cnt_decom <= 0;
      decompress_data_en_d <= 0;
      cnt_8     <= 0;
   end
   else 
   begin
      decompress_data_en_d <= decompress_data_en;

      if (cnt_decom  == 7680000)
      begin
         if(cnt_8  == 2)    
         cnt_8     <= 0;
         else
         cnt_8     <= cnt_8 + 1'b1;
         cnt_decom <= 0 ;
      end
      else if (decompress_data_en ) 
         cnt_decom <= cnt_decom  + 1'b1;

         if(color_res & ~color_res_d)  
            rd_addr <= 256;

         if(~color_res & color_res_d)  
            rd_addr <= 0;

          if (decompress_data_en ) 
          begin
             if(color_res )      
             begin
                if(rd_addr == 511)
                   rd_addr <= 256;
                else
                   rd_addr <= rd_addr + 1'b1;
             end
             else
             begin
              if(rd_addr == 255)
                 rd_addr <= 0 ;
              else
                 rd_addr <= rd_addr + 1'b1;
             end
          end


      // if(cnt_8  == 0)
      // begin 
      //    if (decompress_data_en ) 
      //       if(rd_addr == 2)
      //          rd_addr <= 0 ;
      //       else
      //          rd_addr <= rd_addr + 1'b1;
      //end
      //else if(cnt_8  == 1)
      //begin 
      //    if (decompress_data_en ) 
      //       if(rd_addr == 5)
      //          rd_addr <= 3 ;
      //       else
      //          rd_addr <= rd_addr + 1'b1;
      //end
      //else 
      // begin 
      //    if (decompress_data_en ) 
      //       if(rd_addr == 8)
      //          rd_addr <= 6 ;
      //       else
      //          rd_addr <= rd_addr + 1'b1;
      // end


   end
end





wire  [7:0] ram_out_y;

YCbCr_512x8_initial_top inst_YCbCr_512x8_initial_top (
    .din       (8'd0      ),
    .write_en  (1'b0      ),
    .read_en   (decompress_data_en),
    .waddr     (9'd0      ), 
    .wclk      (1'b0      ), 
    .raddr     (rd_addr   ), 
    .rclk      (clk     ), 
    .dout      (ram_out_y ) 
); 



YCbCr2RGB_converter inst_YCbCr2RGB_converter (
   .clock             (clk ),
   .reset_n           (reset_nn),
   .decompress_data_en(decompress_data_en_d ),//data_val_d),
   .decompress_data   (ram_out_y         ),//ycbcr_data) ,
   .RGB_en            (   ),
   .RGB_Data          (   )
);

reg [8:0]  cnt_data_in;
always @(posedge clk or negedge reset_n)
begin
   if(!reset_n)
   begin
      color_res   <= 0;
      color_res_d <= 0;
      cnt_data_in <= 0;
   end
   else 
   begin
      color_res_d <= color_res;
      if (decompress_data_en_d )
         if(cnt_data_in == 255) 
         begin
            color_res   <= ~color_res;
            cnt_data_in <= 0;
         end
         else
            cnt_data_in <= cnt_data_in + 1'b1;
   end
end




integer fid_rgb_out;
initial 
begin
	fid_rgb_out= $fopen("rgb_out.txt","w");
end

always @ (posedge clk) begin
     if (inst_YCbCr2RGB_converter.inst_ycbcr2rgb.r_val) 
		$fdisplay(fid_rgb_out,"%4h",$unsigned(inst_YCbCr2RGB_converter.inst_ycbcr2rgb.r_data));
     if (inst_YCbCr2RGB_converter.inst_ycbcr2rgb.g_val) 
		$fdisplay(fid_rgb_out,"%4h",$unsigned(inst_YCbCr2RGB_converter.inst_ycbcr2rgb.g_data));
     if (inst_YCbCr2RGB_converter.inst_ycbcr2rgb.b_val) 
		$fdisplay(fid_rgb_out,"%4h",$unsigned(inst_YCbCr2RGB_converter.inst_ycbcr2rgb.b_data));
end


integer fid_ram_out;
integer fid_ram1_out;
integer fid_ram2_out;
initial 
begin
	fid_ram_out= $fopen("ram_out.txt","w");
	fid_ram1_out= $fopen("ram1_out.txt","w");
	fid_ram2_out= $fopen("ram2_out.txt","w");
end
reg YCbCr_en_dd;
reg YCbCr_en_ddd;
reg  cnt_d  = 0;
reg  cnt_dd = 0;
always @ (posedge clk) begin

     if (inst_YCbCr2RGB_converter.YCbCr_en_d) 
        cnt_d <= ~cnt_d ;

     else if (YCbCr_en_dd) 
        cnt_dd <= ~cnt_dd ;

     YCbCr_en_dd  <=  inst_YCbCr2RGB_converter.YCbCr_en_d;
     YCbCr_en_ddd <=  YCbCr_en_dd;

     if (inst_YCbCr2RGB_converter.YCbCr_en_d) 
		$fdisplay(fid_ram_out,"%4h",$unsigned(inst_YCbCr2RGB_converter.YCbCr_data1));

     if (inst_YCbCr2RGB_converter.YCbCr_en_d) 
		$fdisplay(fid_ram_out,"%4h",$unsigned(inst_YCbCr2RGB_converter.YCbCr_data1));

     if ( (YCbCr_en_dd && (cnt_d == 1)) || (YCbCr_en_ddd && (cnt_dd == 1))) 
		$fdisplay(fid_ram1_out,"%4h",$unsigned(inst_YCbCr2RGB_converter.YCbCr_data1));

     if (YCbCr_en_ddd && (cnt_dd == 1)) 
		$fdisplay(fid_ram2_out,"%4h",$unsigned(inst_YCbCr2RGB_converter.YCbCr_data1));
end





endmodule 
