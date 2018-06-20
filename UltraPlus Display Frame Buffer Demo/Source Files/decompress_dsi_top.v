//=============================================================================
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           decompress_dsi_top.v
// Module:         decompress_dsi_top 
// Author:         Harvey Zhao 
// Email:          Harvey.Zhao@latticesemi.com
// Creation Date:  2016/04/01
// Content:        SPI --> Decompress --> YCbCr2RGB --> Frame Buffer --> DSI
//  
//                 
// History:
// 2016-04-01:     Harvey Zhao        first edition.
//     
//=============================================================================

`timescale 1ns/100ps

module decompress_dsi_top (
    clock,
    o_miso,
    i_mosi,
    i_csn,
    i_sclk,
    LPCLK, 
    LPDATA,
    DCK_P,
    DCK_N, 
    DATA_P, 
    DATA_N 
);

//Input & Outpout Definition 
input              clock   ;
output             o_miso  ;
input              i_mosi  ;
input              i_csn   ;
input              i_sclk  ;
output   [1:0]     LPCLK   ; 
output   [1:0]     LPDATA  ;
output             DCK_P   ;
output             DCK_N   ; 
output             DATA_P  ; 
output             DATA_N  ;

//Reg & Wire Definition 
wire               dsi_start;
wire    [7:0]      decompress_data/* synthesis syn_keep=1 */;  
wire               decompress_data_en/* synthesis syn_keep=1 */;
wire               rgb_en  ;
wire    [15:0]     rgb_data;
wire    [11:0]     pix_addr;
wire               pix_en  ;
wire    [15:0]     pix_data;
wire    [7:0]      col_cnt ;
wire    [7:0]      row_cnt ;
wire    [3:0]      st      ;
wire               hs_start;
wire               ddr_clk;
wire               dck_int;
wire               pll_reset_n;
wire               inter_reset;
wire               frame_end;
wire    [7:0]      rmi_control;  //0x7fff
wire    [7:0]      buffer_len_l; //0x8000
wire    [7:0]      buffer_len_h; //0x8001
wire    [7:0]      o_bus_wdata;
wire               spram_wren ;
wire    [7:0]      spi_rdata;
wire    [15:0]     o_bus_addr;

//Clk & reset control module 
clk_rst_top                    inst_clk_rst_top             (
   .clock                      (clock                       ),
   .hs_start                   (hs_start                    ),
   .sys_reset_n                (sys_reset_n                 ),
   .pwr_sq_reset_n             (pll_reset_n                 ),
   .ddr_clk                    (ddr_clk                     ),
   .dck_int                    (dck_int                     ),
   .sysclk                     (sysclk                      ),
   .clk_27m                    (clk_27m                     ) 
);

//SSP control module 
ssp_spi_top                    inst_ssp_spi_top             (
   .clock                      (sysclk                      ),
   .reset_n                    (sys_reset_n                 ),
   .o_miso                     (o_miso                      ),
   .i_mosi                     (i_mosi                      ),
   .i_csn                      (i_csn                       ),
   .i_sclk                     (i_sclk                      ),
   .o_bus_wdata                (o_bus_wdata                 ),
   .spram_wren                 (spram_wren                  ),
   .o_bus_addr                 (o_bus_addr                  ),
   .spi_rdata                  (spi_rdata                   ),
   .rmi_control                (rmi_control                 ),  
   .rmi_control_buffer_len_l   (buffer_len_l                ), 
   .rmi_control_buffer_len_h   (buffer_len_h                )  
);

// Decompress module 
compress_top                   inst_compress_top            (
   .clock                      (sysclk                      ),
   .reset_n                    (sys_reset_n                 ),
   .frame_end                  (frame_end                   ),       
   .inter_reset                (inter_reset                 ),
   .buffer_len                 ({buffer_len_h,buffer_len_l} ), 
   .spi_rmi_en                 (rmi_control                 ),
   .spi_wdata                  (o_bus_wdata                 ),
   .spi_wren                   (spram_wren                  ), 
   .spi_addr                   (o_bus_addr[13:0]            ),     
   .spi_rdata                  (spi_rdata                   ),
   .enc_wr_data_in             (o_bus_wdata                 ),
   .enc_wr_data_en             (spram_wren                  ),
   .decompress_data            (decompress_data             ),
   .decompress_data_en         (decompress_data_en          ) 
);

//Converter YCbCr Data to RGB Data
YCbCr2RGB_converter            inst_YCbCr2RGB_converter     (
   .clock                      (sysclk                      ),
   .reset_n                    (sys_reset_n && inter_reset  ),
   .decompress_data_en         (decompress_data_en          ),
   .decompress_data            (decompress_data             ),
   .RGB_en                     (rgb_en                      ),
   .RGB_Data                   (rgb_data                    )
);

// Display Buffer module 
dsi_frame_buffer               inst_dsi_frame_buffer        (
   .col_cnt                    (col_cnt                     ),
   .row_cnt                    (row_cnt                     ),
   .st                         (st                          ),
   .reset_n                    (sys_reset_n && inter_reset  ),
   .reset_start                (sys_reset_n                 ),
   .dsi_start                  (dsi_start                   ),
   .pre_end                    (pre_end                     ),
   .wclk                       (sysclk                      ),
   .rclk                       (clk_27m                     ),
   .rgb_en                     (rgb_en                      ),
   .rgb_data                   (rgb_data                    ),
   .pix_addr                   (pix_addr                    ),
   .pix_data                   (pix_data                    ),
   .pix_en                     (pix_en                      ) 
);

// DPHY controller 
ice_dphy_top                   inst_ice_dphy_top            (
   .sysclk                     (sysclk                      ),   
   .colorbar_en                (rmi_control[4]              ),
   .ddr_clk                    (ddr_clk                     ),   
   .dck_int                    (dck_int                     ),   
   .pll_lock                   (sys_reset_n                 ),
   .frame_end_out              (frame_end                   ),   
   .reset_n                    (sys_reset_n                 ),   
   .pre_end                    (pre_end                     ),   
   .row_cnt                    (row_cnt                     ),   
   .col_cnt                    (col_cnt                     ),   
   .start                      (dsi_start                   ),   
   .st                         (st                          ),   
   .pix_data                   (pix_data                    ),   
   .pix_addr                   (pix_addr                    ),   
   .pix_en                     (pix_en                      ),   
   .LPCLK                      (LPCLK                       ),   
   .LPDATA                     (LPDATA                      ),   
   .DCK_P                      (DCK_P                       ),   
   .DCK_N                      (DCK_N                       ),  
   .DATA_P                     (DATA_P                      ),  
   .DATA_N                     (DATA_N                      )  
);

// Power sequcence control module 
pwr_sq_ctrl                    inst_pwr_sq_ctrl             (
   .clk                        (clk_27m                     ),   
   .resetn                     (pll_reset_n                 ),   
   .pwr_lcd_rst                (                            ),   
   .pwr_lcd_1v8_en             (                            ),   
   .pwr_lcd_3v0_en             (                            ),   
   .hs_start                   (hs_start                    )    
);                     



endmodule 
