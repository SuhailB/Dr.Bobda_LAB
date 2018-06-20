module ycbcr2rgb (
        clk,
        reset_n,
        r_val,
        r_data,
        g_val,
        g_data,
        b_val,
        b_data,
        ycbcr_val,
        ycbcr_data
);

input          clk;
input          reset_n;
output         r_val;
output   [7:0] r_data;
output         g_val;
output   [7:0] g_data;
output         b_val;
output   [7:0] b_data;
input          ycbcr_val;
input    [7:0] ycbcr_data;

wire data_val_d;
assign  data_val_d = ycbcr_val;

dsp_mac_top  #(
   .OFFSET    (32'hFFE422cc),
   .Y1        (16'h253f    ),
   .Y2        (16'h0       ),
   .Y3        (16'h3312    ) 
   )          inst_Y_Data(
   .rst       (reset_n   ),
   .clk       (clk       ),
   .clk_en    (1'b1      ),
   .dvalid_in (data_val_d),
   .vdata_in  (ycbcr_data),
   .dvalid_out(r_val     ),
   .vdata_out (r_data    ) 
);


dsp_mac_top  #(
   .OFFSET    (32'h10ef8c  ),
   .Y1        (16'h253f    ),
   .Y2        (16'hf37d    ),
   .Y3        (16'he5fc    ) 
   )          inst_Cb_Data(
   .rst       (reset_n   ),
   .clk       (clk       ),
   .clk_en    (1'b1      ),
   .dvalid_in (data_val_d),
   .vdata_in  (ycbcr_data),
   .dvalid_out(g_val     ),
   .vdata_out (g_data    ) 
);

dsp_mac_top  #(
   .OFFSET    (32'hFFDD6248),
   .Y1        (16'h253f   ),
   .Y2        (16'h4093   ),
   .Y3        (16'h0      )
   )          inst_Cr_Data (
   .rst       (reset_n   ),
   .clk       (clk       ),
   .clk_en    (1'b1      ),
   .dvalid_in (data_val_d),
   .vdata_in  (ycbcr_data),
   .dvalid_out(b_val     ),
   .vdata_out (b_data    ) 
);


endmodule 
