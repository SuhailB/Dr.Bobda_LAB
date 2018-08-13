// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Aug 13 14:00:15 2018
//
// Verilog Description of module platform1_top
//

module platform1_top (reset_n, LEDPIO_OUT, SPIFlashCEJ, SPIFlashSCK, 
            SPIFlashSI, SPIFlashSO, SPIFlashWPJ) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(3[8:21])
    input reset_n;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(6[8:15])
    output [1:0]LEDPIO_OUT;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(7[15:25])
    output SPIFlashCEJ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(8[10:21])
    output SPIFlashSCK;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(9[10:21])
    output SPIFlashSI;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(10[10:20])
    input SPIFlashSO;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(11[9:19])
    output SPIFlashWPJ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(12[10:21])
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    
    wire reset_n_c, LEDPIO_OUT_c_1, LEDPIO_OUT_c_0, SPIFlashCEJ_c, SPIFlashSCK_c, 
        SPIFlashSI_c, SPIFlashSO_c, VCC_net;
    wire [31:0]SHAREDBUS_DAT_O;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(350[13:28])
    
    wire n11738;
    wire [2:0]counter;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(414[11:18])
    
    wire n13, n8, n20100, n19359, n8767, n15, n12, n15_adj_2236, 
        n12_adj_2237, n12_adj_2238, n9, n7, n27, n25, n23, n21, 
        n1, n3, n17075, n11669, n11678, n11687;
    wire [31:0]ext_addr;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(134[29:37])
    
    wire ext_mem_wr, ext_io_wr;
    wire [7:0]save_data;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(413[15:24])
    
    wire ext_wb_state, n502, GND_net;
    wire [31:0]spi_cmd;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(152[23:30])
    wire [31:0]spi_cmd_ext;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(153[23:34])
    wire [3:0]cmd_bytes;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(155[22:31])
    wire [7:0]spi_wrt_enb;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(161[22:33])
    wire [7:0]spi_read_stat;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(162[22:35])
    
    wire spi_wr, spi_ack, n19516, n19515, rcsr, n19514, n20099;
    wire [7:0]din_rd;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(112[30:36])
    wire [7:0]din_rd1;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(112[38:45])
    wire [7:0]im;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(119[34:36])
    
    wire n18782;
    wire [7:0]spi_blk1_ers;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(143[19:31])
    wire [7:0]spi_blk2_ers;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(144[19:31])
    wire [7:0]spi_chip_ers;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(146[19:31])
    wire [7:0]spi_wrt_disb;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(147[19:31])
    wire [7:0]spi_pwd_down;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(149[19:31])
    
    wire ctrl_port_req;
    wire [1:0]wb_state;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(174[18:26])
    wire [31:0]spi_cmd_arb;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(573[15:26])
    
    wire n15_adj_2239, n82, n20208, n3906, clk_div_enable_19, n18697, 
        n18695, n11, n12678, n12679, n20207, n8_adj_2240, n20089, 
        n20343, n20342, n20341, n20340, n20339, n20338, n20337, 
        n18825, n21077, n12572, n3017, n3011, n20336, n20335, 
        n3867, n20334, n20333, n20332;
    wire [31:0]int_cmd_dword;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(164[16:29])
    
    wire int_cmd_dword_31__N_1881, n882;
    wire [31:0]int_cmd_dword_31__N_1849;
    wire [31:0]int_cmd_dword_31__N_1817;
    
    wire SI_N_2077, n4195, n20293;
    wire [31:0]cmd_dword_31__N_2020;
    
    wire n4189, n20292, SI_N_2079, n20291, n20290, n20289, n20288, 
        n20073, n4166, dword_wr_31__N_1809, n21075, n20197, n21083, 
        n20062, n20168, n20061, n15_adj_2241, n18826, n20056, n20137, 
        n20055, n19363, n19362, n19361, n19360, n18791, n20128, 
        n19358, n19357, n19356, n19355, n19354, n11752, n11753, 
        n11755, n16, n18793, n18792, n18783, n20101, n20209;
    
    VHI i5 (.Z(VCC_net));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(interalClock)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "26.60";
    PFUMX i16054 (.BLUT(n12678), .ALUT(n12679), .C0(n20073), .Z(n18825));
    PFUMX i16998 (.BLUT(n20207), .ALUT(n20208), .C0(wb_state[0]), .Z(n20209));
    OB SPIFlashSCK_pad (.I(SPIFlashSCK_c), .O(SPIFlashSCK));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(9[10:21])
    PFUMX i16055 (.BLUT(n4195), .ALUT(n4166), .C0(n20073), .Z(n18826));
    OB SPIFlashCEJ_pad (.I(SPIFlashCEJ_c), .O(SPIFlashCEJ));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(8[10:21])
    OB LEDPIO_OUT_pad_0 (.I(LEDPIO_OUT_c_0), .O(LEDPIO_OUT[0]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(7[15:25])
    OB LEDPIO_OUT_pad_1 (.I(LEDPIO_OUT_c_1), .O(LEDPIO_OUT[1]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(7[15:25])
    PFUMX i16022 (.BLUT(n18791), .ALUT(n18792), .C0(cmd_bytes[0]), .Z(n18793));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB SPIFlashSO_pad (.I(SPIFlashSO), .O(SPIFlashSO_c));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(11[9:19])
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(6[8:15])
    L6MUX21 i16615 (.D0(n19362), .D1(n19360), .SD(n18695), .Z(n19363));
    PFUMX i16613 (.BLUT(n19361), .ALUT(n3011), .C0(n20089), .Z(n19362));
    OB SPIFlashWPJ_pad (.I(GND_net), .O(SPIFlashWPJ));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(12[10:21])
    PFUMX i16611 (.BLUT(n12572), .ALUT(n19359), .C0(n18697), .Z(n19360));
    PFUMX i16011 (.BLUT(n11752), .ALUT(n11753), .C0(n20073), .Z(n18782));
    platform1 platform1_u (.interalClock(interalClock), .\counter[2] (counter[2]), 
            .n21083(n21083), .n20101(n20101), .\SHAREDBUS_DAT_O[2] (SHAREDBUS_DAT_O[2]), 
            .reset_n_c(reset_n_c), .\SHAREDBUS_DAT_O[5] (SHAREDBUS_DAT_O[5]), 
            .n20100(n20100), .n20073(n20073), .n19356(n19356), .\ext_addr[4] (ext_addr[4]), 
            .n19361(n19361), .ext_wb_state(ext_wb_state), .\ext_addr[6] (ext_addr[6]), 
            .\spi_read_stat[1] (spi_read_stat[1]), .n20061(n20061), .\spi_read_stat[4] (spi_read_stat[4]), 
            .n15(n15_adj_2239), .n19514(n19514), .\ext_addr[3] (ext_addr[3]), 
            .n12572(n12572), .n3867(n3867), .n20089(n20089), .n18826(n18826), 
            .n18825(n18825), .\spi_cmd_arb[26] (spi_cmd_arb[26]), .n18783(n18783), 
            .n18782(n18782), .n19516(n19516), .n20062(n20062), .\spi_cmd_ext[16] (spi_cmd_ext[16]), 
            .\spi_cmd_ext[24] (spi_cmd_ext[24]), .\spi_cmd_ext[0] (spi_cmd_ext[0]), 
            .\spi_cmd_ext[8] (spi_cmd_ext[8]), .\spi_cmd_arb[25] (spi_cmd_arb[25]), 
            .\spi_cmd_arb[28] (spi_cmd_arb[28]), .\spi_cmd_ext[20] (spi_cmd_ext[20]), 
            .\spi_cmd_ext[4] (spi_cmd_ext[4]), .\spi_cmd_ext[21] (spi_cmd_ext[21]), 
            .\spi_cmd_ext[5] (spi_cmd_ext[5]), .n19515(n19515), .\cmd_bytes[1] (cmd_bytes[1]), 
            .n8767(n8767), .\cmd_bytes[0] (cmd_bytes[0]), .\spi_cmd[0] (spi_cmd[0]), 
            .spi_wr(spi_wr), .n20209(n20209), .ctrl_port_req(ctrl_port_req), 
            .\spi_read_stat[0] (spi_read_stat[0]), .\spi_pwd_down[0] (spi_pwd_down[0]), 
            .\wb_state[0] (wb_state[0]), .n20099(n20099), .n20055(n20055), 
            .n20056(n20056), .\spi_cmd[8] (spi_cmd[8]), .\spi_cmd[24] (spi_cmd[24]), 
            .n82(n82), .\spi_blk1_ers[1] (spi_blk1_ers[1]), .\spi_blk1_ers[4] (spi_blk1_ers[4]), 
            .n18695(n18695), .spi_ack(spi_ack), .\spi_blk1_ers[2] (spi_blk1_ers[2]), 
            .n21077(n21077), .\spi_blk2_ers[1] (spi_blk2_ers[1]), .\spi_blk2_ers[2] (spi_blk2_ers[2]), 
            .\spi_blk2_ers[4] (spi_blk2_ers[4]), .\spi_chip_ers[1] (spi_chip_ers[1]), 
            .\spi_chip_ers[2] (spi_chip_ers[2]), .\spi_chip_ers[4] (spi_chip_ers[4]), 
            .\spi_wrt_enb[1] (spi_wrt_enb[1]), .\spi_wrt_enb[2] (spi_wrt_enb[2]), 
            .\spi_wrt_enb[4] (spi_wrt_enb[4]), .\spi_wrt_disb[1] (spi_wrt_disb[1]), 
            .\spi_wrt_disb[2] (spi_wrt_disb[2]), .\spi_wrt_disb[4] (spi_wrt_disb[4]), 
            .\spi_read_stat[2] (spi_read_stat[2]), .\spi_read_stat[6] (spi_read_stat[6]), 
            .\spi_pwd_down[6] (spi_pwd_down[6]), .n18697(n18697), .n11752(n11752), 
            .n11753(n11753), .n20137(n20137), .n4195(n4195), .n12679(n12679), 
            .n12678(n12678), .n20337(n20337), .n20293(n20293), .n20343(n20343), 
            .n4189(n4189), .n19363(n19363), .n8(n8_adj_2240), .n19358(n19358), 
            .n3011(n3011), .n3017(n3017), .n4166(n4166), .n11755(n11755), 
            .int_cmd_dword_31__N_1881(int_cmd_dword_31__N_1881), .clk_div_enable_19(clk_div_enable_19), 
            .dword_wr_31__N_1809(dword_wr_31__N_1809), .SPIFlashSO_c(SPIFlashSO_c), 
            .n3906(n3906), .\int_cmd_dword[20] (int_cmd_dword[20]), .SPIFlashSI_c(SPIFlashSI_c), 
            .SI_N_2079(SI_N_2079), .SI_N_2077(SI_N_2077), .n502(n502), 
            .n20128(n20128), .SPIFlashCEJ_c(SPIFlashCEJ_c), .n21075(n21075), 
            .n20168(n20168), .\int_cmd_dword[1] (int_cmd_dword[1]), .\int_cmd_dword[21] (int_cmd_dword[21]), 
            .n15_adj_41(n15), .n12(n12), .n15_adj_42(n15_adj_2236), .n12_adj_43(n12_adj_2237), 
            .n16(n16), .n8_adj_44(n8), .\int_cmd_dword_31__N_1849[20] (int_cmd_dword_31__N_1849[20]), 
            .\int_cmd_dword[22] (int_cmd_dword[22]), .\int_cmd_dword_31__N_1817[9] (int_cmd_dword_31__N_1817[9]), 
            .n11669(n11669), .n11687(n11687), .n11678(n11678), .\int_cmd_dword_31__N_1817[17] (int_cmd_dword_31__N_1817[17]), 
            .\int_cmd_dword_31__N_1817[1] (int_cmd_dword_31__N_1817[1]), .n17075(n17075), 
            .\cmd_dword_31__N_2020[29] (cmd_dword_31__N_2020[29]), .\cmd_dword_31__N_2020[27] (cmd_dword_31__N_2020[27]), 
            .SPIFlashSCK_c(SPIFlashSCK_c), .\cmd_dword_31__N_2020[26] (cmd_dword_31__N_2020[26]), 
            .\int_cmd_dword[9] (int_cmd_dword[9]), .n13(n13), .\int_cmd_dword[17] (int_cmd_dword[17]), 
            .n20197(n20197), .VCC_net(VCC_net), .\save_data[2] (save_data[2]), 
            .\save_data[5] (save_data[5]), .ext_io_wr(ext_io_wr), .ext_mem_wr(ext_mem_wr), 
            .n882(n882), .n15_adj_45(n15_adj_2241), .rcsr(rcsr), .n23(n23), 
            .n7(n7), .\din_rd[5] (din_rd[5]), .\din_rd[2] (din_rd[2]), 
            .\din_rd1[1] (din_rd1[1]), .\din_rd1[2] (din_rd1[2]), .\din_rd1[5] (din_rd1[5]), 
            .n21(n21), .n3(n3), .n1(n1), .\im[1] (im[1]), .\im[2] (im[2]), 
            .\im[5] (im[5]), .LEDPIO_OUT_c_1(LEDPIO_OUT_c_1), .LEDPIO_OUT_c_0(LEDPIO_OUT_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(20[11] 29[2])
    PFUMX i26 (.BLUT(int_cmd_dword_31__N_1817[9]), .ALUT(n9), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[9]));
    PFUMX i34 (.BLUT(n11669), .ALUT(n12_adj_2237), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[22]));
    PFUMX i8838 (.BLUT(n11687), .ALUT(int_cmd_dword_31__N_1849[20]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[20]));
    PFUMX i34_adj_278 (.BLUT(n11678), .ALUT(n12), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[21]));
    L6MUX21 i16609 (.D0(n19357), .D1(n19355), .SD(n18695), .Z(n19358));
    PFUMX i16607 (.BLUT(n19356), .ALUT(n3017), .C0(n20089), .Z(n19357));
    OB SPIFlashSI_pad (.I(SPIFlashSI_c), .O(SPIFlashSI));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(10[10:20])
    PFUMX i6 (.BLUT(int_cmd_dword_31__N_1817[17]), .ALUT(n8), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[17]));
    LUT4 i16021_3_lut (.A(spi_cmd_ext[0]), .B(spi_cmd_ext[16]), .C(cmd_bytes[1]), 
         .Z(n18792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16021_3_lut.init = 16'hcaca;
    LUT4 ext_addr_4__bdd_3_lut_17047 (.A(ext_addr[4]), .B(spi_wrt_disb[2]), 
         .C(spi_blk2_ers[2]), .Z(n20288)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17047.init = 16'hd8d8;
    PFUMX i16605 (.BLUT(n3867), .ALUT(n19354), .C0(n18697), .Z(n19355));
    LUT4 spi_chip_ers_2__bdd_3_lut_17473 (.A(spi_chip_ers[2]), .B(n20290), 
         .C(n20101), .Z(n20291)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam spi_chip_ers_2__bdd_3_lut_17473.init = 16'hcaca;
    LUT4 n20101_bdd_4_lut_17062 (.A(n20101), .B(ext_addr[4]), .C(spi_wrt_enb[2]), 
         .D(spi_blk1_ers[2]), .Z(n20292)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n20101_bdd_4_lut_17062.init = 16'hf780;
    LUT4 spi_chip_ers_1__bdd_3_lut_17457 (.A(spi_chip_ers[1]), .B(n20334), 
         .C(n20101), .Z(n20335)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam spi_chip_ers_1__bdd_3_lut_17457.init = 16'hcaca;
    LUT4 ext_addr_4__bdd_3_lut_17090 (.A(ext_addr[6]), .B(spi_cmd_arb[25]), 
         .C(spi_chip_ers[1]), .Z(n20333)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17090.init = 16'hd8d8;
    LUT4 ext_addr_4__bdd_3_lut_17084 (.A(ext_addr[4]), .B(spi_wrt_disb[1]), 
         .C(spi_blk2_ers[1]), .Z(n20332)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17084.init = 16'hd8d8;
    LUT4 n20101_bdd_4_lut_17094 (.A(n20101), .B(ext_addr[4]), .C(spi_wrt_enb[1]), 
         .D(spi_blk1_ers[1]), .Z(n20336)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n20101_bdd_4_lut_17094.init = 16'hf780;
    LUT4 ext_addr_4__bdd_3_lut_17091 (.A(ext_addr[4]), .B(spi_wrt_disb[4]), 
         .C(spi_blk2_ers[4]), .Z(n20338)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17091.init = 16'hd8d8;
    LUT4 ext_addr_4__bdd_3_lut (.A(ext_addr[6]), .B(spi_cmd_arb[28]), .C(spi_chip_ers[4]), 
         .Z(n20339)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut.init = 16'hd8d8;
    LUT4 spi_chip_ers_4__bdd_3_lut_17453 (.A(spi_chip_ers[4]), .B(n20340), 
         .C(n20101), .Z(n20341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam spi_chip_ers_4__bdd_3_lut_17453.init = 16'hcaca;
    LUT4 n20101_bdd_4_lut_17099 (.A(n20101), .B(ext_addr[4]), .C(spi_wrt_enb[4]), 
         .D(spi_blk1_ers[4]), .Z(n20342)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n20101_bdd_4_lut_17099.init = 16'hf780;
    LUT4 i34_3_lut (.A(spi_cmd_ext[16]), .B(spi_cmd_ext[0]), .C(cmd_bytes[1]), 
         .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(155[22:31])
    defparam i34_3_lut.init = 16'hcaca;
    LUT4 mux_1339_i4_3_lut_4_lut (.A(n21075), .B(n20128), .C(n20168), 
         .D(n17075), .Z(n3906)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(110[17:24])
    defparam mux_1339_i4_3_lut_4_lut.init = 16'hfd20;
    PFUMX i17048 (.BLUT(n20289), .ALUT(n20288), .C0(ext_addr[3]), .Z(n20290));
    LUT4 i35_3_lut (.A(spi_cmd_ext[20]), .B(spi_cmd_ext[4]), .C(cmd_bytes[1]), 
         .Z(n15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(155[22:31])
    defparam i35_3_lut.init = 16'hcaca;
    LUT4 i45_3_lut (.A(save_data[5]), .B(SHAREDBUS_DAT_O[5]), .C(ext_wb_state), 
         .Z(n27)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(416[15:27])
    defparam i45_3_lut.init = 16'hcaca;
    LUT4 i43_3_lut (.A(save_data[2]), .B(SHAREDBUS_DAT_O[2]), .C(ext_wb_state), 
         .Z(n25)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(416[15:27])
    defparam i43_3_lut.init = 16'hcaca;
    LUT4 m1_lut (.Z(n21083)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i8889_4_lut (.A(spi_cmd[0]), .B(n20197), .C(n20137), .D(spi_cmd_ext[0]), 
         .Z(n11738)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i8889_4_lut.init = 16'hca0a;
    LUT4 i9893_4_lut (.A(spi_read_stat[1]), .B(spi_wrt_enb[1]), .C(SI_N_2077), 
         .D(SI_N_2079), .Z(cmd_dword_31__N_2020[26])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(59[16:18])
    defparam i9893_4_lut.init = 16'hcac0;
    LUT4 i1800_2_lut (.A(n502), .B(dword_wr_31__N_1809), .Z(clk_div_enable_19)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1800_2_lut.init = 16'heeee;
    LUT4 i9573_4_lut (.A(spi_read_stat[2]), .B(spi_wrt_enb[2]), .C(SI_N_2077), 
         .D(SI_N_2079), .Z(cmd_dword_31__N_2020[27])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(59[16:18])
    defparam i9573_4_lut.init = 16'hcac0;
    LUT4 mux_87_Mux_0_i1_4_lut_then_2_lut (.A(spi_ack), .B(spi_wr), .Z(n20208)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(217[8] 296[15])
    defparam mux_87_Mux_0_i1_4_lut_then_2_lut.init = 16'h2222;
    LUT4 i1_2_lut (.A(ctrl_port_req), .B(n8_adj_2240), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i16712 (.BLUT(n19515), .ALUT(n19514), .C0(n20099), .Z(n19516));
    LUT4 i9905_4_lut (.A(spi_read_stat[4]), .B(spi_wrt_enb[4]), .C(SI_N_2077), 
         .D(SI_N_2079), .Z(cmd_dword_31__N_2020[29])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(59[16:18])
    defparam i9905_4_lut.init = 16'hcac0;
    LUT4 i35_3_lut_adj_279 (.A(spi_cmd_ext[21]), .B(spi_cmd_ext[5]), .C(cmd_bytes[1]), 
         .Z(n15_adj_2236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(155[22:31])
    defparam i35_3_lut_adj_279.init = 16'hcaca;
    LUT4 i16511_2_lut_2_lut_4_lut (.A(n21077), .B(n20055), .C(spi_ack), 
         .D(n20056), .Z(n8767)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(217[8] 296[15])
    defparam i16511_2_lut_2_lut_4_lut.init = 16'h0008;
    LUT4 ext_addr_4__bdd_3_lut_17058 (.A(ext_addr[6]), .B(spi_cmd_arb[26]), 
         .C(spi_chip_ers[2]), .Z(n20289)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17058.init = 16'hd8d8;
    PFUMX i6_adj_280 (.BLUT(n11), .ALUT(n15_adj_2239), .C0(n20062), .Z(n82));
    PFUMX i8890 (.BLUT(int_cmd_dword_31__N_1817[1]), .ALUT(n11738), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[1]));
    LUT4 mux_87_Mux_0_i1_4_lut_else_2_lut (.A(ext_io_wr), .B(n20062), .C(ext_mem_wr), 
         .D(spi_ack), .Z(n20207)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(217[8] 296[15])
    defparam mux_87_Mux_0_i1_4_lut_else_2_lut.init = 16'h00c8;
    LUT4 i27_4_lut (.A(spi_cmd_ext[8]), .B(cmd_bytes[1]), .C(cmd_bytes[0]), 
         .D(spi_cmd_ext[0]), .Z(n12_adj_2238)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(155[22:31])
    defparam i27_4_lut.init = 16'hc202;
    PFUMX i44 (.BLUT(n3), .ALUT(n25), .C0(n882), .Z(din_rd[2]));
    LUT4 n3867_bdd_3_lut (.A(n20061), .B(spi_read_stat[0]), .C(spi_pwd_down[0]), 
         .Z(n19354)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n3867_bdd_3_lut.init = 16'hd8d8;
    PFUMX i46 (.BLUT(n7), .ALUT(n27), .C0(n882), .Z(din_rd[5]));
    LUT4 i5_4_lut (.A(din_rd1[1]), .B(im[1]), .C(rcsr), .D(n15_adj_2241), 
         .Z(n1)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(93[22:26])
    defparam i5_4_lut.init = 16'hca0a;
    LUT4 i39_4_lut (.A(din_rd1[2]), .B(im[2]), .C(rcsr), .D(n15_adj_2241), 
         .Z(n21)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(93[22:26])
    defparam i39_4_lut.init = 16'hca0a;
    LUT4 i41_4_lut (.A(din_rd1[5]), .B(im[5]), .C(rcsr), .D(n15_adj_2241), 
         .Z(n23)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(93[22:26])
    defparam i41_4_lut.init = 16'hca0a;
    LUT4 i31_3_lut (.A(spi_cmd[24]), .B(n18793), .C(n20137), .Z(n13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(155[22:31])
    defparam i31_3_lut.init = 16'hcaca;
    GSR GSR_INST (.GSR(counter[2]));
    LUT4 i16020_3_lut (.A(spi_cmd_ext[24]), .B(spi_cmd_ext[8]), .C(cmd_bytes[1]), 
         .Z(n18791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16020_3_lut.init = 16'hcaca;
    LUT4 n12572_bdd_3_lut (.A(n20061), .B(spi_read_stat[6]), .C(spi_pwd_down[6]), 
         .Z(n19359)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n12572_bdd_3_lut.init = 16'hd8d8;
    LUT4 i28_3_lut (.A(spi_cmd[8]), .B(n12_adj_2238), .C(n20137), .Z(n9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(155[22:31])
    defparam i28_3_lut.init = 16'hcaca;
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i17095 (.BLUT(n20342), .ALUT(n20341), .C0(n20100), .Z(n20343));
    PFUMX i17092 (.BLUT(n20339), .ALUT(n20338), .C0(ext_addr[3]), .Z(n20340));
    PFUMX i17088 (.BLUT(n20336), .ALUT(n20335), .C0(n20100), .Z(n20337));
    PFUMX i17085 (.BLUT(n20333), .ALUT(n20332), .C0(ext_addr[3]), .Z(n20334));
    PFUMX i16012 (.BLUT(n4189), .ALUT(n11755), .C0(n20073), .Z(n18783));
    PFUMX i17050 (.BLUT(n20292), .ALUT(n20291), .C0(n20100), .Z(n20293));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module platform1
//

module platform1 (interalClock, \counter[2] , n21083, n20101, \SHAREDBUS_DAT_O[2] , 
            reset_n_c, \SHAREDBUS_DAT_O[5] , n20100, n20073, n19356, 
            \ext_addr[4] , n19361, ext_wb_state, \ext_addr[6] , \spi_read_stat[1] , 
            n20061, \spi_read_stat[4] , n15, n19514, \ext_addr[3] , 
            n12572, n3867, n20089, n18826, n18825, \spi_cmd_arb[26] , 
            n18783, n18782, n19516, n20062, \spi_cmd_ext[16] , \spi_cmd_ext[24] , 
            \spi_cmd_ext[0] , \spi_cmd_ext[8] , \spi_cmd_arb[25] , \spi_cmd_arb[28] , 
            \spi_cmd_ext[20] , \spi_cmd_ext[4] , \spi_cmd_ext[21] , \spi_cmd_ext[5] , 
            n19515, \cmd_bytes[1] , n8767, \cmd_bytes[0] , \spi_cmd[0] , 
            spi_wr, n20209, ctrl_port_req, \spi_read_stat[0] , \spi_pwd_down[0] , 
            \wb_state[0] , n20099, n20055, n20056, \spi_cmd[8] , \spi_cmd[24] , 
            n82, \spi_blk1_ers[1] , \spi_blk1_ers[4] , n18695, spi_ack, 
            \spi_blk1_ers[2] , n21077, \spi_blk2_ers[1] , \spi_blk2_ers[2] , 
            \spi_blk2_ers[4] , \spi_chip_ers[1] , \spi_chip_ers[2] , \spi_chip_ers[4] , 
            \spi_wrt_enb[1] , \spi_wrt_enb[2] , \spi_wrt_enb[4] , \spi_wrt_disb[1] , 
            \spi_wrt_disb[2] , \spi_wrt_disb[4] , \spi_read_stat[2] , 
            \spi_read_stat[6] , \spi_pwd_down[6] , n18697, n11752, n11753, 
            n20137, n4195, n12679, n12678, n20337, n20293, n20343, 
            n4189, n19363, n8, n19358, n3011, n3017, n4166, n11755, 
            int_cmd_dword_31__N_1881, clk_div_enable_19, dword_wr_31__N_1809, 
            SPIFlashSO_c, n3906, \int_cmd_dword[20] , SPIFlashSI_c, 
            SI_N_2079, SI_N_2077, n502, n20128, SPIFlashCEJ_c, n21075, 
            n20168, \int_cmd_dword[1] , \int_cmd_dword[21] , n15_adj_41, 
            n12, n15_adj_42, n12_adj_43, n16, n8_adj_44, \int_cmd_dword_31__N_1849[20] , 
            \int_cmd_dword[22] , \int_cmd_dword_31__N_1817[9] , n11669, 
            n11687, n11678, \int_cmd_dword_31__N_1817[17] , \int_cmd_dword_31__N_1817[1] , 
            n17075, \cmd_dword_31__N_2020[29] , \cmd_dword_31__N_2020[27] , 
            SPIFlashSCK_c, \cmd_dword_31__N_2020[26] , \int_cmd_dword[9] , 
            n13, \int_cmd_dword[17] , n20197, VCC_net, \save_data[2] , 
            \save_data[5] , ext_io_wr, ext_mem_wr, n882, n15_adj_45, 
            rcsr, n23, n7, \din_rd[5] , \din_rd[2] , \din_rd1[1] , 
            \din_rd1[2] , \din_rd1[5] , n21, n3, n1, \im[1] , \im[2] , 
            \im[5] , LEDPIO_OUT_c_1, LEDPIO_OUT_c_0) /* synthesis syn_module_defined=1 */ ;
    input interalClock;
    output \counter[2] ;
    input n21083;
    output n20101;
    output \SHAREDBUS_DAT_O[2] ;
    input reset_n_c;
    output \SHAREDBUS_DAT_O[5] ;
    output n20100;
    output n20073;
    output n19356;
    output \ext_addr[4] ;
    output n19361;
    output ext_wb_state;
    output \ext_addr[6] ;
    output \spi_read_stat[1] ;
    output n20061;
    output \spi_read_stat[4] ;
    output n15;
    output n19514;
    output \ext_addr[3] ;
    output n12572;
    output n3867;
    output n20089;
    input n18826;
    input n18825;
    output \spi_cmd_arb[26] ;
    input n18783;
    input n18782;
    input n19516;
    output n20062;
    output \spi_cmd_ext[16] ;
    output \spi_cmd_ext[24] ;
    output \spi_cmd_ext[0] ;
    output \spi_cmd_ext[8] ;
    output \spi_cmd_arb[25] ;
    output \spi_cmd_arb[28] ;
    output \spi_cmd_ext[20] ;
    output \spi_cmd_ext[4] ;
    output \spi_cmd_ext[21] ;
    output \spi_cmd_ext[5] ;
    output n19515;
    output \cmd_bytes[1] ;
    input n8767;
    output \cmd_bytes[0] ;
    output \spi_cmd[0] ;
    output spi_wr;
    input n20209;
    output ctrl_port_req;
    output \spi_read_stat[0] ;
    output \spi_pwd_down[0] ;
    output \wb_state[0] ;
    output n20099;
    output n20055;
    output n20056;
    output \spi_cmd[8] ;
    output \spi_cmd[24] ;
    input n82;
    output \spi_blk1_ers[1] ;
    output \spi_blk1_ers[4] ;
    output n18695;
    output spi_ack;
    output \spi_blk1_ers[2] ;
    output n21077;
    output \spi_blk2_ers[1] ;
    output \spi_blk2_ers[2] ;
    output \spi_blk2_ers[4] ;
    output \spi_chip_ers[1] ;
    output \spi_chip_ers[2] ;
    output \spi_chip_ers[4] ;
    output \spi_wrt_enb[1] ;
    output \spi_wrt_enb[2] ;
    output \spi_wrt_enb[4] ;
    output \spi_wrt_disb[1] ;
    output \spi_wrt_disb[2] ;
    output \spi_wrt_disb[4] ;
    output \spi_read_stat[2] ;
    output \spi_read_stat[6] ;
    output \spi_pwd_down[6] ;
    output n18697;
    output n11752;
    output n11753;
    output n20137;
    output n4195;
    output n12679;
    output n12678;
    input n20337;
    input n20293;
    input n20343;
    output n4189;
    input n19363;
    output n8;
    input n19358;
    output n3011;
    output n3017;
    output n4166;
    output n11755;
    output int_cmd_dword_31__N_1881;
    input clk_div_enable_19;
    output dword_wr_31__N_1809;
    input SPIFlashSO_c;
    input n3906;
    input \int_cmd_dword[20] ;
    output SPIFlashSI_c;
    output SI_N_2079;
    output SI_N_2077;
    output n502;
    output n20128;
    output SPIFlashCEJ_c;
    output n21075;
    output n20168;
    input \int_cmd_dword[1] ;
    input \int_cmd_dword[21] ;
    input n15_adj_41;
    output n12;
    input n15_adj_42;
    output n12_adj_43;
    input n16;
    output n8_adj_44;
    output \int_cmd_dword_31__N_1849[20] ;
    input \int_cmd_dword[22] ;
    output \int_cmd_dword_31__N_1817[9] ;
    output n11669;
    output n11687;
    output n11678;
    output \int_cmd_dword_31__N_1817[17] ;
    output \int_cmd_dword_31__N_1817[1] ;
    output n17075;
    input \cmd_dword_31__N_2020[29] ;
    input \cmd_dword_31__N_2020[27] ;
    output SPIFlashSCK_c;
    input \cmd_dword_31__N_2020[26] ;
    input \int_cmd_dword[9] ;
    input n13;
    input \int_cmd_dword[17] ;
    output n20197;
    input VCC_net;
    output \save_data[2] ;
    output \save_data[5] ;
    output ext_io_wr;
    output ext_mem_wr;
    output n882;
    output n15_adj_45;
    output rcsr;
    input n23;
    output n7;
    input \din_rd[5] ;
    input \din_rd[2] ;
    output \din_rd1[1] ;
    output \din_rd1[2] ;
    output \din_rd1[5] ;
    input n21;
    output n3;
    input n1;
    output \im[1] ;
    output \im[2] ;
    output \im[5] ;
    output LEDPIO_OUT_c_1;
    output LEDPIO_OUT_c_0;
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    wire [2:0]n30;
    
    wire counter_2__N_176, reset_n_N_43;
    wire [2:0]n11;
    wire [7:0]SPIFlashS_DAT_O;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(399[12:27])
    
    wire n18292;
    wire [31:0]SHAREDBUS_DAT_O_7__N_47;
    
    wire n15_c;
    wire [31:0]SHAREDBUS_DAT_O;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(350[13:28])
    
    wire n10456;
    wire [7:0]SPIFlashC_DAT_O;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(404[12:27])
    wire [31:0]D_ADR_O_31__N_499;
    
    wire n18376, n20112, n5338, n20165, n20092, n18346, n20090, 
        n4, SPIFlashS_ACK_O, SPIFlashC_ACK_O;
    wire [31:0]SHAREDBUS_ACK_O_N_79;
    wire [7:0]page_ptr3;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(115[43:52])
    
    wire n18460, n18360;
    wire [7:0]page_ptr2;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(115[32:41])
    
    wire n18393, n18383, n18396, n18141;
    wire [7:0]page_ptr1;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(115[21:30])
    
    wire n20201, n18143, n7029, LEDGPIO_ACK_O, n20054;
    wire [1:0]selected;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(244[15:23])
    
    wire n20050, n19573, n166, n20049, ctr_state, ctrl_port_req_N_1718, 
        n973, n6, n18371, n18503, n18440, n18370, n20203, n18365, 
        n8_c, n18831, n18832, n18833, n18834, n18835, n12702, 
        n4167, n18840, n18841, n18843, n18844, n18845, n18846, 
        n18847, n18848, n18849, n18850, n18851, n18852, n18853, 
        n18854, n18855, n18856, n18857, n18861, n18862, n18864, 
        n18865, n18867, n18868, n18869, n4194, n4165, n18873, 
        n18874, n18875, n12652, n12653, n12697, n12698;
    wire [31:0]ext_addr;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(134[29:37])
    wire [7:0]spi_byte_prg;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(141[19:31])
    
    wire ctrl_spi_cmd_31__N_1305;
    wire [7:0]LM8D_DAT_O;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(377[12:22])
    wire [31:0]SHAREDBUS_DAT_I;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    
    wire n6985, n12609, n12610, n12623, n12624, n12637, n12638, 
        ctrl_spi_cmd_31__N_1299, n20103, n20102;
    wire [31:0]SHAREDBUS_ADR_I;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    
    wire n20075, n20064, n20072, n20074;
    wire [31:0]spi_cmd_arb;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(573[15:26])
    wire [7:0]spi_chip_ers;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(146[19:31])
    wire [7:0]spi_wrt_disb;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(147[19:31])
    wire [7:0]spi_blk2_ers;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(144[19:31])
    wire [7:0]spi_wrt_enb;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(161[22:33])
    wire [7:0]spi_blk1_ers;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(143[19:31])
    
    wire n14, n20058, n4422, n13174, n20047;
    wire [7:0]n2389;
    
    wire n7054;
    wire [7:0]spi_pwd_down;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(149[19:31])
    wire [7:0]n3950;
    wire [7:0]spi_read_stat;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(162[22:35])
    
    wire n19528;
    wire [2:0]length_arb;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(575[15:25])
    
    wire n20019, n5014, n21076, n20067, n20065, n18980, n20041, 
        n5, n937, n20069;
    wire [7:0]spi_page_prg;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(142[19:31])
    
    wire n21_c, ctrl_spi_cmd_31__N_1298, n14_adj_2212, n20070, ctrl_spi_cmd_31__N_1300, 
        n16_c, ctrl_spi_cmd_31__N_1303, n19_adj_2214, ctrl_spi_cmd_31__N_1304, 
        n20_adj_2215, n46, PIO_OUT_1__N_989, PIO_OUT_1__N_987, ctrl_spi_cmd_31__N_1301, 
        n17, ctrl_spi_cmd_31__N_1302, n18, n20163, n21_adj_2216, n13317, 
        n46_adj_2217, n18233, n18253, interalClock_enable_118, n20098, 
        n12_c, n19917, n18491, n20077, n18603, n18607;
    wire [31:0]spi_cmd_ext;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(153[23:34])
    
    wire n18758, n18759;
    wire [7:0]spi_pwd_up;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(150[19:29])
    wire [7:0]spi_wrt_stat;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(148[19:31])
    wire [7:0]n3859;
    
    wire n12523, n12547, n12442, n12495, n5073;
    wire [7:0]n3850;
    
    wire n20095, n29;
    wire [3:0]bytes_arb;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(574[15:24])
    
    wire n5616;
    wire [23:0]ctrl_port_cmd;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(163[21:34])
    
    wire n18749, n19478, n18814, n19463, n18_adj_2218, n18750, n18812, 
        n18818, n19458, n5323, n17_adj_2219, n992, n13341, n20045, 
        n18751, n19530;
    wire [31:0]n3184;
    
    wire n7955, n20043, n19597, n19598, n18784, n9, n5207, n24, 
        n20093, n11492;
    wire [31:0]n80;
    
    wire n18748, n18881, n20094, n18891, n20177, n19622, n18819, 
        n18889, n18890, n20176, n39, n20057, n18892, n5596, n18880, 
        n18821, n20173, n20076, n18820, n18813, n20086, n18882, 
        n4_adj_2220, n18755, n18575, n18756, n18794, n18795, n18796, 
        n18797, n18801, n18558, n13407, n19621, n18802, n18803, 
        n18334, n7926, n20059, n20071, n18804, n20085, n18811, 
        n18356, n4_adj_2221, n18879, n8011, n20083, n20078, n68, 
        n68_adj_2222, n18333, n18332, n68_adj_2223, n4_adj_2224, n20081, 
        n20080, n20082, n20079, n6_adj_2225, n4818, n8015, n20084, 
        n19305, n18296, n19529, n4193, n4164, n4192, n4163, n4191, 
        n12402, n20309, n19272, n19271, n20087, n20053, n20145, 
        n20088, n20097, n20091, n7030, n10, n5718, n18499, n20096;
    wire [31:0]n42;
    
    wire n13214;
    
    FD1P3DX counter_1669__i0 (.D(n11[0]), .SP(counter_2__N_176), .CK(interalClock), 
            .CD(reset_n_N_43), .Q(n30[0]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(421[15:29])
    defparam counter_1669__i0.GSR = "DISABLED";
    LUT4 i10023_4_lut (.A(SPIFlashS_DAT_O[1]), .B(n18292), .C(SHAREDBUS_DAT_O_7__N_47[1]), 
         .D(n15_c), .Z(SHAREDBUS_DAT_O[1])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(480[1] 483[2])
    defparam i10023_4_lut.init = 16'h3022;
    LUT4 i1_2_lut (.A(n10456), .B(SPIFlashC_DAT_O[1]), .Z(SHAREDBUS_DAT_O_7__N_47[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3DX counter_1669__i1 (.D(n11[1]), .SP(counter_2__N_176), .CK(interalClock), 
            .CD(reset_n_N_43), .Q(n30[1]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(421[15:29])
    defparam counter_1669__i1.GSR = "DISABLED";
    FD1P3DX counter_1669__i2 (.D(n21083), .SP(n11[2]), .CK(interalClock), 
            .CD(reset_n_N_43), .Q(\counter[2] ));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(421[15:29])
    defparam counter_1669__i2.GSR = "DISABLED";
    LUT4 i10292_4_lut (.A(D_ADR_O_31__N_499[31]), .B(n20101), .C(n18376), 
         .D(n20112), .Z(n5338)) /* synthesis lut_function=(A (B)+!A !(((D)+!C)+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(603[23:63])
    defparam i10292_4_lut.init = 16'h88c8;
    LUT4 i10017_4_lut (.A(SPIFlashS_DAT_O[2]), .B(n18292), .C(SHAREDBUS_DAT_O_7__N_47[2]), 
         .D(n15_c), .Z(\SHAREDBUS_DAT_O[2] )) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(480[1] 483[2])
    defparam i10017_4_lut.init = 16'h3022;
    LUT4 i9946_4_lut (.A(SPIFlashS_DAT_O[0]), .B(n18292), .C(SHAREDBUS_DAT_O_7__N_47[0]), 
         .D(n15_c), .Z(SHAREDBUS_DAT_O[0])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(480[1] 483[2])
    defparam i9946_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_adj_271 (.A(n10456), .B(SPIFlashC_DAT_O[0]), .Z(SHAREDBUS_DAT_O_7__N_47[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i1_2_lut_adj_271.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(n20165), .B(n20092), .C(n18346), .D(n20090), 
         .Z(n4)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(558[21:81])
    defparam i1_3_lut_4_lut.init = 16'h0070;
    LUT4 mux_62_i1_4_lut (.A(SPIFlashS_ACK_O), .B(n10456), .C(n15_c), 
         .D(SPIFlashC_ACK_O), .Z(SHAREDBUS_ACK_O_N_79[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(491[1] 493[2])
    defparam mux_62_i1_4_lut.init = 16'hca0a;
    LUT4 i15701_2_lut (.A(page_ptr3[4]), .B(page_ptr3[1]), .Z(n18460)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15701_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_272 (.A(page_ptr3[5]), .B(page_ptr3[2]), .Z(n18360)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i1_2_lut_adj_272.init = 16'heeee;
    LUT4 i3_4_lut (.A(page_ptr2[2]), .B(n18393), .C(n18383), .D(n18396), 
         .Z(n18141)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_273 (.A(page_ptr2[7]), .B(page_ptr1[5]), .Z(n18393)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i1_2_lut_adj_273.init = 16'heeee;
    LUT4 i2_3_lut (.A(page_ptr1[4]), .B(page_ptr1[3]), .C(page_ptr3[0]), 
         .Z(n18396)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(603[23:63])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i10109_2_lut (.A(SPIFlashC_DAT_O[2]), .B(n10456), .Z(SHAREDBUS_DAT_O_7__N_47[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(482[1] 483[2])
    defparam i10109_2_lut.init = 16'h8888;
    LUT4 i10014_4_lut (.A(SPIFlashS_DAT_O[3]), .B(n18292), .C(SHAREDBUS_DAT_O_7__N_47[3]), 
         .D(n15_c), .Z(SHAREDBUS_DAT_O[3])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(480[1] 483[2])
    defparam i10014_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_adj_274 (.A(n10456), .B(SPIFlashC_DAT_O[3]), .Z(SHAREDBUS_DAT_O_7__N_47[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i1_2_lut_adj_274.init = 16'h8888;
    LUT4 i10013_4_lut (.A(SPIFlashS_DAT_O[4]), .B(n18292), .C(SHAREDBUS_DAT_O_7__N_47[4]), 
         .D(n15_c), .Z(SHAREDBUS_DAT_O[4])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(480[1] 483[2])
    defparam i10013_4_lut.init = 16'h3022;
    LUT4 counter_2__I_0_1_lut (.A(\counter[2] ), .Z(counter_2__N_176)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(415[18:29])
    defparam counter_2__I_0_1_lut.init = 16'h5555;
    LUT4 reset_n_I_0_1_lut (.A(reset_n_c), .Z(reset_n_N_43)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(417[5:20])
    defparam reset_n_I_0_1_lut.init = 16'h5555;
    LUT4 i14011_1_lut (.A(n30[0]), .Z(n11[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(421[15:29])
    defparam i14011_1_lut.init = 16'h5555;
    LUT4 i4_4_lut (.A(n20201), .B(page_ptr1[6]), .C(page_ptr1[7]), .D(n18141), 
         .Z(n18143)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i3940_2_lut_rep_306 (.A(page_ptr1[1]), .B(page_ptr1[2]), .Z(n20165)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(558[21:81])
    defparam i3940_2_lut_rep_306.init = 16'heeee;
    LUT4 i4183_2_lut_3_lut (.A(page_ptr1[1]), .B(page_ptr1[2]), .C(page_ptr1[0]), 
         .Z(n7029)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(558[21:81])
    defparam i4183_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_6_i1_3_lut_rep_195 (.A(LEDGPIO_ACK_O), .B(SHAREDBUS_ACK_O_N_79[0]), 
         .C(n18292), .Z(n20054)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(490[1] 493[2])
    defparam mux_6_i1_3_lut_rep_195.init = 16'hacac;
    LUT4 i9954_2_lut_rep_191_4_lut (.A(LEDGPIO_ACK_O), .B(SHAREDBUS_ACK_O_N_79[0]), 
         .C(n18292), .D(selected[1]), .Z(n20050)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(490[1] 493[2])
    defparam i9954_2_lut_rep_191_4_lut.init = 16'hac00;
    LUT4 n18360_bdd_4_lut_17413 (.A(n18360), .B(n18460), .C(page_ptr3[3]), 
         .D(page_ptr3[6]), .Z(n19573)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam n18360_bdd_4_lut_17413.init = 16'h0001;
    LUT4 i10098_2_lut (.A(SPIFlashC_DAT_O[4]), .B(n10456), .Z(SHAREDBUS_DAT_O_7__N_47[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(482[1] 483[2])
    defparam i10098_2_lut.init = 16'h8888;
    LUT4 i10012_4_lut (.A(SPIFlashS_DAT_O[5]), .B(n18292), .C(SHAREDBUS_DAT_O_7__N_47[5]), 
         .D(n15_c), .Z(\SHAREDBUS_DAT_O[5] )) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(480[1] 483[2])
    defparam i10012_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_adj_275 (.A(n10456), .B(SPIFlashC_DAT_O[5]), .Z(SHAREDBUS_DAT_O_7__N_47[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i1_2_lut_adj_275.init = 16'h8888;
    LUT4 i10000_4_lut (.A(SPIFlashS_DAT_O[6]), .B(n18292), .C(SHAREDBUS_DAT_O_7__N_47[6]), 
         .D(n15_c), .Z(SHAREDBUS_DAT_O[6])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(480[1] 483[2])
    defparam i10000_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_adj_276 (.A(n10456), .B(SPIFlashC_DAT_O[6]), .Z(SHAREDBUS_DAT_O_7__N_47[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i1_2_lut_adj_276.init = 16'h8888;
    LUT4 i1_2_lut_rep_190_4_lut (.A(n20101), .B(SPIFlashC_ACK_O), .C(n10456), 
         .D(n166), .Z(n20049)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i1_2_lut_rep_190_4_lut.init = 16'hdfff;
    LUT4 i16547_2_lut_4_lut (.A(n20101), .B(SPIFlashC_ACK_O), .C(n10456), 
         .D(ctr_state), .Z(ctrl_port_req_N_1718)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i16547_2_lut_4_lut.init = 16'h0020;
    LUT4 i2_2_lut_4_lut (.A(n20101), .B(SPIFlashC_ACK_O), .C(n10456), 
         .D(n973), .Z(n6)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i2_2_lut_4_lut.init = 16'h2000;
    LUT4 i14013_2_lut (.A(n30[1]), .B(n30[0]), .Z(n11[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(421[15:29])
    defparam i14013_2_lut.init = 16'h6666;
    LUT4 i14020_3_lut (.A(\counter[2] ), .B(n30[1]), .C(n30[0]), .Z(n11[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(421[15:29])
    defparam i14020_3_lut.init = 16'h6a6a;
    LUT4 i15740_4_lut (.A(n18383), .B(n18360), .C(n18371), .D(n18393), 
         .Z(n18503)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15740_4_lut.init = 16'hfffe;
    LUT4 i15683_2_lut_3_lut (.A(page_ptr1[6]), .B(page_ptr1[7]), .C(page_ptr3[0]), 
         .Z(n18440)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(558[21:81])
    defparam i15683_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut (.A(n18396), .B(n18370), .C(page_ptr3[4]), .D(n20203), 
         .Z(n18371)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(604[23:77])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_344 (.A(page_ptr3[3]), .B(page_ptr3[1]), .Z(n20203)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(603[23:63])
    defparam i1_2_lut_rep_344.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(page_ptr3[3]), .B(page_ptr3[1]), .C(page_ptr3[2]), 
         .Z(n18365)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(603[23:63])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_277 (.A(page_ptr3[6]), .B(page_ptr3[4]), .C(page_ptr3[5]), 
         .Z(n18376)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(603[23:63])
    defparam i1_2_lut_3_lut_adj_277.init = 16'hfefe;
    LUT4 i3_3_lut_4_lut (.A(page_ptr3[6]), .B(page_ptr3[4]), .C(n18141), 
         .D(page_ptr3[7]), .Z(n8_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(603[23:63])
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    \arbiter2(MAX_DAT_WIDTH=8,WBS_DAT_WIDTH=8,WBM0_DAT_WIDTH=8,WBM1_DAT_WIDTH=8)  arbiter (.n18831(n18831), 
            .n18832(n18832), .n20100(n20100), .n18833(n18833), .n18834(n18834), 
            .n18835(n18835), .n20073(n20073), .n12702(n12702), .n4167(n4167), 
            .n18840(n18840), .n18841(n18841), .n18843(n18843), .n18844(n18844), 
            .n18845(n18845), .n18846(n18846), .n18847(n18847), .n18848(n18848), 
            .n18849(n18849), .n18850(n18850), .n18851(n18851), .n18852(n18852), 
            .n18853(n18853), .n18854(n18854), .n18855(n18855), .n18856(n18856), 
            .n18857(n18857), .\selected[1] (selected[1]), .interalClock(interalClock), 
            .n18861(n18861), .n18862(n18862), .n18864(n18864), .n18865(n18865), 
            .n18867(n18867), .n18868(n18868), .n18869(n18869), .n4194(n4194), 
            .n4165(n4165), .n18873(n18873), .n18874(n18874), .n18875(n18875), 
            .n12652(n12652), .n12653(n12653), .n12697(n12697), .n12698(n12698), 
            .\ext_addr[2] (ext_addr[2]), .n20101(n20101), .spi_byte_prg({spi_byte_prg}), 
            .ctrl_spi_cmd_31__N_1305(ctrl_spi_cmd_31__N_1305), .n19356(n19356), 
            .LM8D_DAT_O({LM8D_DAT_O}), .\SHAREDBUS_DAT_I[2] (SHAREDBUS_DAT_I[2]), 
            .\SHAREDBUS_DAT_I[3] (SHAREDBUS_DAT_I[3]), .\SHAREDBUS_DAT_I[4] (SHAREDBUS_DAT_I[4]), 
            .\SHAREDBUS_DAT_I[5] (SHAREDBUS_DAT_I[5]), .\SHAREDBUS_DAT_I[6] (SHAREDBUS_DAT_I[6]), 
            .\SHAREDBUS_DAT_I[7] (SHAREDBUS_DAT_I[7]), .\ext_addr[4] (\ext_addr[4] ), 
            .n6985(n6985), .n12609(n12609), .n12610(n12610), .n12623(n12623), 
            .n12624(n12624), .n12637(n12637), .n12638(n12638), .ctrl_spi_cmd_31__N_1299(ctrl_spi_cmd_31__N_1299), 
            .n19361(n19361), .n20112(n20112), .ext_wb_state(ext_wb_state), 
            .n20103(n20103), .n20092(n20092), .page_ptr1({page_ptr1}), 
            .n20102(n20102), .\SHAREDBUS_ADR_I[9] (SHAREDBUS_ADR_I[9]), 
            .n20075(n20075), .n20165(n20165), .n20064(n20064), .n7029(n7029), 
            .\ext_addr[7] (ext_addr[7]), .n20072(n20072), .n20074(n20074), 
            .n19573(n19573), .page_ptr2({page_ptr2}), .\SHAREDBUS_ADR_I[18] (SHAREDBUS_ADR_I[18]), 
            .\SHAREDBUS_ADR_I[13] (SHAREDBUS_ADR_I[13]), .\SHAREDBUS_ADR_I[15] (SHAREDBUS_ADR_I[15]), 
            .\SHAREDBUS_ADR_I[12] (SHAREDBUS_ADR_I[12]), .\SHAREDBUS_ADR_I[17] (SHAREDBUS_ADR_I[17]), 
            .\SHAREDBUS_ADR_I[19] (SHAREDBUS_ADR_I[19]), .\SHAREDBUS_ADR_I[20] (SHAREDBUS_ADR_I[20]), 
            .\SHAREDBUS_ADR_I[21] (SHAREDBUS_ADR_I[21]), .\SHAREDBUS_ADR_I[22] (SHAREDBUS_ADR_I[22]), 
            .\SHAREDBUS_ADR_I[11] (SHAREDBUS_ADR_I[11]), .\SHAREDBUS_ADR_I[23] (SHAREDBUS_ADR_I[23]), 
            .\SHAREDBUS_ADR_I[10] (SHAREDBUS_ADR_I[10]), .\ext_addr[6] (\ext_addr[6] ), 
            .\spi_cmd_arb[27] (spi_cmd_arb[27]), .\spi_chip_ers[3] (spi_chip_ers[3]), 
            .\SHAREDBUS_ADR_I[14] (SHAREDBUS_ADR_I[14]), .\SHAREDBUS_ADR_I[16] (SHAREDBUS_ADR_I[16]), 
            .\spi_wrt_disb[3] (spi_wrt_disb[3]), .\spi_blk2_ers[3] (spi_blk2_ers[3]), 
            .\spi_wrt_enb[3] (spi_wrt_enb[3]), .\spi_blk1_ers[3] (spi_blk1_ers[3]), 
            .n18503(n18503), .n14(n14), .\SHAREDBUS_ADR_I[31] (SHAREDBUS_ADR_I[31]), 
            .n10456(n10456), .n20090(n20090), .n20058(n20058), .n4422(n4422), 
            .n13174(n13174), .n20047(n20047), .n2390(n2389[7]), .n2394(n2389[3]), 
            .n7054(n7054), .n2395(n2389[2]), .\spi_pwd_down[1] (spi_pwd_down[1]), 
            .\spi_read_stat[1] (\spi_read_stat[1] ), .n20061(n20061), .n3957(n3950[1]), 
            .\spi_pwd_down[3] (spi_pwd_down[3]), .\spi_read_stat[3] (spi_read_stat[3]), 
            .n3955(n3950[3]), .\spi_pwd_down[4] (spi_pwd_down[4]), .\spi_read_stat[4] (\spi_read_stat[4] ), 
            .n3954(n3950[4]), .\spi_pwd_down[5] (spi_pwd_down[5]), .\spi_read_stat[5] (spi_read_stat[5]), 
            .n3953(n3950[5]), .\spi_wrt_disb[0] (spi_wrt_disb[0]), .\spi_blk2_ers[0] (spi_blk2_ers[0]), 
            .n19528(n19528), .length_arb({length_arb}), .n20019(n20019), 
            .\ext_addr[5] (ext_addr[5]), .n5014(n5014), .n21076(n21076), 
            .ctr_state(ctr_state), .\ext_addr[0] (ext_addr[0]), .n20067(n20067), 
            .n20065(n20065), .n18980(n18980), .n20041(n20041), .n5(n5), 
            .n937(n937), .n20069(n20069), .spi_page_prg({spi_page_prg}), 
            .n21(n21_c), .ctrl_spi_cmd_31__N_1298(ctrl_spi_cmd_31__N_1298), 
            .n14_adj_31(n14_adj_2212), .n20070(n20070), .n15(n15), .ctrl_spi_cmd_31__N_1300(ctrl_spi_cmd_31__N_1300), 
            .n16(n16_c), .ctrl_spi_cmd_31__N_1303(ctrl_spi_cmd_31__N_1303), 
            .n19(n19_adj_2214), .ctrl_spi_cmd_31__N_1304(ctrl_spi_cmd_31__N_1304), 
            .n20(n20_adj_2215), .n46(n46), .PIO_OUT_1__N_989(PIO_OUT_1__N_989), 
            .PIO_OUT_1__N_987(PIO_OUT_1__N_987), .ctrl_spi_cmd_31__N_1301(ctrl_spi_cmd_31__N_1301), 
            .n17(n17), .ctrl_spi_cmd_31__N_1302(ctrl_spi_cmd_31__N_1302), 
            .n18(n18), .n20163(n20163), .n21_adj_32(n21_adj_2216), .n13317(n13317), 
            .n46_adj_33(n46_adj_2217), .n18233(n18233), .n18253(n18253), 
            .interalClock_enable_118(interalClock_enable_118), .\spi_wrt_disb[6] (spi_wrt_disb[6]), 
            .\spi_blk2_ers[6] (spi_blk2_ers[6]), .n19514(n19514), .n973(n973), 
            .n20098(n20098), .n12(n12_c), .n20054(n20054), .n19917(n19917), 
            .n18491(n18491), .n20077(n20077), .n18460(n18460), .n18603(n18603), 
            .n18607(n18607), .n18292(n18292), .\ext_addr[1] (ext_addr[1]), 
            .spi_cmd_ext({spi_cmd_ext[31:25], \spi_cmd_ext[24] , spi_cmd_ext[23:22], 
            \spi_cmd_ext[21] , \spi_cmd_ext[20] , spi_cmd_ext[19:17], 
            \spi_cmd_ext[16] , spi_cmd_ext[15:9], \spi_cmd_ext[8] , spi_cmd_ext[7:6], 
            \spi_cmd_ext[5] , \spi_cmd_ext[4] , spi_cmd_ext[3:1], \spi_cmd_ext[0] }), 
            .n18758(n18758), .n18759(n18759), .\ext_addr[3] (\ext_addr[3] ), 
            .spi_pwd_up({spi_pwd_up}), .spi_wrt_stat({spi_wrt_stat}), .n3860(n3859[7]), 
            .n12523(n12523), .n12547(n12547), .\SHAREDBUS_DAT_I[0] (SHAREDBUS_DAT_I[0]), 
            .n12442(n12442), .\page_ptr3[0] (page_ptr3[0]), .n18143(n18143), 
            .n12572(n12572), .n3867(n3867), .n12495(n12495), .n5073(n5073), 
            .n18365(n18365), .n5338(n5338), .n15_adj_34(n15_c), .n3865(n3859[2]), 
            .\SHAREDBUS_DAT_I[1] (SHAREDBUS_DAT_I[1]), .n3853(n3850[5]), 
            .n20095(n20095), .n20089(n20089), .n29(n29), .bytes_arb({bytes_arb}), 
            .n5616(n5616), .n3856(n3850[2]), .ctrl_port_cmd({ctrl_port_cmd}), 
            .n18749(n18749), .n19478(n19478), .n18814(n18814), .n18826(n18826), 
            .n18825(n18825), .n19463(n19463), .n18_adj_35(n18_adj_2218), 
            .n3855(n3850[3]), .n18750(n18750), .n18812(n18812), .n3851(n3850[7]), 
            .\spi_cmd_arb[26] (\spi_cmd_arb[26] ), .n18818(n18818), .n19458(n19458), 
            .n5323(n5323), .n17_adj_36(n17_adj_2219), .n992(n992), .n13341(n13341), 
            .n20045(n20045), .n18751(n18751), .n19530(n19530), .n3192(n3184[24]), 
            .n3857(n3850[1]), .\spi_wrt_enb[6] (spi_wrt_enb[6]), .\spi_blk1_ers[6] (spi_blk1_ers[6]), 
            .n7955(n7955), .n20043(n20043), .n19597(n19597), .n19598(n19598), 
            .n3854(n3850[4]), .n18783(n18783), .n18782(n18782), .n18784(n18784), 
            .n19516(n19516), .n9(n9), .n5207(n5207), .n24(n24), .n20093(n20093), 
            .n20062(n20062), .n11492(n11492), .n105(n80[7]), .n18748(n18748), 
            .n18881(n18881), .n20094(n20094), .n18891(n18891), .n20177(n20177), 
            .n19622(n19622), .n18819(n18819), .\spi_cmd_arb[24] (spi_cmd_arb[24]), 
            .n18889(n18889), .n18890(n18890), .n20176(n20176), .n39(n39), 
            .SPIFlashC_ACK_O(SPIFlashC_ACK_O), .n20057(n20057), .n18892(n18892), 
            .n5596(n5596), .n18880(n18880), .n18821(n18821), .n20173(n20173), 
            .n20076(n20076), .n18820(n18820), .n18813(n18813), .n20086(n20086), 
            .n18882(n18882), .n4(n4_adj_2220), .\spi_cmd_arb[25] (\spi_cmd_arb[25] ), 
            .n18755(n18755), .n18575(n18575), .n18756(n18756), .\spi_cmd_arb[28] (\spi_cmd_arb[28] ), 
            .n18794(n18794), .n18795(n18795), .n18796(n18796), .n18797(n18797), 
            .LEDGPIO_ACK_O(LEDGPIO_ACK_O), .SPIFlashS_ACK_O(SPIFlashS_ACK_O), 
            .\spi_cmd_arb[29] (spi_cmd_arb[29]), .n18801(n18801), .n18558(n18558), 
            .n13407(n13407), .n19621(n19621), .n18802(n18802), .n18803(n18803), 
            .n18334(n18334), .n7926(n7926), .n20059(n20059), .n20071(n20071), 
            .n18804(n18804), .n20085(n20085), .\spi_cmd_arb[30] (spi_cmd_arb[30]), 
            .n18811(n18811), .n18356(n18356), .n4_adj_37(n4_adj_2221), 
            .\spi_cmd_arb[31] (spi_cmd_arb[31]), .n18879(n18879), .\spi_chip_ers[6] (spi_chip_ers[6]), 
            .n19515(n19515), .n8011(n8011), .n20083(n20083), .n20078(n20078), 
            .\SPIFlashC_DAT_O[2] (SPIFlashC_DAT_O[2]), .n68(n68), .\SPIFlashC_DAT_O[0] (SPIFlashC_DAT_O[0]), 
            .n68_adj_38(n68_adj_2222), .\SPIFlashC_DAT_O[1] (SPIFlashC_DAT_O[1]), 
            .n18333(n18333), .\SPIFlashC_DAT_O[3] (SPIFlashC_DAT_O[3]), 
            .n18332(n18332), .\SPIFlashC_DAT_O[7] (SPIFlashC_DAT_O[7]), 
            .n68_adj_39(n68_adj_2223), .n4_adj_40(n4_adj_2224), .n20081(n20081), 
            .n20080(n20080), .n20082(n20082), .n20079(n20079), .n6(n6_adj_2225), 
            .n4818(n4818), .n8015(n8015), .n20084(n20084), .n19305(n19305), 
            .n18296(n18296), .\spi_chip_ers[0] (spi_chip_ers[0]), .n19529(n19529), 
            .n4193(n4193), .n4164(n4164), .n4192(n4192), .n4163(n4163), 
            .n4191(n4191), .n12402(n12402), .n20309(n20309), .n19272(n19272), 
            .n19271(n19271), .\spi_wrt_enb[0] (spi_wrt_enb[0]), .\spi_blk1_ers[0] (spi_blk1_ers[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(437[1] 478[20])
    spi_flash_renamed_due_excessive_length_4 SPIFlashS_DAT_O_7__I_0 (.interalClock(interalClock), 
            .n20100(n20100), .\SHAREDBUS_DAT_I[0] (SHAREDBUS_DAT_I[0]), 
            .cmd_bytes({Open_0, Open_1, \cmd_bytes[1] , \cmd_bytes[0] }), 
            .n8767(n8767), .ctrl_port_cmd({ctrl_port_cmd}), .\ext_addr[4] (\ext_addr[4] ), 
            .\ext_addr[3] (\ext_addr[3] ), .n13341(n13341), .spi_cmd_ext({spi_cmd_ext[31:25], 
            \spi_cmd_ext[24] , spi_cmd_ext[23:22], \spi_cmd_ext[21] , 
            \spi_cmd_ext[20] , spi_cmd_ext[19:17], \spi_cmd_ext[16] , 
            spi_cmd_ext[15:9], \spi_cmd_ext[8] , spi_cmd_ext[7:6], \spi_cmd_ext[5] , 
            \spi_cmd_ext[4] , spi_cmd_ext[3:1], \spi_cmd_ext[0] }), .spi_cmd({Open_2, 
            Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, Open_9, 
            Open_10, Open_11, Open_12, Open_13, Open_14, Open_15, 
            Open_16, Open_17, Open_18, Open_19, Open_20, Open_21, 
            Open_22, Open_23, Open_24, Open_25, Open_26, Open_27, 
            Open_28, Open_29, Open_30, Open_31, Open_32, \spi_cmd[0] }), 
            .SPIFlashS_DAT_O({SPIFlashS_DAT_O}), .spi_wr(spi_wr), .SPIFlashS_ACK_O(SPIFlashS_ACK_O), 
            .n20209(n20209), .ctrl_port_req(ctrl_port_req), .ctrl_port_req_N_1718(ctrl_port_req_N_1718), 
            .length_arb({length_arb}), .n20073(n20073), .LM8D_DAT_O({LM8D_DAT_O}), 
            .SPIFlashC_DAT_O({SPIFlashC_DAT_O}), .spi_byte_prg({spi_byte_prg}), 
            .spi_page_prg({spi_page_prg}), .\spi_blk1_ers[0] (spi_blk1_ers[0]), 
            .\spi_blk2_ers[0] (spi_blk2_ers[0]), .\spi_chip_ers[0] (spi_chip_ers[0]), 
            .spi_wrt_enb({Open_33, Open_34, Open_35, Open_36, Open_37, 
            Open_38, Open_39, spi_wrt_enb[0]}), .\spi_wrt_disb[0] (spi_wrt_disb[0]), 
            .spi_read_stat({Open_40, \spi_read_stat[6] , spi_read_stat[5], 
            \spi_read_stat[4] , spi_read_stat[3], \spi_read_stat[2] , 
            \spi_read_stat[1] , \spi_read_stat[0] }), .spi_wrt_stat({spi_wrt_stat}), 
            .\spi_pwd_down[0] (\spi_pwd_down[0] ), .spi_pwd_up({spi_pwd_up}), 
            .\wb_state[0] (\wb_state[0] ), .bytes_arb({bytes_arb}), .ctr_state(ctr_state), 
            .n18748(n18748), .n18749(n18749), .n20098(n20098), .n19622(n19622), 
            .n19621(n19621), .n20099(n20099), .n18750(n18750), .n18751(n18751), 
            .n18755(n18755), .n18756(n18756), .n18758(n18758), .n18759(n18759), 
            .n20087(n20087), .n18794(n18794), .n18795(n18795), .n18796(n18796), 
            .n18797(n18797), .n18801(n18801), .n18802(n18802), .\SHAREDBUS_DAT_I[1] (SHAREDBUS_DAT_I[1]), 
            .\SHAREDBUS_DAT_I[2] (SHAREDBUS_DAT_I[2]), .\SHAREDBUS_DAT_I[3] (SHAREDBUS_DAT_I[3]), 
            .\SHAREDBUS_DAT_I[4] (SHAREDBUS_DAT_I[4]), .\SHAREDBUS_DAT_I[5] (SHAREDBUS_DAT_I[5]), 
            .\SHAREDBUS_DAT_I[6] (SHAREDBUS_DAT_I[6]), .\SHAREDBUS_DAT_I[7] (SHAREDBUS_DAT_I[7]), 
            .n18803(n18803), .n18804(n18804), .n18811(n18811), .n18812(n18812), 
            .n19598(n19598), .n20053(n20053), .n18813(n18813), .n18814(n18814), 
            .n20101(n20101), .n20145(n20145), .\ext_addr[2] (ext_addr[2]), 
            .\ext_addr[5] (ext_addr[5]), .n18818(n18818), .n18819(n18819), 
            .n13407(n13407), .n20061(n20061), .n20077(n20077), .n15(n15_c), 
            .n20055(n20055), .n20056(n20056), .n105(n80[7]), .\spi_cmd[8] (\spi_cmd[8] ), 
            .n96(n80[16]), .n94(n80[18]), .\spi_cmd[24] (\spi_cmd[24] ), 
            .n82(n82), .n18820(n18820), .n18821(n18821), .n18879(n18879), 
            .n18880(n18880), .n20088(n20088), .n20072(n20072), .n937(n937), 
            .n20090(n20090), .n973(n973), .\spi_blk1_ers[1] (\spi_blk1_ers[1] ), 
            .\ext_addr[6] (\ext_addr[6] ), .\spi_cmd_arb[31] (spi_cmd_arb[31]), 
            .n20071(n20071), .n20045(n20045), .n18881(n18881), .n18882(n18882), 
            .n20084(n20084), .\spi_cmd_arb[29] (spi_cmd_arb[29]), .n20093(n20093), 
            .n7955(n7955), .\spi_blk1_ers[6] (spi_blk1_ers[6]), .\spi_blk1_ers[4] (\spi_blk1_ers[4] ), 
            .n13317(n13317), .n20078(n20078), .n20097(n20097), .n18695(n18695), 
            .n5014(n5014), .n18889(n18889), .n18890(n18890), .n20086(n20086), 
            .n5(n5), .n18253(n18253), .n21076(n21076), .\selected[1] (selected[1]), 
            .n6(n6_adj_2225), .n18891(n18891), .n18892(n18892), .spi_ack(spi_ack), 
            .n20070(n20070), .n20085(n20085), .n18334(n18334), .n18346(n18346), 
            .n20041(n20041), .n20058(n20058), .\spi_blk1_ers[3] (spi_blk1_ers[3]), 
            .\spi_blk1_ers[2] (\spi_blk1_ers[2] ), .SPIFlashC_ACK_O(SPIFlashC_ACK_O), 
            .n21077(n21077), .n20091(n20091), .n20062(n20062), .n7030(n7030), 
            .\ext_addr[7] (ext_addr[7]), .n7029(n7029), .n20092(n20092), 
            .n7926(n7926), .n20089(n20089), .n19597(n19597), .\D_ADR_O_31__N_499[31] (D_ADR_O_31__N_499[31]), 
            .n18607(n18607), .n10(n10), .\page_ptr1[3] (page_ptr1[3]), 
            .n18292(n18292), .n18440(n18440), .n18603(n18603), .\page_ptr2[5] (page_ptr2[5]), 
            .\page_ptr2[7] (page_ptr2[7]), .\page_ptr3[2] (page_ptr3[2]), 
            .\page_ptr3[3] (page_ptr3[3]), .\page_ptr1[5] (page_ptr1[5]), 
            .\page_ptr3[5] (page_ptr3[5]), .\page_ptr1[4] (page_ptr1[4]), 
            .\page_ptr1[2] (page_ptr1[2]), .\page_ptr2[4] (page_ptr2[4]), 
            .n5718(n5718), .n18499(n18499), .n20057(n20057), .n166(n166), 
            .n20064(n20064), .n8011(n8011), .interalClock_enable_118(interalClock_enable_118), 
            .n3851(n3850[7]), .\spi_cmd_arb[24] (spi_cmd_arb[24]), .\spi_cmd_arb[25] (\spi_cmd_arb[25] ), 
            .\spi_cmd_arb[26] (\spi_cmd_arb[26] ), .\spi_cmd_arb[27] (spi_cmd_arb[27]), 
            .\spi_cmd_arb[28] (\spi_cmd_arb[28] ), .\spi_cmd_arb[30] (spi_cmd_arb[30]), 
            .\spi_blk2_ers[1] (\spi_blk2_ers[1] ), .\spi_blk2_ers[2] (\spi_blk2_ers[2] ), 
            .\spi_blk2_ers[3] (spi_blk2_ers[3]), .\spi_blk2_ers[4] (\spi_blk2_ers[4] ), 
            .\spi_blk2_ers[6] (spi_blk2_ers[6]), .\spi_chip_ers[1] (\spi_chip_ers[1] ), 
            .\spi_chip_ers[2] (\spi_chip_ers[2] ), .\spi_chip_ers[3] (spi_chip_ers[3]), 
            .\spi_chip_ers[4] (\spi_chip_ers[4] ), .\spi_chip_ers[6] (spi_chip_ers[6]), 
            .\spi_wrt_enb[1] (\spi_wrt_enb[1] ), .\spi_wrt_enb[2] (\spi_wrt_enb[2] ), 
            .\spi_wrt_enb[3] (spi_wrt_enb[3]), .\spi_wrt_enb[4] (\spi_wrt_enb[4] ), 
            .\spi_wrt_enb[6] (spi_wrt_enb[6]), .\spi_wrt_disb[1] (\spi_wrt_disb[1] ), 
            .\spi_wrt_disb[2] (\spi_wrt_disb[2] ), .\spi_wrt_disb[3] (spi_wrt_disb[3]), 
            .\spi_wrt_disb[4] (\spi_wrt_disb[4] ), .\spi_wrt_disb[6] (spi_wrt_disb[6]), 
            .\spi_pwd_down[1] (spi_pwd_down[1]), .\spi_pwd_down[3] (spi_pwd_down[3]), 
            .\spi_pwd_down[4] (spi_pwd_down[4]), .\spi_pwd_down[5] (spi_pwd_down[5]), 
            .\spi_pwd_down[6] (\spi_pwd_down[6] ), .n2395(n2389[2]), .n13174(n13174), 
            .n3853(n3850[5]), .n18697(n18697), .n20173(n20173), .n46(n46_adj_2217), 
            .n4818(n4818), .n20095(n20095), .n20079(n20079), .n3854(n3850[4]), 
            .n20081(n20081), .n20043(n20043), .n2394(n2389[3]), .n2390(n2389[7]), 
            .n20096(n20096), .n992(n992), .n20080(n20080), .n20094(n20094), 
            .n20047(n20047), .n18296(n18296), .n12698(n12698), .n3855(n3850[3]), 
            .n12638(n12638), .n3856(n3850[2]), .n11752(n11752), .n3857(n3850[1]), 
            .n11753(n11753), .n12609(n12609), .n12610(n12610), .n12623(n12623), 
            .n12624(n12624), .n11492(n11492), .n56(n42[18]), .n58(n42[16]), 
            .n12637(n12637), .n12653(n12653), .n20137(n20137), .n19529(n19529), 
            .n19528(n19528), .n19530(n19530), .n12697(n12697), .n20067(n20067), 
            .n20065(n20065), .n19272(n19272), .n12652(n12652), .n4194(n4194), 
            .n12702(n12702), .n4195(n4195), .n12679(n12679), .n12678(n12678), 
            .n20337(n20337), .n20293(n20293), .n20309(n20309), .n20343(n20343), 
            .n4189(n4189), .n4191(n4191), .n4192(n4192), .n4193(n4193), 
            .n19271(n19271), .n18861(n18861), .n18856(n18856), .n4(n4_adj_2224), 
            .n20075(n20075), .n4_adj_15(n4), .n18855(n18855), .n18862(n18862), 
            .n18850(n18850), .n18849(n18849), .n18844(n18844), .n18843(n18843), 
            .n18835(n18835), .n18834(n18834), .n18868(n18868), .n18867(n18867), 
            .n29(n29), .n18558(n18558), .n20083(n20083), .n19363(n19363), 
            .n9(n9), .n8(n8), .n19358(n19358), .n3192(n3184[24]), .n18851(n18851), 
            .n18854(n18854), .n3011(n3011), .n5323(n5323), .n4422(n4422), 
            .n18853(n18853), .n5073(n5073), .n20082(n20082), .n4_adj_16(n4_adj_2220), 
            .n13214(n13214), .n18864(n18864), .n18857(n18857), .n18833(n18833), 
            .n20059(n20059), .n18875(n18875), .n18869(n18869), .n3017(n3017), 
            .n18845(n18845), .n18848(n18848), .n18852(n18852), .n18847(n18847), 
            .n18846(n18846), .n18841(n18841), .n18840(n18840), .\ext_addr[1] (ext_addr[1]), 
            .\ext_addr[0] (ext_addr[0]), .n20163(n20163), .n14(n14_adj_2212), 
            .n39(n39), .n20102(n20102), .n16(n16_c), .n17(n17_adj_2219), 
            .n18980(n18980), .n18874(n18874), .n17_adj_17(n17), .n18(n18), 
            .n18575(n18575), .n18873(n18873), .n19(n19_adj_2214), .n20069(n20069), 
            .n18865(n18865), .n20(n20_adj_2215), .n18832(n18832), .n18356(n18356), 
            .n18831(n18831), .n21(n21_c), .n19305(n19305), .\SHAREDBUS_ADR_I[9] (SHAREDBUS_ADR_I[9]), 
            .\SHAREDBUS_ADR_I[10] (SHAREDBUS_ADR_I[10]), .n20176(n20176), 
            .\SHAREDBUS_ADR_I[23] (SHAREDBUS_ADR_I[23]), .\SHAREDBUS_ADR_I[22] (SHAREDBUS_ADR_I[22]), 
            .\SHAREDBUS_ADR_I[21] (SHAREDBUS_ADR_I[21]), .n5596(n5596), 
            .\SHAREDBUS_ADR_I[20] (SHAREDBUS_ADR_I[20]), .\SHAREDBUS_ADR_I[19] (SHAREDBUS_ADR_I[19]), 
            .\SHAREDBUS_ADR_I[17] (SHAREDBUS_ADR_I[17]), .n4165(n4165), 
            .\SHAREDBUS_ADR_I[15] (SHAREDBUS_ADR_I[15]), .n4167(n4167), 
            .n46_adj_18(n46), .\SHAREDBUS_ADR_I[12] (SHAREDBUS_ADR_I[12]), 
            .\SHAREDBUS_ADR_I[11] (SHAREDBUS_ADR_I[11]), .n5616(n5616), 
            .\SHAREDBUS_ADR_I[14] (SHAREDBUS_ADR_I[14]), .\SHAREDBUS_ADR_I[13] (SHAREDBUS_ADR_I[13]), 
            .n4166(n4166), .n11755(n11755), .n8015(n8015), .n5207(n5207), 
            .n12402(n12402), .n4163(n4163), .n4164(n4164), .n19478(n19478), 
            .n4_adj_19(n4_adj_2221), .n18491(n18491), .n20177(n20177), 
            .n24(n24), .n19463(n19463), .n19458(n19458), .n20019(n20019), 
            .n3860(n3859[7]), .n20076(n20076), .n18_adj_20(n18_adj_2218), 
            .n12547(n12547), .n3953(n3950[5]), .n12523(n12523), .n3954(n3950[4]), 
            .n12495(n12495), .n3955(n3950[3]), .n3865(n3859[2]), .n12442(n12442), 
            .n3957(n3950[1]), .n20049(n20049), .n68(n68_adj_2223), .n20074(n20074), 
            .n68_adj_21(n68), .n18332(n18332), .n18333(n18333), .\page_ptr2[3] (page_ptr2[3]), 
            .\page_ptr2[6] (page_ptr2[6]), .n18383(n18383), .n68_adj_22(n68_adj_2222), 
            .n6_adj_23(n6), .n18233(n18233), .n6985(n6985), .ctrl_spi_cmd_31__N_1298(ctrl_spi_cmd_31__N_1298), 
            .n12(n12_c), .n21_adj_24(n21_adj_2216), .n7054(n7054), .ctrl_spi_cmd_31__N_1299(ctrl_spi_cmd_31__N_1299), 
            .ctrl_spi_cmd_31__N_1300(ctrl_spi_cmd_31__N_1300), .ctrl_spi_cmd_31__N_1301(ctrl_spi_cmd_31__N_1301), 
            .ctrl_spi_cmd_31__N_1302(ctrl_spi_cmd_31__N_1302), .ctrl_spi_cmd_31__N_1303(ctrl_spi_cmd_31__N_1303), 
            .ctrl_spi_cmd_31__N_1304(ctrl_spi_cmd_31__N_1304), .ctrl_spi_cmd_31__N_1305(ctrl_spi_cmd_31__N_1305), 
            .n18784(n18784), .int_cmd_dword_31__N_1881(int_cmd_dword_31__N_1881), 
            .clk_div_enable_19(clk_div_enable_19), .dword_wr_31__N_1809(dword_wr_31__N_1809), 
            .SPIFlashSO_c(SPIFlashSO_c), .n3906(n3906), .\int_cmd_dword[20] (\int_cmd_dword[20] ), 
            .SPIFlashSI_c(SPIFlashSI_c), .SI_N_2079(SI_N_2079), .SI_N_2077(SI_N_2077), 
            .n502(n502), .\counter[2] (\counter[2] ), .n20128(n20128), 
            .SPIFlashCEJ_c(SPIFlashCEJ_c), .n21075(n21075), .n20168(n20168), 
            .\int_cmd_dword[1] (\int_cmd_dword[1] ), .\int_cmd_dword[21] (\int_cmd_dword[21] ), 
            .n15_adj_25(n15_adj_41), .n12_adj_26(n12), .n15_adj_27(n15_adj_42), 
            .n12_adj_28(n12_adj_43), .n16_adj_29(n16), .n8_adj_30(n8_adj_44), 
            .\int_cmd_dword_31__N_1849[20] (\int_cmd_dword_31__N_1849[20] ), 
            .\int_cmd_dword[22] (\int_cmd_dword[22] ), .\int_cmd_dword_31__N_1817[9] (\int_cmd_dword_31__N_1817[9] ), 
            .n11669(n11669), .n11687(n11687), .n11678(n11678), .\int_cmd_dword_31__N_1817[17] (\int_cmd_dword_31__N_1817[17] ), 
            .\int_cmd_dword_31__N_1817[1] (\int_cmd_dword_31__N_1817[1] ), 
            .n17075(n17075), .\cmd_dword_31__N_2020[29] (\cmd_dword_31__N_2020[29] ), 
            .\cmd_dword_31__N_2020[27] (\cmd_dword_31__N_2020[27] ), .SPIFlashSCK_c(SPIFlashSCK_c), 
            .\cmd_dword_31__N_2020[26] (\cmd_dword_31__N_2020[26] ), .\int_cmd_dword[9] (\int_cmd_dword[9] ), 
            .n13(n13), .\int_cmd_dword[17] (\int_cmd_dword[17] ), .n20197(n20197)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(635[2] 667[34])
    lm8_renamed_due_excessive_length_1 LM8 (.n20103(n20103), .ext_wb_state(ext_wb_state), 
            .n18980(n18980), .\selected[1] (selected[1]), .n20053(n20053), 
            .interalClock(interalClock), .\SHAREDBUS_DAT_O[0] (SHAREDBUS_DAT_O[0]), 
            .VCC_net(VCC_net), .LM8D_DAT_O({LM8D_DAT_O}), .\ext_addr[7] (ext_addr[7]), 
            .\ext_addr[6] (\ext_addr[6] ), .\ext_addr[5] (ext_addr[5]), 
            .\ext_addr[4] (\ext_addr[4] ), .\ext_addr[3] (\ext_addr[3] ), 
            .\ext_addr[2] (ext_addr[2]), .\ext_addr[1] (ext_addr[1]), .\ext_addr[0] (ext_addr[0]), 
            .n21083(n21083), .n20089(n20089), .n20054(n20054), .\SHAREDBUS_DAT_O[1] (SHAREDBUS_DAT_O[1]), 
            .\save_data[2] (\save_data[2] ), .\SHAREDBUS_DAT_O[2] (\SHAREDBUS_DAT_O[2] ), 
            .\SHAREDBUS_DAT_O[3] (SHAREDBUS_DAT_O[3]), .\SHAREDBUS_DAT_O[4] (SHAREDBUS_DAT_O[4]), 
            .\save_data[5] (\save_data[5] ), .\SHAREDBUS_DAT_O[5] (\SHAREDBUS_DAT_O[5] ), 
            .\SHAREDBUS_DAT_O[6] (SHAREDBUS_DAT_O[6]), .n20112(n20112), 
            .ext_io_wr(ext_io_wr), .ext_mem_wr(ext_mem_wr), .n21076(n21076), 
            .n20163(n20163), .n20091(n20091), .n20050(n20050), .n20093(n20093), 
            .n18360(n18360), .n18370(n18370), .n8(n8_c), .n20203(n20203), 
            .n20095(n20095), .n20173(n20173), .n20097(n20097), .n20098(n20098), 
            .n20099(n20099), .n18292(n18292), .\SPIFlashS_DAT_O[7] (SPIFlashS_DAT_O[7]), 
            .n15(n15_c), .\SPIFlashC_DAT_O[7] (SPIFlashC_DAT_O[7]), .n10456(n10456), 
            .n882(n882), .n15_adj_1(n15_adj_45), .rcsr(rcsr), .n19917(n19917), 
            .n20102(n20102), .n20101(n20101), .\D_ADR_O_31__N_499[31] (D_ADR_O_31__N_499[31]), 
            .\SHAREDBUS_ADR_I[31] (SHAREDBUS_ADR_I[31]), .n20087(n20087), 
            .n14(n14), .n10(n10), .n13341(n13341), .n20096(n20096), 
            .n20090(n20090), .n20088(n20088), .n20100(n20100), .n20145(n20145), 
            .n13214(n13214), .page_ptr3({page_ptr3}), .page_ptr1({page_ptr1}), 
            .n23(n23), .n7(n7), .\din_rd[5] (\din_rd[5] ), .\din_rd[2] (\din_rd[2] ), 
            .page_ptr2({page_ptr2}), .\din_rd1[1] (\din_rd1[1] ), .\din_rd1[2] (\din_rd1[2] ), 
            .\din_rd1[5] (\din_rd1[5] ), .n5718(n5718), .n58(n42[16]), 
            .\SHAREDBUS_ADR_I[16] (SHAREDBUS_ADR_I[16]), .n20062(n20062), 
            .n96(n80[16]), .n56(n42[18]), .\SHAREDBUS_ADR_I[18] (SHAREDBUS_ADR_I[18]), 
            .n94(n80[18]), .n21(n21), .n3(n3), .n1(n1), .n20201(n20201), 
            .n18499(n18499), .\im[1] (\im[1] ), .\im[2] (\im[2] ), .\im[5] (\im[5] ), 
            .n7029(n7029), .n7030(n7030)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(523[2] 551[36])
    \gpio(GPIO_WB_DAT_WIDTH=8,DATA_WIDTH=32'b010,INPUT_WIDTH=32'b01,OUTPUT_WIDTH=32'b01,EDGE=1,POSE_EDGE_IRQ=1,INPUT_PORTS_ONLY=0,OUTPUT_PORTS_ONLY=1)  LEDGPIO_DAT_O_7__I_0 (.LEDGPIO_ACK_O(LEDGPIO_ACK_O), 
            .interalClock(interalClock), .PIO_OUT_1__N_989(PIO_OUT_1__N_989), 
            .LEDPIO_OUT_c_1(LEDPIO_OUT_c_1), .PIO_OUT_1__N_987(PIO_OUT_1__N_987), 
            .\SHAREDBUS_DAT_I[1] (SHAREDBUS_DAT_I[1]), .LEDPIO_OUT_c_0(LEDPIO_OUT_c_0), 
            .\SHAREDBUS_DAT_I[0] (SHAREDBUS_DAT_I[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(576[2] 592[34])
    
endmodule
//
// Verilog Description of module \arbiter2(MAX_DAT_WIDTH=8,WBS_DAT_WIDTH=8,WBM0_DAT_WIDTH=8,WBM1_DAT_WIDTH=8) 
//

module \arbiter2(MAX_DAT_WIDTH=8,WBS_DAT_WIDTH=8,WBM0_DAT_WIDTH=8,WBM1_DAT_WIDTH=8)  (n18831, 
            n18832, n20100, n18833, n18834, n18835, n20073, n12702, 
            n4167, n18840, n18841, n18843, n18844, n18845, n18846, 
            n18847, n18848, n18849, n18850, n18851, n18852, n18853, 
            n18854, n18855, n18856, n18857, \selected[1] , interalClock, 
            n18861, n18862, n18864, n18865, n18867, n18868, n18869, 
            n4194, n4165, n18873, n18874, n18875, n12652, n12653, 
            n12697, n12698, \ext_addr[2] , n20101, spi_byte_prg, ctrl_spi_cmd_31__N_1305, 
            n19356, LM8D_DAT_O, \SHAREDBUS_DAT_I[2] , \SHAREDBUS_DAT_I[3] , 
            \SHAREDBUS_DAT_I[4] , \SHAREDBUS_DAT_I[5] , \SHAREDBUS_DAT_I[6] , 
            \SHAREDBUS_DAT_I[7] , \ext_addr[4] , n6985, n12609, n12610, 
            n12623, n12624, n12637, n12638, ctrl_spi_cmd_31__N_1299, 
            n19361, n20112, ext_wb_state, n20103, n20092, page_ptr1, 
            n20102, \SHAREDBUS_ADR_I[9] , n20075, n20165, n20064, 
            n7029, \ext_addr[7] , n20072, n20074, n19573, page_ptr2, 
            \SHAREDBUS_ADR_I[18] , \SHAREDBUS_ADR_I[13] , \SHAREDBUS_ADR_I[15] , 
            \SHAREDBUS_ADR_I[12] , \SHAREDBUS_ADR_I[17] , \SHAREDBUS_ADR_I[19] , 
            \SHAREDBUS_ADR_I[20] , \SHAREDBUS_ADR_I[21] , \SHAREDBUS_ADR_I[22] , 
            \SHAREDBUS_ADR_I[11] , \SHAREDBUS_ADR_I[23] , \SHAREDBUS_ADR_I[10] , 
            \ext_addr[6] , \spi_cmd_arb[27] , \spi_chip_ers[3] , \SHAREDBUS_ADR_I[14] , 
            \SHAREDBUS_ADR_I[16] , \spi_wrt_disb[3] , \spi_blk2_ers[3] , 
            \spi_wrt_enb[3] , \spi_blk1_ers[3] , n18503, n14, \SHAREDBUS_ADR_I[31] , 
            n10456, n20090, n20058, n4422, n13174, n20047, n2390, 
            n2394, n7054, n2395, \spi_pwd_down[1] , \spi_read_stat[1] , 
            n20061, n3957, \spi_pwd_down[3] , \spi_read_stat[3] , n3955, 
            \spi_pwd_down[4] , \spi_read_stat[4] , n3954, \spi_pwd_down[5] , 
            \spi_read_stat[5] , n3953, \spi_wrt_disb[0] , \spi_blk2_ers[0] , 
            n19528, length_arb, n20019, \ext_addr[5] , n5014, n21076, 
            ctr_state, \ext_addr[0] , n20067, n20065, n18980, n20041, 
            n5, n937, n20069, spi_page_prg, n21, ctrl_spi_cmd_31__N_1298, 
            n14_adj_31, n20070, n15, ctrl_spi_cmd_31__N_1300, n16, 
            ctrl_spi_cmd_31__N_1303, n19, ctrl_spi_cmd_31__N_1304, n20, 
            n46, PIO_OUT_1__N_989, PIO_OUT_1__N_987, ctrl_spi_cmd_31__N_1301, 
            n17, ctrl_spi_cmd_31__N_1302, n18, n20163, n21_adj_32, 
            n13317, n46_adj_33, n18233, n18253, interalClock_enable_118, 
            \spi_wrt_disb[6] , \spi_blk2_ers[6] , n19514, n973, n20098, 
            n12, n20054, n19917, n18491, n20077, n18460, n18603, 
            n18607, n18292, \ext_addr[1] , spi_cmd_ext, n18758, n18759, 
            \ext_addr[3] , spi_pwd_up, spi_wrt_stat, n3860, n12523, 
            n12547, \SHAREDBUS_DAT_I[0] , n12442, \page_ptr3[0] , n18143, 
            n12572, n3867, n12495, n5073, n18365, n5338, n15_adj_34, 
            n3865, \SHAREDBUS_DAT_I[1] , n3853, n20095, n20089, n29, 
            bytes_arb, n5616, n3856, ctrl_port_cmd, n18749, n19478, 
            n18814, n18826, n18825, n19463, n18_adj_35, n3855, n18750, 
            n18812, n3851, \spi_cmd_arb[26] , n18818, n19458, n5323, 
            n17_adj_36, n992, n13341, n20045, n18751, n19530, n3192, 
            n3857, \spi_wrt_enb[6] , \spi_blk1_ers[6] , n7955, n20043, 
            n19597, n19598, n3854, n18783, n18782, n18784, n19516, 
            n9, n5207, n24, n20093, n20062, n11492, n105, n18748, 
            n18881, n20094, n18891, n20177, n19622, n18819, \spi_cmd_arb[24] , 
            n18889, n18890, n20176, n39, SPIFlashC_ACK_O, n20057, 
            n18892, n5596, n18880, n18821, n20173, n20076, n18820, 
            n18813, n20086, n18882, n4, \spi_cmd_arb[25] , n18755, 
            n18575, n18756, \spi_cmd_arb[28] , n18794, n18795, n18796, 
            n18797, LEDGPIO_ACK_O, SPIFlashS_ACK_O, \spi_cmd_arb[29] , 
            n18801, n18558, n13407, n19621, n18802, n18803, n18334, 
            n7926, n20059, n20071, n18804, n20085, \spi_cmd_arb[30] , 
            n18811, n18356, n4_adj_37, \spi_cmd_arb[31] , n18879, 
            \spi_chip_ers[6] , n19515, n8011, n20083, n20078, \SPIFlashC_DAT_O[2] , 
            n68, \SPIFlashC_DAT_O[0] , n68_adj_38, \SPIFlashC_DAT_O[1] , 
            n18333, \SPIFlashC_DAT_O[3] , n18332, \SPIFlashC_DAT_O[7] , 
            n68_adj_39, n4_adj_40, n20081, n20080, n20082, n20079, 
            n6, n4818, n8015, n20084, n19305, n18296, \spi_chip_ers[0] , 
            n19529, n4193, n4164, n4192, n4163, n4191, n12402, 
            n20309, n19272, n19271, \spi_wrt_enb[0] , \spi_blk1_ers[0] ) /* synthesis syn_module_defined=1 */ ;
    input n18831;
    input n18832;
    input n20100;
    output n18833;
    input n18834;
    input n18835;
    output n20073;
    input n12702;
    input n4167;
    input n18840;
    input n18841;
    input n18843;
    input n18844;
    output n18845;
    input n18846;
    input n18847;
    output n18848;
    input n18849;
    input n18850;
    output n18851;
    input n18852;
    input n18853;
    output n18854;
    input n18855;
    input n18856;
    output n18857;
    output \selected[1] ;
    input interalClock;
    input n18861;
    input n18862;
    input n18864;
    input n18865;
    input n18867;
    input n18868;
    output n18869;
    input n4194;
    input n4165;
    input n18873;
    input n18874;
    output n18875;
    input n12652;
    input n12653;
    input n12697;
    input n12698;
    input \ext_addr[2] ;
    input n20101;
    input [7:0]spi_byte_prg;
    input ctrl_spi_cmd_31__N_1305;
    output n19356;
    input [7:0]LM8D_DAT_O;
    output \SHAREDBUS_DAT_I[2] ;
    output \SHAREDBUS_DAT_I[3] ;
    output \SHAREDBUS_DAT_I[4] ;
    output \SHAREDBUS_DAT_I[5] ;
    output \SHAREDBUS_DAT_I[6] ;
    output \SHAREDBUS_DAT_I[7] ;
    input \ext_addr[4] ;
    output n6985;
    input n12609;
    input n12610;
    input n12623;
    input n12624;
    input n12637;
    input n12638;
    input ctrl_spi_cmd_31__N_1299;
    output n19361;
    input n20112;
    input ext_wb_state;
    input n20103;
    output n20092;
    input [7:0]page_ptr1;
    input n20102;
    output \SHAREDBUS_ADR_I[9] ;
    output n20075;
    input n20165;
    output n20064;
    input n7029;
    input \ext_addr[7] ;
    output n20072;
    output n20074;
    input n19573;
    input [7:0]page_ptr2;
    output \SHAREDBUS_ADR_I[18] ;
    output \SHAREDBUS_ADR_I[13] ;
    output \SHAREDBUS_ADR_I[15] ;
    output \SHAREDBUS_ADR_I[12] ;
    output \SHAREDBUS_ADR_I[17] ;
    output \SHAREDBUS_ADR_I[19] ;
    output \SHAREDBUS_ADR_I[20] ;
    output \SHAREDBUS_ADR_I[21] ;
    output \SHAREDBUS_ADR_I[22] ;
    output \SHAREDBUS_ADR_I[11] ;
    output \SHAREDBUS_ADR_I[23] ;
    output \SHAREDBUS_ADR_I[10] ;
    input \ext_addr[6] ;
    input \spi_cmd_arb[27] ;
    input \spi_chip_ers[3] ;
    output \SHAREDBUS_ADR_I[14] ;
    output \SHAREDBUS_ADR_I[16] ;
    input \spi_wrt_disb[3] ;
    input \spi_blk2_ers[3] ;
    input \spi_wrt_enb[3] ;
    input \spi_blk1_ers[3] ;
    input n18503;
    input n14;
    input \SHAREDBUS_ADR_I[31] ;
    output n10456;
    input n20090;
    output n20058;
    input n4422;
    output n13174;
    output n20047;
    output n2390;
    output n2394;
    input n7054;
    output n2395;
    input \spi_pwd_down[1] ;
    input \spi_read_stat[1] ;
    input n20061;
    output n3957;
    input \spi_pwd_down[3] ;
    input \spi_read_stat[3] ;
    output n3955;
    input \spi_pwd_down[4] ;
    input \spi_read_stat[4] ;
    output n3954;
    input \spi_pwd_down[5] ;
    input \spi_read_stat[5] ;
    output n3953;
    input \spi_wrt_disb[0] ;
    input \spi_blk2_ers[0] ;
    output n19528;
    input [2:0]length_arb;
    output n20019;
    input \ext_addr[5] ;
    output n5014;
    input n21076;
    input ctr_state;
    input \ext_addr[0] ;
    output n20067;
    output n20065;
    input n18980;
    output n20041;
    output n5;
    input n937;
    output n20069;
    input [7:0]spi_page_prg;
    output n21;
    input ctrl_spi_cmd_31__N_1298;
    output n14_adj_31;
    output n20070;
    output n15;
    input ctrl_spi_cmd_31__N_1300;
    output n16;
    input ctrl_spi_cmd_31__N_1303;
    output n19;
    input ctrl_spi_cmd_31__N_1304;
    output n20;
    input n46;
    output PIO_OUT_1__N_989;
    output PIO_OUT_1__N_987;
    input ctrl_spi_cmd_31__N_1301;
    output n17;
    input ctrl_spi_cmd_31__N_1302;
    output n18;
    input n20163;
    output n21_adj_32;
    input n13317;
    output n46_adj_33;
    input n18233;
    output n18253;
    output interalClock_enable_118;
    input \spi_wrt_disb[6] ;
    input \spi_blk2_ers[6] ;
    output n19514;
    input n973;
    input n20098;
    output n12;
    input n20054;
    output n19917;
    input n18491;
    output n20077;
    input n18460;
    input n18603;
    output n18607;
    input n18292;
    input \ext_addr[1] ;
    input [31:0]spi_cmd_ext;
    output n18758;
    output n18759;
    input \ext_addr[3] ;
    input [7:0]spi_pwd_up;
    input [7:0]spi_wrt_stat;
    output n3860;
    output n12523;
    output n12547;
    output \SHAREDBUS_DAT_I[0] ;
    output n12442;
    input \page_ptr3[0] ;
    input n18143;
    output n12572;
    output n3867;
    output n12495;
    output n5073;
    input n18365;
    input n5338;
    output n15_adj_34;
    output n3865;
    output \SHAREDBUS_DAT_I[1] ;
    output n3853;
    input n20095;
    input n20089;
    output n29;
    input [3:0]bytes_arb;
    output n5616;
    output n3856;
    input [23:0]ctrl_port_cmd;
    output n18749;
    output n19478;
    output n18814;
    input n18826;
    input n18825;
    output n19463;
    output n18_adj_35;
    output n3855;
    output n18750;
    output n18812;
    output n3851;
    input \spi_cmd_arb[26] ;
    output n18818;
    output n19458;
    output n5323;
    output n17_adj_36;
    input n992;
    input n13341;
    output n20045;
    output n18751;
    input n19530;
    output n3192;
    output n3857;
    input \spi_wrt_enb[6] ;
    input \spi_blk1_ers[6] ;
    input n7955;
    output n20043;
    input n19597;
    output n19598;
    output n3854;
    input n18783;
    input n18782;
    output n18784;
    input n19516;
    output n9;
    output n5207;
    output n24;
    input n20093;
    output n20062;
    input n11492;
    output n105;
    output n18748;
    output n18881;
    output n20094;
    output n18891;
    input n20177;
    output n19622;
    output n18819;
    input \spi_cmd_arb[24] ;
    output n18889;
    output n18890;
    input n20176;
    input n39;
    input SPIFlashC_ACK_O;
    output n20057;
    output n18892;
    output n5596;
    output n18880;
    output n18821;
    input n20173;
    output n20076;
    output n18820;
    output n18813;
    output n20086;
    output n18882;
    output n4;
    input \spi_cmd_arb[25] ;
    output n18755;
    output n18575;
    output n18756;
    input \spi_cmd_arb[28] ;
    output n18794;
    output n18795;
    output n18796;
    output n18797;
    input LEDGPIO_ACK_O;
    input SPIFlashS_ACK_O;
    input \spi_cmd_arb[29] ;
    output n18801;
    output n18558;
    output n13407;
    output n19621;
    output n18802;
    output n18803;
    output n18334;
    input n7926;
    output n20059;
    output n20071;
    output n18804;
    output n20085;
    input \spi_cmd_arb[30] ;
    output n18811;
    output n18356;
    output n4_adj_37;
    input \spi_cmd_arb[31] ;
    output n18879;
    input \spi_chip_ers[6] ;
    output n19515;
    output n8011;
    output n20083;
    output n20078;
    input \SPIFlashC_DAT_O[2] ;
    output n68;
    input \SPIFlashC_DAT_O[0] ;
    output n68_adj_38;
    input \SPIFlashC_DAT_O[1] ;
    output n18333;
    input \SPIFlashC_DAT_O[3] ;
    output n18332;
    input \SPIFlashC_DAT_O[7] ;
    output n68_adj_39;
    output n4_adj_40;
    output n20081;
    output n20080;
    output n20082;
    output n20079;
    output n6;
    output n4818;
    output n8015;
    output n20084;
    output n19305;
    output n18296;
    input \spi_chip_ers[0] ;
    output n19529;
    input n4193;
    input n4164;
    input n4192;
    input n4163;
    input n4191;
    input n12402;
    output n20309;
    input n19272;
    input n19271;
    input \spi_wrt_enb[0] ;
    input \spi_blk1_ers[0] ;
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    
    wire n18836, n18838, n18842, n17292, n18863, n18866, n18871, 
        n18870, n18837, n6218, n18773, n18767, n18764, n19574, 
        n20305, n20304, n20306, n20307, n20308, n18839, n9_c, 
        n18769, n10, n18775, n20199, n16893, n3, n18765;
    wire [31:0]n3045;
    
    wire n19273, n18768, n18774;
    
    PFUMX i16062 (.BLUT(n18831), .ALUT(n18832), .C0(n20100), .Z(n18833));
    PFUMX i16065 (.BLUT(n18834), .ALUT(n18835), .C0(n20073), .Z(n18836));
    PFUMX i16067 (.BLUT(n12702), .ALUT(n4167), .C0(n20073), .Z(n18838));
    PFUMX i16071 (.BLUT(n18840), .ALUT(n18841), .C0(n20100), .Z(n18842));
    PFUMX i16074 (.BLUT(n18843), .ALUT(n18844), .C0(n20073), .Z(n18845));
    PFUMX i16077 (.BLUT(n18846), .ALUT(n18847), .C0(n20100), .Z(n18848));
    PFUMX i16080 (.BLUT(n18849), .ALUT(n18850), .C0(n20073), .Z(n18851));
    PFUMX i16083 (.BLUT(n18852), .ALUT(n18853), .C0(n20100), .Z(n18854));
    PFUMX i16086 (.BLUT(n18855), .ALUT(n18856), .C0(n20073), .Z(n18857));
    FD1S3AX selected_i1 (.D(n17292), .CK(interalClock), .Q(\selected[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=1, LSE_RCOL=20, LSE_LLINE=437, LSE_RLINE=478 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam selected_i1.GSR = "ENABLED";
    PFUMX i16092 (.BLUT(n18861), .ALUT(n18862), .C0(n20073), .Z(n18863));
    PFUMX i16095 (.BLUT(n18864), .ALUT(n18865), .C0(n20100), .Z(n18866));
    PFUMX i16098 (.BLUT(n18867), .ALUT(n18868), .C0(n20073), .Z(n18869));
    PFUMX i16100 (.BLUT(n4194), .ALUT(n4165), .C0(n20073), .Z(n18871));
    PFUMX i16104 (.BLUT(n18873), .ALUT(n18874), .C0(n20100), .Z(n18875));
    PFUMX i16099 (.BLUT(n12652), .ALUT(n12653), .C0(n20073), .Z(n18870));
    PFUMX i16066 (.BLUT(n12697), .ALUT(n12698), .C0(n20073), .Z(n18837));
    LUT4 n3017_bdd_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(spi_byte_prg[0]), 
         .D(ctrl_spi_cmd_31__N_1305), .Z(n19356)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam n3017_bdd_3_lut_4_lut.init = 16'hf870;
    LUT4 i10125_2_lut (.A(LM8D_DAT_O[2]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[2] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i10125_2_lut.init = 16'h8888;
    LUT4 i10124_2_lut (.A(LM8D_DAT_O[3]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[3] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i10124_2_lut.init = 16'h8888;
    LUT4 i10123_2_lut (.A(LM8D_DAT_O[4]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[4] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i10123_2_lut.init = 16'h8888;
    LUT4 i10122_2_lut (.A(LM8D_DAT_O[5]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[5] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i10122_2_lut.init = 16'h8888;
    LUT4 i10121_2_lut (.A(LM8D_DAT_O[6]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[6] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i10121_2_lut.init = 16'h8888;
    LUT4 i10120_2_lut (.A(LM8D_DAT_O[7]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[7] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i10120_2_lut.init = 16'h8888;
    LUT4 i4267_3_lut_4_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n6218), 
         .D(\ext_addr[4] ), .Z(n6985)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i4267_3_lut_4_lut_4_lut.init = 16'h4c08;
    PFUMX i16002 (.BLUT(n12609), .ALUT(n12610), .C0(n20073), .Z(n18773));
    PFUMX i15996 (.BLUT(n12623), .ALUT(n12624), .C0(n20073), .Z(n18767));
    PFUMX i15993 (.BLUT(n12637), .ALUT(n12638), .C0(n20073), .Z(n18764));
    LUT4 n3011_bdd_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(spi_byte_prg[6]), 
         .D(ctrl_spi_cmd_31__N_1299), .Z(n19361)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam n3011_bdd_3_lut_4_lut.init = 16'hf870;
    LUT4 i16445_2_lut_rep_233_3_lut_4_lut_4_lut (.A(n20112), .B(\selected[1] ), 
         .C(ext_wb_state), .D(n20103), .Z(n20092)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16445_2_lut_rep_233_3_lut_4_lut_4_lut.init = 16'h4440;
    LUT4 i10323_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr1[1]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[9] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10323_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i10322_2_lut_rep_216_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr1[0]), 
         .C(\selected[1] ), .D(n20102), .Z(n20075)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10322_2_lut_rep_216_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 C_ADR_I_10__I_0_647_i5_2_lut_rep_205_3_lut_3_lut_4_lut_4_lut (.A(n20112), 
         .B(page_ptr1[0]), .C(n20165), .D(n20101), .Z(n20064)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam C_ADR_I_10__I_0_647_i5_2_lut_rep_205_3_lut_3_lut_4_lut_4_lut.init = 16'hfbff;
    LUT4 i1_3_lut_rep_213_4_lut_4_lut_4_lut (.A(n20112), .B(n7029), .C(\ext_addr[7] ), 
         .D(n20101), .Z(n20072)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_3_lut_rep_213_4_lut_4_lut_4_lut.init = 16'hf400;
    LUT4 i10385_2_lut_rep_215_3_lut_4_lut_4_lut (.A(n20112), .B(n20165), 
         .C(\selected[1] ), .D(n20102), .Z(n20074)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10385_2_lut_rep_215_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 pwr_bdd_2_lut_16741_3_lut_4_lut_4_lut (.A(n20112), .B(n19573), 
         .C(\selected[1] ), .D(n20102), .Z(n19574)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam pwr_bdd_2_lut_16741_3_lut_4_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr2[2]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[18] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i10326_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr1[5]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[13] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10326_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i10328_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr1[7]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[15] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10328_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i10325_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr1[4]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[12] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10325_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_254 (.A(n20112), .B(page_ptr2[1]), 
         .C(\selected[1] ), .D(n20102), .Z(\SHAREDBUS_ADR_I[17] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_254.init = 16'h4000;
    LUT4 i10329_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr2[3]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[19] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10329_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_255 (.A(n20112), .B(page_ptr2[4]), 
         .C(\selected[1] ), .D(n20102), .Z(\SHAREDBUS_ADR_I[20] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_255.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_256 (.A(n20112), .B(page_ptr2[5]), 
         .C(\selected[1] ), .D(n20102), .Z(\SHAREDBUS_ADR_I[21] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_256.init = 16'h4000;
    LUT4 i10330_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr2[6]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[22] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10330_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_257 (.A(n20112), .B(page_ptr1[3]), 
         .C(\selected[1] ), .D(n20102), .Z(\SHAREDBUS_ADR_I[11] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_257.init = 16'h4000;
    LUT4 i10331_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr2[7]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[23] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10331_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i10324_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr1[2]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[10] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10324_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 ext_addr_4__bdd_3_lut_17065 (.A(\ext_addr[6] ), .B(\spi_cmd_arb[27] ), 
         .C(\spi_chip_ers[3] ), .Z(n20305)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17065.init = 16'hd8d8;
    LUT4 i10327_2_lut_3_lut_4_lut_4_lut (.A(n20112), .B(page_ptr1[6]), .C(\selected[1] ), 
         .D(n20102), .Z(\SHAREDBUS_ADR_I[14] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i10327_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_258 (.A(n20112), .B(page_ptr2[0]), 
         .C(\selected[1] ), .D(n20102), .Z(\SHAREDBUS_ADR_I[16] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_258.init = 16'h4000;
    LUT4 ext_addr_4__bdd_3_lut_17059 (.A(\ext_addr[4] ), .B(\spi_wrt_disb[3] ), 
         .C(\spi_blk2_ers[3] ), .Z(n20304)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17059.init = 16'hd8d8;
    LUT4 spi_chip_ers_3__bdd_3_lut_17469 (.A(\spi_chip_ers[3] ), .B(n20306), 
         .C(n20101), .Z(n20307)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam spi_chip_ers_3__bdd_3_lut_17469.init = 16'hcaca;
    LUT4 n20101_bdd_4_lut_17069 (.A(n20101), .B(\ext_addr[4] ), .C(\spi_wrt_enb[3] ), 
         .D(\spi_blk1_ers[3] ), .Z(n20308)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n20101_bdd_4_lut_17069.init = 16'hf780;
    LUT4 i1_4_lut_4_lut (.A(n20092), .B(n18503), .C(n14), .D(\SHAREDBUS_ADR_I[31] ), 
         .Z(n10456)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_4_lut_4_lut.init = 16'h5700;
    LUT4 i15734_2_lut_rep_199_3_lut_4_lut_4_lut (.A(page_ptr1[0]), .B(n20092), 
         .C(n20090), .D(n20165), .Z(n20058)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i15734_2_lut_rep_199_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 i16508_2_lut_2_lut_3_lut_4_lut_4_lut (.A(page_ptr1[0]), .B(n20092), 
         .C(n4422), .D(n20165), .Z(n13174)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16508_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 mux_1101_i8_4_lut_4_lut (.A(n20090), .B(n18839), .C(n20047), 
         .D(n9_c), .Z(n2390)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_1101_i8_4_lut_4_lut.init = 16'h5404;
    LUT4 mux_1101_i4_4_lut_4_lut (.A(n20090), .B(n18769), .C(n20047), 
         .D(n10), .Z(n2394)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_1101_i4_4_lut_4_lut.init = 16'h5404;
    LUT4 mux_1101_i3_4_lut_4_lut (.A(n20090), .B(n18775), .C(n20047), 
         .D(n7054), .Z(n2395)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_1101_i3_4_lut_4_lut.init = 16'h5404;
    LUT4 i9612_3_lut (.A(\spi_pwd_down[1] ), .B(\spi_read_stat[1] ), .C(n20061), 
         .Z(n3957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    defparam i9612_3_lut.init = 16'hcaca;
    LUT4 i9667_3_lut (.A(\spi_pwd_down[3] ), .B(\spi_read_stat[3] ), .C(n20061), 
         .Z(n3955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    defparam i9667_3_lut.init = 16'hcaca;
    LUT4 i9696_3_lut (.A(\spi_pwd_down[4] ), .B(\spi_read_stat[4] ), .C(n20061), 
         .Z(n3954)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    defparam i9696_3_lut.init = 16'hcaca;
    LUT4 i9721_3_lut (.A(\spi_pwd_down[5] ), .B(\spi_read_stat[5] ), .C(n20061), 
         .Z(n3953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    defparam i9721_3_lut.init = 16'hcaca;
    LUT4 SHAREDBUS_ADR_I_4__bdd_3_lut_16720_4_lut (.A(\ext_addr[4] ), .B(n20101), 
         .C(\spi_wrt_disb[0] ), .D(\spi_blk2_ers[0] ), .Z(n19528)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam SHAREDBUS_ADR_I_4__bdd_3_lut_16720_4_lut.init = 16'hf780;
    LUT4 SHAREDBUS_ADR_I_6__bdd_3_lut_4_lut (.A(\ext_addr[4] ), .B(n20101), 
         .C(length_arb[1]), .D(\ext_addr[2] ), .Z(n20019)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam SHAREDBUS_ADR_I_6__bdd_3_lut_4_lut.init = 16'h8000;
    LUT4 i16422_4_lut_4_lut (.A(\ext_addr[4] ), .B(n20101), .C(\ext_addr[5] ), 
         .D(\ext_addr[2] ), .Z(n5014)) /* synthesis lut_function=(!(A (B (C))+!A (B (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16422_4_lut_4_lut.init = 16'h3b7f;
    LUT4 i1_2_lut_rep_208_3_lut_4_lut_4_lut (.A(n21076), .B(n20101), .C(ctr_state), 
         .D(\ext_addr[0] ), .Z(n20067)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_208_3_lut_4_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_206_3_lut_4_lut_4_lut (.A(n21076), .B(n20101), .C(ctr_state), 
         .D(\ext_addr[0] ), .Z(n20065)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_206_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i15720_2_lut_rep_182_3_lut_3_lut_4_lut_4_lut (.A(n21076), .B(n20101), 
         .C(n20047), .D(n18980), .Z(n20041)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i15720_2_lut_rep_182_3_lut_3_lut_4_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_210_3_lut_4_lut (.A(n21076), .B(n20101), .C(n5), 
         .D(n937), .Z(n20069)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_rep_210_3_lut_4_lut.init = 16'hf070;
    LUT4 i23_3_lut_4_lut (.A(n21076), .B(n20101), .C(spi_page_prg[0]), 
         .D(ctrl_spi_cmd_31__N_1305), .Z(n21)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i23_3_lut_4_lut.init = 16'hf780;
    LUT4 i16_3_lut_4_lut (.A(n21076), .B(n20101), .C(spi_page_prg[7]), 
         .D(ctrl_spi_cmd_31__N_1298), .Z(n14_adj_31)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i16_3_lut_4_lut.init = 16'hf780;
    LUT4 i5790_2_lut_rep_211_3_lut_4_lut (.A(n21076), .B(n20101), .C(n5), 
         .D(n937), .Z(n20070)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (C))) */ ;
    defparam i5790_2_lut_rep_211_3_lut_4_lut.init = 16'h0f8f;
    LUT4 i17_3_lut_4_lut (.A(n21076), .B(n20101), .C(spi_page_prg[6]), 
         .D(ctrl_spi_cmd_31__N_1299), .Z(n15)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i17_3_lut_4_lut.init = 16'hf780;
    LUT4 i18_3_lut_4_lut (.A(n21076), .B(n20101), .C(spi_page_prg[5]), 
         .D(ctrl_spi_cmd_31__N_1300), .Z(n16)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i18_3_lut_4_lut.init = 16'hf780;
    LUT4 i21_3_lut_4_lut (.A(n21076), .B(n20101), .C(spi_page_prg[2]), 
         .D(ctrl_spi_cmd_31__N_1303), .Z(n19)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i21_3_lut_4_lut.init = 16'hf780;
    LUT4 i22_3_lut_4_lut (.A(n21076), .B(n20101), .C(spi_page_prg[1]), 
         .D(ctrl_spi_cmd_31__N_1304), .Z(n20)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i22_3_lut_4_lut.init = 16'hf780;
    LUT4 i3_3_lut_4_lut (.A(n21076), .B(n20101), .C(n46), .D(PIO_OUT_1__N_989), 
         .Z(PIO_OUT_1__N_987)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_3_lut_4_lut.init = 16'h0800;
    LUT4 i19_3_lut_4_lut (.A(n21076), .B(n20101), .C(spi_page_prg[4]), 
         .D(ctrl_spi_cmd_31__N_1301), .Z(n17)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i19_3_lut_4_lut.init = 16'hf780;
    LUT4 i20_3_lut_4_lut (.A(n21076), .B(n20101), .C(spi_page_prg[3]), 
         .D(ctrl_spi_cmd_31__N_1302), .Z(n18)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i20_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n20101), .B(n20163), .C(n5), .D(n21076), 
         .Z(n21_adj_32)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(280[2] 281[4])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hf2f0;
    LUT4 i1_3_lut_4_lut_4_lut_adj_259 (.A(n20101), .B(n20163), .C(n13317), 
         .D(n21076), .Z(n46_adj_33)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(280[2] 281[4])
    defparam i1_3_lut_4_lut_4_lut_adj_259.init = 16'h8a88;
    LUT4 i1_2_lut_4_lut_4_lut (.A(n21076), .B(n18233), .C(n18253), .D(n20069), 
         .Z(interalClock_enable_118)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hcc80;
    LUT4 SHAREDBUS_ADR_I_4__bdd_3_lut_16711_4_lut (.A(\ext_addr[4] ), .B(n20101), 
         .C(\spi_wrt_disb[6] ), .D(\spi_blk2_ers[6] ), .Z(n19514)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam SHAREDBUS_ADR_I_4__bdd_3_lut_16711_4_lut.init = 16'hf780;
    LUT4 i5_4_lut_4_lut (.A(n21076), .B(n973), .C(n20069), .D(n20098), 
         .Z(n12)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i5_4_lut_4_lut.init = 16'h0008;
    LUT4 external_sp_bdd_2_lut_3_lut (.A(n20054), .B(\selected[1] ), .C(ext_wb_state), 
         .Z(n19917)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(321[21:55])
    defparam external_sp_bdd_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_rep_218_4_lut (.A(n20101), .B(\ext_addr[7] ), .C(n18491), 
         .D(n20199), .Z(n20077)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(280[2] 281[4])
    defparam i1_4_lut_rep_218_4_lut.init = 16'h0008;
    LUT4 i15836_4_lut_4_lut (.A(n20092), .B(n18460), .C(n18603), .D(n20199), 
         .Z(n18607)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i15836_4_lut_4_lut.init = 16'hfffd;
    LUT4 i12_4_lut (.A(n20102), .B(n20054), .C(\selected[1] ), .D(n16893), 
         .Z(n17292)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam i12_4_lut.init = 16'h0a3a;
    LUT4 i2_4_lut (.A(n18292), .B(n3), .C(n20101), .D(n19574), .Z(n16893)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C)))) */ ;
    defparam i2_4_lut.init = 16'h1050;
    LUT4 i15987_3_lut_4_lut (.A(n20101), .B(\ext_addr[1] ), .C(spi_cmd_ext[9]), 
         .D(spi_cmd_ext[25]), .Z(n18758)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(280[2] 281[4])
    defparam i15987_3_lut_4_lut.init = 16'hf780;
    LUT4 i15988_3_lut_4_lut (.A(n20101), .B(\ext_addr[1] ), .C(spi_cmd_ext[1]), 
         .D(spi_cmd_ext[17]), .Z(n18759)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(280[2] 281[4])
    defparam i15988_3_lut_4_lut.init = 16'hf780;
    LUT4 i9777_3_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), .C(spi_pwd_up[7]), 
         .D(spi_wrt_stat[7]), .Z(n3860)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i9777_3_lut_4_lut.init = 16'hf780;
    LUT4 i9695_3_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), .C(spi_pwd_up[4]), 
         .D(spi_wrt_stat[4]), .Z(n12523)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i9695_3_lut_4_lut.init = 16'hf780;
    LUT4 i9720_3_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), .C(spi_pwd_up[5]), 
         .D(spi_wrt_stat[5]), .Z(n12547)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i9720_3_lut_4_lut.init = 16'hf780;
    LUT4 i9950_2_lut (.A(LM8D_DAT_O[0]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[0] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i9950_2_lut.init = 16'h8888;
    LUT4 i9611_3_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), .C(spi_pwd_up[1]), 
         .D(spi_wrt_stat[1]), .Z(n12442)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i9611_3_lut_4_lut.init = 16'hf780;
    LUT4 i45_4_lut_4_lut (.A(\page_ptr3[0] ), .B(n20092), .C(n18143), 
         .D(\SHAREDBUS_ADR_I[31] ), .Z(n3)) /* synthesis lut_function=(!(A (B (C (D))+!B !(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i45_4_lut_4_lut.init = 16'h3f88;
    LUT4 i9746_3_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), .C(spi_pwd_up[6]), 
         .D(spi_wrt_stat[6]), .Z(n12572)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i9746_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_1329_i1_3_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), .C(spi_pwd_up[0]), 
         .D(spi_wrt_stat[0]), .Z(n3867)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam mux_1329_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i9666_3_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), .C(spi_pwd_up[3]), 
         .D(spi_wrt_stat[3]), .Z(n12495)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i9666_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_3_lut_3_lut_4_lut_4_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), 
         .C(\ext_addr[4] ), .D(\ext_addr[5] ), .Z(n5073)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0c88;
    LUT4 i2_4_lut_4_lut (.A(\page_ptr3[0] ), .B(n20092), .C(n18365), .D(n5338), 
         .Z(n15_adj_34)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i2_4_lut_4_lut.init = 16'hfff7;
    LUT4 mux_1329_i3_3_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), .C(spi_pwd_up[2]), 
         .D(spi_wrt_stat[2]), .Z(n3865)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam mux_1329_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 i3399_3_lut_4_lut_4_lut (.A(\ext_addr[3] ), .B(n20101), .C(\ext_addr[4] ), 
         .D(\ext_addr[6] ), .Z(n6218)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i3399_3_lut_4_lut_4_lut.init = 16'h4c08;
    LUT4 i10126_2_lut (.A(LM8D_DAT_O[1]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[1] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i10126_2_lut.init = 16'h8888;
    LUT4 mux_1328_i6_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(ctrl_spi_cmd_31__N_1300), 
         .D(spi_byte_prg[5]), .Z(n3853)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam mux_1328_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 i55_4_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n20095), .D(n20089), 
         .Z(n29)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A !((D)+!C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i55_4_lut_4_lut.init = 16'h558f;
    LUT4 i2778_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(length_arb[2]), 
         .D(bytes_arb[2]), .Z(n5616)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i2778_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_1328_i3_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(ctrl_spi_cmd_31__N_1303), 
         .D(spi_byte_prg[2]), .Z(n3856)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam mux_1328_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 i15978_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[3]), 
         .D(ctrl_port_cmd[11]), .Z(n18749)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i15978_3_lut_4_lut.init = 16'hf780;
    LUT4 n2368_bdd_3_lut_16848_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n18765), 
         .D(n18764), .Z(n19478)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam n2368_bdd_3_lut_16848_4_lut.init = 16'hf780;
    LUT4 i16043_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[6]), 
         .D(spi_cmd_ext[14]), .Z(n18814)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16043_3_lut_4_lut.init = 16'hf780;
    LUT4 n2368_bdd_3_lut_16684_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n18826), 
         .D(n18825), .Z(n19463)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam n2368_bdd_3_lut_16684_4_lut.init = 16'hf780;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), 
         .C(\ext_addr[4] ), .D(\ext_addr[3] ), .Z(n18_adj_35)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 mux_1328_i4_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(ctrl_spi_cmd_31__N_1302), 
         .D(spi_byte_prg[3]), .Z(n3855)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam mux_1328_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 i15979_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[19]), 
         .D(spi_cmd_ext[27]), .Z(n18750)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i15979_3_lut_4_lut.init = 16'hf780;
    LUT4 i16041_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[6]), 
         .D(ctrl_port_cmd[14]), .Z(n18812)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16041_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_1328_i8_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(ctrl_spi_cmd_31__N_1298), 
         .D(spi_byte_prg[7]), .Z(n3851)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam mux_1328_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 i16047_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[18]), 
         .D(\spi_cmd_arb[26] ), .Z(n18818)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16047_3_lut_4_lut.init = 16'hf780;
    LUT4 n2368_bdd_3_lut_16672_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n18871), 
         .D(n18870), .Z(n19458)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam n2368_bdd_3_lut_16672_4_lut.init = 16'hf780;
    LUT4 i2494_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(length_arb[1]), 
         .D(bytes_arb[1]), .Z(n5323)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i2494_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_260 (.A(\ext_addr[2] ), .B(n20101), 
         .C(\ext_addr[4] ), .D(\ext_addr[7] ), .Z(n17_adj_36)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_260.init = 16'h4c00;
    LUT4 i2_3_lut_rep_186_4_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n992), 
         .D(n13341), .Z(n20045)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i2_3_lut_rep_186_4_lut_4_lut.init = 16'h0080;
    LUT4 i15980_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[3]), 
         .D(spi_cmd_ext[11]), .Z(n18751)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i15980_3_lut_4_lut.init = 16'hf780;
    LUT4 i16368_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n19530), 
         .D(n3045[24]), .Z(n3192)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16368_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_1328_i2_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(ctrl_spi_cmd_31__N_1304), 
         .D(spi_byte_prg[1]), .Z(n3857)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam mux_1328_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 i9749_3_lut_4_lut (.A(\ext_addr[4] ), .B(n20101), .C(\spi_wrt_enb[6] ), 
         .D(\spi_blk1_ers[6] ), .Z(n3045[30])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i9749_3_lut_4_lut.init = 16'hf780;
    LUT4 i2_3_lut_rep_184_4_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n7955), 
         .D(\ext_addr[1] ), .Z(n20043)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i2_3_lut_rep_184_4_lut_4_lut.init = 16'h0080;
    LUT4 n19273_bdd_3_lut_16985_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n19597), 
         .D(n19273), .Z(n19598)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam n19273_bdd_3_lut_16985_4_lut.init = 16'hf780;
    LUT4 mux_1328_i5_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(ctrl_spi_cmd_31__N_1301), 
         .D(spi_byte_prg[4]), .Z(n3854)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam mux_1328_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 i16013_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n18783), 
         .D(n18782), .Z(n18784)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16013_3_lut_4_lut.init = 16'hf780;
    LUT4 i16389_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(n19516), 
         .D(n3045[30]), .Z(n9)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16389_3_lut_4_lut.init = 16'hf780;
    LUT4 i2379_3_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(length_arb[0]), 
         .D(bytes_arb[0]), .Z(n5207)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i2379_3_lut_4_lut.init = 16'hf780;
    LUT4 i39_4_lut_4_lut_4_lut_4_lut (.A(\ext_addr[2] ), .B(n20101), .C(\ext_addr[4] ), 
         .D(\ext_addr[5] ), .Z(n24)) /* synthesis lut_function=(!(A (B (C))+!A !((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i39_4_lut_4_lut_4_lut_4_lut.init = 16'h7b7f;
    LUT4 i7561_4_lut (.A(ctrl_port_cmd[7]), .B(n20093), .C(n20062), .D(n11492), 
         .Z(n105)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(119[16:22])
    defparam i7561_4_lut.init = 16'hcac0;
    LUT4 i15977_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[19]), 
         .D(\spi_cmd_arb[27] ), .Z(n18748)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i15977_3_lut_4_lut.init = 16'hf780;
    LUT4 i1530_2_lut_rep_214_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[4] ), .D(n21076), .Z(n20073)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1530_2_lut_rep_214_3_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i16110_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[23]), 
         .D(spi_cmd_ext[31]), .Z(n18881)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16110_3_lut_4_lut.init = 16'hf780;
    LUT4 i10535_3_lut_rep_235_4_lut (.A(n20102), .B(\selected[1] ), .C(\ext_addr[5] ), 
         .D(\ext_addr[6] ), .Z(n20094)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i10535_3_lut_rep_235_4_lut.init = 16'h8880;
    LUT4 i16120_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[16]), 
         .D(spi_cmd_ext[24]), .Z(n18891)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16120_3_lut_4_lut.init = 16'hf780;
    LUT4 SHAREDBUS_ADR_I_7__bdd_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[4] ), .D(n20177), .Z(n19622)) /* synthesis lut_function=(!(A (B (C+(D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam SHAREDBUS_ADR_I_7__bdd_3_lut_4_lut.init = 16'h777f;
    LUT4 i16048_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[2]), 
         .D(ctrl_port_cmd[10]), .Z(n18819)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16048_3_lut_4_lut.init = 16'hf780;
    LUT4 i16118_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[16]), 
         .D(\spi_cmd_arb[24] ), .Z(n18889)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16118_3_lut_4_lut.init = 16'hf780;
    LUT4 i16119_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[0]), 
         .D(ctrl_port_cmd[8]), .Z(n18890)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16119_3_lut_4_lut.init = 16'hf780;
    LUT4 i16474_3_lut_rep_188_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(n20176), .D(n39), .Z(n20047)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i16474_3_lut_rep_188_3_lut_4_lut.init = 16'h80ff;
    LUT4 i2_3_lut_rep_198_4_lut (.A(n20102), .B(\selected[1] ), .C(n10456), 
         .D(SPIFlashC_ACK_O), .Z(n20057)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i2_3_lut_rep_198_4_lut.init = 16'hff7f;
    LUT4 i16121_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[0]), 
         .D(spi_cmd_ext[8]), .Z(n18892)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16121_3_lut_4_lut.init = 16'hf780;
    LUT4 i10306_2_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(bytes_arb[3]), 
         .D(\ext_addr[2] ), .Z(n5596)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i10306_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i16109_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[7]), 
         .D(ctrl_port_cmd[15]), .Z(n18880)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16109_3_lut_4_lut.init = 16'hf780;
    LUT4 i16050_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[2]), 
         .D(spi_cmd_ext[10]), .Z(n18821)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16050_3_lut_4_lut.init = 16'hf780;
    LUT4 i10114_2_lut_rep_217_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(n20173), .D(\ext_addr[4] ), .Z(n20076)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i10114_2_lut_rep_217_3_lut_4_lut.init = 16'h8000;
    LUT4 i16049_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[18]), 
         .D(spi_cmd_ext[26]), .Z(n18820)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16049_3_lut_4_lut.init = 16'hf780;
    LUT4 i16042_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[22]), 
         .D(spi_cmd_ext[30]), .Z(n18813)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16042_3_lut_4_lut.init = 16'hf780;
    LUT4 i388_2_lut_rep_227_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(n937), .D(n21076), .Z(n20086)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i388_2_lut_rep_227_3_lut_4_lut.init = 16'h0800;
    LUT4 i16111_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[7]), 
         .D(spi_cmd_ext[15]), .Z(n18882)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16111_3_lut_4_lut.init = 16'hf780;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(\ext_addr[2] ), 
         .D(\ext_addr[4] ), .Z(n4)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i15984_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[17]), 
         .D(\spi_cmd_arb[25] ), .Z(n18755)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i15984_3_lut_4_lut.init = 16'hf780;
    LUT4 i15806_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(n20176), 
         .D(n13341), .Z(n18575)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i15806_3_lut_4_lut.init = 16'h8880;
    LUT4 i15985_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[1]), 
         .D(ctrl_port_cmd[9]), .Z(n18756)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i15985_3_lut_4_lut.init = 16'hf780;
    LUT4 i16023_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[20]), 
         .D(\spi_cmd_arb[28] ), .Z(n18794)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16023_3_lut_4_lut.init = 16'hf780;
    LUT4 i16024_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[4]), 
         .D(ctrl_port_cmd[12]), .Z(n18795)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16024_3_lut_4_lut.init = 16'hf780;
    LUT4 i16025_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[20]), 
         .D(spi_cmd_ext[28]), .Z(n18796)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16025_3_lut_4_lut.init = 16'hf780;
    LUT4 i16026_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[4]), 
         .D(spi_cmd_ext[12]), .Z(n18797)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16026_3_lut_4_lut.init = 16'hf780;
    LUT4 i2_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(n18292), .D(LEDGPIO_ACK_O), 
         .Z(PIO_OUT_1__N_989)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_3_lut_rep_203_4_lut (.A(n20102), .B(\selected[1] ), .C(n15_adj_34), 
         .D(SPIFlashS_ACK_O), .Z(n20062)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_3_lut_rep_203_4_lut.init = 16'h0008;
    LUT4 i16030_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[21]), 
         .D(\spi_cmd_arb[29] ), .Z(n18801)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16030_3_lut_4_lut.init = 16'hf780;
    LUT4 i15791_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(n20163), 
         .D(\ext_addr[6] ), .Z(n18558)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i15791_3_lut_4_lut.init = 16'h8880;
    LUT4 i10553_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(n20177), 
         .D(\ext_addr[1] ), .Z(n13407)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i10553_3_lut_4_lut.init = 16'h8880;
    LUT4 SHAREDBUS_ADR_I_7__bdd_2_lut_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[0] ), .D(\ext_addr[7] ), .Z(n19621)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam SHAREDBUS_ADR_I_7__bdd_2_lut_3_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i16031_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[5]), 
         .D(ctrl_port_cmd[13]), .Z(n18802)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16031_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(\ext_addr[1] ), 
         .D(\ext_addr[0] ), .Z(n18253)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i10320_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(n13341), 
         .D(\ext_addr[2] ), .Z(n5)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i10320_3_lut_4_lut.init = 16'h8880;
    LUT4 i16032_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[21]), 
         .D(spi_cmd_ext[29]), .Z(n18803)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16032_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(\ext_addr[0] ), 
         .D(n21076), .Z(n18334)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i2_2_lut_rep_200_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(n7926), 
         .D(n20163), .Z(n20059)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i2_2_lut_rep_200_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_2_lut_rep_212_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(ctr_state), 
         .D(n21076), .Z(n20071)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_rep_212_3_lut_4_lut.init = 16'h0800;
    LUT4 i16033_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(spi_cmd_ext[5]), 
         .D(spi_cmd_ext[13]), .Z(n18804)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16033_3_lut_4_lut.init = 16'hf780;
    LUT4 i3438_2_lut_rep_226_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[0] ), .D(\ext_addr[1] ), .Z(n20085)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i3438_2_lut_rep_226_3_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_rep_340 (.A(\ext_addr[4] ), .B(\ext_addr[5] ), .Z(n20199)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_340.init = 16'heeee;
    LUT4 i16040_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[22]), 
         .D(\spi_cmd_arb[30] ), .Z(n18811)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16040_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_3_lut_4_lut_adj_261 (.A(\ext_addr[4] ), .B(\ext_addr[5] ), 
         .C(\ext_addr[1] ), .D(\ext_addr[6] ), .Z(n18356)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_261.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(\ext_addr[4] ), .B(\ext_addr[5] ), .C(\ext_addr[7] ), 
         .D(\ext_addr[6] ), .Z(n4_adj_37)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i16108_3_lut_4_lut (.A(\ext_addr[0] ), .B(n20101), .C(ctrl_port_cmd[23]), 
         .D(\spi_cmd_arb[31] ), .Z(n18879)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i16108_3_lut_4_lut.init = 16'hf780;
    LUT4 SHAREDBUS_ADR_I_4__bdd_3_lut_16719_4_lut (.A(\ext_addr[6] ), .B(n20101), 
         .C(\spi_cmd_arb[30] ), .D(\spi_chip_ers[6] ), .Z(n19515)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam SHAREDBUS_ADR_I_4__bdd_3_lut_16719_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_3_lut_4_lut_adj_262 (.A(\ext_addr[6] ), .B(n20101), .C(n937), 
         .D(n20072), .Z(n8011)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut_adj_262.init = 16'hf070;
    LUT4 i1_2_lut_rep_224_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[4] ), .D(\ext_addr[5] ), .Z(n20083)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_rep_224_3_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_219_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[6] ), .D(\ext_addr[5] ), .Z(n20078)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_rep_219_3_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_263 (.A(n20102), .B(\selected[1] ), .C(\SPIFlashC_DAT_O[2] ), 
         .D(n20173), .Z(n68)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_4_lut_adj_263.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_264 (.A(n20102), .B(\selected[1] ), .C(\SPIFlashC_DAT_O[0] ), 
         .D(n20173), .Z(n68_adj_38)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_4_lut_adj_264.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_265 (.A(n20102), .B(\selected[1] ), .C(\SPIFlashC_DAT_O[1] ), 
         .D(n20173), .Z(n18333)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_4_lut_adj_265.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_266 (.A(n20102), .B(\selected[1] ), .C(\SPIFlashC_DAT_O[3] ), 
         .D(n20173), .Z(n18332)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_4_lut_adj_266.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_267 (.A(n20102), .B(\selected[1] ), .C(\SPIFlashC_DAT_O[7] ), 
         .D(n20173), .Z(n68_adj_39)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_4_lut_adj_267.init = 16'h8000;
    L6MUX21 i15998 (.D0(n18767), .D1(n18768), .SD(n20100), .Z(n18769));
    L6MUX21 i16004 (.D0(n18773), .D1(n18774), .SD(n20100), .Z(n18775));
    LUT4 i1_2_lut_3_lut_4_lut_adj_268 (.A(n20102), .B(\selected[1] ), .C(\SPIFlashC_DAT_O[7] ), 
         .D(\ext_addr[3] ), .Z(n4_adj_40)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_4_lut_adj_268.init = 16'h8000;
    L6MUX21 i16068 (.D0(n18837), .D1(n18838), .SD(n20100), .Z(n18839));
    LUT4 i1_2_lut_rep_222_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[4] ), .D(\ext_addr[3] ), .Z(n20081)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_rep_222_3_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i4_2_lut_rep_221_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[4] ), .D(\ext_addr[3] ), .Z(n20080)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i4_2_lut_rep_221_3_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i9973_2_lut_rep_223_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[4] ), .D(\ext_addr[2] ), .Z(n20082)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i9973_2_lut_rep_223_3_lut_4_lut.init = 16'h8000;
    L6MUX21 i29 (.D0(n18866), .D1(n18863), .SD(n20095), .Z(n10));
    LUT4 i1_2_lut_rep_220_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(\ext_addr[4] ), 
         .D(\ext_addr[3] ), .Z(n20079)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_rep_220_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_2_lut_2_lut_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[6] ), .D(\ext_addr[3] ), .Z(n6)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i2_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h0080;
    L6MUX21 i28 (.D0(n18842), .D1(n18836), .SD(n20095), .Z(n9_c));
    LUT4 i1998_2_lut_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), .C(\ext_addr[3] ), 
         .D(\ext_addr[2] ), .Z(n4818)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1998_2_lut_3_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_269 (.A(n20102), .B(\selected[1] ), 
         .C(n21076), .D(\ext_addr[2] ), .Z(n8015)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_269.init = 16'h0080;
    LUT4 i1_2_lut_rep_225_3_lut_3_lut_4_lut (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[3] ), .D(\ext_addr[2] ), .Z(n20084)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_rep_225_3_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 SHAREDBUS_ADR_I_4__bdd_3_lut_16710_4_lut (.A(\ext_addr[6] ), .B(n20101), 
         .C(length_arb[2]), .D(\ext_addr[2] ), .Z(n19305)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam SHAREDBUS_ADR_I_4__bdd_3_lut_16710_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_270 (.A(n20102), .B(\selected[1] ), 
         .C(\ext_addr[0] ), .D(\ext_addr[2] ), .Z(n18296)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(312[2] 313[4])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_270.init = 16'h0800;
    LUT4 SHAREDBUS_ADR_I_4__bdd_3_lut_16805_4_lut (.A(\ext_addr[6] ), .B(n20101), 
         .C(\spi_cmd_arb[24] ), .D(\spi_chip_ers[0] ), .Z(n19529)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam SHAREDBUS_ADR_I_4__bdd_3_lut_16805_4_lut.init = 16'hf780;
    PFUMX i15994 (.BLUT(n4193), .ALUT(n4164), .C0(n20073), .Z(n18765));
    PFUMX i15997 (.BLUT(n4192), .ALUT(n4163), .C0(n20073), .Z(n18768));
    PFUMX i16003 (.BLUT(n4191), .ALUT(n12402), .C0(n20073), .Z(n18774));
    PFUMX i17063 (.BLUT(n20308), .ALUT(n20307), .C0(n20100), .Z(n20309));
    PFUMX i17060 (.BLUT(n20305), .ALUT(n20304), .C0(\ext_addr[3] ), .Z(n20306));
    PFUMX i16562 (.BLUT(n19272), .ALUT(n19271), .C0(n20073), .Z(n19273));
    LUT4 mux_1157_i25_3_lut_4_lut (.A(\ext_addr[4] ), .B(n20101), .C(\spi_wrt_enb[0] ), 
         .D(\spi_blk1_ers[0] ), .Z(n3045[24])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam mux_1157_i25_3_lut_4_lut.init = 16'hf780;
    
endmodule
//
// Verilog Description of module spi_flash_renamed_due_excessive_length_4
//

module spi_flash_renamed_due_excessive_length_4 (interalClock, n20100, \SHAREDBUS_DAT_I[0] , 
            cmd_bytes, n8767, ctrl_port_cmd, \ext_addr[4] , \ext_addr[3] , 
            n13341, spi_cmd_ext, spi_cmd, SPIFlashS_DAT_O, spi_wr, 
            SPIFlashS_ACK_O, n20209, ctrl_port_req, ctrl_port_req_N_1718, 
            length_arb, n20073, LM8D_DAT_O, SPIFlashC_DAT_O, spi_byte_prg, 
            spi_page_prg, \spi_blk1_ers[0] , \spi_blk2_ers[0] , \spi_chip_ers[0] , 
            spi_wrt_enb, \spi_wrt_disb[0] , spi_read_stat, spi_wrt_stat, 
            \spi_pwd_down[0] , spi_pwd_up, \wb_state[0] , bytes_arb, 
            ctr_state, n18748, n18749, n20098, n19622, n19621, n20099, 
            n18750, n18751, n18755, n18756, n18758, n18759, n20087, 
            n18794, n18795, n18796, n18797, n18801, n18802, \SHAREDBUS_DAT_I[1] , 
            \SHAREDBUS_DAT_I[2] , \SHAREDBUS_DAT_I[3] , \SHAREDBUS_DAT_I[4] , 
            \SHAREDBUS_DAT_I[5] , \SHAREDBUS_DAT_I[6] , \SHAREDBUS_DAT_I[7] , 
            n18803, n18804, n18811, n18812, n19598, n20053, n18813, 
            n18814, n20101, n20145, \ext_addr[2] , \ext_addr[5] , 
            n18818, n18819, n13407, n20061, n20077, n15, n20055, 
            n20056, n105, \spi_cmd[8] , n96, n94, \spi_cmd[24] , 
            n82, n18820, n18821, n18879, n18880, n20088, n20072, 
            n937, n20090, n973, \spi_blk1_ers[1] , \ext_addr[6] , 
            \spi_cmd_arb[31] , n20071, n20045, n18881, n18882, n20084, 
            \spi_cmd_arb[29] , n20093, n7955, \spi_blk1_ers[6] , \spi_blk1_ers[4] , 
            n13317, n20078, n20097, n18695, n5014, n18889, n18890, 
            n20086, n5, n18253, n21076, \selected[1] , n6, n18891, 
            n18892, spi_ack, n20070, n20085, n18334, n18346, n20041, 
            n20058, \spi_blk1_ers[3] , \spi_blk1_ers[2] , SPIFlashC_ACK_O, 
            n21077, n20091, n20062, n7030, \ext_addr[7] , n7029, 
            n20092, n7926, n20089, n19597, \D_ADR_O_31__N_499[31] , 
            n18607, n10, \page_ptr1[3] , n18292, n18440, n18603, 
            \page_ptr2[5] , \page_ptr2[7] , \page_ptr3[2] , \page_ptr3[3] , 
            \page_ptr1[5] , \page_ptr3[5] , \page_ptr1[4] , \page_ptr1[2] , 
            \page_ptr2[4] , n5718, n18499, n20057, n166, n20064, 
            n8011, interalClock_enable_118, n3851, \spi_cmd_arb[24] , 
            \spi_cmd_arb[25] , \spi_cmd_arb[26] , \spi_cmd_arb[27] , \spi_cmd_arb[28] , 
            \spi_cmd_arb[30] , \spi_blk2_ers[1] , \spi_blk2_ers[2] , \spi_blk2_ers[3] , 
            \spi_blk2_ers[4] , \spi_blk2_ers[6] , \spi_chip_ers[1] , \spi_chip_ers[2] , 
            \spi_chip_ers[3] , \spi_chip_ers[4] , \spi_chip_ers[6] , \spi_wrt_enb[1] , 
            \spi_wrt_enb[2] , \spi_wrt_enb[3] , \spi_wrt_enb[4] , \spi_wrt_enb[6] , 
            \spi_wrt_disb[1] , \spi_wrt_disb[2] , \spi_wrt_disb[3] , \spi_wrt_disb[4] , 
            \spi_wrt_disb[6] , \spi_pwd_down[1] , \spi_pwd_down[3] , \spi_pwd_down[4] , 
            \spi_pwd_down[5] , \spi_pwd_down[6] , n2395, n13174, n3853, 
            n18697, n20173, n46, n4818, n20095, n20079, n3854, 
            n20081, n20043, n2394, n2390, n20096, n992, n20080, 
            n20094, n20047, n18296, n12698, n3855, n12638, n3856, 
            n11752, n3857, n11753, n12609, n12610, n12623, n12624, 
            n11492, n56, n58, n12637, n12653, n20137, n19529, 
            n19528, n19530, n12697, n20067, n20065, n19272, n12652, 
            n4194, n12702, n4195, n12679, n12678, n20337, n20293, 
            n20309, n20343, n4189, n4191, n4192, n4193, n19271, 
            n18861, n18856, n4, n20075, n4_adj_15, n18855, n18862, 
            n18850, n18849, n18844, n18843, n18835, n18834, n18868, 
            n18867, n29, n18558, n20083, n19363, n9, n8, n19358, 
            n3192, n18851, n18854, n3011, n5323, n4422, n18853, 
            n5073, n20082, n4_adj_16, n13214, n18864, n18857, n18833, 
            n20059, n18875, n18869, n3017, n18845, n18848, n18852, 
            n18847, n18846, n18841, n18840, \ext_addr[1] , \ext_addr[0] , 
            n20163, n14, n39, n20102, n16, n17, n18980, n18874, 
            n17_adj_17, n18, n18575, n18873, n19, n20069, n18865, 
            n20, n18832, n18356, n18831, n21, n19305, \SHAREDBUS_ADR_I[9] , 
            \SHAREDBUS_ADR_I[10] , n20176, \SHAREDBUS_ADR_I[23] , \SHAREDBUS_ADR_I[22] , 
            \SHAREDBUS_ADR_I[21] , n5596, \SHAREDBUS_ADR_I[20] , \SHAREDBUS_ADR_I[19] , 
            \SHAREDBUS_ADR_I[17] , n4165, \SHAREDBUS_ADR_I[15] , n4167, 
            n46_adj_18, \SHAREDBUS_ADR_I[12] , \SHAREDBUS_ADR_I[11] , 
            n5616, \SHAREDBUS_ADR_I[14] , \SHAREDBUS_ADR_I[13] , n4166, 
            n11755, n8015, n5207, n12402, n4163, n4164, n19478, 
            n4_adj_19, n18491, n20177, n24, n19463, n19458, n20019, 
            n3860, n20076, n18_adj_20, n12547, n3953, n12523, n3954, 
            n12495, n3955, n3865, n12442, n3957, n20049, n68, 
            n20074, n68_adj_21, n18332, n18333, \page_ptr2[3] , \page_ptr2[6] , 
            n18383, n68_adj_22, n6_adj_23, n18233, n6985, ctrl_spi_cmd_31__N_1298, 
            n12, n21_adj_24, n7054, ctrl_spi_cmd_31__N_1299, ctrl_spi_cmd_31__N_1300, 
            ctrl_spi_cmd_31__N_1301, ctrl_spi_cmd_31__N_1302, ctrl_spi_cmd_31__N_1303, 
            ctrl_spi_cmd_31__N_1304, ctrl_spi_cmd_31__N_1305, n18784, 
            int_cmd_dword_31__N_1881, clk_div_enable_19, dword_wr_31__N_1809, 
            SPIFlashSO_c, n3906, \int_cmd_dword[20] , SPIFlashSI_c, 
            SI_N_2079, SI_N_2077, n502, \counter[2] , n20128, SPIFlashCEJ_c, 
            n21075, n20168, \int_cmd_dword[1] , \int_cmd_dword[21] , 
            n15_adj_25, n12_adj_26, n15_adj_27, n12_adj_28, n16_adj_29, 
            n8_adj_30, \int_cmd_dword_31__N_1849[20] , \int_cmd_dword[22] , 
            \int_cmd_dword_31__N_1817[9] , n11669, n11687, n11678, \int_cmd_dword_31__N_1817[17] , 
            \int_cmd_dword_31__N_1817[1] , n17075, \cmd_dword_31__N_2020[29] , 
            \cmd_dword_31__N_2020[27] , SPIFlashSCK_c, \cmd_dword_31__N_2020[26] , 
            \int_cmd_dword[9] , n13, \int_cmd_dword[17] , n20197) /* synthesis syn_module_defined=1 */ ;
    input interalClock;
    input n20100;
    input \SHAREDBUS_DAT_I[0] ;
    output [3:0]cmd_bytes;
    input n8767;
    output [23:0]ctrl_port_cmd;
    input \ext_addr[4] ;
    input \ext_addr[3] ;
    output n13341;
    output [31:0]spi_cmd_ext;
    output [31:0]spi_cmd;
    output [7:0]SPIFlashS_DAT_O;
    output spi_wr;
    output SPIFlashS_ACK_O;
    input n20209;
    output ctrl_port_req;
    input ctrl_port_req_N_1718;
    output [2:0]length_arb;
    input n20073;
    input [7:0]LM8D_DAT_O;
    output [7:0]SPIFlashC_DAT_O;
    output [7:0]spi_byte_prg;
    output [7:0]spi_page_prg;
    output \spi_blk1_ers[0] ;
    output \spi_blk2_ers[0] ;
    output \spi_chip_ers[0] ;
    output [7:0]spi_wrt_enb;
    output \spi_wrt_disb[0] ;
    output [7:0]spi_read_stat;
    output [7:0]spi_wrt_stat;
    output \spi_pwd_down[0] ;
    output [7:0]spi_pwd_up;
    output \wb_state[0] ;
    output [3:0]bytes_arb;
    output ctr_state;
    input n18748;
    input n18749;
    input n20098;
    input n19622;
    input n19621;
    input n20099;
    input n18750;
    input n18751;
    input n18755;
    input n18756;
    input n18758;
    input n18759;
    input n20087;
    input n18794;
    input n18795;
    input n18796;
    input n18797;
    input n18801;
    input n18802;
    input \SHAREDBUS_DAT_I[1] ;
    input \SHAREDBUS_DAT_I[2] ;
    input \SHAREDBUS_DAT_I[3] ;
    input \SHAREDBUS_DAT_I[4] ;
    input \SHAREDBUS_DAT_I[5] ;
    input \SHAREDBUS_DAT_I[6] ;
    input \SHAREDBUS_DAT_I[7] ;
    input n18803;
    input n18804;
    input n18811;
    input n18812;
    input n19598;
    input n20053;
    input n18813;
    input n18814;
    input n20101;
    output n20145;
    input \ext_addr[2] ;
    input \ext_addr[5] ;
    input n18818;
    input n18819;
    input n13407;
    output n20061;
    input n20077;
    input n15;
    output n20055;
    output n20056;
    input n105;
    output \spi_cmd[8] ;
    input n96;
    input n94;
    output \spi_cmd[24] ;
    input n82;
    input n18820;
    input n18821;
    input n18879;
    input n18880;
    input n20088;
    input n20072;
    output n937;
    input n20090;
    output n973;
    output \spi_blk1_ers[1] ;
    input \ext_addr[6] ;
    output \spi_cmd_arb[31] ;
    input n20071;
    input n20045;
    input n18881;
    input n18882;
    input n20084;
    output \spi_cmd_arb[29] ;
    input n20093;
    output n7955;
    output \spi_blk1_ers[6] ;
    output \spi_blk1_ers[4] ;
    output n13317;
    input n20078;
    input n20097;
    output n18695;
    input n5014;
    input n18889;
    input n18890;
    input n20086;
    input n5;
    input n18253;
    input n21076;
    input \selected[1] ;
    input n6;
    input n18891;
    input n18892;
    output spi_ack;
    input n20070;
    input n20085;
    input n18334;
    output n18346;
    input n20041;
    input n20058;
    output \spi_blk1_ers[3] ;
    output \spi_blk1_ers[2] ;
    output SPIFlashC_ACK_O;
    output n21077;
    input n20091;
    input n20062;
    input n7030;
    input \ext_addr[7] ;
    input n7029;
    input n20092;
    output n7926;
    input n20089;
    output n19597;
    input \D_ADR_O_31__N_499[31] ;
    input n18607;
    input n10;
    input \page_ptr1[3] ;
    output n18292;
    input n18440;
    output n18603;
    input \page_ptr2[5] ;
    input \page_ptr2[7] ;
    input \page_ptr3[2] ;
    input \page_ptr3[3] ;
    input \page_ptr1[5] ;
    input \page_ptr3[5] ;
    input \page_ptr1[4] ;
    input \page_ptr1[2] ;
    input \page_ptr2[4] ;
    input n5718;
    input n18499;
    input n20057;
    output n166;
    input n20064;
    input n8011;
    input interalClock_enable_118;
    input n3851;
    output \spi_cmd_arb[24] ;
    output \spi_cmd_arb[25] ;
    output \spi_cmd_arb[26] ;
    output \spi_cmd_arb[27] ;
    output \spi_cmd_arb[28] ;
    output \spi_cmd_arb[30] ;
    output \spi_blk2_ers[1] ;
    output \spi_blk2_ers[2] ;
    output \spi_blk2_ers[3] ;
    output \spi_blk2_ers[4] ;
    output \spi_blk2_ers[6] ;
    output \spi_chip_ers[1] ;
    output \spi_chip_ers[2] ;
    output \spi_chip_ers[3] ;
    output \spi_chip_ers[4] ;
    output \spi_chip_ers[6] ;
    output \spi_wrt_enb[1] ;
    output \spi_wrt_enb[2] ;
    output \spi_wrt_enb[3] ;
    output \spi_wrt_enb[4] ;
    output \spi_wrt_enb[6] ;
    output \spi_wrt_disb[1] ;
    output \spi_wrt_disb[2] ;
    output \spi_wrt_disb[3] ;
    output \spi_wrt_disb[4] ;
    output \spi_wrt_disb[6] ;
    output \spi_pwd_down[1] ;
    output \spi_pwd_down[3] ;
    output \spi_pwd_down[4] ;
    output \spi_pwd_down[5] ;
    output \spi_pwd_down[6] ;
    input n2395;
    input n13174;
    input n3853;
    output n18697;
    output n20173;
    input n46;
    input n4818;
    input n20095;
    input n20079;
    input n3854;
    input n20081;
    input n20043;
    input n2394;
    input n2390;
    input n20096;
    output n992;
    input n20080;
    input n20094;
    input n20047;
    input n18296;
    output n12698;
    input n3855;
    output n12638;
    input n3856;
    output n11752;
    input n3857;
    output n11753;
    output n12609;
    output n12610;
    output n12623;
    output n12624;
    output n11492;
    output n56;
    output n58;
    output n12637;
    output n12653;
    output n20137;
    input n19529;
    input n19528;
    output n19530;
    output n12697;
    input n20067;
    input n20065;
    output n19272;
    output n12652;
    output n4194;
    output n12702;
    output n4195;
    output n12679;
    output n12678;
    input n20337;
    input n20293;
    input n20309;
    input n20343;
    output n4189;
    output n4191;
    output n4192;
    output n4193;
    output n19271;
    output n18861;
    output n18856;
    input n4;
    input n20075;
    input n4_adj_15;
    output n18855;
    output n18862;
    output n18850;
    output n18849;
    output n18844;
    output n18843;
    output n18835;
    output n18834;
    output n18868;
    output n18867;
    input n29;
    input n18558;
    input n20083;
    input n19363;
    input n9;
    output n8;
    input n19358;
    input n3192;
    input n18851;
    input n18854;
    output n3011;
    input n5323;
    output n4422;
    output n18853;
    input n5073;
    input n20082;
    input n4_adj_16;
    input n13214;
    output n18864;
    input n18857;
    input n18833;
    input n20059;
    input n18875;
    input n18869;
    output n3017;
    input n18845;
    input n18848;
    output n18852;
    output n18847;
    output n18846;
    output n18841;
    output n18840;
    input \ext_addr[1] ;
    input \ext_addr[0] ;
    output n20163;
    input n14;
    output n39;
    input n20102;
    input n16;
    input n17;
    output n18980;
    output n18874;
    input n17_adj_17;
    input n18;
    input n18575;
    output n18873;
    input n19;
    input n20069;
    output n18865;
    input n20;
    output n18832;
    input n18356;
    output n18831;
    input n21;
    input n19305;
    input \SHAREDBUS_ADR_I[9] ;
    input \SHAREDBUS_ADR_I[10] ;
    output n20176;
    input \SHAREDBUS_ADR_I[23] ;
    input \SHAREDBUS_ADR_I[22] ;
    input \SHAREDBUS_ADR_I[21] ;
    input n5596;
    input \SHAREDBUS_ADR_I[20] ;
    input \SHAREDBUS_ADR_I[19] ;
    input \SHAREDBUS_ADR_I[17] ;
    output n4165;
    input \SHAREDBUS_ADR_I[15] ;
    output n4167;
    output n46_adj_18;
    input \SHAREDBUS_ADR_I[12] ;
    input \SHAREDBUS_ADR_I[11] ;
    input n5616;
    input \SHAREDBUS_ADR_I[14] ;
    input \SHAREDBUS_ADR_I[13] ;
    output n4166;
    output n11755;
    input n8015;
    input n5207;
    output n12402;
    output n4163;
    output n4164;
    input n19478;
    input n4_adj_19;
    output n18491;
    output n20177;
    input n24;
    input n19463;
    input n19458;
    input n20019;
    input n3860;
    input n20076;
    input n18_adj_20;
    input n12547;
    input n3953;
    input n12523;
    input n3954;
    input n12495;
    input n3955;
    input n3865;
    input n12442;
    input n3957;
    input n20049;
    input n68;
    input n20074;
    input n68_adj_21;
    input n18332;
    input n18333;
    input \page_ptr2[3] ;
    input \page_ptr2[6] ;
    output n18383;
    input n68_adj_22;
    input n6_adj_23;
    output n18233;
    input n6985;
    output ctrl_spi_cmd_31__N_1298;
    input n12;
    input n21_adj_24;
    output n7054;
    output ctrl_spi_cmd_31__N_1299;
    output ctrl_spi_cmd_31__N_1300;
    output ctrl_spi_cmd_31__N_1301;
    output ctrl_spi_cmd_31__N_1302;
    output ctrl_spi_cmd_31__N_1303;
    output ctrl_spi_cmd_31__N_1304;
    output ctrl_spi_cmd_31__N_1305;
    input n18784;
    output int_cmd_dword_31__N_1881;
    input clk_div_enable_19;
    output dword_wr_31__N_1809;
    input SPIFlashSO_c;
    input n3906;
    input \int_cmd_dword[20] ;
    output SPIFlashSI_c;
    output SI_N_2079;
    output SI_N_2077;
    output n502;
    input \counter[2] ;
    output n20128;
    output SPIFlashCEJ_c;
    output n21075;
    output n20168;
    input \int_cmd_dword[1] ;
    input \int_cmd_dword[21] ;
    input n15_adj_25;
    output n12_adj_26;
    input n15_adj_27;
    output n12_adj_28;
    input n16_adj_29;
    output n8_adj_30;
    output \int_cmd_dword_31__N_1849[20] ;
    input \int_cmd_dword[22] ;
    output \int_cmd_dword_31__N_1817[9] ;
    output n11669;
    output n11687;
    output n11678;
    output \int_cmd_dword_31__N_1817[17] ;
    output \int_cmd_dword_31__N_1817[1] ;
    output n17075;
    input \cmd_dword_31__N_2020[29] ;
    input \cmd_dword_31__N_2020[27] ;
    output SPIFlashSCK_c;
    input \cmd_dword_31__N_2020[26] ;
    input \int_cmd_dword[9] ;
    input n13;
    input \int_cmd_dword[17] ;
    output n20197;
    
    wire clk_div /* synthesis is_clock=1, SET_AS_NETWORK=\platform1_u/SPIFlashS_DAT_O_7__I_0/clk_div */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(135[27:34])
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    
    wire clk_div_N_1027;
    wire [3:0]clk_cnt;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(137[18:25])
    
    wire n8751, n1;
    wire [3:0]n2;
    
    wire n7693;
    wire [3:0]div_num;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(136[19:26])
    wire [2:0]byte_length;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(156[30:41])
    
    wire wr_enb;
    wire [7:0]read_data;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(159[30:39])
    wire [7:0]write_data;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(160[30:40])
    wire [3:0]cmd_bytes_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(155[22:31])
    wire [31:0]spi_cmd_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(152[23:30])
    wire [7:0]spi_wrt_enb_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(161[22:33])
    wire [7:0]spi_read_stat_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(162[22:35])
    
    wire n18763, n11786, n4_c, C_ACK_O_N_1694, spi_req;
    wire [30:0]n3918;
    
    FD1S3AX clk_div_16 (.D(clk_div_N_1027), .CK(interalClock), .Q(clk_div)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=34, LSE_LLINE=635, LSE_RLINE=667 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(176[11] 180[31])
    defparam clk_div_16.GSR = "ENABLED";
    FD1S3IX clk_cnt_1670__i0 (.D(n1), .CK(interalClock), .CD(n8751), .Q(clk_cnt[0]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(180[19:30])
    defparam clk_cnt_1670__i0.GSR = "ENABLED";
    LUT4 i14035_2_lut (.A(clk_cnt[1]), .B(clk_cnt[0]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(180[19:30])
    defparam i14035_2_lut.init = 16'h6666;
    LUT4 i1_2_lut (.A(clk_div), .B(n8751), .Z(clk_div_N_1027)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i16497_4_lut (.A(clk_cnt[0]), .B(clk_cnt[2]), .C(n7693), .D(clk_cnt[3]), 
         .Z(n8751)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(176[14:36])
    defparam i16497_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_adj_253 (.A(clk_cnt[1]), .B(div_num[1]), .Z(n7693)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_253.init = 16'h6666;
    FD1S3IX clk_cnt_1670__i1 (.D(n2[1]), .CK(interalClock), .CD(n8751), 
            .Q(clk_cnt[1]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(180[19:30])
    defparam clk_cnt_1670__i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_1670__i2 (.D(n2[2]), .CK(interalClock), .CD(n8751), 
            .Q(clk_cnt[2]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(180[19:30])
    defparam clk_cnt_1670__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_1670__i3 (.D(n2[3]), .CK(interalClock), .CD(n8751), 
            .Q(clk_cnt[3]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(180[19:30])
    defparam clk_cnt_1670__i3.GSR = "ENABLED";
    LUT4 i14042_2_lut_3_lut (.A(clk_cnt[1]), .B(clk_cnt[0]), .C(clk_cnt[2]), 
         .Z(n2[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(180[19:30])
    defparam i14042_2_lut_3_lut.init = 16'h7878;
    LUT4 i14049_3_lut_4_lut (.A(clk_cnt[1]), .B(clk_cnt[0]), .C(clk_cnt[2]), 
         .D(clk_cnt[3]), .Z(n2[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(180[19:30])
    defparam i14049_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1931_1_lut (.A(clk_cnt[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(176[14:36])
    defparam i1931_1_lut.init = 16'h5555;
    wb_intf_renamed_due_excessive_length_5 wb_intf_inst (.n20100(n20100), 
            .interalClock(interalClock), .\SHAREDBUS_DAT_I[0] (\SHAREDBUS_DAT_I[0] ), 
            .cmd_bytes({cmd_bytes_c[3:2], cmd_bytes[1:0]}), .byte_length({byte_length}), 
            .n8767(n8767), .ctrl_port_cmd({ctrl_port_cmd}), .\ext_addr[4] (\ext_addr[4] ), 
            .\ext_addr[3] (\ext_addr[3] ), .n13341(n13341), .spi_cmd_ext({spi_cmd_ext}), 
            .spi_cmd({spi_cmd_c[31:25], \spi_cmd[24] , spi_cmd_c[23:9], 
            \spi_cmd[8] , spi_cmd_c[7:1], spi_cmd[0]}), .wr_enb(wr_enb), 
            .SPIFlashS_DAT_O({SPIFlashS_DAT_O}), .read_data({read_data}), 
            .spi_wr(spi_wr), .SPIFlashS_ACK_O(SPIFlashS_ACK_O), .n20209(n20209), 
            .ctrl_port_req(ctrl_port_req), .ctrl_port_req_N_1718(ctrl_port_req_N_1718), 
            .length_arb({length_arb}), .n20073(n20073), .write_data({write_data}), 
            .LM8D_DAT_O({LM8D_DAT_O}), .SPIFlashC_DAT_O({SPIFlashC_DAT_O}), 
            .spi_byte_prg({spi_byte_prg}), .spi_page_prg({spi_page_prg}), 
            .spi_blk1_ers({Open_41, Open_42, Open_43, Open_44, Open_45, 
            Open_46, \spi_blk1_ers[1] , \spi_blk1_ers[0] }), .spi_blk2_ers({Open_47, 
            Open_48, Open_49, Open_50, Open_51, Open_52, Open_53, 
            \spi_blk2_ers[0] }), .spi_chip_ers({Open_54, Open_55, Open_56, 
            Open_57, Open_58, Open_59, Open_60, \spi_chip_ers[0] }), 
            .spi_wrt_enb({spi_wrt_enb_c[7], \spi_wrt_enb[6] , spi_wrt_enb_c[5], 
            \spi_wrt_enb[4] , \spi_wrt_enb[3] , \spi_wrt_enb[2] , \spi_wrt_enb[1] , 
            spi_wrt_enb[0]}), .spi_wrt_disb({Open_61, Open_62, Open_63, 
            Open_64, Open_65, Open_66, Open_67, \spi_wrt_disb[0] }), 
            .spi_read_stat({spi_read_stat_c[7], spi_read_stat[6:0]}), .spi_wrt_stat({spi_wrt_stat}), 
            .spi_pwd_down({Open_68, Open_69, Open_70, Open_71, Open_72, 
            Open_73, \spi_pwd_down[1] , \spi_pwd_down[0] }), .spi_pwd_up({spi_pwd_up}), 
            .wb_state({Open_74, \wb_state[0] }), .bytes_arb({bytes_arb}), 
            .ctr_state(ctr_state), .n18748(n18748), .n18749(n18749), .n20098(n20098), 
            .n19622(n19622), .n19621(n19621), .n20099(n20099), .n18750(n18750), 
            .n18751(n18751), .n18755(n18755), .n18756(n18756), .n18758(n18758), 
            .n18759(n18759), .n20087(n20087), .n18794(n18794), .n18795(n18795), 
            .n18796(n18796), .n18797(n18797), .n18801(n18801), .n18802(n18802), 
            .\div_num[1] (div_num[1]), .\SHAREDBUS_DAT_I[1] (\SHAREDBUS_DAT_I[1] ), 
            .\SHAREDBUS_DAT_I[2] (\SHAREDBUS_DAT_I[2] ), .\SHAREDBUS_DAT_I[3] (\SHAREDBUS_DAT_I[3] ), 
            .\SHAREDBUS_DAT_I[4] (\SHAREDBUS_DAT_I[4] ), .\SHAREDBUS_DAT_I[5] (\SHAREDBUS_DAT_I[5] ), 
            .\SHAREDBUS_DAT_I[6] (\SHAREDBUS_DAT_I[6] ), .\SHAREDBUS_DAT_I[7] (\SHAREDBUS_DAT_I[7] ), 
            .n18803(n18803), .n18804(n18804), .n18811(n18811), .n18812(n18812), 
            .n19598(n19598), .n20053(n20053), .n18813(n18813), .n18814(n18814), 
            .n20101(n20101), .n20145(n20145), .\ext_addr[2] (\ext_addr[2] ), 
            .\ext_addr[5] (\ext_addr[5] ), .n18818(n18818), .n18819(n18819), 
            .n13407(n13407), .n20061(n20061), .n20077(n20077), .n15(n15), 
            .n20055(n20055), .n20056(n20056), .n105(n105), .n96(n96), 
            .n94(n94), .n82(n82), .n18820(n18820), .n18821(n18821), 
            .n18879(n18879), .n18880(n18880), .n20088(n20088), .n20072(n20072), 
            .n937(n937), .n20090(n20090), .n973(n973), .\ext_addr[6] (\ext_addr[6] ), 
            .\spi_cmd_arb[31] (\spi_cmd_arb[31] ), .n20071(n20071), .n20045(n20045), 
            .n18881(n18881), .n18882(n18882), .n20084(n20084), .\spi_cmd_arb[29] (\spi_cmd_arb[29] ), 
            .n20093(n20093), .n7955(n7955), .\spi_blk1_ers[6] (\spi_blk1_ers[6] ), 
            .\spi_blk1_ers[4] (\spi_blk1_ers[4] ), .n13317(n13317), .n20078(n20078), 
            .n20097(n20097), .n18695(n18695), .n5014(n5014), .n18889(n18889), 
            .n18890(n18890), .n20086(n20086), .n5(n5), .n18253(n18253), 
            .n21076(n21076), .\selected[1] (\selected[1] ), .n6(n6), .n18891(n18891), 
            .n18892(n18892), .spi_ack(spi_ack), .n20070(n20070), .n20085(n20085), 
            .n18334(n18334), .n18346(n18346), .n20041(n20041), .n20058(n20058), 
            .\spi_blk1_ers[3] (\spi_blk1_ers[3] ), .\spi_blk1_ers[2] (\spi_blk1_ers[2] ), 
            .SPIFlashC_ACK_O(SPIFlashC_ACK_O), .n21077(n21077), .n20091(n20091), 
            .n20062(n20062), .n7030(n7030), .\ext_addr[7] (\ext_addr[7] ), 
            .n7029(n7029), .n20092(n20092), .n7926(n7926), .n20089(n20089), 
            .n19597(n19597), .\D_ADR_O_31__N_499[31] (\D_ADR_O_31__N_499[31] ), 
            .n18607(n18607), .n10(n10), .\page_ptr1[3] (\page_ptr1[3] ), 
            .n18292(n18292), .n18440(n18440), .n18603(n18603), .\page_ptr2[5] (\page_ptr2[5] ), 
            .\page_ptr2[7] (\page_ptr2[7] ), .\page_ptr3[2] (\page_ptr3[2] ), 
            .\page_ptr3[3] (\page_ptr3[3] ), .\page_ptr1[5] (\page_ptr1[5] ), 
            .\page_ptr3[5] (\page_ptr3[5] ), .\page_ptr1[4] (\page_ptr1[4] ), 
            .\page_ptr1[2] (\page_ptr1[2] ), .\page_ptr2[4] (\page_ptr2[4] ), 
            .n5718(n5718), .n18499(n18499), .n20057(n20057), .n166(n166), 
            .n20064(n20064), .n8011(n8011), .interalClock_enable_118(interalClock_enable_118), 
            .n3851(n3851), .\spi_cmd_arb[24] (\spi_cmd_arb[24] ), .\spi_cmd_arb[25] (\spi_cmd_arb[25] ), 
            .\spi_cmd_arb[26] (\spi_cmd_arb[26] ), .\spi_cmd_arb[27] (\spi_cmd_arb[27] ), 
            .\spi_cmd_arb[28] (\spi_cmd_arb[28] ), .\spi_cmd_arb[30] (\spi_cmd_arb[30] ), 
            .\spi_blk2_ers[1] (\spi_blk2_ers[1] ), .\spi_blk2_ers[2] (\spi_blk2_ers[2] ), 
            .\spi_blk2_ers[3] (\spi_blk2_ers[3] ), .\spi_blk2_ers[4] (\spi_blk2_ers[4] ), 
            .\spi_blk2_ers[6] (\spi_blk2_ers[6] ), .\spi_chip_ers[1] (\spi_chip_ers[1] ), 
            .\spi_chip_ers[2] (\spi_chip_ers[2] ), .\spi_chip_ers[3] (\spi_chip_ers[3] ), 
            .\spi_chip_ers[4] (\spi_chip_ers[4] ), .\spi_chip_ers[6] (\spi_chip_ers[6] ), 
            .\spi_wrt_disb[1] (\spi_wrt_disb[1] ), .\spi_wrt_disb[2] (\spi_wrt_disb[2] ), 
            .\spi_wrt_disb[3] (\spi_wrt_disb[3] ), .\spi_wrt_disb[4] (\spi_wrt_disb[4] ), 
            .\spi_wrt_disb[6] (\spi_wrt_disb[6] ), .\spi_pwd_down[3] (\spi_pwd_down[3] ), 
            .\spi_pwd_down[4] (\spi_pwd_down[4] ), .\spi_pwd_down[5] (\spi_pwd_down[5] ), 
            .\spi_pwd_down[6] (\spi_pwd_down[6] ), .n2395(n2395), .n13174(n13174), 
            .n3853(n3853), .n18697(n18697), .n20173(n20173), .n46(n46), 
            .n4818(n4818), .n20095(n20095), .n20079(n20079), .n3854(n3854), 
            .n20081(n20081), .n20043(n20043), .n2394(n2394), .n2390(n2390), 
            .n20096(n20096), .n992(n992), .n20080(n20080), .n20094(n20094), 
            .n20047(n20047), .n18296(n18296), .n12698(n12698), .n3855(n3855), 
            .n12638(n12638), .n3856(n3856), .n11752(n11752), .n3857(n3857), 
            .n11753(n11753), .n12609(n12609), .n12610(n12610), .n12623(n12623), 
            .n12624(n12624), .n11492(n11492), .n56(n56), .n58(n58), 
            .n12637(n12637), .n12653(n12653), .n18763(n18763), .n20137(n20137), 
            .n11786(n11786), .n4(n4_c), .n19529(n19529), .n19528(n19528), 
            .n19530(n19530), .n12697(n12697), .n20067(n20067), .n20065(n20065), 
            .n19272(n19272), .n12652(n12652), .n4194(n4194), .n12702(n12702), 
            .n4195(n4195), .n12679(n12679), .n12678(n12678), .n20337(n20337), 
            .n20293(n20293), .n20309(n20309), .n20343(n20343), .n4189(n4189), 
            .n4191(n4191), .n4192(n4192), .n4193(n4193), .n19271(n19271), 
            .n18861(n18861), .C_ACK_O_N_1694(C_ACK_O_N_1694), .n18856(n18856), 
            .n4_adj_4(n4), .n20075(n20075), .n4_adj_5(n4_adj_15), .n18855(n18855), 
            .n18862(n18862), .n18850(n18850), .n18849(n18849), .n18844(n18844), 
            .n18843(n18843), .n18835(n18835), .n18834(n18834), .n18868(n18868), 
            .n18867(n18867), .n29(n29), .n18558(n18558), .n20083(n20083), 
            .n19363(n19363), .n9(n9), .n8(n8), .n19358(n19358), .n3192(n3192), 
            .n18851(n18851), .n18854(n18854), .n3011(n3011), .n5323(n5323), 
            .n4422(n4422), .n18853(n18853), .n5073(n5073), .n20082(n20082), 
            .n4_adj_6(n4_adj_16), .n13214(n13214), .n18864(n18864), .n18857(n18857), 
            .n18833(n18833), .n20059(n20059), .n18875(n18875), .n18869(n18869), 
            .n3017(n3017), .n18845(n18845), .n18848(n18848), .n18852(n18852), 
            .n18847(n18847), .n18846(n18846), .n18841(n18841), .n18840(n18840), 
            .\ext_addr[1] (\ext_addr[1] ), .\ext_addr[0] (\ext_addr[0] ), 
            .n20163(n20163), .n14(n14), .n39(n39), .n20102(n20102), 
            .n16(n16), .n17(n17), .n18980(n18980), .n18874(n18874), 
            .n17_adj_7(n17_adj_17), .n18(n18), .n18575(n18575), .n18873(n18873), 
            .n19(n19), .n20069(n20069), .n18865(n18865), .n20(n20), 
            .n18832(n18832), .n18356(n18356), .n18831(n18831), .n21(n21), 
            .n19305(n19305), .\SHAREDBUS_ADR_I[9] (\SHAREDBUS_ADR_I[9] ), 
            .\SHAREDBUS_ADR_I[10] (\SHAREDBUS_ADR_I[10] ), .n20176(n20176), 
            .\SHAREDBUS_ADR_I[23] (\SHAREDBUS_ADR_I[23] ), .\SHAREDBUS_ADR_I[22] (\SHAREDBUS_ADR_I[22] ), 
            .\SHAREDBUS_ADR_I[21] (\SHAREDBUS_ADR_I[21] ), .n5596(n5596), 
            .\SHAREDBUS_ADR_I[20] (\SHAREDBUS_ADR_I[20] ), .\SHAREDBUS_ADR_I[19] (\SHAREDBUS_ADR_I[19] ), 
            .spi_req(spi_req), .\SHAREDBUS_ADR_I[17] (\SHAREDBUS_ADR_I[17] ), 
            .n4165(n4165), .\SHAREDBUS_ADR_I[15] (\SHAREDBUS_ADR_I[15] ), 
            .n4167(n4167), .n46_adj_8(n46_adj_18), .\SHAREDBUS_ADR_I[12] (\SHAREDBUS_ADR_I[12] ), 
            .\SHAREDBUS_ADR_I[11] (\SHAREDBUS_ADR_I[11] ), .n5616(n5616), 
            .\SHAREDBUS_ADR_I[14] (\SHAREDBUS_ADR_I[14] ), .\SHAREDBUS_ADR_I[13] (\SHAREDBUS_ADR_I[13] ), 
            .n4166(n4166), .n11755(n11755), .n3940(n3918[9]), .n8015(n8015), 
            .n5207(n5207), .n12402(n12402), .n4163(n4163), .n4164(n4164), 
            .n19478(n19478), .n4_adj_9(n4_adj_19), .n18491(n18491), .n20177(n20177), 
            .n24(n24), .n19463(n19463), .n19458(n19458), .n20019(n20019), 
            .n3860(n3860), .n20076(n20076), .n18_adj_10(n18_adj_20), .n12547(n12547), 
            .n3953(n3953), .n12523(n12523), .n3954(n3954), .n12495(n12495), 
            .n3955(n3955), .n3865(n3865), .n12442(n12442), .n3957(n3957), 
            .n20049(n20049), .n68(n68), .n20074(n20074), .n68_adj_11(n68_adj_21), 
            .n18332(n18332), .n18333(n18333), .\page_ptr2[3] (\page_ptr2[3] ), 
            .\page_ptr2[6] (\page_ptr2[6] ), .n18383(n18383), .n68_adj_12(n68_adj_22), 
            .n6_adj_13(n6_adj_23), .n18233(n18233), .n6985(n6985), .ctrl_spi_cmd_31__N_1298(ctrl_spi_cmd_31__N_1298), 
            .n12(n12), .n21_adj_14(n21_adj_24), .n7054(n7054), .ctrl_spi_cmd_31__N_1299(ctrl_spi_cmd_31__N_1299), 
            .ctrl_spi_cmd_31__N_1300(ctrl_spi_cmd_31__N_1300), .ctrl_spi_cmd_31__N_1301(ctrl_spi_cmd_31__N_1301), 
            .ctrl_spi_cmd_31__N_1302(ctrl_spi_cmd_31__N_1302), .ctrl_spi_cmd_31__N_1303(ctrl_spi_cmd_31__N_1303), 
            .ctrl_spi_cmd_31__N_1304(ctrl_spi_cmd_31__N_1304), .ctrl_spi_cmd_31__N_1305(ctrl_spi_cmd_31__N_1305), 
            .n18784(n18784)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(387[4] 438[8])
    \spi_flash_intf(WB_DAT_WIDTH=8,C_PORT_ENABLE=1,C_WB_DAT_WIDTH=8,BUF_WIDTH=0,PAGE_WIDTH=2)  spi_flash_intf_inst (.int_cmd_dword_31__N_1881(int_cmd_dword_31__N_1881), 
            .spi_cmd({spi_cmd_c[31:25], \spi_cmd[24] , spi_cmd_c[23:9], 
            \spi_cmd[8] , spi_cmd_c[7:1], spi_cmd[0]}), .n20137(n20137), 
            .read_data({read_data}), .clk_div(clk_div), .clk_div_enable_19(clk_div_enable_19), 
            .dword_wr_31__N_1809(dword_wr_31__N_1809), .SPIFlashSO_c(SPIFlashSO_c), 
            .\spi_cmd_ext[23] (spi_cmd_ext[23]), .\spi_cmd_ext[7] (spi_cmd_ext[7]), 
            .cmd_bytes({cmd_bytes_c[3:2], cmd_bytes[1:0]}), .\spi_cmd_ext[6] (spi_cmd_ext[6]), 
            .\spi_cmd_ext[22] (spi_cmd_ext[22]), .n3906(n3906), .\int_cmd_dword[20] (\int_cmd_dword[20] ), 
            .SPIFlashSI_c(SPIFlashSI_c), .SI_N_2079(SI_N_2079), .SI_N_2077(SI_N_2077), 
            .n502(n502), .\spi_cmd_ext[30] (spi_cmd_ext[30]), .\spi_cmd_ext[14] (spi_cmd_ext[14]), 
            .\counter[2] (\counter[2] ), .n20128(n20128), .\spi_cmd_ext[31] (spi_cmd_ext[31]), 
            .\spi_cmd_ext[5] (spi_cmd_ext[5]), .\spi_cmd_ext[21] (spi_cmd_ext[21]), 
            .\spi_cmd_ext[29] (spi_cmd_ext[29]), .\spi_cmd_ext[13] (spi_cmd_ext[13]), 
            .\spi_cmd_ext[4] (spi_cmd_ext[4]), .\spi_cmd_ext[20] (spi_cmd_ext[20]), 
            .\spi_cmd_ext[28] (spi_cmd_ext[28]), .\spi_cmd_ext[12] (spi_cmd_ext[12]), 
            .\spi_cmd_ext[3] (spi_cmd_ext[3]), .\spi_cmd_ext[19] (spi_cmd_ext[19]), 
            .\spi_cmd_ext[27] (spi_cmd_ext[27]), .\spi_cmd_ext[11] (spi_cmd_ext[11]), 
            .\spi_cmd_ext[2] (spi_cmd_ext[2]), .\spi_cmd_ext[18] (spi_cmd_ext[18]), 
            .\spi_cmd_ext[26] (spi_cmd_ext[26]), .\spi_cmd_ext[10] (spi_cmd_ext[10]), 
            .\spi_cmd_ext[1] (spi_cmd_ext[1]), .\spi_cmd_ext[9] (spi_cmd_ext[9]), 
            .\spi_cmd_ext[17] (spi_cmd_ext[17]), .spi_ack(spi_ack), .SPIFlashCEJ_c(SPIFlashCEJ_c), 
            .n21075(n21075), .n20168(n20168), .\int_cmd_dword[1] (\int_cmd_dword[1] ), 
            .\int_cmd_dword[21] (\int_cmd_dword[21] ), .spi_wr(spi_wr), 
            .\spi_cmd_ext[8] (spi_cmd_ext[8]), .\spi_cmd_ext[15] (spi_cmd_ext[15]), 
            .n15(n15_adj_25), .n12(n12_adj_26), .n15_adj_2(n15_adj_27), 
            .n12_adj_3(n12_adj_28), .n16(n16_adj_29), .n8(n8_adj_30), 
            .\int_cmd_dword_31__N_1849[20] (\int_cmd_dword_31__N_1849[20] ), 
            .write_data({write_data}), .\int_cmd_dword[22] (\int_cmd_dword[22] ), 
            .\int_cmd_dword_31__N_1817[9] (\int_cmd_dword_31__N_1817[9] ), 
            .n11669(n11669), .n11687(n11687), .n11678(n11678), .n11786(n11786), 
            .\int_cmd_dword_31__N_1817[17] (\int_cmd_dword_31__N_1817[17] ), 
            .n4(n4_c), .\int_cmd_dword_31__N_1817[1] (\int_cmd_dword_31__N_1817[1] ), 
            .\spi_read_stat[7] (spi_read_stat_c[7]), .\spi_wrt_enb[7] (spi_wrt_enb_c[7]), 
            .\spi_wrt_enb[0] (spi_wrt_enb[0]), .\spi_read_stat[0] (spi_read_stat[0]), 
            .\spi_read_stat[3] (spi_read_stat[3]), .\spi_wrt_enb[3] (\spi_wrt_enb[3] ), 
            .\spi_read_stat[5] (spi_read_stat[5]), .\spi_wrt_enb[5] (spi_wrt_enb_c[5]), 
            .n17075(n17075), .\spi_wrt_enb[6] (\spi_wrt_enb[6] ), .\spi_read_stat[6] (spi_read_stat[6]), 
            .\cmd_dword_31__N_2020[29] (\cmd_dword_31__N_2020[29] ), .\cmd_dword_31__N_2020[27] (\cmd_dword_31__N_2020[27] ), 
            .SPIFlashSCK_c(SPIFlashSCK_c), .byte_length({byte_length}), 
            .\cmd_dword_31__N_2020[26] (\cmd_dword_31__N_2020[26] ), .spi_req(spi_req), 
            .C_ACK_O_N_1694(C_ACK_O_N_1694), .wr_enb(wr_enb), .\int_cmd_dword[9] (\int_cmd_dword[9] ), 
            .\div_num[1] (div_num[1]), .n13(n13), .\int_cmd_dword[17] (\int_cmd_dword[17] ), 
            .n20197(n20197), .n3940(n3918[9]), .n18763(n18763)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(451[4] 482[8])
    
endmodule
//
// Verilog Description of module wb_intf_renamed_due_excessive_length_5
//

module wb_intf_renamed_due_excessive_length_5 (n20100, interalClock, \SHAREDBUS_DAT_I[0] , 
            cmd_bytes, byte_length, n8767, ctrl_port_cmd, \ext_addr[4] , 
            \ext_addr[3] , n13341, spi_cmd_ext, spi_cmd, wr_enb, SPIFlashS_DAT_O, 
            read_data, spi_wr, SPIFlashS_ACK_O, n20209, ctrl_port_req, 
            ctrl_port_req_N_1718, length_arb, n20073, write_data, LM8D_DAT_O, 
            SPIFlashC_DAT_O, spi_byte_prg, spi_page_prg, spi_blk1_ers, 
            spi_blk2_ers, spi_chip_ers, spi_wrt_enb, spi_wrt_disb, spi_read_stat, 
            spi_wrt_stat, spi_pwd_down, spi_pwd_up, wb_state, bytes_arb, 
            ctr_state, n18748, n18749, n20098, n19622, n19621, n20099, 
            n18750, n18751, n18755, n18756, n18758, n18759, n20087, 
            n18794, n18795, n18796, n18797, n18801, n18802, \div_num[1] , 
            \SHAREDBUS_DAT_I[1] , \SHAREDBUS_DAT_I[2] , \SHAREDBUS_DAT_I[3] , 
            \SHAREDBUS_DAT_I[4] , \SHAREDBUS_DAT_I[5] , \SHAREDBUS_DAT_I[6] , 
            \SHAREDBUS_DAT_I[7] , n18803, n18804, n18811, n18812, 
            n19598, n20053, n18813, n18814, n20101, n20145, \ext_addr[2] , 
            \ext_addr[5] , n18818, n18819, n13407, n20061, n20077, 
            n15, n20055, n20056, n105, n96, n94, n82, n18820, 
            n18821, n18879, n18880, n20088, n20072, n937, n20090, 
            n973, \ext_addr[6] , \spi_cmd_arb[31] , n20071, n20045, 
            n18881, n18882, n20084, \spi_cmd_arb[29] , n20093, n7955, 
            \spi_blk1_ers[6] , \spi_blk1_ers[4] , n13317, n20078, n20097, 
            n18695, n5014, n18889, n18890, n20086, n5, n18253, 
            n21076, \selected[1] , n6, n18891, n18892, spi_ack, 
            n20070, n20085, n18334, n18346, n20041, n20058, \spi_blk1_ers[3] , 
            \spi_blk1_ers[2] , SPIFlashC_ACK_O, n21077, n20091, n20062, 
            n7030, \ext_addr[7] , n7029, n20092, n7926, n20089, 
            n19597, \D_ADR_O_31__N_499[31] , n18607, n10, \page_ptr1[3] , 
            n18292, n18440, n18603, \page_ptr2[5] , \page_ptr2[7] , 
            \page_ptr3[2] , \page_ptr3[3] , \page_ptr1[5] , \page_ptr3[5] , 
            \page_ptr1[4] , \page_ptr1[2] , \page_ptr2[4] , n5718, n18499, 
            n20057, n166, n20064, n8011, interalClock_enable_118, 
            n3851, \spi_cmd_arb[24] , \spi_cmd_arb[25] , \spi_cmd_arb[26] , 
            \spi_cmd_arb[27] , \spi_cmd_arb[28] , \spi_cmd_arb[30] , \spi_blk2_ers[1] , 
            \spi_blk2_ers[2] , \spi_blk2_ers[3] , \spi_blk2_ers[4] , \spi_blk2_ers[6] , 
            \spi_chip_ers[1] , \spi_chip_ers[2] , \spi_chip_ers[3] , \spi_chip_ers[4] , 
            \spi_chip_ers[6] , \spi_wrt_disb[1] , \spi_wrt_disb[2] , \spi_wrt_disb[3] , 
            \spi_wrt_disb[4] , \spi_wrt_disb[6] , \spi_pwd_down[3] , \spi_pwd_down[4] , 
            \spi_pwd_down[5] , \spi_pwd_down[6] , n2395, n13174, n3853, 
            n18697, n20173, n46, n4818, n20095, n20079, n3854, 
            n20081, n20043, n2394, n2390, n20096, n992, n20080, 
            n20094, n20047, n18296, n12698, n3855, n12638, n3856, 
            n11752, n3857, n11753, n12609, n12610, n12623, n12624, 
            n11492, n56, n58, n12637, n12653, n18763, n20137, 
            n11786, n4, n19529, n19528, n19530, n12697, n20067, 
            n20065, n19272, n12652, n4194, n12702, n4195, n12679, 
            n12678, n20337, n20293, n20309, n20343, n4189, n4191, 
            n4192, n4193, n19271, n18861, C_ACK_O_N_1694, n18856, 
            n4_adj_4, n20075, n4_adj_5, n18855, n18862, n18850, 
            n18849, n18844, n18843, n18835, n18834, n18868, n18867, 
            n29, n18558, n20083, n19363, n9, n8, n19358, n3192, 
            n18851, n18854, n3011, n5323, n4422, n18853, n5073, 
            n20082, n4_adj_6, n13214, n18864, n18857, n18833, n20059, 
            n18875, n18869, n3017, n18845, n18848, n18852, n18847, 
            n18846, n18841, n18840, \ext_addr[1] , \ext_addr[0] , 
            n20163, n14, n39, n20102, n16, n17, n18980, n18874, 
            n17_adj_7, n18, n18575, n18873, n19, n20069, n18865, 
            n20, n18832, n18356, n18831, n21, n19305, \SHAREDBUS_ADR_I[9] , 
            \SHAREDBUS_ADR_I[10] , n20176, \SHAREDBUS_ADR_I[23] , \SHAREDBUS_ADR_I[22] , 
            \SHAREDBUS_ADR_I[21] , n5596, \SHAREDBUS_ADR_I[20] , \SHAREDBUS_ADR_I[19] , 
            spi_req, \SHAREDBUS_ADR_I[17] , n4165, \SHAREDBUS_ADR_I[15] , 
            n4167, n46_adj_8, \SHAREDBUS_ADR_I[12] , \SHAREDBUS_ADR_I[11] , 
            n5616, \SHAREDBUS_ADR_I[14] , \SHAREDBUS_ADR_I[13] , n4166, 
            n11755, n3940, n8015, n5207, n12402, n4163, n4164, 
            n19478, n4_adj_9, n18491, n20177, n24, n19463, n19458, 
            n20019, n3860, n20076, n18_adj_10, n12547, n3953, n12523, 
            n3954, n12495, n3955, n3865, n12442, n3957, n20049, 
            n68, n20074, n68_adj_11, n18332, n18333, \page_ptr2[3] , 
            \page_ptr2[6] , n18383, n68_adj_12, n6_adj_13, n18233, 
            n6985, ctrl_spi_cmd_31__N_1298, n12, n21_adj_14, n7054, 
            ctrl_spi_cmd_31__N_1299, ctrl_spi_cmd_31__N_1300, ctrl_spi_cmd_31__N_1301, 
            ctrl_spi_cmd_31__N_1302, ctrl_spi_cmd_31__N_1303, ctrl_spi_cmd_31__N_1304, 
            ctrl_spi_cmd_31__N_1305, n18784) /* synthesis syn_module_defined=1 */ ;
    input n20100;
    input interalClock;
    input \SHAREDBUS_DAT_I[0] ;
    output [3:0]cmd_bytes;
    output [2:0]byte_length;
    input n8767;
    output [23:0]ctrl_port_cmd;
    input \ext_addr[4] ;
    input \ext_addr[3] ;
    output n13341;
    output [31:0]spi_cmd_ext;
    output [31:0]spi_cmd;
    output wr_enb;
    output [7:0]SPIFlashS_DAT_O;
    input [7:0]read_data;
    output spi_wr;
    output SPIFlashS_ACK_O;
    input n20209;
    output ctrl_port_req;
    input ctrl_port_req_N_1718;
    output [2:0]length_arb;
    input n20073;
    output [7:0]write_data;
    input [7:0]LM8D_DAT_O;
    output [7:0]SPIFlashC_DAT_O;
    output [7:0]spi_byte_prg;
    output [7:0]spi_page_prg;
    output [7:0]spi_blk1_ers;
    output [7:0]spi_blk2_ers;
    output [7:0]spi_chip_ers;
    output [7:0]spi_wrt_enb;
    output [7:0]spi_wrt_disb;
    output [7:0]spi_read_stat;
    output [7:0]spi_wrt_stat;
    output [7:0]spi_pwd_down;
    output [7:0]spi_pwd_up;
    output [1:0]wb_state;
    output [3:0]bytes_arb;
    output ctr_state;
    input n18748;
    input n18749;
    input n20098;
    input n19622;
    input n19621;
    input n20099;
    input n18750;
    input n18751;
    input n18755;
    input n18756;
    input n18758;
    input n18759;
    input n20087;
    input n18794;
    input n18795;
    input n18796;
    input n18797;
    input n18801;
    input n18802;
    output \div_num[1] ;
    input \SHAREDBUS_DAT_I[1] ;
    input \SHAREDBUS_DAT_I[2] ;
    input \SHAREDBUS_DAT_I[3] ;
    input \SHAREDBUS_DAT_I[4] ;
    input \SHAREDBUS_DAT_I[5] ;
    input \SHAREDBUS_DAT_I[6] ;
    input \SHAREDBUS_DAT_I[7] ;
    input n18803;
    input n18804;
    input n18811;
    input n18812;
    input n19598;
    input n20053;
    input n18813;
    input n18814;
    input n20101;
    output n20145;
    input \ext_addr[2] ;
    input \ext_addr[5] ;
    input n18818;
    input n18819;
    input n13407;
    output n20061;
    input n20077;
    input n15;
    output n20055;
    output n20056;
    input n105;
    input n96;
    input n94;
    input n82;
    input n18820;
    input n18821;
    input n18879;
    input n18880;
    input n20088;
    input n20072;
    output n937;
    input n20090;
    output n973;
    input \ext_addr[6] ;
    output \spi_cmd_arb[31] ;
    input n20071;
    input n20045;
    input n18881;
    input n18882;
    input n20084;
    output \spi_cmd_arb[29] ;
    input n20093;
    output n7955;
    output \spi_blk1_ers[6] ;
    output \spi_blk1_ers[4] ;
    output n13317;
    input n20078;
    input n20097;
    output n18695;
    input n5014;
    input n18889;
    input n18890;
    input n20086;
    input n5;
    input n18253;
    input n21076;
    input \selected[1] ;
    input n6;
    input n18891;
    input n18892;
    input spi_ack;
    input n20070;
    input n20085;
    input n18334;
    output n18346;
    input n20041;
    input n20058;
    output \spi_blk1_ers[3] ;
    output \spi_blk1_ers[2] ;
    output SPIFlashC_ACK_O;
    output n21077;
    input n20091;
    input n20062;
    input n7030;
    input \ext_addr[7] ;
    input n7029;
    input n20092;
    output n7926;
    input n20089;
    output n19597;
    input \D_ADR_O_31__N_499[31] ;
    input n18607;
    input n10;
    input \page_ptr1[3] ;
    output n18292;
    input n18440;
    output n18603;
    input \page_ptr2[5] ;
    input \page_ptr2[7] ;
    input \page_ptr3[2] ;
    input \page_ptr3[3] ;
    input \page_ptr1[5] ;
    input \page_ptr3[5] ;
    input \page_ptr1[4] ;
    input \page_ptr1[2] ;
    input \page_ptr2[4] ;
    input n5718;
    input n18499;
    input n20057;
    output n166;
    input n20064;
    input n8011;
    input interalClock_enable_118;
    input n3851;
    output \spi_cmd_arb[24] ;
    output \spi_cmd_arb[25] ;
    output \spi_cmd_arb[26] ;
    output \spi_cmd_arb[27] ;
    output \spi_cmd_arb[28] ;
    output \spi_cmd_arb[30] ;
    output \spi_blk2_ers[1] ;
    output \spi_blk2_ers[2] ;
    output \spi_blk2_ers[3] ;
    output \spi_blk2_ers[4] ;
    output \spi_blk2_ers[6] ;
    output \spi_chip_ers[1] ;
    output \spi_chip_ers[2] ;
    output \spi_chip_ers[3] ;
    output \spi_chip_ers[4] ;
    output \spi_chip_ers[6] ;
    output \spi_wrt_disb[1] ;
    output \spi_wrt_disb[2] ;
    output \spi_wrt_disb[3] ;
    output \spi_wrt_disb[4] ;
    output \spi_wrt_disb[6] ;
    output \spi_pwd_down[3] ;
    output \spi_pwd_down[4] ;
    output \spi_pwd_down[5] ;
    output \spi_pwd_down[6] ;
    input n2395;
    input n13174;
    input n3853;
    output n18697;
    output n20173;
    input n46;
    input n4818;
    input n20095;
    input n20079;
    input n3854;
    input n20081;
    input n20043;
    input n2394;
    input n2390;
    input n20096;
    output n992;
    input n20080;
    input n20094;
    input n20047;
    input n18296;
    output n12698;
    input n3855;
    output n12638;
    input n3856;
    output n11752;
    input n3857;
    output n11753;
    output n12609;
    output n12610;
    output n12623;
    output n12624;
    output n11492;
    output n56;
    output n58;
    output n12637;
    output n12653;
    input n18763;
    input n20137;
    output n11786;
    output n4;
    input n19529;
    input n19528;
    output n19530;
    output n12697;
    input n20067;
    input n20065;
    output n19272;
    output n12652;
    output n4194;
    output n12702;
    output n4195;
    output n12679;
    output n12678;
    input n20337;
    input n20293;
    input n20309;
    input n20343;
    output n4189;
    output n4191;
    output n4192;
    output n4193;
    output n19271;
    output n18861;
    input C_ACK_O_N_1694;
    output n18856;
    input n4_adj_4;
    input n20075;
    input n4_adj_5;
    output n18855;
    output n18862;
    output n18850;
    output n18849;
    output n18844;
    output n18843;
    output n18835;
    output n18834;
    output n18868;
    output n18867;
    input n29;
    input n18558;
    input n20083;
    input n19363;
    input n9;
    output n8;
    input n19358;
    input n3192;
    input n18851;
    input n18854;
    output n3011;
    input n5323;
    output n4422;
    output n18853;
    input n5073;
    input n20082;
    input n4_adj_6;
    input n13214;
    output n18864;
    input n18857;
    input n18833;
    input n20059;
    input n18875;
    input n18869;
    output n3017;
    input n18845;
    input n18848;
    output n18852;
    output n18847;
    output n18846;
    output n18841;
    output n18840;
    input \ext_addr[1] ;
    input \ext_addr[0] ;
    output n20163;
    input n14;
    output n39;
    input n20102;
    input n16;
    input n17;
    output n18980;
    output n18874;
    input n17_adj_7;
    input n18;
    input n18575;
    output n18873;
    input n19;
    input n20069;
    output n18865;
    input n20;
    output n18832;
    input n18356;
    output n18831;
    input n21;
    input n19305;
    input \SHAREDBUS_ADR_I[9] ;
    input \SHAREDBUS_ADR_I[10] ;
    output n20176;
    input \SHAREDBUS_ADR_I[23] ;
    input \SHAREDBUS_ADR_I[22] ;
    input \SHAREDBUS_ADR_I[21] ;
    input n5596;
    input \SHAREDBUS_ADR_I[20] ;
    input \SHAREDBUS_ADR_I[19] ;
    output spi_req;
    input \SHAREDBUS_ADR_I[17] ;
    output n4165;
    input \SHAREDBUS_ADR_I[15] ;
    output n4167;
    output n46_adj_8;
    input \SHAREDBUS_ADR_I[12] ;
    input \SHAREDBUS_ADR_I[11] ;
    input n5616;
    input \SHAREDBUS_ADR_I[14] ;
    input \SHAREDBUS_ADR_I[13] ;
    output n4166;
    output n11755;
    output n3940;
    input n8015;
    input n5207;
    output n12402;
    output n4163;
    output n4164;
    input n19478;
    input n4_adj_9;
    output n18491;
    output n20177;
    input n24;
    input n19463;
    input n19458;
    input n20019;
    input n3860;
    input n20076;
    input n18_adj_10;
    input n12547;
    input n3953;
    input n12523;
    input n3954;
    input n12495;
    input n3955;
    input n3865;
    input n12442;
    input n3957;
    input n20049;
    input n68;
    input n20074;
    input n68_adj_11;
    input n18332;
    input n18333;
    input \page_ptr2[3] ;
    input \page_ptr2[6] ;
    output n18383;
    input n68_adj_12;
    input n6_adj_13;
    output n18233;
    input n6985;
    output ctrl_spi_cmd_31__N_1298;
    input n12;
    input n21_adj_14;
    output n7054;
    output ctrl_spi_cmd_31__N_1299;
    output ctrl_spi_cmd_31__N_1300;
    output ctrl_spi_cmd_31__N_1301;
    output ctrl_spi_cmd_31__N_1302;
    output ctrl_spi_cmd_31__N_1303;
    output ctrl_spi_cmd_31__N_1304;
    output ctrl_spi_cmd_31__N_1305;
    input n18784;
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    
    wire n18822, n18823, n18824;
    wire [7:0]spi_read;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(139[19:27])
    
    wire interalClock_enable_52, n18788, n18789, n18790, interalClock_enable_312;
    wire [2:0]ctrl_byte_length;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(166[27:43])
    
    wire interalClock_enable_7, n18289, n18288;
    wire [31:0]n1;
    
    wire n18287, n18858, n18859, n18860, interalClock_enable_10, wr_enb_N_1702, 
        interalClock_enable_99, spi_wr_N_1659, interalClock_enable_11, 
        interalClock_enable_12, interalClock_enable_102, n18876, n18877, 
        n18878, n18883, n18884, n18885, n8756, n18886, n18887, 
        n18888, interalClock_enable_111;
    wire [7:0]C_DAT_O_7__N_1036;
    
    wire n18893, n18894, n18895, interalClock_enable_19, n939, interalClock_enable_20;
    wire [7:0]spi_fast_read;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(140[19:32])
    
    wire interalClock_enable_177;
    wire [7:0]read_data_arb;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(136[27:40])
    
    wire interalClock_enable_184;
    wire [15:0]page_prg_length;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(576[15:30])
    
    wire interalClock_enable_191;
    wire [15:0]page_rd_length;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(576[32:46])
    
    wire interalClock_enable_206, interalClock_enable_221, interalClock_enable_228, 
        interalClock_enable_235, interalClock_enable_242;
    wire [7:0]spi_blk3_ers;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(145[19:31])
    
    wire interalClock_enable_249, interalClock_enable_256, interalClock_enable_263, 
        interalClock_enable_270, interalClock_enable_277, interalClock_enable_284, 
        interalClock_enable_291, interalClock_enable_298;
    wire [7:0]spi_dev_id;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(151[19:29])
    
    wire interalClock_enable_305;
    wire [1:0]wb_state_1__N_1306;
    wire [3:0]n129;
    
    wire interalClock_enable_309, interalClock_enable_43, n18757, n18760, 
        n7175, n18752, n19623, n18753, n18798, n18799, n18805, 
        interalClock_enable_45, n18806, n18815, n131, n19599, n18816, 
        n20211, n20210, n5334, n19050, n4352, n4337, n19745, n3251, 
        n20052, n4353;
    wire [7:0]spi_wrt_disb_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(147[19:31])
    wire [7:0]spi_blk2_ers_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(144[19:31])
    
    wire n20310;
    wire [7:0]spi_chip_ers_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(146[19:31])
    
    wire n20311, n20312, n20313;
    wire [7:0]spi_blk1_ers_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(143[19:31])
    
    wire n20314, interalClock_enable_154, n8164, interalClock_enable_199, 
        interalClock_enable_170, n20316, n20317, n20318, n20319, n20046, 
        n20320, n4357, n19459, n4358, n19464, n4356, n19479;
    wire [0:0]n3553;
    wire [0:0]n3488;
    
    wire interalClock_enable_162, n19306, n20060, n944, n4_c;
    wire [0:0]n3550;
    wire [1:0]wb_state_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(174[18:26])
    
    wire n942, n941, n13320, n943, n8604, n18515, n18286, n945, 
        n946, n940;
    wire [7:0]n2283;
    wire [7:0]n2359;
    
    wire n8475, n19481, n18168, interalClock_enable_104, n5136, interalClock_enable_146, 
        n8744;
    wire [2:0]n27;
    
    wire interalClock_enable_169, n20063, n6_adj_2139, n4161, n12439, 
        n18442, n18599, n18551, n18591, n20200, n83_adj_2140, n18754, 
        n83_adj_2141, n83_adj_2142, interalClock_enable_123;
    wire [31:0]n3009;
    wire [31:0]n3150;
    
    wire interalClock_enable_131, interalClock_enable_139, interalClock_enable_195, 
        interalClock_enable_214;
    wire [7:0]spi_pwd_down_c;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(149[19:31])
    wire [7:0]n3950;
    
    wire n83_adj_2143, n20044;
    wire [7:0]n1290;
    
    wire n83_adj_2144, n18_c;
    wire [0:0]n3485;
    
    wire n18245, n4_adj_2145, n10_adj_2146, n20020, n6_adj_2147, n19460, 
        n19457, n19461, n20048, n18298, n19465, n19462, n19466, 
        n19480, n19477, n57, n57_adj_2148;
    wire [31:0]n42;
    
    wire n2;
    wire [31:0]n3252;
    
    wire n20321, n20315, n18308, n50_adj_2152, n17550, n18306, n50_adj_2153, 
        n17560, n18307, n50_adj_2154, n17480, n1416, n80, n116, 
        n16980, n80_adj_2155, n116_adj_2156, n16988, n18169, n20174, 
        n14364, n80_adj_2157, n116_adj_2158, n16959, n116_adj_2159, 
        n50_adj_2161, n16946, n19600, n18224, n80_adj_2163, n116_adj_2164, 
        n16974, n7177, n18170, n18809, n18808;
    wire [7:0]n1512;
    
    wire n18318, n4_adj_2165, n8063;
    wire [0:0]n3491;
    
    wire n3565, n18194, n19_c, n8265;
    wire [0:0]n3556;
    
    wire n19596, n20066, n18337, n30_adj_2167, n18450, n18446, n18297, 
        n19750, n20175, n20144, n17137, n4_adj_2171, n18215, n20021, 
        n19307, n8071, n8067, interalClock_enable_310, n8064;
    wire [3:0]ctrl_cmd_bytes;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(165[19:33])
    
    wire n18800, n18817, n18807;
    wire [31:0]n3218;
    
    wire n4_adj_2173, n19_adj_2176, n19747, n19749, n167, n6_adj_2177, 
        n17041, n16896, n38, n32, n5_adj_2179, n6980, n18810, 
        n6976, n19746;
    
    L6MUX21 i16053 (.D0(n18822), .D1(n18823), .SD(n20100), .Z(n18824));
    FD1P3AY reg_spi_read_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_52), 
            .CK(interalClock), .Q(spi_read[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_i0_i0.GSR = "ENABLED";
    PFUMX i16019 (.BLUT(n18788), .ALUT(n18789), .C0(cmd_bytes[1]), .Z(n18790));
    FD1P3IX byte_length_i1 (.D(ctrl_byte_length[1]), .SP(interalClock_enable_312), 
            .CD(n8767), .CK(interalClock), .Q(byte_length[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam byte_length_i1.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i16 (.D(n18289), .SP(interalClock_enable_7), .CK(interalClock), 
            .Q(ctrl_port_cmd[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i16.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i15 (.D(n18288), .SP(interalClock_enable_7), .CK(interalClock), 
            .Q(ctrl_port_cmd[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i15.GSR = "ENABLED";
    LUT4 i10140_2_lut (.A(\ext_addr[4] ), .B(\ext_addr[3] ), .Z(n13341)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10140_2_lut.init = 16'heeee;
    LUT4 i16017_3_lut (.A(spi_cmd_ext[25]), .B(spi_cmd_ext[1]), .C(cmd_bytes[0]), 
         .Z(n18788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16017_3_lut.init = 16'hcaca;
    FD1P3AX spi_cmd_i0 (.D(n1[0]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i0.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i14 (.D(n18287), .SP(interalClock_enable_7), .CK(interalClock), 
            .Q(ctrl_port_cmd[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i14.GSR = "ENABLED";
    PFUMX i16089 (.BLUT(n18858), .ALUT(n18859), .C0(n20100), .Z(n18860));
    FD1P3AX wr_enb_561 (.D(wr_enb_N_1702), .SP(interalClock_enable_10), 
            .CK(interalClock), .Q(wr_enb)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam wr_enb_561.GSR = "ENABLED";
    FD1P3AX S_DAT_O_i0 (.D(read_data[0]), .SP(interalClock_enable_99), .CK(interalClock), 
            .Q(SPIFlashS_DAT_O[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam S_DAT_O_i0.GSR = "ENABLED";
    FD1P3AX spi_wr_563 (.D(spi_wr_N_1659), .SP(interalClock_enable_10), 
            .CK(interalClock), .Q(spi_wr)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_wr_563.GSR = "ENABLED";
    FD1P3AX S_ACK_O_565 (.D(n20209), .SP(interalClock_enable_11), .CK(interalClock), 
            .Q(SPIFlashS_ACK_O)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam S_ACK_O_565.GSR = "ENABLED";
    FD1P3AX c_ctrl_port_req_567 (.D(ctrl_port_req_N_1718), .SP(interalClock_enable_12), 
            .CK(interalClock), .Q(ctrl_port_req)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam c_ctrl_port_req_567.GSR = "ENABLED";
    FD1P3AX length_arb_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_102), 
            .CK(interalClock), .Q(length_arb[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam length_arb_i0_i0.GSR = "ENABLED";
    PFUMX i16107 (.BLUT(n18876), .ALUT(n18877), .C0(n20073), .Z(n18878));
    L6MUX21 i16114 (.D0(n18883), .D1(n18884), .SD(n20100), .Z(n18885));
    FD1P3IX write_data_i7 (.D(LM8D_DAT_O[7]), .SP(interalClock_enable_312), 
            .CD(n8756), .CK(interalClock), .Q(write_data[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam write_data_i7.GSR = "ENABLED";
    PFUMX i16117 (.BLUT(n18886), .ALUT(n18887), .C0(n20100), .Z(n18888));
    FD1P3IX write_data_i6 (.D(LM8D_DAT_O[6]), .SP(interalClock_enable_312), 
            .CD(n8756), .CK(interalClock), .Q(write_data[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam write_data_i6.GSR = "ENABLED";
    FD1P3IX write_data_i5 (.D(LM8D_DAT_O[5]), .SP(interalClock_enable_312), 
            .CD(n8756), .CK(interalClock), .Q(write_data[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam write_data_i5.GSR = "ENABLED";
    FD1P3AX reg_C_DAT_O_i0 (.D(C_DAT_O_7__N_1036[0]), .SP(interalClock_enable_111), 
            .CK(interalClock), .Q(SPIFlashC_DAT_O[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_C_DAT_O_i0.GSR = "ENABLED";
    FD1P3IX write_data_i4 (.D(LM8D_DAT_O[4]), .SP(interalClock_enable_312), 
            .CD(n8756), .CK(interalClock), .Q(write_data[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam write_data_i4.GSR = "ENABLED";
    L6MUX21 i16124 (.D0(n18893), .D1(n18894), .SD(n20100), .Z(n18895));
    FD1P3AX spi_cmd_arb_i1 (.D(n939), .SP(interalClock_enable_19), .CK(interalClock), 
            .Q(ctrl_port_cmd[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i1.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_20), 
            .CK(interalClock), .Q(spi_cmd_ext[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i0.GSR = "ENABLED";
    FD1P3AY reg_spi_fast_read_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_177), 
            .CK(interalClock), .Q(spi_fast_read[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_fast_read_i0_i0.GSR = "ENABLED";
    FD1P3AX read_data_arb_i0 (.D(read_data[0]), .SP(interalClock_enable_184), 
            .CK(interalClock), .Q(read_data_arb[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam read_data_arb_i0.GSR = "ENABLED";
    FD1P3AX page_prg_length_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_191), 
            .CK(interalClock), .Q(page_prg_length[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i0.GSR = "ENABLED";
    FD1P3AX page_rd_length_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_206), 
            .CK(interalClock), .Q(page_rd_length[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i0.GSR = "ENABLED";
    FD1P3AX reg_spi_byte_prg_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_221), 
            .CK(interalClock), .Q(spi_byte_prg[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_byte_prg_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_spi_page_prg_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_228), 
            .CK(interalClock), .Q(spi_page_prg[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_page_prg_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_spi_blk1_ers_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_235), 
            .CK(interalClock), .Q(spi_blk1_ers[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk1_ers_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_spi_blk2_ers_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_242), 
            .CK(interalClock), .Q(spi_blk2_ers[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk2_ers_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_spi_blk3_ers_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_249), 
            .CK(interalClock), .Q(spi_blk3_ers[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk3_ers_i0_i0.GSR = "ENABLED";
    FD1P3AY reg_spi_chip_ers_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_256), 
            .CK(interalClock), .Q(spi_chip_ers[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_chip_ers_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_enb_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_263), 
            .CK(interalClock), .Q(spi_wrt_enb[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_enb_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_disb_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_270), 
            .CK(interalClock), .Q(spi_wrt_disb[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_disb_i0_i0.GSR = "ENABLED";
    FD1P3AY reg_spi_read_stat_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_277), 
            .CK(interalClock), .Q(spi_read_stat[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_stat_i0_i0.GSR = "ENABLED";
    FD1P3AY reg_spi_wrt_stat_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_284), 
            .CK(interalClock), .Q(spi_wrt_stat[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_stat_i0_i0.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_down_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_291), 
            .CK(interalClock), .Q(spi_pwd_down[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_down_i0_i0.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_up_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_298), 
            .CK(interalClock), .Q(spi_pwd_up[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_up_i0_i0.GSR = "ENABLED";
    FD1P3AY reg_spi_dev_id_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_305), 
            .CK(interalClock), .Q(spi_dev_id[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_dev_id_i0_i0.GSR = "ENABLED";
    FD1S3AX wb_state_i0 (.D(wb_state_1__N_1306[0]), .CK(interalClock), .Q(wb_state[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam wb_state_i0.GSR = "ENABLED";
    FD1P3IX write_data_i3 (.D(LM8D_DAT_O[3]), .SP(interalClock_enable_312), 
            .CD(n8756), .CK(interalClock), .Q(write_data[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam write_data_i3.GSR = "ENABLED";
    FD1P3IX write_data_i2 (.D(LM8D_DAT_O[2]), .SP(interalClock_enable_312), 
            .CD(n8756), .CK(interalClock), .Q(write_data[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam write_data_i2.GSR = "ENABLED";
    FD1P3IX write_data_i1 (.D(LM8D_DAT_O[1]), .SP(interalClock_enable_312), 
            .CD(n8756), .CK(interalClock), .Q(write_data[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam write_data_i1.GSR = "ENABLED";
    FD1P3AX cmd_bytes_i3 (.D(n129[3]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(cmd_bytes[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam cmd_bytes_i3.GSR = "ENABLED";
    FD1P3AX bytes_arb_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_309), 
            .CK(interalClock), .Q(bytes_arb[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam bytes_arb_i0_i0.GSR = "ENABLED";
    FD1P3AX ctr_state_568 (.D(ctrl_port_req_N_1718), .SP(interalClock_enable_43), 
            .CK(interalClock), .Q(ctr_state));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam ctr_state_568.GSR = "ENABLED";
    L6MUX21 i4329 (.D0(n18757), .D1(n18760), .SD(n20100), .Z(n7175));
    PFUMX i15981 (.BLUT(n18748), .ALUT(n18749), .C0(n20098), .Z(n18752));
    PFUMX i16757 (.BLUT(n19622), .ALUT(n19621), .C0(n20099), .Z(n19623));
    PFUMX i15982 (.BLUT(n18750), .ALUT(n18751), .C0(n20098), .Z(n18753));
    PFUMX i15986 (.BLUT(n18755), .ALUT(n18756), .C0(n20098), .Z(n18757));
    PFUMX i15989 (.BLUT(n18758), .ALUT(n18759), .C0(n20087), .Z(n18760));
    PFUMX i16027 (.BLUT(n18794), .ALUT(n18795), .C0(n20098), .Z(n18798));
    PFUMX i16028 (.BLUT(n18796), .ALUT(n18797), .C0(n20098), .Z(n18799));
    PFUMX i16034 (.BLUT(n18801), .ALUT(n18802), .C0(n20098), .Z(n18805));
    FD1P3AX reg_fast_read_578 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_45), 
            .CK(interalClock), .Q(\div_num[1] ));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_fast_read_578.GSR = "ENABLED";
    FD1P3AY reg_spi_read_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_52), 
            .CK(interalClock), .Q(spi_read[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_read_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_52), 
            .CK(interalClock), .Q(spi_read[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_read_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_52), 
            .CK(interalClock), .Q(spi_read[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_read_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_52), 
            .CK(interalClock), .Q(spi_read[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_read_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_52), 
            .CK(interalClock), .Q(spi_read[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_read_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_52), 
            .CK(interalClock), .Q(spi_read[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_read_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_52), 
            .CK(interalClock), .Q(spi_read[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_i0_i7.GSR = "ENABLED";
    PFUMX i16035 (.BLUT(n18803), .ALUT(n18804), .C0(n20098), .Z(n18806));
    PFUMX i16044 (.BLUT(n18811), .ALUT(n18812), .C0(n20098), .Z(n18815));
    PFUMX i16749 (.BLUT(n131), .ALUT(n19598), .C0(n20053), .Z(n19599));
    FD1P3AX cmd_bytes_i1 (.D(n129[1]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(cmd_bytes[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam cmd_bytes_i1.GSR = "ENABLED";
    PFUMX i16045 (.BLUT(n18813), .ALUT(n18814), .C0(n20098), .Z(n18816));
    FD1P3AX spi_cmd_i1 (.D(n1[1]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i1.GSR = "ENABLED";
    LUT4 i16500_4_lut_4_lut_then_4_lut (.A(n20101), .B(\ext_addr[3] ), .C(n20145), 
         .D(\ext_addr[2] ), .Z(n20211)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i16500_4_lut_4_lut_then_4_lut.init = 16'h5557;
    LUT4 i16500_4_lut_4_lut_else_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(\ext_addr[3] ), 
         .D(n20145), .Z(n20210)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D))))) */ ;
    defparam i16500_4_lut_4_lut_else_4_lut.init = 16'h55df;
    PFUMX i16051 (.BLUT(n18818), .ALUT(n18819), .C0(n20098), .Z(n18822));
    LUT4 i16523_3_lut_rep_202 (.A(n5334), .B(n19050), .C(n13407), .Z(n20061)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i16523_3_lut_rep_202.init = 16'hc4c4;
    LUT4 n2368_bdd_3_lut_16858 (.A(n4352), .B(n4337), .C(n20077), .Z(n19745)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n2368_bdd_3_lut_16858.init = 16'hacac;
    LUT4 i16482_2_lut_rep_193_4_lut (.A(n5334), .B(n19050), .C(n13407), 
         .D(n3251), .Z(n20052)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B+(D))) */ ;
    defparam i16482_2_lut_rep_193_4_lut.init = 16'hffc4;
    LUT4 i10077_2_lut_rep_196_4_lut (.A(n20101), .B(SPIFlashS_ACK_O), .C(n15), 
         .D(ctrl_port_req), .Z(n20055)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;
    defparam i10077_2_lut_rep_196_4_lut.init = 16'hff02;
    LUT4 i1_2_lut_rep_197_4_lut (.A(n20101), .B(SPIFlashS_ACK_O), .C(n15), 
         .D(ctrl_port_req), .Z(n20056)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;
    defparam i1_2_lut_rep_197_4_lut.init = 16'hfd00;
    FD1P3AX spi_cmd_i2 (.D(n1[2]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i2.GSR = "ENABLED";
    FD1P3AX spi_cmd_i3 (.D(n1[3]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i3.GSR = "ENABLED";
    FD1P3AX spi_cmd_i4 (.D(n1[4]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i4.GSR = "ENABLED";
    FD1P3AX spi_cmd_i5 (.D(n1[5]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i5.GSR = "ENABLED";
    FD1P3AX spi_cmd_i6 (.D(n1[6]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i6.GSR = "ENABLED";
    FD1P3AX spi_cmd_i7 (.D(n105), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i7.GSR = "ENABLED";
    FD1P3AX spi_cmd_i8 (.D(n1[8]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i8.GSR = "ENABLED";
    FD1P3AX spi_cmd_i9 (.D(n1[9]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i9.GSR = "ENABLED";
    FD1P3AX spi_cmd_i10 (.D(n1[10]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i10.GSR = "ENABLED";
    FD1P3AX spi_cmd_i11 (.D(n1[11]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i11.GSR = "ENABLED";
    FD1P3AX spi_cmd_i12 (.D(n1[12]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i12.GSR = "ENABLED";
    FD1P3AX spi_cmd_i13 (.D(n1[13]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i13.GSR = "ENABLED";
    FD1P3AX spi_cmd_i14 (.D(n1[14]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i14.GSR = "ENABLED";
    FD1P3AX spi_cmd_i15 (.D(n1[15]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i15.GSR = "ENABLED";
    FD1P3AX spi_cmd_i16 (.D(n96), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[16])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i16.GSR = "ENABLED";
    FD1P3AX spi_cmd_i17 (.D(n1[17]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[17])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i17.GSR = "ENABLED";
    FD1P3AX spi_cmd_i18 (.D(n94), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[18])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i18.GSR = "ENABLED";
    FD1P3AX spi_cmd_i19 (.D(n1[19]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[19])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i19.GSR = "ENABLED";
    FD1P3AX spi_cmd_i20 (.D(n1[20]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[20])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i20.GSR = "ENABLED";
    FD1P3AX spi_cmd_i21 (.D(n1[21]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[21])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i21.GSR = "ENABLED";
    FD1P3AX spi_cmd_i22 (.D(n1[22]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[22])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i22.GSR = "ENABLED";
    FD1P3AX spi_cmd_i23 (.D(n1[23]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[23])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i23.GSR = "ENABLED";
    FD1P3AX spi_cmd_i24 (.D(n1[24]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[24])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i24.GSR = "ENABLED";
    FD1P3AX spi_cmd_i25 (.D(n1[25]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[25])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i25.GSR = "ENABLED";
    FD1P3AX spi_cmd_i26 (.D(n1[26]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[26])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i26.GSR = "ENABLED";
    FD1P3AX spi_cmd_i27 (.D(n1[27]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[27])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i27.GSR = "ENABLED";
    FD1P3AX spi_cmd_i28 (.D(n1[28]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[28])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i28.GSR = "ENABLED";
    FD1P3AX spi_cmd_i29 (.D(n1[29]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[29])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i29.GSR = "ENABLED";
    FD1P3AX spi_cmd_i30 (.D(n82), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[30])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i30.GSR = "ENABLED";
    FD1P3AX spi_cmd_i31 (.D(n1[31]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(spi_cmd[31])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_cmd_i31.GSR = "ENABLED";
    FD1P3AX cmd_bytes_i2 (.D(n129[2]), .SP(interalClock_enable_312), .CK(interalClock), 
            .Q(cmd_bytes[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam cmd_bytes_i2.GSR = "ENABLED";
    PFUMX i16052 (.BLUT(n18820), .ALUT(n18821), .C0(n20098), .Z(n18823));
    FD1P3AX S_DAT_O_i1 (.D(read_data[1]), .SP(interalClock_enable_99), .CK(interalClock), 
            .Q(SPIFlashS_DAT_O[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam S_DAT_O_i1.GSR = "ENABLED";
    FD1P3AX S_DAT_O_i2 (.D(read_data[2]), .SP(interalClock_enable_99), .CK(interalClock), 
            .Q(SPIFlashS_DAT_O[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam S_DAT_O_i2.GSR = "ENABLED";
    FD1P3AX S_DAT_O_i3 (.D(read_data[3]), .SP(interalClock_enable_99), .CK(interalClock), 
            .Q(SPIFlashS_DAT_O[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam S_DAT_O_i3.GSR = "ENABLED";
    FD1P3AX S_DAT_O_i4 (.D(read_data[4]), .SP(interalClock_enable_99), .CK(interalClock), 
            .Q(SPIFlashS_DAT_O[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam S_DAT_O_i4.GSR = "ENABLED";
    FD1P3AX S_DAT_O_i5 (.D(read_data[5]), .SP(interalClock_enable_99), .CK(interalClock), 
            .Q(SPIFlashS_DAT_O[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam S_DAT_O_i5.GSR = "ENABLED";
    FD1P3AX S_DAT_O_i6 (.D(read_data[6]), .SP(interalClock_enable_99), .CK(interalClock), 
            .Q(SPIFlashS_DAT_O[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam S_DAT_O_i6.GSR = "ENABLED";
    FD1P3AX S_DAT_O_i7 (.D(read_data[7]), .SP(interalClock_enable_99), .CK(interalClock), 
            .Q(SPIFlashS_DAT_O[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam S_DAT_O_i7.GSR = "ENABLED";
    PFUMX i16112 (.BLUT(n18879), .ALUT(n18880), .C0(n20098), .Z(n18883));
    LUT4 i1377_3_lut_4_lut (.A(n20088), .B(n20072), .C(n937), .D(n20090), 
         .Z(n973)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[15:40])
    defparam i1377_3_lut_4_lut.init = 16'h2f20;
    LUT4 i16360_3_lut_4_lut (.A(spi_blk1_ers[1]), .B(n20073), .C(n20077), 
         .D(n4353), .Z(n131)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(835[11] 843[9])
    defparam i16360_3_lut_4_lut.init = 16'hf808;
    LUT4 ext_addr_4__bdd_3_lut_17066 (.A(\ext_addr[4] ), .B(spi_wrt_disb_c[7]), 
         .C(spi_blk2_ers_c[7]), .Z(n20310)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17066.init = 16'hd8d8;
    LUT4 ext_addr_4__bdd_3_lut_17072 (.A(\ext_addr[6] ), .B(\spi_cmd_arb[31] ), 
         .C(spi_chip_ers_c[7]), .Z(n20311)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17072.init = 16'hd8d8;
    LUT4 spi_chip_ers_7__bdd_3_lut_17465 (.A(spi_chip_ers_c[7]), .B(n20312), 
         .C(n20101), .Z(n20313)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam spi_chip_ers_7__bdd_3_lut_17465.init = 16'hcaca;
    FD1P3AX length_arb_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_102), 
            .CK(interalClock), .Q(length_arb[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam length_arb_i0_i1.GSR = "ENABLED";
    FD1P3AX length_arb_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_102), 
            .CK(interalClock), .Q(length_arb[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam length_arb_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_C_DAT_O_i1 (.D(C_DAT_O_7__N_1036[1]), .SP(interalClock_enable_111), 
            .CK(interalClock), .Q(SPIFlashC_DAT_O[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_C_DAT_O_i1.GSR = "ENABLED";
    LUT4 n20101_bdd_4_lut_17076 (.A(n20101), .B(\ext_addr[4] ), .C(spi_wrt_enb[7]), 
         .D(spi_blk1_ers_c[7]), .Z(n20314)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n20101_bdd_4_lut_17076.init = 16'hf780;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n20087), .B(n20071), .C(n20045), .D(n20098), 
         .Z(interalClock_enable_154)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    PFUMX i16113 (.BLUT(n18881), .ALUT(n18882), .C0(n20098), .Z(n18884));
    LUT4 i1_2_lut_3_lut_4_lut_adj_135 (.A(n20087), .B(n20071), .C(n8164), 
         .D(n20084), .Z(interalClock_enable_199)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i1_2_lut_3_lut_4_lut_adj_135.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_136 (.A(n20087), .B(n20071), .C(n20045), 
         .D(n20098), .Z(interalClock_enable_170)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i1_2_lut_3_lut_4_lut_adj_136.init = 16'h0040;
    LUT4 ext_addr_4__bdd_3_lut_17073 (.A(\ext_addr[4] ), .B(spi_wrt_disb_c[5]), 
         .C(spi_blk2_ers_c[5]), .Z(n20316)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17073.init = 16'hd8d8;
    LUT4 ext_addr_4__bdd_3_lut_17083 (.A(\ext_addr[6] ), .B(\spi_cmd_arb[29] ), 
         .C(spi_chip_ers_c[5]), .Z(n20317)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam ext_addr_4__bdd_3_lut_17083.init = 16'hd8d8;
    LUT4 spi_chip_ers_5__bdd_3_lut_17461 (.A(spi_chip_ers_c[5]), .B(n20318), 
         .C(n20101), .Z(n20319)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam spi_chip_ers_5__bdd_3_lut_17461.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(n20087), .B(n20071), .C(n20046), .D(n20093), 
         .Z(n7955)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 n20101_bdd_4_lut_17087 (.A(n20101), .B(\ext_addr[4] ), .C(spi_wrt_enb[5]), 
         .D(spi_blk1_ers_c[5]), .Z(n20320)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n20101_bdd_4_lut_17087.init = 16'hf780;
    LUT4 n2368_bdd_4_lut_16674_4_lut (.A(n20077), .B(spi_blk1_ers_c[5]), 
         .C(n20073), .D(n4357), .Z(n19459)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(835[11] 843[9])
    defparam n2368_bdd_4_lut_16674_4_lut.init = 16'hea40;
    LUT4 n2368_bdd_4_lut_16686_4_lut (.A(n20077), .B(\spi_blk1_ers[6] ), 
         .C(n20073), .D(n4358), .Z(n19464)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(835[11] 843[9])
    defparam n2368_bdd_4_lut_16686_4_lut.init = 16'hea40;
    LUT4 n2368_bdd_4_lut_4_lut (.A(n20077), .B(\spi_blk1_ers[4] ), .C(n20073), 
         .D(n4356), .Z(n19479)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(835[11] 843[9])
    defparam n2368_bdd_4_lut_4_lut.init = 16'hea40;
    LUT4 i16465_2_lut_3_lut_4_lut (.A(n13317), .B(n20078), .C(n20061), 
         .D(n20097), .Z(n18695)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam i16465_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 mux_1284_i1_3_lut_4_lut (.A(n13317), .B(n20078), .C(n20097), 
         .D(n5014), .Z(n3553[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_1284_i1_3_lut_4_lut.init = 16'hfb40;
    PFUMX i16122 (.BLUT(n18889), .ALUT(n18890), .C0(n20098), .Z(n18893));
    LUT4 mux_1235_i1_3_lut_4_lut (.A(n13317), .B(n20078), .C(n20084), 
         .D(n5014), .Z(n3488[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_1235_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_3_lut_4_lut_adj_137 (.A(n20087), .B(n20071), .C(n20045), 
         .D(n20098), .Z(interalClock_enable_162)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i1_2_lut_3_lut_4_lut_adj_137.init = 16'h0080;
    LUT4 SHAREDBUS_ADR_I_4__bdd_4_lut_16641 (.A(n20088), .B(n20100), .C(page_prg_length[2]), 
         .D(page_rd_length[2]), .Z(n19306)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;
    defparam SHAREDBUS_ADR_I_4__bdd_4_lut_16641.init = 16'h5410;
    LUT4 i1_2_lut_3_lut_4_lut_adj_138 (.A(n20087), .B(n20071), .C(n20045), 
         .D(n20098), .Z(interalClock_enable_20)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i1_2_lut_3_lut_4_lut_adj_138.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_139 (.A(n20087), .B(n20071), .C(n8164), 
         .D(n20084), .Z(interalClock_enable_191)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i1_2_lut_3_lut_4_lut_adj_139.init = 16'h8000;
    LUT4 i1_3_lut_rep_201_4_lut_4_lut (.A(n20086), .B(n5), .C(n18253), 
         .D(n21076), .Z(n20060)) /* synthesis lut_function=(A (C)+!A (B+(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_3_lut_rep_201_4_lut_4_lut.init = 16'hf4e4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_140 (.A(n20086), .B(n5), .C(LM8D_DAT_O[5]), 
         .D(\selected[1] ), .Z(n944)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_2_lut_3_lut_4_lut_adj_140.init = 16'hb000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_141 (.A(n20086), .B(n5), .C(LM8D_DAT_O[0]), 
         .D(\selected[1] ), .Z(n939)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_2_lut_3_lut_4_lut_adj_141.init = 16'hb000;
    LUT4 i10294_4_lut (.A(length_arb[1]), .B(n6), .C(n20100), .D(n4_c), 
         .Z(n3550[0])) /* synthesis lut_function=(!(A (B (C))+!A (B (C (D))))) */ ;
    defparam i10294_4_lut.init = 16'h3f7f;
    PFUMX i16123 (.BLUT(n18891), .ALUT(n18892), .C0(n20098), .Z(n18894));
    LUT4 spi_ack_bdd_4_lut (.A(spi_ack), .B(n20056), .C(wb_state_c[1]), 
         .D(wb_state[0]), .Z(wb_state_1__N_1306[1])) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam spi_ack_bdd_4_lut.init = 16'h5004;
    LUT4 i1_2_lut_3_lut_4_lut_adj_142 (.A(n20086), .B(n5), .C(LM8D_DAT_O[3]), 
         .D(\selected[1] ), .Z(n942)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_2_lut_3_lut_4_lut_adj_142.init = 16'hb000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_143 (.A(n20086), .B(n5), .C(LM8D_DAT_O[2]), 
         .D(\selected[1] ), .Z(n941)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_2_lut_3_lut_4_lut_adj_143.init = 16'hb000;
    LUT4 i10111_2_lut (.A(\ext_addr[5] ), .B(\ext_addr[3] ), .Z(n13320)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10111_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_144 (.A(n20086), .B(n5), .C(LM8D_DAT_O[4]), 
         .D(\selected[1] ), .Z(n943)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_2_lut_3_lut_4_lut_adj_144.init = 16'hb000;
    LUT4 i16530_4_lut (.A(n20070), .B(n8604), .C(n18515), .D(ctr_state), 
         .Z(interalClock_enable_7)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i16530_4_lut.init = 16'h0020;
    LUT4 i1_2_lut (.A(LM8D_DAT_O[7]), .B(n18286), .Z(n18289)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(\selected[1] ), .B(n5), .C(n20085), .D(n20086), 
         .Z(n18286)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0a22;
    LUT4 i1_2_lut_3_lut_4_lut_adj_145 (.A(n20086), .B(n5), .C(LM8D_DAT_O[6]), 
         .D(\selected[1] ), .Z(n945)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_2_lut_3_lut_4_lut_adj_145.init = 16'hb000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_146 (.A(n20086), .B(n5), .C(LM8D_DAT_O[7]), 
         .D(\selected[1] ), .Z(n946)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_2_lut_3_lut_4_lut_adj_146.init = 16'hb000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_147 (.A(n20086), .B(n5), .C(LM8D_DAT_O[1]), 
         .D(\selected[1] ), .Z(n940)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_2_lut_3_lut_4_lut_adj_147.init = 16'hb000;
    LUT4 i16387_3_lut_4_lut (.A(spi_blk1_ers_c[7]), .B(n20073), .C(n20077), 
         .D(n2283[7]), .Z(n2359[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16387_3_lut_4_lut.init = 16'hf808;
    LUT4 i2_4_lut (.A(n5), .B(n20086), .C(n20098), .D(n18334), .Z(n8475)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_4_lut (.A(n18346), .B(n20041), .C(n20058), .D(n19481), 
         .Z(n18168)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0200;
    LUT4 i16385_3_lut_4_lut (.A(n20073), .B(\spi_blk1_ers[3] ), .C(n20077), 
         .D(n2283[3]), .Z(n2359[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16385_3_lut_4_lut.init = 16'hf808;
    LUT4 i16383_3_lut_4_lut (.A(n20073), .B(\spi_blk1_ers[2] ), .C(n20077), 
         .D(n2283[2]), .Z(n2359[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16383_3_lut_4_lut.init = 16'hf808;
    FD1P3AX reg_C_ACK_O_570 (.D(n5136), .SP(interalClock_enable_104), .CK(interalClock), 
            .Q(SPIFlashC_ACK_O));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_C_ACK_O_570.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_148 (.A(n20090), .B(ctr_state), .C(n18253), 
         .D(n20045), .Z(interalClock_enable_146)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i1_2_lut_3_lut_4_lut_adj_148.init = 16'h2000;
    FD1P3JX byte_length_i0 (.D(n27[0]), .SP(interalClock_enable_312), .PD(n8744), 
            .CK(interalClock), .Q(byte_length[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam byte_length_i0.GSR = "ENABLED";
    LUT4 i16538_2_lut_rep_348 (.A(wb_state[0]), .B(wb_state_c[1]), .Z(n21077)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i16538_2_lut_rep_348.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_149 (.A(n20090), .B(ctr_state), .C(n20091), 
         .D(n20045), .Z(interalClock_enable_169)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i1_2_lut_3_lut_4_lut_adj_149.init = 16'h0200;
    LUT4 i5870_2_lut_4_lut_3_lut_4_lut (.A(wb_state[0]), .B(wb_state_c[1]), 
         .C(spi_ack), .D(n20062), .Z(n8744)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i5870_2_lut_4_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i10407_4_lut (.A(n7030), .B(n20101), .C(\ext_addr[7] ), .D(\ext_addr[6] ), 
         .Z(n937)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(627[15:40])
    defparam i10407_4_lut.init = 16'hccc8;
    LUT4 i1_2_lut_rep_204_4_lut (.A(n20093), .B(n7029), .C(n20092), .D(n20088), 
         .Z(n20063)) /* synthesis lut_function=(A+(B (C+!(D))+!B !(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[15:40])
    defparam i1_2_lut_rep_204_4_lut.init = 16'heaff;
    LUT4 i2_2_lut_4_lut (.A(n20093), .B(n7029), .C(n20092), .D(n7926), 
         .Z(n6_adj_2139)) /* synthesis lut_function=(A+(B (C+(D))+!B (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[15:40])
    defparam i2_2_lut_4_lut.init = 16'hffea;
    LUT4 i1_2_lut_adj_150 (.A(LM8D_DAT_O[6]), .B(n18286), .Z(n18288)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_150.init = 16'h8888;
    LUT4 n19273_bdd_3_lut_16748_4_lut (.A(n20089), .B(n20090), .C(n4161), 
         .D(n12439), .Z(n19597)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam n19273_bdd_3_lut_16748_4_lut.init = 16'hfd20;
    LUT4 i7_4_lut (.A(\D_ADR_O_31__N_499[31] ), .B(n18607), .C(n10), .D(\page_ptr1[3] ), 
         .Z(n18292)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(627[15:40])
    defparam i7_4_lut.init = 16'h2000;
    LUT4 mux_1576_i1_3_lut_4_lut (.A(n20089), .B(n20090), .C(spi_blk1_ers[0]), 
         .D(\div_num[1] ), .Z(n4337)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1576_i1_3_lut_4_lut.init = 16'hfd20;
    LUT4 i15832_4_lut (.A(n18442), .B(n18599), .C(n18551), .D(n18440), 
         .Z(n18603)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15832_4_lut.init = 16'hfffe;
    LUT4 i15685_2_lut (.A(\page_ptr2[5] ), .B(\page_ptr2[7] ), .Z(n18442)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15685_2_lut.init = 16'heeee;
    LUT4 i15828_4_lut (.A(\page_ptr3[2] ), .B(n18591), .C(n20200), .D(\page_ptr3[3] ), 
         .Z(n18599)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15828_4_lut.init = 16'hfffe;
    LUT4 i15785_4_lut (.A(\page_ptr1[5] ), .B(\page_ptr3[5] ), .C(\page_ptr1[4] ), 
         .D(\page_ptr1[2] ), .Z(n18551)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15785_4_lut.init = 16'hfffe;
    LUT4 i15820_4_lut (.A(\page_ptr2[4] ), .B(n5718), .C(\ext_addr[6] ), 
         .D(n18499), .Z(n18591)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15820_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut (.A(n20099), .B(n20090), .C(SPIFlashC_DAT_O[1]), 
         .D(n7175), .Z(n83_adj_2140)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_151 (.A(n20099), .B(n20090), .C(SPIFlashC_DAT_O[3]), 
         .D(n18754), .Z(n83_adj_2141)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_4_lut_adj_151.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_152 (.A(n20099), .B(n20090), .C(SPIFlashC_DAT_O[2]), 
         .D(n18824), .Z(n83_adj_2142)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_4_lut_adj_152.init = 16'h5140;
    LUT4 i2_3_lut_rep_187_4_lut (.A(n20057), .B(n166), .C(n20064), .D(n8011), 
         .Z(n20046)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i2_3_lut_rep_187_4_lut.init = 16'h0400;
    FD1P3AX reg_C_DAT_O_i2 (.D(C_DAT_O_7__N_1036[2]), .SP(interalClock_enable_111), 
            .CK(interalClock), .Q(SPIFlashC_DAT_O[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_C_DAT_O_i2.GSR = "ENABLED";
    FD1P3AX reg_C_DAT_O_i3 (.D(C_DAT_O_7__N_1036[3]), .SP(interalClock_enable_111), 
            .CK(interalClock), .Q(SPIFlashC_DAT_O[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_C_DAT_O_i3.GSR = "ENABLED";
    FD1P3AX reg_C_DAT_O_i4 (.D(C_DAT_O_7__N_1036[4]), .SP(interalClock_enable_111), 
            .CK(interalClock), .Q(SPIFlashC_DAT_O[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_C_DAT_O_i4.GSR = "ENABLED";
    FD1P3AX reg_C_DAT_O_i5 (.D(C_DAT_O_7__N_1036[5]), .SP(interalClock_enable_111), 
            .CK(interalClock), .Q(SPIFlashC_DAT_O[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_C_DAT_O_i5.GSR = "ENABLED";
    FD1P3AX reg_C_DAT_O_i6 (.D(C_DAT_O_7__N_1036[6]), .SP(interalClock_enable_111), 
            .CK(interalClock), .Q(SPIFlashC_DAT_O[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_C_DAT_O_i6.GSR = "ENABLED";
    FD1P3AX reg_C_DAT_O_i7 (.D(C_DAT_O_7__N_1036[7]), .SP(interalClock_enable_111), 
            .CK(interalClock), .Q(SPIFlashC_DAT_O[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_C_DAT_O_i7.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i2 (.D(n940), .SP(interalClock_enable_118), .CK(interalClock), 
            .Q(ctrl_port_cmd[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i2.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i3 (.D(n941), .SP(interalClock_enable_118), .CK(interalClock), 
            .Q(ctrl_port_cmd[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i3.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i4 (.D(n942), .SP(interalClock_enable_118), .CK(interalClock), 
            .Q(ctrl_port_cmd[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i4.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i5 (.D(n943), .SP(interalClock_enable_118), .CK(interalClock), 
            .Q(ctrl_port_cmd[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i5.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i6 (.D(n944), .SP(interalClock_enable_118), .CK(interalClock), 
            .Q(ctrl_port_cmd[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i6.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i7 (.D(n945), .SP(interalClock_enable_118), .CK(interalClock), 
            .Q(ctrl_port_cmd[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i7.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i8 (.D(n946), .SP(interalClock_enable_118), .CK(interalClock), 
            .Q(ctrl_port_cmd[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i8.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i9 (.D(n939), .SP(interalClock_enable_123), .CK(interalClock), 
            .Q(ctrl_port_cmd[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i9.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i10 (.D(n940), .SP(interalClock_enable_123), .CK(interalClock), 
            .Q(ctrl_port_cmd[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i10.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i11 (.D(n941), .SP(interalClock_enable_123), .CK(interalClock), 
            .Q(ctrl_port_cmd[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i11.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i12 (.D(n942), .SP(interalClock_enable_123), .CK(interalClock), 
            .Q(ctrl_port_cmd[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i12.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i13 (.D(n943), .SP(interalClock_enable_123), .CK(interalClock), 
            .Q(ctrl_port_cmd[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i13.GSR = "ENABLED";
    PFUMX mux_1166_i32 (.BLUT(n3851), .ALUT(n3009[31]), .C0(n20089), .Z(n3150[31]));
    FD1P3AX spi_cmd_arb_i17 (.D(n939), .SP(interalClock_enable_131), .CK(interalClock), 
            .Q(ctrl_port_cmd[16])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i17.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i18 (.D(n940), .SP(interalClock_enable_131), .CK(interalClock), 
            .Q(ctrl_port_cmd[17])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i18.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i19 (.D(n941), .SP(interalClock_enable_131), .CK(interalClock), 
            .Q(ctrl_port_cmd[18])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i19.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i20 (.D(n942), .SP(interalClock_enable_131), .CK(interalClock), 
            .Q(ctrl_port_cmd[19])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i20.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i21 (.D(n943), .SP(interalClock_enable_131), .CK(interalClock), 
            .Q(ctrl_port_cmd[20])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i21.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i22 (.D(n944), .SP(interalClock_enable_131), .CK(interalClock), 
            .Q(ctrl_port_cmd[21])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i22.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i23 (.D(n945), .SP(interalClock_enable_131), .CK(interalClock), 
            .Q(ctrl_port_cmd[22])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i23.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i24 (.D(n946), .SP(interalClock_enable_131), .CK(interalClock), 
            .Q(ctrl_port_cmd[23])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i24.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i25 (.D(n939), .SP(interalClock_enable_139), .CK(interalClock), 
            .Q(\spi_cmd_arb[24] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i25.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i26 (.D(n940), .SP(interalClock_enable_139), .CK(interalClock), 
            .Q(\spi_cmd_arb[25] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i26.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i27 (.D(n941), .SP(interalClock_enable_139), .CK(interalClock), 
            .Q(\spi_cmd_arb[26] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i27.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i28 (.D(n942), .SP(interalClock_enable_139), .CK(interalClock), 
            .Q(\spi_cmd_arb[27] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i28.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i29 (.D(n943), .SP(interalClock_enable_139), .CK(interalClock), 
            .Q(\spi_cmd_arb[28] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i29.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i30 (.D(n944), .SP(interalClock_enable_139), .CK(interalClock), 
            .Q(\spi_cmd_arb[29] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i30.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i31 (.D(n945), .SP(interalClock_enable_139), .CK(interalClock), 
            .Q(\spi_cmd_arb[30] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i31.GSR = "ENABLED";
    FD1P3AX spi_cmd_arb_i32 (.D(n946), .SP(interalClock_enable_139), .CK(interalClock), 
            .Q(\spi_cmd_arb[31] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_arb_i32.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_146), 
            .CK(interalClock), .Q(spi_cmd_ext[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i1.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_146), 
            .CK(interalClock), .Q(spi_cmd_ext[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i2.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_146), 
            .CK(interalClock), .Q(spi_cmd_ext[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i3.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_146), 
            .CK(interalClock), .Q(spi_cmd_ext[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i4.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_146), 
            .CK(interalClock), .Q(spi_cmd_ext[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i5.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_146), 
            .CK(interalClock), .Q(spi_cmd_ext[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i6.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_146), 
            .CK(interalClock), .Q(spi_cmd_ext[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i7.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i8 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_154), 
            .CK(interalClock), .Q(spi_cmd_ext[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i8.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i9 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_154), 
            .CK(interalClock), .Q(spi_cmd_ext[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i9.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i10 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_154), 
            .CK(interalClock), .Q(spi_cmd_ext[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i10.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i11 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_154), 
            .CK(interalClock), .Q(spi_cmd_ext[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i11.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i12 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_154), 
            .CK(interalClock), .Q(spi_cmd_ext[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i12.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i13 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_154), 
            .CK(interalClock), .Q(spi_cmd_ext[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i13.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i14 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_154), 
            .CK(interalClock), .Q(spi_cmd_ext[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i14.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i15 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_154), 
            .CK(interalClock), .Q(spi_cmd_ext[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i15.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i16 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_162), 
            .CK(interalClock), .Q(spi_cmd_ext[16])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i16.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i17 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_162), 
            .CK(interalClock), .Q(spi_cmd_ext[17])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i17.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i18 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_162), 
            .CK(interalClock), .Q(spi_cmd_ext[18])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i18.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i19 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_162), 
            .CK(interalClock), .Q(spi_cmd_ext[19])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i19.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i20 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_162), 
            .CK(interalClock), .Q(spi_cmd_ext[20])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i20.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i21 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_162), 
            .CK(interalClock), .Q(spi_cmd_ext[21])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i21.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i22 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_162), 
            .CK(interalClock), .Q(spi_cmd_ext[22])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i22.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i23 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_162), 
            .CK(interalClock), .Q(spi_cmd_ext[23])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i23.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i24 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_169), 
            .CK(interalClock), .Q(spi_cmd_ext[24])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i24.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i25 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_169), 
            .CK(interalClock), .Q(spi_cmd_ext[25])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i25.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i26 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_169), 
            .CK(interalClock), .Q(spi_cmd_ext[26])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i26.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i27 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_169), 
            .CK(interalClock), .Q(spi_cmd_ext[27])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i27.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i28 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_169), 
            .CK(interalClock), .Q(spi_cmd_ext[28])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i28.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i29 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_169), 
            .CK(interalClock), .Q(spi_cmd_ext[29])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i29.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i30 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_169), 
            .CK(interalClock), .Q(spi_cmd_ext[30])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i30.GSR = "ENABLED";
    FD1P3AX spi_cmd_ext_i31 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_170), 
            .CK(interalClock), .Q(spi_cmd_ext[31])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam spi_cmd_ext_i31.GSR = "ENABLED";
    FD1P3AY reg_spi_fast_read_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_177), 
            .CK(interalClock), .Q(spi_fast_read[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_fast_read_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_fast_read_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_177), 
            .CK(interalClock), .Q(spi_fast_read[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_fast_read_i0_i2.GSR = "ENABLED";
    FD1P3AY reg_spi_fast_read_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_177), 
            .CK(interalClock), .Q(spi_fast_read[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_fast_read_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_fast_read_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_177), 
            .CK(interalClock), .Q(spi_fast_read[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_fast_read_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_fast_read_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_177), 
            .CK(interalClock), .Q(spi_fast_read[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_fast_read_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_fast_read_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_177), 
            .CK(interalClock), .Q(spi_fast_read[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_fast_read_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_fast_read_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_177), 
            .CK(interalClock), .Q(spi_fast_read[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_fast_read_i0_i7.GSR = "ENABLED";
    FD1P3AX read_data_arb_i1 (.D(read_data[1]), .SP(interalClock_enable_184), 
            .CK(interalClock), .Q(read_data_arb[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam read_data_arb_i1.GSR = "ENABLED";
    FD1P3AX read_data_arb_i2 (.D(read_data[2]), .SP(interalClock_enable_184), 
            .CK(interalClock), .Q(read_data_arb[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam read_data_arb_i2.GSR = "ENABLED";
    FD1P3AX read_data_arb_i3 (.D(read_data[3]), .SP(interalClock_enable_184), 
            .CK(interalClock), .Q(read_data_arb[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam read_data_arb_i3.GSR = "ENABLED";
    FD1P3AX read_data_arb_i4 (.D(read_data[4]), .SP(interalClock_enable_184), 
            .CK(interalClock), .Q(read_data_arb[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam read_data_arb_i4.GSR = "ENABLED";
    FD1P3AX read_data_arb_i5 (.D(read_data[5]), .SP(interalClock_enable_184), 
            .CK(interalClock), .Q(read_data_arb[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam read_data_arb_i5.GSR = "ENABLED";
    FD1P3AX read_data_arb_i6 (.D(read_data[6]), .SP(interalClock_enable_184), 
            .CK(interalClock), .Q(read_data_arb[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam read_data_arb_i6.GSR = "ENABLED";
    FD1P3AX read_data_arb_i7 (.D(read_data[7]), .SP(interalClock_enable_184), 
            .CK(interalClock), .Q(read_data_arb[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam read_data_arb_i7.GSR = "ENABLED";
    FD1P3AX page_prg_length_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_191), 
            .CK(interalClock), .Q(page_prg_length[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i1.GSR = "ENABLED";
    FD1P3AX page_prg_length_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_191), 
            .CK(interalClock), .Q(page_prg_length[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i2.GSR = "ENABLED";
    FD1P3AX page_prg_length_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_191), 
            .CK(interalClock), .Q(page_prg_length[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i3.GSR = "ENABLED";
    FD1P3AX page_prg_length_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_191), 
            .CK(interalClock), .Q(page_prg_length[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i4.GSR = "ENABLED";
    FD1P3AX page_prg_length_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_191), 
            .CK(interalClock), .Q(page_prg_length[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i5.GSR = "ENABLED";
    FD1P3AX page_prg_length_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_191), 
            .CK(interalClock), .Q(page_prg_length[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i6.GSR = "ENABLED";
    FD1P3AX page_prg_length_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_191), 
            .CK(interalClock), .Q(page_prg_length[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i7.GSR = "ENABLED";
    FD1P3AX page_prg_length_i8 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_199), 
            .CK(interalClock), .Q(page_prg_length[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i8.GSR = "ENABLED";
    FD1P3AX page_prg_length_i9 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_199), 
            .CK(interalClock), .Q(page_prg_length[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i9.GSR = "ENABLED";
    FD1P3AX page_prg_length_i10 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_199), 
            .CK(interalClock), .Q(page_prg_length[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i10.GSR = "ENABLED";
    FD1P3AX page_prg_length_i11 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_195), 
            .CK(interalClock), .Q(page_prg_length[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i11.GSR = "ENABLED";
    FD1P3AX page_prg_length_i12 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_199), 
            .CK(interalClock), .Q(page_prg_length[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i12.GSR = "ENABLED";
    FD1P3AX page_prg_length_i13 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_199), 
            .CK(interalClock), .Q(page_prg_length[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i13.GSR = "ENABLED";
    FD1P3AX page_prg_length_i14 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_199), 
            .CK(interalClock), .Q(page_prg_length[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i14.GSR = "ENABLED";
    FD1P3AX page_prg_length_i15 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_199), 
            .CK(interalClock), .Q(page_prg_length[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_prg_length_i15.GSR = "ENABLED";
    FD1P3AX page_rd_length_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_206), 
            .CK(interalClock), .Q(page_rd_length[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i1.GSR = "ENABLED";
    FD1P3AX page_rd_length_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_206), 
            .CK(interalClock), .Q(page_rd_length[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i2.GSR = "ENABLED";
    FD1P3AX page_rd_length_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_206), 
            .CK(interalClock), .Q(page_rd_length[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i3.GSR = "ENABLED";
    FD1P3AX page_rd_length_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_206), 
            .CK(interalClock), .Q(page_rd_length[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i4.GSR = "ENABLED";
    FD1P3AX page_rd_length_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_206), 
            .CK(interalClock), .Q(page_rd_length[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i5.GSR = "ENABLED";
    FD1P3AX page_rd_length_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_206), 
            .CK(interalClock), .Q(page_rd_length[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i6.GSR = "ENABLED";
    FD1P3AX page_rd_length_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_206), 
            .CK(interalClock), .Q(page_rd_length[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i7.GSR = "ENABLED";
    FD1P3AX page_rd_length_i8 (.D(\SHAREDBUS_DAT_I[0] ), .SP(interalClock_enable_214), 
            .CK(interalClock), .Q(page_rd_length[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i8.GSR = "ENABLED";
    FD1P3AX page_rd_length_i9 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_214), 
            .CK(interalClock), .Q(page_rd_length[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i9.GSR = "ENABLED";
    FD1P3AX page_rd_length_i10 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_214), 
            .CK(interalClock), .Q(page_rd_length[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i10.GSR = "ENABLED";
    FD1P3AX page_rd_length_i11 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_214), 
            .CK(interalClock), .Q(page_rd_length[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i11.GSR = "ENABLED";
    FD1P3AX page_rd_length_i12 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_214), 
            .CK(interalClock), .Q(page_rd_length[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i12.GSR = "ENABLED";
    FD1P3AX page_rd_length_i13 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_214), 
            .CK(interalClock), .Q(page_rd_length[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i13.GSR = "ENABLED";
    FD1P3AX page_rd_length_i14 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_214), 
            .CK(interalClock), .Q(page_rd_length[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i14.GSR = "ENABLED";
    FD1P3AX page_rd_length_i15 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_214), 
            .CK(interalClock), .Q(page_rd_length[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam page_rd_length_i15.GSR = "ENABLED";
    FD1P3AY reg_spi_byte_prg_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_221), 
            .CK(interalClock), .Q(spi_byte_prg[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_byte_prg_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_byte_prg_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_221), 
            .CK(interalClock), .Q(spi_byte_prg[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_byte_prg_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_byte_prg_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_221), 
            .CK(interalClock), .Q(spi_byte_prg[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_byte_prg_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_byte_prg_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_221), 
            .CK(interalClock), .Q(spi_byte_prg[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_byte_prg_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_byte_prg_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_221), 
            .CK(interalClock), .Q(spi_byte_prg[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_byte_prg_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_byte_prg_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_221), 
            .CK(interalClock), .Q(spi_byte_prg[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_byte_prg_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_byte_prg_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_221), 
            .CK(interalClock), .Q(spi_byte_prg[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_byte_prg_i0_i7.GSR = "ENABLED";
    FD1P3AY reg_spi_page_prg_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_228), 
            .CK(interalClock), .Q(spi_page_prg[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_page_prg_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_page_prg_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_228), 
            .CK(interalClock), .Q(spi_page_prg[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_page_prg_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_page_prg_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_228), 
            .CK(interalClock), .Q(spi_page_prg[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_page_prg_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_page_prg_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_228), 
            .CK(interalClock), .Q(spi_page_prg[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_page_prg_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_page_prg_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_228), 
            .CK(interalClock), .Q(spi_page_prg[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_page_prg_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_page_prg_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_228), 
            .CK(interalClock), .Q(spi_page_prg[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_page_prg_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_page_prg_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_228), 
            .CK(interalClock), .Q(spi_page_prg[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_page_prg_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_spi_blk1_ers_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_235), 
            .CK(interalClock), .Q(spi_blk1_ers[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk1_ers_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_blk1_ers_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_235), 
            .CK(interalClock), .Q(\spi_blk1_ers[2] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk1_ers_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_blk1_ers_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_235), 
            .CK(interalClock), .Q(\spi_blk1_ers[3] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk1_ers_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_blk1_ers_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_235), 
            .CK(interalClock), .Q(\spi_blk1_ers[4] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk1_ers_i0_i4.GSR = "ENABLED";
    FD1P3AY reg_spi_blk1_ers_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_235), 
            .CK(interalClock), .Q(spi_blk1_ers_c[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk1_ers_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_blk1_ers_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_235), 
            .CK(interalClock), .Q(\spi_blk1_ers[6] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk1_ers_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_blk1_ers_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_235), 
            .CK(interalClock), .Q(spi_blk1_ers_c[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk1_ers_i0_i7.GSR = "ENABLED";
    FD1P3AY reg_spi_blk2_ers_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_242), 
            .CK(interalClock), .Q(\spi_blk2_ers[1] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk2_ers_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_blk2_ers_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_242), 
            .CK(interalClock), .Q(\spi_blk2_ers[2] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk2_ers_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_blk2_ers_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_242), 
            .CK(interalClock), .Q(\spi_blk2_ers[3] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk2_ers_i0_i3.GSR = "ENABLED";
    FD1P3AY reg_spi_blk2_ers_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_242), 
            .CK(interalClock), .Q(\spi_blk2_ers[4] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk2_ers_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_blk2_ers_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_242), 
            .CK(interalClock), .Q(spi_blk2_ers_c[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk2_ers_i0_i5.GSR = "ENABLED";
    FD1P3AY reg_spi_blk2_ers_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_242), 
            .CK(interalClock), .Q(\spi_blk2_ers[6] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk2_ers_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_blk2_ers_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_242), 
            .CK(interalClock), .Q(spi_blk2_ers_c[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk2_ers_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_spi_blk3_ers_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_249), 
            .CK(interalClock), .Q(spi_blk3_ers[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk3_ers_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_blk3_ers_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_249), 
            .CK(interalClock), .Q(spi_blk3_ers[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk3_ers_i0_i2.GSR = "ENABLED";
    FD1P3AY reg_spi_blk3_ers_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_249), 
            .CK(interalClock), .Q(spi_blk3_ers[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk3_ers_i0_i3.GSR = "ENABLED";
    FD1P3AY reg_spi_blk3_ers_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_249), 
            .CK(interalClock), .Q(spi_blk3_ers[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk3_ers_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_blk3_ers_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_249), 
            .CK(interalClock), .Q(spi_blk3_ers[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk3_ers_i0_i5.GSR = "ENABLED";
    FD1P3AY reg_spi_blk3_ers_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_249), 
            .CK(interalClock), .Q(spi_blk3_ers[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk3_ers_i0_i6.GSR = "ENABLED";
    FD1P3AY reg_spi_blk3_ers_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_249), 
            .CK(interalClock), .Q(spi_blk3_ers[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_blk3_ers_i0_i7.GSR = "ENABLED";
    FD1P3AY reg_spi_chip_ers_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_256), 
            .CK(interalClock), .Q(\spi_chip_ers[1] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_chip_ers_i0_i1.GSR = "ENABLED";
    FD1P3AY reg_spi_chip_ers_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_256), 
            .CK(interalClock), .Q(\spi_chip_ers[2] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_chip_ers_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_chip_ers_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_256), 
            .CK(interalClock), .Q(\spi_chip_ers[3] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_chip_ers_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_chip_ers_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_256), 
            .CK(interalClock), .Q(\spi_chip_ers[4] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_chip_ers_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_chip_ers_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_256), 
            .CK(interalClock), .Q(spi_chip_ers_c[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_chip_ers_i0_i5.GSR = "ENABLED";
    FD1P3AY reg_spi_chip_ers_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_256), 
            .CK(interalClock), .Q(\spi_chip_ers[6] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_chip_ers_i0_i6.GSR = "ENABLED";
    FD1P3AY reg_spi_chip_ers_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_256), 
            .CK(interalClock), .Q(spi_chip_ers_c[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_chip_ers_i0_i7.GSR = "ENABLED";
    FD1P3AY reg_spi_wrt_enb_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_263), 
            .CK(interalClock), .Q(spi_wrt_enb[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_enb_i0_i1.GSR = "ENABLED";
    FD1P3AY reg_spi_wrt_enb_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_263), 
            .CK(interalClock), .Q(spi_wrt_enb[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_enb_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_enb_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_263), 
            .CK(interalClock), .Q(spi_wrt_enb[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_enb_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_enb_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_263), 
            .CK(interalClock), .Q(spi_wrt_enb[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_enb_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_enb_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_263), 
            .CK(interalClock), .Q(spi_wrt_enb[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_enb_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_enb_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_263), 
            .CK(interalClock), .Q(spi_wrt_enb[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_enb_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_enb_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_263), 
            .CK(interalClock), .Q(spi_wrt_enb[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_enb_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_disb_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_270), 
            .CK(interalClock), .Q(\spi_wrt_disb[1] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_disb_i0_i1.GSR = "ENABLED";
    FD1P3AY reg_spi_wrt_disb_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_270), 
            .CK(interalClock), .Q(\spi_wrt_disb[2] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_disb_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_disb_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_270), 
            .CK(interalClock), .Q(\spi_wrt_disb[3] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_disb_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_disb_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_270), 
            .CK(interalClock), .Q(\spi_wrt_disb[4] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_disb_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_disb_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_270), 
            .CK(interalClock), .Q(spi_wrt_disb_c[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_disb_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_disb_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_270), 
            .CK(interalClock), .Q(\spi_wrt_disb[6] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_disb_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_disb_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_270), 
            .CK(interalClock), .Q(spi_wrt_disb_c[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_disb_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_spi_read_stat_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_277), 
            .CK(interalClock), .Q(spi_read_stat[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_stat_i0_i1.GSR = "ENABLED";
    FD1P3AY reg_spi_read_stat_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_277), 
            .CK(interalClock), .Q(spi_read_stat[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_stat_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_read_stat_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_277), 
            .CK(interalClock), .Q(spi_read_stat[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_stat_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_read_stat_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_277), 
            .CK(interalClock), .Q(spi_read_stat[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_stat_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_read_stat_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_277), 
            .CK(interalClock), .Q(spi_read_stat[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_stat_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_read_stat_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_277), 
            .CK(interalClock), .Q(spi_read_stat[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_stat_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_read_stat_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_277), 
            .CK(interalClock), .Q(spi_read_stat[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_read_stat_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_stat_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_284), 
            .CK(interalClock), .Q(spi_wrt_stat[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_stat_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_stat_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_284), 
            .CK(interalClock), .Q(spi_wrt_stat[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_stat_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_stat_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_284), 
            .CK(interalClock), .Q(spi_wrt_stat[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_stat_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_stat_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_284), 
            .CK(interalClock), .Q(spi_wrt_stat[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_stat_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_stat_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_284), 
            .CK(interalClock), .Q(spi_wrt_stat[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_stat_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_stat_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_284), 
            .CK(interalClock), .Q(spi_wrt_stat[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_stat_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_spi_wrt_stat_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_284), 
            .CK(interalClock), .Q(spi_wrt_stat[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_wrt_stat_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_spi_pwd_down_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_291), 
            .CK(interalClock), .Q(spi_pwd_down[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_down_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_pwd_down_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_291), 
            .CK(interalClock), .Q(spi_pwd_down_c[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_down_i0_i2.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_down_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_291), 
            .CK(interalClock), .Q(\spi_pwd_down[3] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_down_i0_i3.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_down_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_291), 
            .CK(interalClock), .Q(\spi_pwd_down[4] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_down_i0_i4.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_down_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_291), 
            .CK(interalClock), .Q(\spi_pwd_down[5] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_down_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_pwd_down_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_291), 
            .CK(interalClock), .Q(\spi_pwd_down[6] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_down_i0_i6.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_down_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_291), 
            .CK(interalClock), .Q(spi_pwd_down_c[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_down_i0_i7.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_up_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_298), 
            .CK(interalClock), .Q(spi_pwd_up[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_up_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_spi_pwd_up_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_298), 
            .CK(interalClock), .Q(spi_pwd_up[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_up_i0_i2.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_up_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_298), 
            .CK(interalClock), .Q(spi_pwd_up[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_up_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_spi_pwd_up_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_298), 
            .CK(interalClock), .Q(spi_pwd_up[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_up_i0_i4.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_up_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_298), 
            .CK(interalClock), .Q(spi_pwd_up[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_up_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_pwd_up_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_298), 
            .CK(interalClock), .Q(spi_pwd_up[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_up_i0_i6.GSR = "ENABLED";
    FD1P3AY reg_spi_pwd_up_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_298), 
            .CK(interalClock), .Q(spi_pwd_up[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_pwd_up_i0_i7.GSR = "ENABLED";
    FD1P3AY reg_spi_dev_id_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_305), 
            .CK(interalClock), .Q(spi_dev_id[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_dev_id_i0_i1.GSR = "ENABLED";
    FD1P3AY reg_spi_dev_id_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_305), 
            .CK(interalClock), .Q(spi_dev_id[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_dev_id_i0_i2.GSR = "ENABLED";
    FD1P3AY reg_spi_dev_id_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_305), 
            .CK(interalClock), .Q(spi_dev_id[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_dev_id_i0_i3.GSR = "ENABLED";
    FD1P3AY reg_spi_dev_id_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(interalClock_enable_305), 
            .CK(interalClock), .Q(spi_dev_id[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_dev_id_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_spi_dev_id_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(interalClock_enable_305), 
            .CK(interalClock), .Q(spi_dev_id[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_dev_id_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_spi_dev_id_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(interalClock_enable_305), 
            .CK(interalClock), .Q(spi_dev_id[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_dev_id_i0_i6.GSR = "ENABLED";
    FD1P3AY reg_spi_dev_id_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(interalClock_enable_305), 
            .CK(interalClock), .Q(spi_dev_id[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam reg_spi_dev_id_i0_i7.GSR = "ENABLED";
    FD1S3AX wb_state_i1 (.D(wb_state_1__N_1306[1]), .CK(interalClock), .Q(wb_state_c[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam wb_state_i1.GSR = "ENABLED";
    LUT4 mux_1342_i3_3_lut (.A(spi_pwd_down_c[2]), .B(spi_read_stat[2]), 
         .C(n20061), .Z(n3950[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_1342_i3_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_153 (.A(n20099), .B(n20090), .C(SPIFlashC_DAT_O[7]), 
         .D(n18885), .Z(n83_adj_2143)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_4_lut_adj_153.init = 16'h5140;
    FD1P3IX byte_length_i2 (.D(ctrl_byte_length[2]), .SP(interalClock_enable_312), 
            .CD(n8767), .CK(interalClock), .Q(byte_length[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam byte_length_i2.GSR = "ENABLED";
    LUT4 i10355_2_lut_4_lut (.A(n2359[2]), .B(n2395), .C(n20044), .D(n13174), 
         .Z(n1290[2])) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i10355_2_lut_4_lut.init = 16'hac00;
    LUT4 i1_4_lut_4_lut_adj_154 (.A(n20099), .B(n20090), .C(SPIFlashC_DAT_O[0]), 
         .D(n18895), .Z(n83_adj_2144)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_4_lut_adj_154.init = 16'h5140;
    PFUMX mux_1166_i30 (.BLUT(n3853), .ALUT(n3009[29]), .C0(n20089), .Z(n3150[29]));
    LUT4 i15752_2_lut_3_lut_4_lut (.A(n20057), .B(n166), .C(n8475), .D(n973), 
         .Z(n18515)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i15752_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i16463_2_lut_4_lut_4_lut (.A(n20100), .B(n13407), .C(n19050), 
         .D(n5334), .Z(n18697)) /* synthesis lut_function=((B (C)+!B !((D)+!C))+!A) */ ;
    defparam i16463_2_lut_4_lut_4_lut.init = 16'hd5f5;
    LUT4 i1_3_lut_4_lut (.A(n20089), .B(n20173), .C(n46), .D(n20099), 
         .Z(n18_c)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf888;
    LUT4 i1999_4_lut_4_lut_4_lut (.A(n20089), .B(\SHAREDBUS_DAT_I[1] ), 
         .C(n4818), .D(n20088), .Z(n3485[0])) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(700[11:16])
    defparam i1999_4_lut_4_lut_4_lut.init = 16'h5c5f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_155 (.A(n20088), .B(n20095), .C(n20079), 
         .D(n18245), .Z(interalClock_enable_305)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_155.init = 16'h4000;
    LUT4 i12_3_lut_4_lut (.A(n20057), .B(n166), .C(n4_adj_2145), .D(n8011), 
         .Z(n10_adj_2146)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i12_3_lut_4_lut.init = 16'h0444;
    PFUMX mux_1166_i29 (.BLUT(n3854), .ALUT(n3009[28]), .C0(n20089), .Z(n3150[28]));
    LUT4 i1_2_lut_3_lut_4_lut_adj_156 (.A(n20088), .B(n20095), .C(n20081), 
         .D(n20043), .Z(interalClock_enable_284)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_156.init = 16'h4000;
    LUT4 i10356_2_lut_4_lut (.A(n2359[3]), .B(n2394), .C(n20044), .D(n13174), 
         .Z(n1290[3])) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i10356_2_lut_4_lut.init = 16'hac00;
    LUT4 i10360_2_lut_4_lut (.A(n2359[7]), .B(n2390), .C(n20044), .D(n13174), 
         .Z(n1290[7])) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i10360_2_lut_4_lut.init = 16'hac00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_157 (.A(n20088), .B(n20095), .C(n20096), 
         .D(n20043), .Z(interalClock_enable_270)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_157.init = 16'h0400;
    LUT4 SHAREDBUS_ADR_I_6__bdd_4_lut (.A(n20089), .B(n20100), .C(page_prg_length[1]), 
         .D(page_rd_length[1]), .Z(n20020)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;
    defparam SHAREDBUS_ADR_I_6__bdd_4_lut.init = 16'h5410;
    LUT4 i1_2_lut_3_lut_4_lut_adj_158 (.A(n20057), .B(n166), .C(n8604), 
         .D(n973), .Z(n6_adj_2147)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i1_2_lut_3_lut_4_lut_adj_158.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_159 (.A(n20088), .B(n20095), .C(n20096), 
         .D(n18245), .Z(interalClock_enable_263)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_159.init = 16'h0400;
    LUT4 i2_3_lut_4_lut_adj_160 (.A(n20057), .B(n166), .C(n20063), .D(n937), 
         .Z(n992)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i2_3_lut_4_lut_adj_160.init = 16'h0400;
    LUT4 mux_1342_i8_3_lut (.A(spi_pwd_down_c[7]), .B(spi_read_stat[7]), 
         .C(n20061), .Z(n3950[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_1342_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_161 (.A(n20088), .B(n20095), .C(n20080), 
         .D(n20043), .Z(interalClock_enable_298)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_161.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_162 (.A(n20088), .B(n20095), .C(n20081), 
         .D(n18245), .Z(interalClock_enable_277)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_162.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_163 (.A(n20088), .B(n20095), .C(n20080), 
         .D(n18245), .Z(interalClock_enable_291)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_163.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_164 (.A(\ext_addr[4] ), .B(n20099), .C(n18245), 
         .D(n20094), .Z(interalClock_enable_249)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_164.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_165 (.A(\ext_addr[4] ), .B(n20099), .C(n20094), 
         .D(n20043), .Z(interalClock_enable_256)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_165.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_166 (.A(n20089), .B(n20099), .C(n18245), 
         .D(n20094), .Z(interalClock_enable_235)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_166.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_167 (.A(n20089), .B(n20099), .C(n20094), 
         .D(n20043), .Z(interalClock_enable_242)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_167.init = 16'h0200;
    LUT4 n19460_bdd_3_lut (.A(n19460), .B(n19457), .C(n20047), .Z(n19461)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19460_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_189_3_lut (.A(n20057), .B(n166), .C(n973), .Z(n20048)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i1_2_lut_rep_189_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_168 (.A(n20099), .B(n20089), .C(n18245), 
         .D(n20094), .Z(interalClock_enable_221)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_168.init = 16'h0020;
    LUT4 i1_4_lut_4_lut_adj_169 (.A(n20099), .B(n20089), .C(n20095), .D(n18296), 
         .Z(n18298)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_169.init = 16'h2e00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_170 (.A(n20099), .B(n20089), .C(n20094), 
         .D(n20043), .Z(interalClock_enable_228)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_170.init = 16'h0200;
    LUT4 i2505_4_lut_4_lut (.A(n20099), .B(n20100), .C(n20088), .D(n20089), 
         .Z(n5334)) /* synthesis lut_function=(!(A (C)+!A !(B (D)))) */ ;
    defparam i2505_4_lut_4_lut.init = 16'h4e0a;
    LUT4 i9879_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_dev_id[7]), 
         .D(spi_blk3_ers[7]), .Z(n12698)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9879_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_1166_i28 (.BLUT(n3855), .ALUT(n3009[27]), .C0(n20089), .Z(n3150[27]));
    LUT4 i9816_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_dev_id[4]), 
         .D(spi_blk3_ers[4]), .Z(n12638)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9816_3_lut_4_lut.init = 16'hfd20;
    LUT4 n19465_bdd_3_lut (.A(n19465), .B(n19462), .C(n20047), .Z(n19466)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19465_bdd_3_lut.init = 16'hcaca;
    PFUMX mux_1166_i27 (.BLUT(n3856), .ALUT(n3009[26]), .C0(n20089), .Z(n3150[26]));
    LUT4 i8904_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_read_stat[0]), 
         .D(spi_byte_prg[0]), .Z(n11752)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i8904_3_lut_4_lut.init = 16'hfd20;
    LUT4 n19480_bdd_3_lut (.A(n19480), .B(n19477), .C(n20047), .Z(n19481)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19480_bdd_3_lut.init = 16'hcaca;
    PFUMX mux_1166_i26 (.BLUT(n3857), .ALUT(n3009[25]), .C0(n20089), .Z(n3150[25]));
    LUT4 i8905_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_dev_id[0]), 
         .D(spi_blk3_ers[0]), .Z(n11753)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i8905_3_lut_4_lut.init = 16'hfd20;
    LUT4 i9785_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_read_stat[2]), 
         .D(spi_byte_prg[2]), .Z(n12609)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9785_3_lut_4_lut.init = 16'hfd20;
    LUT4 i9786_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_dev_id[2]), 
         .D(spi_blk3_ers[2]), .Z(n12610)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9786_3_lut_4_lut.init = 16'hfd20;
    LUT4 i9800_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_read_stat[3]), 
         .D(spi_byte_prg[3]), .Z(n12623)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9800_3_lut_4_lut.init = 16'hfd20;
    LUT4 i9801_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_dev_id[3]), 
         .D(spi_blk3_ers[3]), .Z(n12624)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9801_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_adj_171 (.A(n11492), .B(ctrl_port_cmd[18]), .Z(n56)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_171.init = 16'h8888;
    LUT4 i10451_2_lut (.A(ctrl_port_cmd[16]), .B(n11492), .Z(n58)) /* synthesis lut_function=(A (B)) */ ;
    defparam i10451_2_lut.init = 16'h8888;
    LUT4 i9815_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_read_stat[4]), 
         .D(spi_byte_prg[4]), .Z(n12637)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9815_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_adj_172 (.A(n11492), .B(ctrl_port_cmd[13]), .Z(n57)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_172.init = 16'h8888;
    LUT4 i1_2_lut_adj_173 (.A(n11492), .B(ctrl_port_cmd[14]), .Z(n57_adj_2148)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_173.init = 16'h8888;
    LUT4 i10447_2_lut (.A(ctrl_port_cmd[11]), .B(n11492), .Z(n42[11])) /* synthesis lut_function=(A (B)) */ ;
    defparam i10447_2_lut.init = 16'h8888;
    LUT4 i10448_2_lut (.A(ctrl_port_cmd[12]), .B(n11492), .Z(n42[12])) /* synthesis lut_function=(A (B)) */ ;
    defparam i10448_2_lut.init = 16'h8888;
    LUT4 i9832_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_dev_id[5]), 
         .D(spi_blk3_ers[5]), .Z(n12653)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9832_3_lut_4_lut.init = 16'hfd20;
    LUT4 i10450_2_lut (.A(ctrl_port_cmd[15]), .B(n11492), .Z(n42[15])) /* synthesis lut_function=(A (B)) */ ;
    defparam i10450_2_lut.init = 16'h8888;
    LUT4 i8939_3_lut (.A(spi_cmd[26]), .B(n18763), .C(n20137), .Z(n11786)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8939_3_lut.init = 16'hcaca;
    LUT4 i10452_2_lut (.A(ctrl_port_cmd[17]), .B(n11492), .Z(n42[17])) /* synthesis lut_function=(A (B)) */ ;
    defparam i10452_2_lut.init = 16'h8888;
    LUT4 i10453_2_lut (.A(ctrl_port_cmd[19]), .B(n11492), .Z(n42[19])) /* synthesis lut_function=(A (B)) */ ;
    defparam i10453_2_lut.init = 16'h8888;
    LUT4 i10454_2_lut (.A(ctrl_port_cmd[20]), .B(n11492), .Z(n42[20])) /* synthesis lut_function=(A (B)) */ ;
    defparam i10454_2_lut.init = 16'h8888;
    LUT4 i8_3_lut (.A(spi_cmd[25]), .B(n18790), .C(n20137), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(155[22:31])
    defparam i8_3_lut.init = 16'hcaca;
    FD1P3AX bytes_arb_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(interalClock_enable_309), 
            .CK(interalClock), .Q(bytes_arb[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam bytes_arb_i0_i1.GSR = "ENABLED";
    FD1P3AX bytes_arb_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(interalClock_enable_309), 
            .CK(interalClock), .Q(bytes_arb[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam bytes_arb_i0_i2.GSR = "ENABLED";
    FD1P3AX bytes_arb_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(interalClock_enable_309), 
            .CK(interalClock), .Q(bytes_arb[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam bytes_arb_i0_i3.GSR = "ENABLED";
    PFUMX i16721 (.BLUT(n19529), .ALUT(n19528), .C0(n20099), .Z(n19530));
    LUT4 i10455_2_lut (.A(ctrl_port_cmd[21]), .B(n11492), .Z(n42[21])) /* synthesis lut_function=(A (B)) */ ;
    defparam i10455_2_lut.init = 16'h8888;
    LUT4 i9878_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_read_stat[7]), 
         .D(spi_byte_prg[7]), .Z(n12697)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9878_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_4_lut_adj_174 (.A(n20100), .B(n20099), .C(n8164), .D(n20067), 
         .Z(interalClock_enable_206)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_174.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_adj_175 (.A(n20100), .B(n20099), .C(n8164), .D(n20065), 
         .Z(interalClock_enable_214)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_175.init = 16'h4000;
    LUT4 i10456_2_lut (.A(ctrl_port_cmd[22]), .B(n11492), .Z(n42[22])) /* synthesis lut_function=(A (B)) */ ;
    defparam i10456_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_176 (.A(n11492), .B(ctrl_port_cmd[23]), .Z(n42[23])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_176.init = 16'h8888;
    LUT4 spi_byte_prg_1__bdd_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_read_stat[1]), 
         .D(spi_byte_prg[1]), .Z(n19272)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam spi_byte_prg_1__bdd_3_lut_4_lut.init = 16'hfd20;
    LUT4 i9831_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_read_stat[5]), 
         .D(spi_byte_prg[5]), .Z(n12652)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9831_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2_3_lut_4_lut_adj_177 (.A(wb_state_c[1]), .B(n20055), .C(wb_state[0]), 
         .D(spi_ack), .Z(interalClock_enable_10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(119[16:22])
    defparam i2_3_lut_4_lut_adj_177.init = 16'h0004;
    LUT4 i9722_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_wrt_stat[5]), 
         .D(spi_page_prg[5]), .Z(n4194)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9722_3_lut_4_lut.init = 16'hfd20;
    LUT4 i9883_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_wrt_stat[7]), 
         .D(spi_page_prg[7]), .Z(n12702)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9883_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_1470_i7_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_wrt_stat[6]), 
         .D(spi_page_prg[6]), .Z(n4195)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1470_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_adj_178 (.A(ctrl_port_req), .B(n2), .Z(n42[24])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i1_2_lut_adj_178.init = 16'h8888;
    LUT4 i9859_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_dev_id[6]), 
         .D(spi_blk3_ers[6]), .Z(n12679)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9859_3_lut_4_lut.init = 16'hfd20;
    LUT4 i9858_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_read_stat[6]), 
         .D(spi_byte_prg[6]), .Z(n12678)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9858_3_lut_4_lut.init = 16'hfd20;
    LUT4 i10181_4_lut (.A(n20337), .B(ctrl_port_req), .C(n3252[25]), .D(n20052), 
         .Z(n42[25])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(263[10:26])
    defparam i10181_4_lut.init = 16'hc088;
    LUT4 i10182_4_lut (.A(n20293), .B(ctrl_port_req), .C(n3252[26]), .D(n20052), 
         .Z(n42[26])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(263[10:26])
    defparam i10182_4_lut.init = 16'hc088;
    LUT4 i10183_4_lut (.A(n20309), .B(ctrl_port_req), .C(n3252[27]), .D(n20052), 
         .Z(n42[27])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(263[10:26])
    defparam i10183_4_lut.init = 16'hc088;
    LUT4 i10184_4_lut (.A(n20343), .B(ctrl_port_req), .C(n3252[28]), .D(n20052), 
         .Z(n42[28])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(263[10:26])
    defparam i10184_4_lut.init = 16'hc088;
    LUT4 i10185_4_lut (.A(n20321), .B(ctrl_port_req), .C(n3252[29]), .D(n20052), 
         .Z(n42[29])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(263[10:26])
    defparam i10185_4_lut.init = 16'hc088;
    LUT4 mux_1470_i1_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_wrt_stat[0]), 
         .D(spi_page_prg[0]), .Z(n4189)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1470_i1_3_lut_4_lut.init = 16'hfd20;
    LUT4 i10186_4_lut (.A(n20315), .B(ctrl_port_req), .C(n3252[31]), .D(n20052), 
         .Z(n42[31])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(263[10:26])
    defparam i10186_4_lut.init = 16'hc088;
    LUT4 mux_1470_i3_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_wrt_stat[2]), 
         .D(spi_page_prg[2]), .Z(n4191)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1470_i3_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_1470_i4_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_wrt_stat[3]), 
         .D(spi_page_prg[3]), .Z(n4192)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1470_i4_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2_4_lut_adj_179 (.A(SPIFlashC_DAT_O[5]), .B(n18308), .C(n18_c), 
         .D(n50_adj_2152), .Z(n17550)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    defparam i2_4_lut_adj_179.init = 16'hffec;
    LUT4 i9697_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_wrt_stat[4]), 
         .D(spi_page_prg[4]), .Z(n4193)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9697_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2_4_lut_adj_180 (.A(SPIFlashC_DAT_O[6]), .B(n18306), .C(n18_c), 
         .D(n50_adj_2153), .Z(n17560)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    defparam i2_4_lut_adj_180.init = 16'hffec;
    LUT4 i2_4_lut_adj_181 (.A(SPIFlashC_DAT_O[4]), .B(n18307), .C(n18_c), 
         .D(n50_adj_2154), .Z(n17480)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i2_4_lut_adj_181.init = 16'hffec;
    LUT4 i1_3_lut_4_lut_adj_182 (.A(wb_state_c[1]), .B(n20055), .C(wb_state[0]), 
         .D(spi_ack), .Z(wb_state_1__N_1306[0])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(119[16:22])
    defparam i1_3_lut_4_lut_adj_182.init = 16'h00f4;
    LUT4 i2_4_lut_adj_183 (.A(n1416), .B(n80), .C(read_data_arb[0]), .D(n116), 
         .Z(n16980)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i2_4_lut_adj_183.init = 16'hffec;
    LUT4 spi_byte_prg_1__bdd_3_lut_16561_4_lut (.A(n20095), .B(n20090), 
         .C(spi_dev_id[1]), .D(spi_blk3_ers[1]), .Z(n19271)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam spi_byte_prg_1__bdd_3_lut_16561_4_lut.init = 16'hfd20;
    LUT4 i2_4_lut_adj_184 (.A(n1416), .B(n80_adj_2155), .C(read_data_arb[2]), 
         .D(n116_adj_2156), .Z(n16988)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i2_4_lut_adj_184.init = 16'hffec;
    LUT4 i1_2_lut_4_lut_adj_185 (.A(n18346), .B(n20041), .C(n20058), .D(n19461), 
         .Z(n18169)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_185.init = 16'h0200;
    LUT4 i9608_3_lut_4_lut (.A(n20095), .B(n20090), .C(spi_wrt_stat[1]), 
         .D(spi_page_prg[1]), .Z(n12439)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9608_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16090_3_lut_4_lut (.A(n20100), .B(n20090), .C(\spi_wrt_disb[3] ), 
         .D(spi_wrt_enb[3]), .Z(n18861)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16090_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_3_lut_4_lut_adj_186 (.A(ctr_state), .B(n20174), .C(n14364), 
         .D(C_ACK_O_N_1694), .Z(interalClock_enable_43)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_186.init = 16'hf8f0;
    LUT4 i2_4_lut_adj_187 (.A(n1416), .B(n80_adj_2157), .C(read_data_arb[3]), 
         .D(n116_adj_2158), .Z(n16959)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i2_4_lut_adj_187.init = 16'hffec;
    LUT4 i16085_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_pwd_up[5]), 
         .D(\spi_pwd_down[5] ), .Z(n18856)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16085_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2_4_lut_adj_188 (.A(n46), .B(n116_adj_2159), .C(n4_adj_4), .D(n50_adj_2161), 
         .Z(n16946)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(352[8:22])
    defparam i2_4_lut_adj_188.init = 16'hffec;
    LUT4 i1_4_lut_adj_189 (.A(n20075), .B(n20041), .C(n4_adj_5), .D(n19600), 
         .Z(n18224)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(835[11] 843[9])
    defparam i1_4_lut_adj_189.init = 16'h2000;
    LUT4 i2_4_lut_adj_190 (.A(n1416), .B(n80_adj_2163), .C(read_data_arb[1]), 
         .D(n116_adj_2164), .Z(n16974)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i2_4_lut_adj_190.init = 16'hffec;
    LUT4 mux_32_i1_4_lut (.A(ctrl_port_cmd[0]), .B(n20087), .C(n20062), 
         .D(n11492), .Z(n1[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i1_4_lut.init = 16'hcac0;
    LUT4 i16084_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_wrt_disb_c[5]), 
         .D(spi_wrt_enb[5]), .Z(n18855)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16084_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16447_3_lut (.A(ctrl_port_req), .B(n7177), .C(n20061), .Z(n11492)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i16447_3_lut.init = 16'h0202;
    LUT4 i16091_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_pwd_up[3]), 
         .D(\spi_pwd_down[3] ), .Z(n18862)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16091_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16079_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_pwd_up[6]), 
         .D(\spi_pwd_down[6] ), .Z(n18850)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16079_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_4_lut_adj_191 (.A(n18346), .B(n20041), .C(n20058), .D(n19466), 
         .Z(n18170)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_191.init = 16'h0200;
    LUT4 i16078_3_lut_4_lut (.A(n20100), .B(n20090), .C(\spi_wrt_disb[6] ), 
         .D(spi_wrt_enb[6]), .Z(n18849)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16078_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16073_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_pwd_up[4]), 
         .D(\spi_pwd_down[4] ), .Z(n18844)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16073_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16072_3_lut_4_lut (.A(n20100), .B(n20090), .C(\spi_wrt_disb[4] ), 
         .D(spi_wrt_enb[4]), .Z(n18843)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16072_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16064_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_pwd_up[7]), 
         .D(spi_pwd_down_c[7]), .Z(n18835)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16064_3_lut_4_lut.init = 16'hfd20;
    LUT4 i10237_4_lut_4_lut_4_lut (.A(n20100), .B(n20090), .C(spi_read[2]), 
         .D(spi_fast_read[2]), .Z(n2283[2])) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i10237_4_lut_4_lut_4_lut.init = 16'h3210;
    LUT4 i16063_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_wrt_disb_c[7]), 
         .D(spi_wrt_enb[7]), .Z(n18834)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16063_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_1584_i2_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_fast_read[1]), 
         .D(spi_read[1]), .Z(n4353)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1584_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16106_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_pwd_up[2]), 
         .D(spi_pwd_down_c[2]), .Z(n18877)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16106_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16105_3_lut_4_lut (.A(n20100), .B(n20090), .C(\spi_wrt_disb[2] ), 
         .D(spi_wrt_enb[2]), .Z(n18876)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16105_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16097_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_pwd_up[1]), 
         .D(spi_pwd_down[1]), .Z(n18868)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16097_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16096_3_lut_4_lut (.A(n20100), .B(n20090), .C(\spi_wrt_disb[1] ), 
         .D(spi_wrt_enb[1]), .Z(n18867)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16096_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16522_4_lut (.A(n29), .B(n18558), .C(n20083), .D(n20099), 
         .Z(n19050)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C (D)))) */ ;
    defparam i16522_4_lut.init = 16'hcfdd;
    LUT4 i16038_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_pwd_up[0]), 
         .D(spi_pwd_down[0]), .Z(n18809)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16038_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16037_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_wrt_disb[0]), 
         .D(spi_wrt_enb[0]), .Z(n18808)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16037_3_lut_4_lut.init = 16'hfd20;
    LUT4 i10242_4_lut_4_lut_4_lut (.A(n20100), .B(n20090), .C(spi_read[7]), 
         .D(spi_fast_read[7]), .Z(n2283[7])) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i10242_4_lut_4_lut_4_lut.init = 16'h3210;
    LUT4 i10238_4_lut_4_lut_4_lut (.A(n20100), .B(n20090), .C(spi_read[3]), 
         .D(spi_fast_read[3]), .Z(n2283[3])) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i10238_4_lut_4_lut_4_lut.init = 16'h3210;
    LUT4 i2_3_lut_4_lut_adj_192 (.A(n20084), .B(n8164), .C(ctr_state), 
         .D(n18334), .Z(interalClock_enable_195)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_192.init = 16'h0800;
    LUT4 mux_1584_i1_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_fast_read[0]), 
         .D(spi_read[0]), .Z(n4352)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1584_i1_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_1584_i7_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_fast_read[6]), 
         .D(spi_read[6]), .Z(n4358)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1584_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16401_3_lut_4_lut (.A(n20061), .B(n3251), .C(n19363), .D(n9), 
         .Z(n8)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i16401_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i16393_3_lut_4_lut (.A(n20061), .B(n3251), .C(n19358), .D(n3192), 
         .Z(n2)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i16393_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_338_i2 (.BLUT(n16974), .ALUT(n18224), .C0(n20063), .Z(n1512[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 mux_1584_i6_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_fast_read[5]), 
         .D(spi_read[5]), .Z(n4357)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1584_i6_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_1584_i5_3_lut_4_lut (.A(n20100), .B(n20090), .C(spi_fast_read[4]), 
         .D(spi_read[4]), .Z(n4356)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1584_i5_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16088_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_prg_length[2]), 
         .D(page_prg_length[10]), .Z(n18859)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16088_3_lut_4_lut.init = 16'hfd20;
    PFUMX i6507 (.BLUT(n10_adj_2146), .ALUT(n18318), .C0(ctr_state), .Z(interalClock_enable_111));
    LUT4 i16087_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_rd_length[2]), 
         .D(page_rd_length[10]), .Z(n18858)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16087_3_lut_4_lut.init = 16'hfd20;
    LUT4 i9838_3_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(spi_dev_id[5]), 
         .D(spi_blk3_ers[5]), .Z(n3009[29])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i9838_3_lut_4_lut.init = 16'hf780;
    PFUMX mux_338_i8 (.BLUT(n16946), .ALUT(n1290[7]), .C0(n20063), .Z(n1512[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i2_4_lut_adj_193 (.A(n20089), .B(n20097), .C(n20087), .D(n4_adj_2165), 
         .Z(n1416)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i2_4_lut_adj_193.init = 16'h2220;
    LUT4 n2368_bdd_3_lut_16673_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(n18851), 
         .D(n18854), .Z(n19462)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n2368_bdd_3_lut_16673_4_lut.init = 16'hf780;
    LUT4 i9865_3_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(spi_dev_id[6]), 
         .D(spi_blk3_ers[6]), .Z(n3011)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i9865_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_1153_i32_3_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(spi_dev_id[7]), 
         .D(spi_blk3_ers[7]), .Z(n3009[31])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1153_i32_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_4_lut_adj_194 (.A(n20099), .B(n8063), .C(SPIFlashC_DAT_O[1]), 
         .D(n20091), .Z(n80_adj_2163)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_adj_194.init = 16'ha888;
    LUT4 i1_4_lut_adj_195 (.A(n5323), .B(n13317), .C(SPIFlashC_DAT_O[1]), 
         .D(n20090), .Z(n8063)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_adj_195.init = 16'h3022;
    LUT4 i1_2_lut_adj_196 (.A(LM8D_DAT_O[5]), .B(n18286), .Z(n18287)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_196.init = 16'h8888;
    PFUMX mux_338_i4 (.BLUT(n16959), .ALUT(n1290[3]), .C0(n20063), .Z(n1512[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 wr_enb_I_82_4_lut (.A(n3491[0]), .B(n20090), .C(n20062), .D(n3565), 
         .Z(wr_enb_N_1702)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam wr_enb_I_82_4_lut.init = 16'hcac0;
    LUT4 n2398_bdd_4_lut_16820 (.A(n20090), .B(n20098), .C(n18194), .D(n20088), 
         .Z(n4422)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam n2398_bdd_4_lut_16820.init = 16'hffef;
    LUT4 i16082_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_prg_length[6]), 
         .D(page_prg_length[14]), .Z(n18853)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16082_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_adj_197 (.A(n20099), .B(n5073), .C(n19_c), .D(n18558), 
         .Z(n3565)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_197.init = 16'h50dc;
    LUT4 i1_4_lut_adj_198 (.A(n13407), .B(n20082), .C(n4_adj_6), .D(n13214), 
         .Z(n19_c)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_198.init = 16'h5073;
    LUT4 i16093_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_rd_length[3]), 
         .D(page_rd_length[11]), .Z(n18864)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16093_3_lut_4_lut.init = 16'hfd20;
    LUT4 n2368_bdd_3_lut_16669_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(n18857), 
         .D(n18833), .Z(n19457)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n2368_bdd_3_lut_16669_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(n20047), 
         .D(n21076), .Z(n8265)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h2000;
    LUT4 i10342_2_lut_4_lut (.A(n20062), .B(ctrl_port_req), .C(n20059), 
         .D(bytes_arb[3]), .Z(n129[3])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam i10342_2_lut_4_lut.init = 16'h0400;
    LUT4 spi_wr_I_69_4_lut (.A(n3556[0]), .B(n20090), .C(n20062), .D(n3565), 
         .Z(spi_wr_N_1659)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam spi_wr_I_69_4_lut.init = 16'hcac0;
    LUT4 i3_1_lut (.A(wb_state_c[1]), .Z(interalClock_enable_11)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(119[16:22])
    defparam i3_1_lut.init = 16'h5555;
    LUT4 mux_1153_i26_3_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(spi_dev_id[1]), 
         .D(spi_blk3_ers[1]), .Z(n3009[25])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1153_i26_3_lut_4_lut.init = 16'hf780;
    LUT4 n131_bdd_3_lut_16808_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(n18875), 
         .D(n18869), .Z(n19596)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam n131_bdd_3_lut_16808_4_lut.init = 16'hf870;
    LUT4 i9792_3_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(spi_dev_id[2]), 
         .D(spi_blk3_ers[2]), .Z(n3009[26])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i9792_3_lut_4_lut.init = 16'hf780;
    LUT4 i9807_3_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(spi_dev_id[3]), 
         .D(spi_blk3_ers[3]), .Z(n3009[27])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i9807_3_lut_4_lut.init = 16'hf780;
    LUT4 i9823_3_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(spi_dev_id[4]), 
         .D(spi_blk3_ers[4]), .Z(n3009[28])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i9823_3_lut_4_lut.init = 16'hf780;
    LUT4 i8914_3_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(spi_dev_id[0]), 
         .D(spi_blk3_ers[0]), .Z(n3017)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i8914_3_lut_4_lut.init = 16'hf780;
    PFUMX mux_338_i3 (.BLUT(n16988), .ALUT(n1290[2]), .C0(n20063), .Z(n1512[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 n2368_bdd_3_lut_16685_4_lut (.A(n20101), .B(\ext_addr[5] ), .C(n18845), 
         .D(n18848), .Z(n19477)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n2368_bdd_3_lut_16685_4_lut.init = 16'hf780;
    LUT4 i1_4_lut_adj_199 (.A(ctr_state), .B(n20057), .C(n166), .D(n21077), 
         .Z(n14364)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i1_4_lut_adj_199.init = 16'h4544;
    PFUMX mux_338_i5 (.BLUT(n17480), .ALUT(n18168), .C0(n20063), .Z(n1512[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    PFUMX i32 (.BLUT(n17560), .ALUT(n18170), .C0(n20063), .Z(n1512[6]));
    LUT4 i16081_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_rd_length[6]), 
         .D(page_rd_length[14]), .Z(n18852)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16081_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_rep_207_3_lut_4_lut_4_lut (.A(n20101), .B(\ext_addr[5] ), 
         .C(n13317), .D(\ext_addr[6] ), .Z(n20066)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_207_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_200 (.A(n20101), .B(n13341), .C(n18245), 
         .D(n20094), .Z(interalClock_enable_52)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_200.init = 16'h0070;
    LUT4 i1_2_lut_3_lut_4_lut_adj_201 (.A(n20101), .B(n13341), .C(n20094), 
         .D(n20043), .Z(interalClock_enable_177)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_201.init = 16'h0700;
    LUT4 i16076_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_prg_length[4]), 
         .D(page_prg_length[12]), .Z(n18847)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16076_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16075_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_rd_length[4]), 
         .D(page_rd_length[12]), .Z(n18846)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16075_3_lut_4_lut.init = 16'hfd20;
    LUT4 i10341_2_lut_4_lut (.A(n20062), .B(ctrl_port_req), .C(n20059), 
         .D(bytes_arb[1]), .Z(n129[1])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam i10341_2_lut_4_lut.init = 16'h0400;
    PFUMX i32_adj_202 (.BLUT(n17550), .ALUT(n18169), .C0(n20063), .Z(n1512[5]));
    LUT4 i16070_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_prg_length[7]), 
         .D(page_prg_length[15]), .Z(n18841)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16070_3_lut_4_lut.init = 16'hfd20;
    LUT4 i16069_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_rd_length[7]), 
         .D(page_rd_length[15]), .Z(n18840)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16069_3_lut_4_lut.init = 16'hfd20;
    LUT4 i10018_2_lut_rep_304 (.A(\ext_addr[1] ), .B(\ext_addr[0] ), .Z(n20163)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10018_2_lut_rep_304.init = 16'heeee;
    PFUMX mux_32_i32 (.BLUT(n42[31]), .ALUT(n14), .C0(n20062), .Z(n1[31])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i3_4_lut (.A(n20071), .B(n20099), .C(\ext_addr[2] ), .D(n18337), 
         .Z(interalClock_enable_102)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i16116_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_prg_length[0]), 
         .D(page_prg_length[8]), .Z(n18887)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16116_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_adj_203 (.A(n20100), .B(n20093), .C(n19623), .D(n30_adj_2167), 
         .Z(n39)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_203.init = 16'hdc50;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(\ext_addr[1] ), .B(\ext_addr[0] ), 
         .C(\selected[1] ), .D(n20102), .Z(n4_adj_2165)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hbfff;
    LUT4 i16115_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_rd_length[0]), 
         .D(page_rd_length[8]), .Z(n18886)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16115_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_adj_204 (.A(n20082), .B(n18298), .C(n20101), .D(n18450), 
         .Z(n30_adj_2167)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_204.init = 16'hcddd;
    LUT4 i1_4_lut_adj_205 (.A(n992), .B(n20101), .C(\ext_addr[4] ), .D(n20163), 
         .Z(n18337)) /* synthesis lut_function=(!((B (C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_205.init = 16'h222a;
    PFUMX mux_32_i30 (.BLUT(n42[29]), .ALUT(n16), .C0(n20062), .Z(n1[29])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i16452_4_lut (.A(\ext_addr[4] ), .B(n18446), .C(n17), .D(\ext_addr[2] ), 
         .Z(n18980)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;
    defparam i16452_4_lut.init = 16'hcfce;
    LUT4 i16103_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_prg_length[1]), 
         .D(page_prg_length[9]), .Z(n18874)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16103_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_32_i29 (.BLUT(n42[28]), .ALUT(n17_adj_7), .C0(n20062), .Z(n1[28])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i16503_4_lut (.A(interalClock_enable_312), .B(\selected[1] ), .C(n20062), 
         .D(n18297), .Z(n8756)) /* synthesis lut_function=(!((B (C+(D)))+!A)) */ ;
    defparam i16503_4_lut.init = 16'h222a;
    PFUMX mux_32_i28 (.BLUT(n42[27]), .ALUT(n18), .C0(n20062), .Z(n1[27])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i3_4_lut_adj_206 (.A(n20095), .B(n18575), .C(ctrl_port_req), 
         .D(n18296), .Z(n18297)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam i3_4_lut_adj_206.init = 16'h2000;
    LUT4 i16102_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_rd_length[1]), 
         .D(page_rd_length[9]), .Z(n18873)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16102_3_lut_4_lut.init = 16'hfd20;
    LUT4 i3_4_lut_adj_207 (.A(n20098), .B(n20088), .C(n8265), .D(n18194), 
         .Z(n18346)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3_4_lut_adj_207.init = 16'h0100;
    PFUMX mux_32_i27 (.BLUT(n42[26]), .ALUT(n19), .C0(n20062), .Z(n1[26])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 ctr_state_I_0_618_Mux_0_i1_4_lut (.A(n19750), .B(read_data[0]), 
         .C(ctr_state), .D(n937), .Z(C_DAT_O_7__N_1036[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam ctr_state_I_0_618_Mux_0_i1_4_lut.init = 16'hcac0;
    LUT4 i2_4_lut_adj_208 (.A(n20069), .B(n20048), .C(ctr_state), .D(n20060), 
         .Z(interalClock_enable_19)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_208.init = 16'h0400;
    LUT4 i16094_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_prg_length[3]), 
         .D(page_prg_length[11]), .Z(n18865)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16094_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_32_i26 (.BLUT(n42[25]), .ALUT(n20), .C0(n20062), .Z(n1[25])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i16061_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_prg_length[5]), 
         .D(page_prg_length[13]), .Z(n18832)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16061_3_lut_4_lut.init = 16'hfd20;
    LUT4 i4_4_lut (.A(n20175), .B(n6_adj_2139), .C(n20091), .D(n20144), 
         .Z(interalClock_enable_184)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0200;
    LUT4 i1_4_lut_adj_209 (.A(n20046), .B(n20101), .C(n18356), .D(\ext_addr[7] ), 
         .Z(n8164)) /* synthesis lut_function=(!((B (C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_209.init = 16'h222a;
    LUT4 i16060_3_lut_4_lut (.A(n20087), .B(n20090), .C(page_rd_length[5]), 
         .D(page_rd_length[13]), .Z(n18831)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i16060_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_adj_210 (.A(n39), .B(n20095), .C(n17137), .D(n4_adj_2171), 
         .Z(n18194)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_210.init = 16'hfefa;
    LUT4 i3_4_lut_adj_211 (.A(\ext_addr[5] ), .B(\ext_addr[4] ), .C(n20101), 
         .D(n18215), .Z(n17137)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_211.init = 16'h1000;
    PFUMX mux_32_i25 (.BLUT(n42[24]), .ALUT(n21), .C0(n20062), .Z(n1[24])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i1_3_lut (.A(\ext_addr[3] ), .B(\ext_addr[7] ), .C(\ext_addr[2] ), 
         .Z(n18215)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;
    defparam i1_3_lut.init = 16'h1212;
    LUT4 n20021_bdd_2_lut_4_lut (.A(n20101), .B(n20163), .C(n13320), .D(n20021), 
         .Z(ctrl_byte_length[1])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;
    defparam n20021_bdd_2_lut_4_lut.init = 16'h5700;
    LUT4 n19307_bdd_2_lut_4_lut (.A(n20101), .B(n20163), .C(n13320), .D(n19307), 
         .Z(ctrl_byte_length[2])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;
    defparam n19307_bdd_2_lut_4_lut.init = 16'h5700;
    LUT4 i10485_4_lut (.A(n20101), .B(\ext_addr[1] ), .C(\ext_addr[0] ), 
         .D(\ext_addr[4] ), .Z(n13317)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i10485_4_lut.init = 16'haaa8;
    PFUMX i16573 (.BLUT(n19306), .ALUT(n19305), .C0(n20089), .Z(n19307));
    LUT4 i16125_4_lut (.A(n4422), .B(\SHAREDBUS_ADR_I[9] ), .C(n20064), 
         .D(\SHAREDBUS_ADR_I[10] ), .Z(n4_adj_2145)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i16125_4_lut.init = 16'hcafa;
    LUT4 i15881_2_lut_rep_185_4_lut_4_lut_4_lut_4_lut (.A(n20101), .B(n18980), 
         .C(n20176), .D(n39), .Z(n20044)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;
    defparam i15881_2_lut_rep_185_4_lut_4_lut_4_lut_4_lut.init = 16'h5700;
    LUT4 i1_2_lut_3_lut_4_lut_adj_212 (.A(n937), .B(n20090), .C(n20098), 
         .D(n20087), .Z(n8604)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i1_2_lut_3_lut_4_lut_adj_212.init = 16'h4404;
    PFUMX mux_32_i24 (.BLUT(n42[23]), .ALUT(\SHAREDBUS_ADR_I[23] ), .C0(n20062), 
          .Z(n1[23])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i1_2_lut_adj_213 (.A(n1416), .B(read_data_arb[7]), .Z(n50_adj_2161)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_2_lut_adj_213.init = 16'h8888;
    PFUMX mux_32_i23 (.BLUT(n42[22]), .ALUT(\SHAREDBUS_ADR_I[22] ), .C0(n20062), 
          .Z(n1[22])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    PFUMX mux_32_i22 (.BLUT(n42[21]), .ALUT(\SHAREDBUS_ADR_I[21] ), .C0(n20062), 
          .Z(n1[21])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i1_4_lut_adj_214 (.A(n20099), .B(n8071), .C(SPIFlashC_DAT_O[3]), 
         .D(n20091), .Z(n80_adj_2157)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_adj_214.init = 16'ha888;
    LUT4 i1_4_lut_adj_215 (.A(n5596), .B(n13317), .C(SPIFlashC_DAT_O[3]), 
         .D(n20090), .Z(n8071)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_adj_215.init = 16'h3022;
    PFUMX mux_32_i21 (.BLUT(n42[20]), .ALUT(\SHAREDBUS_ADR_I[20] ), .C0(n20062), 
          .Z(n1[20])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    PFUMX mux_32_i20 (.BLUT(n42[19]), .ALUT(\SHAREDBUS_ADR_I[19] ), .C0(n20062), 
          .Z(n1[19])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i1_4_lut_adj_216 (.A(n20099), .B(n8067), .C(SPIFlashC_DAT_O[2]), 
         .D(n20091), .Z(n80_adj_2155)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_adj_216.init = 16'ha888;
    FD1P3AX spi_req_564 (.D(n21077), .SP(interalClock_enable_310), .CK(interalClock), 
            .Q(spi_req)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam spi_req_564.GSR = "ENABLED";
    LUT4 i15750_2_lut_rep_314 (.A(\ext_addr[3] ), .B(\ext_addr[2] ), .Z(n20173)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15750_2_lut_rep_314.init = 16'heeee;
    PFUMX mux_32_i18 (.BLUT(n42[17]), .ALUT(\SHAREDBUS_ADR_I[17] ), .C0(n20062), 
          .Z(n1[17])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    FD1P3IX write_data_i0 (.D(LM8D_DAT_O[0]), .SP(interalClock_enable_312), 
            .CD(n8756), .CK(interalClock), .Q(write_data[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam write_data_i0.GSR = "ENABLED";
    LUT4 mux_1455_i6_3_lut_4_lut (.A(n20099), .B(n20090), .C(spi_chip_ers_c[5]), 
         .D(spi_blk2_ers_c[5]), .Z(n4165)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1455_i6_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_32_i16 (.BLUT(n42[15]), .ALUT(\SHAREDBUS_ADR_I[15] ), .C0(n20062), 
          .Z(n1[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i4_4_lut_adj_217 (.A(n4818), .B(n20089), .C(n20095), .D(n20088), 
         .Z(n7926)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(706[11:16])
    defparam i4_4_lut_adj_217.init = 16'hfbff;
    LUT4 mux_1455_i8_3_lut_4_lut (.A(n20099), .B(n20090), .C(spi_chip_ers_c[7]), 
         .D(spi_blk2_ers_c[7]), .Z(n4167)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1455_i8_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_3_lut_4_lut_adj_218 (.A(\ext_addr[3] ), .B(\ext_addr[2] ), 
         .C(\ext_addr[0] ), .D(\ext_addr[1] ), .Z(n46_adj_8)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_218.init = 16'hfffe;
    PFUMX mux_32_i13 (.BLUT(n42[12]), .ALUT(\SHAREDBUS_ADR_I[12] ), .C0(n20062), 
          .Z(n1[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    PFUMX mux_32_i12 (.BLUT(n42[11]), .ALUT(\SHAREDBUS_ADR_I[11] ), .C0(n20062), 
          .Z(n1[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;
    LUT4 i1_4_lut_adj_219 (.A(n5616), .B(n13317), .C(SPIFlashC_DAT_O[2]), 
         .D(n20090), .Z(n8067)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_adj_219.init = 16'h3022;
    PFUMX i8640 (.BLUT(n57_adj_2148), .ALUT(\SHAREDBUS_ADR_I[14] ), .C0(n20062), 
          .Z(n1[14]));
    LUT4 i1_2_lut_3_lut (.A(\ext_addr[0] ), .B(\ext_addr[3] ), .C(\ext_addr[7] ), 
         .Z(n4_adj_2171)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    PFUMX i8691 (.BLUT(n57), .ALUT(\SHAREDBUS_ADR_I[13] ), .C0(n20062), 
          .Z(n1[13]));
    LUT4 mux_1455_i7_3_lut_4_lut (.A(n20099), .B(n20090), .C(\spi_chip_ers[6] ), 
         .D(\spi_blk2_ers[6] ), .Z(n4166)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1455_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 i8907_3_lut_4_lut (.A(n20099), .B(n20090), .C(spi_chip_ers[0]), 
         .D(spi_blk2_ers[0]), .Z(n11755)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i8907_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_1341_i10_4_lut_4_lut (.A(cmd_bytes[1]), .B(spi_cmd_ext[1]), 
         .C(spi_cmd_ext[9]), .D(cmd_bytes[0]), .Z(n3940)) /* synthesis lut_function=(A (B (D))+!A !((D)+!C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam mux_1341_i10_4_lut_4_lut.init = 16'h8850;
    LUT4 i1_4_lut_adj_220 (.A(n20099), .B(n8064), .C(SPIFlashC_DAT_O[0]), 
         .D(n20091), .Z(n80)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_adj_220.init = 16'ha888;
    LUT4 i3_4_lut_adj_221 (.A(n20099), .B(ctr_state), .C(n8015), .D(n18337), 
         .Z(interalClock_enable_309)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_221.init = 16'h2000;
    LUT4 i1_4_lut_adj_222 (.A(n5207), .B(n13317), .C(SPIFlashC_DAT_O[0]), 
         .D(n20090), .Z(n8064)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_adj_222.init = 16'h3022;
    FD1P3IX cmd_bytes_i0 (.D(ctrl_cmd_bytes[0]), .SP(interalClock_enable_312), 
            .CD(n8767), .CK(interalClock), .Q(cmd_bytes[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=387, LSE_RLINE=438 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam cmd_bytes_i0.GSR = "ENABLED";
    LUT4 i9570_3_lut_4_lut (.A(n20099), .B(n20090), .C(\spi_chip_ers[2] ), 
         .D(\spi_blk2_ers[2] ), .Z(n12402)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam i9570_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_rep_315 (.A(wb_state[0]), .B(wb_state_c[1]), .Z(n20174)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam i1_2_lut_rep_315.init = 16'h8888;
    LUT4 i1_2_lut_rep_285_3_lut (.A(wb_state[0]), .B(wb_state_c[1]), .C(ctr_state), 
         .Z(n20144)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam i1_2_lut_rep_285_3_lut.init = 16'h8080;
    LUT4 mux_1455_i4_3_lut_4_lut (.A(n20099), .B(n20090), .C(\spi_chip_ers[3] ), 
         .D(\spi_blk2_ers[3] ), .Z(n4163)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1455_i4_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_1455_i5_3_lut_4_lut (.A(n20099), .B(n20090), .C(\spi_chip_ers[4] ), 
         .D(\spi_blk2_ers[4] ), .Z(n4164)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1455_i5_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_1455_i2_3_lut_4_lut (.A(n20099), .B(n20090), .C(\spi_chip_ers[1] ), 
         .D(\spi_blk2_ers[1] ), .Z(n4161)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(713[9] 833[16])
    defparam mux_1455_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_adj_223 (.A(n18800), .B(n20096), .C(SPIFlashC_DAT_O[4]), 
         .D(n20090), .Z(n18307)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_4_lut_adj_223.init = 16'h3022;
    LUT4 i1_2_lut_adj_224 (.A(n1416), .B(read_data_arb[4]), .Z(n50_adj_2154)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_2_lut_adj_224.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_225 (.A(wb_state[0]), .B(wb_state_c[1]), 
         .C(n14364), .D(ctr_state), .Z(interalClock_enable_12)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(215[10] 297[8])
    defparam i1_2_lut_3_lut_4_lut_adj_225.init = 16'hf8f0;
    LUT4 i376_2_lut_rep_316 (.A(spi_wr), .B(spi_ack), .Z(n20175)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(282[7:23])
    defparam i376_2_lut_rep_316.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_226 (.A(spi_wr), .B(spi_ack), .C(wb_state_c[1]), 
         .D(wb_state[0]), .Z(interalClock_enable_99)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(282[7:23])
    defparam i1_2_lut_3_lut_4_lut_adj_226.init = 16'h0400;
    LUT4 i16558_3_lut_rep_192_4_lut (.A(ctrl_port_req), .B(n20062), .C(spi_ack), 
         .D(n21077), .Z(interalClock_enable_312)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i16558_3_lut_rep_192_4_lut.init = 16'h0e00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_227 (.A(spi_wr), .B(spi_ack), .C(wb_state_c[1]), 
         .D(wb_state[0]), .Z(n18318)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(282[7:23])
    defparam i1_2_lut_3_lut_4_lut_adj_227.init = 16'h4000;
    PFUMX i16687 (.BLUT(n19479), .ALUT(n19478), .C0(n20053), .Z(n19480));
    LUT4 i9983_2_lut_rep_317 (.A(\ext_addr[6] ), .B(\ext_addr[1] ), .Z(n20176)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9983_2_lut_rep_317.init = 16'heeee;
    LUT4 i1_4_lut_adj_228 (.A(n18817), .B(n20096), .C(SPIFlashC_DAT_O[6]), 
         .D(n20090), .Z(n18306)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    defparam i1_4_lut_adj_228.init = 16'h3022;
    LUT4 i1_2_lut_adj_229 (.A(n1416), .B(read_data_arb[6]), .Z(n50_adj_2153)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_2_lut_adj_229.init = 16'h8888;
    LUT4 i1_4_lut_adj_230 (.A(n18807), .B(n20096), .C(SPIFlashC_DAT_O[5]), 
         .D(n20090), .Z(n18308)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(348[13:28])
    defparam i1_4_lut_adj_230.init = 16'h3022;
    LUT4 i10392_2_lut_rep_286_3_lut (.A(\ext_addr[6] ), .B(\ext_addr[1] ), 
         .C(\ext_addr[0] ), .Z(n20145)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i10392_2_lut_rep_286_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_231 (.A(n1416), .B(read_data_arb[5]), .Z(n50_adj_2152)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(643[9] 708[16])
    defparam i1_2_lut_adj_231.init = 16'h8888;
    LUT4 i15689_2_lut_3_lut_4_lut (.A(\ext_addr[6] ), .B(\ext_addr[1] ), 
         .C(n13320), .D(\ext_addr[0] ), .Z(n18446)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15689_2_lut_3_lut_4_lut.init = 16'hfffe;
    L6MUX21 mux_1172_i32 (.D0(n3150[31]), .D1(n3218[31]), .SD(n18695), 
            .Z(n3252[31]));
    L6MUX21 mux_1172_i30 (.D0(n3150[29]), .D1(n3218[29]), .SD(n18695), 
            .Z(n3252[29]));
    LUT4 i2_4_lut_adj_232 (.A(n20101), .B(n4_adj_2173), .C(n46_adj_8), 
         .D(n4_adj_9), .Z(interalClock_enable_45)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i2_4_lut_adj_232.init = 16'h444c;
    LUT4 i15730_2_lut_3_lut_4_lut (.A(\ext_addr[6] ), .B(\ext_addr[1] ), 
         .C(\ext_addr[3] ), .D(\ext_addr[0] ), .Z(n18491)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15730_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i10415_2_lut_rep_318 (.A(\ext_addr[0] ), .B(\ext_addr[5] ), .Z(n20177)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10415_2_lut_rep_318.init = 16'heeee;
    LUT4 i1_4_lut_adj_233 (.A(n7955), .B(n20101), .C(\ext_addr[2] ), .D(\ext_addr[1] ), 
         .Z(n18245)) /* synthesis lut_function=(!((B (C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_233.init = 16'h222a;
    L6MUX21 mux_1172_i29 (.D0(n3150[28]), .D1(n3218[28]), .SD(n18695), 
            .Z(n3252[28]));
    LUT4 i1_2_lut_3_lut_adj_234 (.A(\ext_addr[0] ), .B(\ext_addr[5] ), .C(\ext_addr[3] ), 
         .Z(n18450)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_234.init = 16'hfefe;
    L6MUX21 mux_1172_i28 (.D0(n3150[27]), .D1(n3218[27]), .SD(n18695), 
            .Z(n3252[27]));
    L6MUX21 mux_1172_i27 (.D0(n3150[26]), .D1(n3218[26]), .SD(n18695), 
            .Z(n3252[26]));
    L6MUX21 mux_1172_i26 (.D0(n3150[25]), .D1(n3218[25]), .SD(n18695), 
            .Z(n3252[25]));
    LUT4 i1_4_lut_adj_235 (.A(n24), .B(n13214), .C(n20083), .D(n20099), 
         .Z(n3251)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_235.init = 16'h3022;
    PFUMX i16675 (.BLUT(n19464), .ALUT(n19463), .C0(n20053), .Z(n19465));
    LUT4 i23_4_lut (.A(wb_state_c[1]), .B(spi_ack), .C(wb_state[0]), .D(n20055), 
         .Z(interalClock_enable_310)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C+!(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(119[16:22])
    defparam i23_4_lut.init = 16'hcbca;
    PFUMX i16670 (.BLUT(n19459), .ALUT(n19458), .C0(n20053), .Z(n19460));
    LUT4 mux_32_i2_4_lut (.A(ctrl_port_cmd[1]), .B(n20098), .C(n20062), 
         .D(n11492), .Z(n1[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i2_4_lut.init = 16'hcac0;
    LUT4 mux_32_i3_4_lut (.A(ctrl_port_cmd[2]), .B(n20100), .C(n20062), 
         .D(n11492), .Z(n1[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i3_4_lut.init = 16'hcac0;
    LUT4 mux_32_i4_4_lut (.A(ctrl_port_cmd[3]), .B(n20099), .C(n20062), 
         .D(n11492), .Z(n1[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i4_4_lut.init = 16'hcac0;
    PFUMX i16983 (.BLUT(n20020), .ALUT(n20019), .C0(n20088), .Z(n20021));
    LUT4 mux_32_i5_4_lut (.A(ctrl_port_cmd[4]), .B(n20089), .C(n20062), 
         .D(n11492), .Z(n1[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i5_4_lut.init = 16'hcac0;
    LUT4 mux_32_i6_4_lut (.A(n11492), .B(n20095), .C(n20062), .D(ctrl_port_cmd[5]), 
         .Z(n1[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i6_4_lut.init = 16'hcac0;
    LUT4 mux_32_i7_4_lut (.A(n11492), .B(n20088), .C(n20062), .D(ctrl_port_cmd[6]), 
         .Z(n1[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i7_4_lut.init = 16'hcac0;
    LUT4 mux_32_i9_4_lut (.A(ctrl_port_cmd[8]), .B(n20075), .C(n20062), 
         .D(n11492), .Z(n1[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i9_4_lut.init = 16'hcac0;
    LUT4 mux_32_i10_4_lut (.A(ctrl_port_cmd[9]), .B(\SHAREDBUS_ADR_I[9] ), 
         .C(n20062), .D(n11492), .Z(n1[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i10_4_lut.init = 16'hcac0;
    PFUMX mux_1170_i32 (.BLUT(n3860), .ALUT(n3950[7]), .C0(n18697), .Z(n3218[31]));
    LUT4 mux_32_i11_4_lut (.A(ctrl_port_cmd[10]), .B(\SHAREDBUS_ADR_I[10] ), 
         .C(n20062), .D(n11492), .Z(n1[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam mux_32_i11_4_lut.init = 16'hcac0;
    LUT4 i10187_3_lut (.A(ctrl_cmd_bytes[2]), .B(n20062), .C(ctrl_port_req), 
         .Z(n129[2])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(248[13] 263[26])
    defparam i10187_3_lut.init = 16'hecec;
    LUT4 i1_4_lut_adj_236 (.A(n20076), .B(n13407), .C(n18_adj_10), .D(n20088), 
         .Z(n19_adj_2176)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_236.init = 16'h3011;
    PFUMX mux_1170_i30 (.BLUT(n12547), .ALUT(n3953), .C0(n18697), .Z(n3218[29]));
    PFUMX mux_1170_i29 (.BLUT(n12523), .ALUT(n3954), .C0(n18697), .Z(n3218[28]));
    PFUMX mux_1170_i28 (.BLUT(n12495), .ALUT(n3955), .C0(n18697), .Z(n3218[27]));
    PFUMX mux_1170_i27 (.BLUT(n3865), .ALUT(n3950[2]), .C0(n18697), .Z(n3218[26]));
    LUT4 n19599_bdd_3_lut (.A(n19599), .B(n19596), .C(n20047), .Z(n19600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19599_bdd_3_lut.init = 16'hcaca;
    PFUMX mux_1170_i26 (.BLUT(n12442), .ALUT(n3957), .C0(n18697), .Z(n3218[25]));
    LUT4 n19748_bdd_2_lut_3_lut_4_lut (.A(n20090), .B(n20064), .C(n4422), 
         .D(n19747), .Z(n19749)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n19748_bdd_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_adj_237 (.A(length_arb[2]), .B(length_arb[0]), .Z(n4_c)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1292[27:42])
    defparam i1_2_lut_adj_237.init = 16'heeee;
    LUT4 i5758_4_lut (.A(n1512[1]), .B(read_data[1]), .C(ctr_state), .D(n937), 
         .Z(C_DAT_O_7__N_1036[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i5758_4_lut.init = 16'hcac0;
    LUT4 mux_528_i3_3_lut_4_lut (.A(n7926), .B(n20091), .C(n19_adj_2176), 
         .D(bytes_arb[2]), .Z(ctrl_cmd_bytes[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1285[3:8])
    defparam mux_528_i3_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_238 (.A(n167), .B(n14364), .C(n20174), .D(ctr_state), 
         .Z(interalClock_enable_104)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i1_4_lut_adj_238.init = 16'hfcee;
    LUT4 i1_2_lut_adj_239 (.A(n6_adj_2177), .B(n166), .Z(n167)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i1_2_lut_adj_239.init = 16'h4444;
    LUT4 i2313_4_lut (.A(n20049), .B(C_ACK_O_N_1694), .C(ctr_state), .D(n6_adj_2177), 
         .Z(n5136)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i2313_4_lut.init = 16'hc0c5;
    LUT4 i14_4_lut (.A(\SHAREDBUS_ADR_I[9] ), .B(\SHAREDBUS_ADR_I[10] ), 
         .C(n20075), .D(n20093), .Z(n6_adj_2177)) /* synthesis lut_function=(A (B)+!A !(B+(C+!(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(640[11] 843[9])
    defparam i14_4_lut.init = 16'h8988;
    LUT4 i1_4_lut_adj_240 (.A(n20091), .B(n17041), .C(n6_adj_2139), .D(\SHAREDBUS_DAT_I[0] ), 
         .Z(n166)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(349[13:28])
    defparam i1_4_lut_adj_240.init = 16'hc8cc;
    PFUMX i113 (.BLUT(n83_adj_2143), .ALUT(n68), .C0(n20089), .Z(n116_adj_2159));
    LUT4 i2_4_lut_adj_241 (.A(n5718), .B(n18558), .C(n20101), .D(n20074), 
         .Z(n17041)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(627[15:40])
    defparam i2_4_lut_adj_241.init = 16'hffec;
    PFUMX i113_adj_242 (.BLUT(n83_adj_2142), .ALUT(n68_adj_11), .C0(n20089), 
          .Z(n116_adj_2156));
    LUT4 mux_528_i1_3_lut_4_lut (.A(n7926), .B(n20091), .C(n19_adj_2176), 
         .D(bytes_arb[0]), .Z(ctrl_cmd_bytes[0])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1285[3:8])
    defparam mux_528_i1_3_lut_4_lut.init = 16'h1f0e;
    PFUMX i113_adj_243 (.BLUT(n83_adj_2141), .ALUT(n18332), .C0(n20089), 
          .Z(n116_adj_2158));
    LUT4 i1_2_lut_4_lut_adj_244 (.A(n8011), .B(n20049), .C(n20064), .D(n20071), 
         .Z(n4_adj_2173)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(627[11] 843[9])
    defparam i1_2_lut_4_lut_adj_244.init = 16'h0200;
    PFUMX i113_adj_245 (.BLUT(n83_adj_2140), .ALUT(n18333), .C0(n20089), 
          .Z(n116_adj_2164));
    LUT4 i15669_2_lut_rep_341 (.A(\page_ptr2[3] ), .B(\page_ptr2[6] ), .Z(n20200)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15669_2_lut_rep_341.init = 16'heeee;
    LUT4 i3_3_lut_4_lut (.A(\page_ptr2[3] ), .B(\page_ptr2[6] ), .C(\page_ptr2[4] ), 
         .D(\page_ptr2[5] ), .Z(n18383)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    LUT4 i10042_4_lut (.A(n16896), .B(ctrl_port_req), .C(n20091), .D(n38), 
         .Z(n27[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(263[10:26])
    defparam i10042_4_lut.init = 16'hc0c4;
    LUT4 i2_4_lut_adj_246 (.A(length_arb[0]), .B(n20089), .C(n20084), 
         .D(n20095), .Z(n16896)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_4_lut_adj_246.init = 16'h0040;
    LUT4 i1_4_lut_adj_247 (.A(n20088), .B(n20081), .C(n20095), .D(n32), 
         .Z(n38)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_247.init = 16'h4544;
    LUT4 i1_4_lut_adj_248 (.A(n20089), .B(page_prg_length[0]), .C(page_rd_length[0]), 
         .D(n20100), .Z(n32)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_248.init = 16'hafbb;
    PFUMX mux_1237_i1 (.BLUT(n3485[0]), .ALUT(n3488[0]), .C0(n5_adj_2179), 
          .Z(n3491[0]));
    LUT4 i5756_4_lut (.A(n1512[2]), .B(read_data[2]), .C(ctr_state), .D(n937), 
         .Z(C_DAT_O_7__N_1036[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i5756_4_lut.init = 16'hcac0;
    PFUMX mux_1286_i1 (.BLUT(n3550[0]), .ALUT(n3553[0]), .C0(n5_adj_2179), 
          .Z(n3556[0]));
    LUT4 i5754_4_lut (.A(n1512[3]), .B(read_data[3]), .C(ctr_state), .D(n937), 
         .Z(C_DAT_O_7__N_1036[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i5754_4_lut.init = 16'hcac0;
    LUT4 i5752_4_lut (.A(n1512[4]), .B(read_data[4]), .C(ctr_state), .D(n937), 
         .Z(C_DAT_O_7__N_1036[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i5752_4_lut.init = 16'hcac0;
    LUT4 i5750_4_lut (.A(n1512[5]), .B(read_data[5]), .C(ctr_state), .D(n937), 
         .Z(C_DAT_O_7__N_1036[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i5750_4_lut.init = 16'hcac0;
    LUT4 i5748_4_lut (.A(n1512[6]), .B(read_data[6]), .C(ctr_state), .D(n937), 
         .Z(C_DAT_O_7__N_1036[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i5748_4_lut.init = 16'hcac0;
    LUT4 i5746_4_lut (.A(n1512[7]), .B(read_data[7]), .C(ctr_state), .D(n937), 
         .Z(C_DAT_O_7__N_1036[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i5746_4_lut.init = 16'hcac0;
    PFUMX i113_adj_249 (.BLUT(n83_adj_2144), .ALUT(n68_adj_12), .C0(n20089), 
          .Z(n116));
    LUT4 i3_4_lut_adj_250 (.A(n20070), .B(n6_adj_13), .C(ctr_state), .D(n166), 
         .Z(n18233)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_250.init = 16'h0800;
    PFUMX i4367 (.BLUT(n6985), .ALUT(n6980), .C0(n3251), .Z(n7177));
    LUT4 i4_4_lut_adj_251 (.A(n8475), .B(n20070), .C(ctr_state), .D(n6_adj_2147), 
         .Z(interalClock_enable_123)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(616[6] 870[13])
    defparam i4_4_lut_adj_251.init = 16'h0800;
    LUT4 spi_read_7__I_0_3_lut (.A(spi_read[7]), .B(spi_fast_read[7]), .C(\div_num[1] ), 
         .Z(ctrl_spi_cmd_31__N_1298)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1149[7:53])
    defparam spi_read_7__I_0_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut (.A(n20087), .B(n12), .C(ctr_state), .D(n20049), .Z(interalClock_enable_131)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i6_4_lut.init = 16'h0008;
    LUT4 i16018_3_lut (.A(spi_cmd_ext[9]), .B(spi_cmd_ext[17]), .C(cmd_bytes[0]), 
         .Z(n18789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16018_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_252 (.A(n21_adj_14), .B(n18233), .C(n20091), .D(n20086), 
         .Z(interalClock_enable_139)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_252.init = 16'h0c88;
    L6MUX21 i4208 (.D0(n18860), .D1(n18878), .SD(n20095), .Z(n7054));
    L6MUX21 i4135 (.D0(n18888), .D1(n18810), .SD(n20095), .Z(n6976));
    LUT4 i4222_3_lut_4_lut (.A(n20097), .B(n20066), .C(n20095), .D(\ext_addr[4] ), 
         .Z(n6980)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam i4222_3_lut_4_lut.init = 16'hf888;
    L6MUX21 i15983 (.D0(n18752), .D1(n18753), .SD(n20100), .Z(n18754));
    LUT4 spi_read_6__I_0_3_lut (.A(spi_read[6]), .B(spi_fast_read[6]), .C(\div_num[1] ), 
         .Z(ctrl_spi_cmd_31__N_1299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1149[7:53])
    defparam spi_read_6__I_0_3_lut.init = 16'hcaca;
    PFUMX i17077 (.BLUT(n20320), .ALUT(n20319), .C0(n20100), .Z(n20321));
    PFUMX i17074 (.BLUT(n20317), .ALUT(n20316), .C0(\ext_addr[3] ), .Z(n20318));
    LUT4 spi_read_5__I_0_3_lut (.A(spi_read[5]), .B(spi_fast_read[5]), .C(\div_num[1] ), 
         .Z(ctrl_spi_cmd_31__N_1300)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1149[7:53])
    defparam spi_read_5__I_0_3_lut.init = 16'hcaca;
    PFUMX i17070 (.BLUT(n20314), .ALUT(n20313), .C0(n20100), .Z(n20315));
    LUT4 spi_read_4__I_0_3_lut (.A(spi_read[4]), .B(spi_fast_read[4]), .C(\div_num[1] ), 
         .Z(ctrl_spi_cmd_31__N_1301)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1149[7:53])
    defparam spi_read_4__I_0_3_lut.init = 16'hcaca;
    PFUMX i17067 (.BLUT(n20311), .ALUT(n20310), .C0(\ext_addr[3] ), .Z(n20312));
    LUT4 spi_read_3__I_0_3_lut (.A(spi_read[3]), .B(spi_fast_read[3]), .C(\div_num[1] ), 
         .Z(ctrl_spi_cmd_31__N_1302)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1149[7:53])
    defparam spi_read_3__I_0_3_lut.init = 16'hcaca;
    LUT4 spi_read_2__I_0_3_lut (.A(spi_read[2]), .B(spi_fast_read[2]), .C(\div_num[1] ), 
         .Z(ctrl_spi_cmd_31__N_1303)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1149[7:53])
    defparam spi_read_2__I_0_3_lut.init = 16'hcaca;
    L6MUX21 i16029 (.D0(n18798), .D1(n18799), .SD(n20100), .Z(n18800));
    L6MUX21 i16036 (.D0(n18805), .D1(n18806), .SD(n20100), .Z(n18807));
    PFUMX i16039 (.BLUT(n18808), .ALUT(n18809), .C0(n20073), .Z(n18810));
    LUT4 spi_read_1__I_0_3_lut (.A(spi_read[1]), .B(spi_fast_read[1]), .C(\div_num[1] ), 
         .Z(ctrl_spi_cmd_31__N_1304)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1149[7:53])
    defparam spi_read_1__I_0_3_lut.init = 16'hcaca;
    LUT4 spi_read_0__I_0_3_lut (.A(spi_read[0]), .B(spi_fast_read[0]), .C(\div_num[1] ), 
         .Z(ctrl_spi_cmd_31__N_1305)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/wb_intf.v(1149[7:53])
    defparam spi_read_0__I_0_3_lut.init = 16'hcaca;
    PFUMX i16851 (.BLUT(n16980), .ALUT(n19749), .C0(n20063), .Z(n19750));
    L6MUX21 i16046 (.D0(n18815), .D1(n18816), .SD(n20100), .Z(n18817));
    LUT4 n19746_bdd_3_lut (.A(n19746), .B(n6976), .C(n20047), .Z(n19747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19746_bdd_3_lut.init = 16'hcaca;
    PFUMX i17000 (.BLUT(n20210), .ALUT(n20211), .C0(\ext_addr[4] ), .Z(n5_adj_2179));
    PFUMX i16849 (.BLUT(n19745), .ALUT(n18784), .C0(n20053), .Z(n19746));
    
endmodule
//
// Verilog Description of module \spi_flash_intf(WB_DAT_WIDTH=8,C_PORT_ENABLE=1,C_WB_DAT_WIDTH=8,BUF_WIDTH=0,PAGE_WIDTH=2) 
//

module \spi_flash_intf(WB_DAT_WIDTH=8,C_PORT_ENABLE=1,C_WB_DAT_WIDTH=8,BUF_WIDTH=0,PAGE_WIDTH=2)  (int_cmd_dword_31__N_1881, 
            spi_cmd, n20137, read_data, clk_div, clk_div_enable_19, 
            dword_wr_31__N_1809, SPIFlashSO_c, \spi_cmd_ext[23] , \spi_cmd_ext[7] , 
            cmd_bytes, \spi_cmd_ext[6] , \spi_cmd_ext[22] , n3906, \int_cmd_dword[20] , 
            SPIFlashSI_c, SI_N_2079, SI_N_2077, n502, \spi_cmd_ext[30] , 
            \spi_cmd_ext[14] , \counter[2] , n20128, \spi_cmd_ext[31] , 
            \spi_cmd_ext[5] , \spi_cmd_ext[21] , \spi_cmd_ext[29] , \spi_cmd_ext[13] , 
            \spi_cmd_ext[4] , \spi_cmd_ext[20] , \spi_cmd_ext[28] , \spi_cmd_ext[12] , 
            \spi_cmd_ext[3] , \spi_cmd_ext[19] , \spi_cmd_ext[27] , \spi_cmd_ext[11] , 
            \spi_cmd_ext[2] , \spi_cmd_ext[18] , \spi_cmd_ext[26] , \spi_cmd_ext[10] , 
            \spi_cmd_ext[1] , \spi_cmd_ext[9] , \spi_cmd_ext[17] , spi_ack, 
            SPIFlashCEJ_c, n21075, n20168, \int_cmd_dword[1] , \int_cmd_dword[21] , 
            spi_wr, \spi_cmd_ext[8] , \spi_cmd_ext[15] , n15, n12, 
            n15_adj_2, n12_adj_3, n16, n8, \int_cmd_dword_31__N_1849[20] , 
            write_data, \int_cmd_dword[22] , \int_cmd_dword_31__N_1817[9] , 
            n11669, n11687, n11678, n11786, \int_cmd_dword_31__N_1817[17] , 
            n4, \int_cmd_dword_31__N_1817[1] , \spi_read_stat[7] , \spi_wrt_enb[7] , 
            \spi_wrt_enb[0] , \spi_read_stat[0] , \spi_read_stat[3] , 
            \spi_wrt_enb[3] , \spi_read_stat[5] , \spi_wrt_enb[5] , n17075, 
            \spi_wrt_enb[6] , \spi_read_stat[6] , \cmd_dword_31__N_2020[29] , 
            \cmd_dword_31__N_2020[27] , SPIFlashSCK_c, byte_length, \cmd_dword_31__N_2020[26] , 
            spi_req, C_ACK_O_N_1694, wr_enb, \int_cmd_dword[9] , \div_num[1] , 
            n13, \int_cmd_dword[17] , n20197, n3940, n18763) /* synthesis syn_module_defined=1 */ ;
    output int_cmd_dword_31__N_1881;
    input [31:0]spi_cmd;
    output n20137;
    output [7:0]read_data;
    input clk_div;
    input clk_div_enable_19;
    output dword_wr_31__N_1809;
    input SPIFlashSO_c;
    input \spi_cmd_ext[23] ;
    input \spi_cmd_ext[7] ;
    input [3:0]cmd_bytes;
    input \spi_cmd_ext[6] ;
    input \spi_cmd_ext[22] ;
    input n3906;
    input \int_cmd_dword[20] ;
    output SPIFlashSI_c;
    output SI_N_2079;
    output SI_N_2077;
    output n502;
    input \spi_cmd_ext[30] ;
    input \spi_cmd_ext[14] ;
    input \counter[2] ;
    output n20128;
    input \spi_cmd_ext[31] ;
    input \spi_cmd_ext[5] ;
    input \spi_cmd_ext[21] ;
    input \spi_cmd_ext[29] ;
    input \spi_cmd_ext[13] ;
    input \spi_cmd_ext[4] ;
    input \spi_cmd_ext[20] ;
    input \spi_cmd_ext[28] ;
    input \spi_cmd_ext[12] ;
    input \spi_cmd_ext[3] ;
    input \spi_cmd_ext[19] ;
    input \spi_cmd_ext[27] ;
    input \spi_cmd_ext[11] ;
    input \spi_cmd_ext[2] ;
    input \spi_cmd_ext[18] ;
    input \spi_cmd_ext[26] ;
    input \spi_cmd_ext[10] ;
    input \spi_cmd_ext[1] ;
    input \spi_cmd_ext[9] ;
    input \spi_cmd_ext[17] ;
    output spi_ack;
    output SPIFlashCEJ_c;
    output n21075;
    output n20168;
    input \int_cmd_dword[1] ;
    input \int_cmd_dword[21] ;
    input spi_wr;
    input \spi_cmd_ext[8] ;
    input \spi_cmd_ext[15] ;
    input n15;
    output n12;
    input n15_adj_2;
    output n12_adj_3;
    input n16;
    output n8;
    output \int_cmd_dword_31__N_1849[20] ;
    input [7:0]write_data;
    input \int_cmd_dword[22] ;
    output \int_cmd_dword_31__N_1817[9] ;
    output n11669;
    output n11687;
    output n11678;
    input n11786;
    output \int_cmd_dword_31__N_1817[17] ;
    input n4;
    output \int_cmd_dword_31__N_1817[1] ;
    input \spi_read_stat[7] ;
    input \spi_wrt_enb[7] ;
    input \spi_wrt_enb[0] ;
    input \spi_read_stat[0] ;
    input \spi_read_stat[3] ;
    input \spi_wrt_enb[3] ;
    input \spi_read_stat[5] ;
    input \spi_wrt_enb[5] ;
    output n17075;
    input \spi_wrt_enb[6] ;
    input \spi_read_stat[6] ;
    input \cmd_dword_31__N_2020[29] ;
    input \cmd_dword_31__N_2020[27] ;
    output SPIFlashSCK_c;
    input [2:0]byte_length;
    input \cmd_dword_31__N_2020[26] ;
    input spi_req;
    output C_ACK_O_N_1694;
    input wr_enb;
    input \int_cmd_dword[9] ;
    input \div_num[1] ;
    input n13;
    input \int_cmd_dword[17] ;
    output n20197;
    input n3940;
    output n18763;
    
    wire clk_div /* synthesis is_clock=1, SET_AS_NETWORK=\platform1_u/SPIFlashS_DAT_O_7__I_0/clk_div */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash.v(135[27:34])
    wire [31:0]int_cmd_dword_31__N_1817;
    wire [31:0]int_cmd_dword_31__N_1849;
    wire [31:0]int_cmd_dword;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(164[16:29])
    wire [30:0]n3918;
    wire [5:0]n1;
    wire [3:0]n3905;
    
    wire n1998;
    wire [5:0]n37;
    
    wire n18188;
    wire [30:0]n3788;
    
    wire n18786;
    wire [31:0]cmd_dword;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(113[18:27])
    
    wire clk_div_enable_70, n8713;
    wire [11:0]spi_init_delay;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(111[18:32])
    wire [7:0]n497;
    wire [12:0]spi_init_delay_11__N_1942;
    
    wire clk_div_enable_4, SI_N_2068, n913, n5567, SI_N_2083, n16938, 
        n4833;
    wire [5:0]bit_cnt;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(110[17:24])
    
    wire clk_div_enable_51, n914, n915, n916, n917, n918, n919, 
        n5178, n5176, n16972, n5170, spi_ack_N_2099, n18054, n5161, 
        n18785, n18638, n20214, n1018, clk_div_enable_45, n13031, 
        n20213, n18780, n18779, n18777, n18776, n18771, n18770, 
        n18762, n18761, n19831, n19832, n19829, n19830;
    wire [7:0]byte_wr;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(115[17:24])
    
    wire n19848, n20118, n8752;
    wire [1:0]byte_cnt;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(114[26:34])
    
    wire clk_div_enable_24;
    wire [1:0]n2;
    
    wire clk_div_enable_21, n5415, clk_div_enable_22, n8748, n20143, 
        n18778;
    wire [31:0]dword_wr;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(116[18:26])
    
    wire n20119, n17086, n8768, n1069, n19858, n20121, n20180, 
        n19869, n16999, n20124, n17, n18, n18_adj_2124, n20115;
    wire [7:0]byte_wr_7__N_2052;
    
    wire n19850, n20139, n18268, n20148, n20107, n512, n20140, 
        n12959, n436, n18781, n20149, int_SI_N_2114, n18787, n19833, 
        n11785, n11777, n38;
    wire [31:0]cmd_dword_31__N_2020;
    
    wire n41_adj_2128, n29, n18646, n17119, n18392, n18577, n18581, 
        n18579, n4_adj_2129, n9, n20150, n20166, n19868, n20123, 
        n29_adj_2130, int_SI_N_2115, n19851, n18644, n20179, n20178, 
        n5175, n4067, n487, n8_adj_2131, n7942, n19870, n20167, 
        n20170;
    wire [3:0]n421;
    
    wire n18309, n20171, n16826, GND_net, n13_c, n20141, n16825, 
        n16824, n4_adj_2132, n16954, n16823, n18302, n5568, n17163, 
        n18595, n29_adj_2133, n18493, n20131, n4_adj_2134, n9_adj_2135, 
        n16822, n16819, n16820, n16821, n21, n19, n20, n16818, 
        n8_adj_2137, n8008, n7158, n18772;
    
    PFUMX int_cmd_dword_31__I_0_i16 (.BLUT(int_cmd_dword_31__N_1817[15]), 
          .ALUT(int_cmd_dword_31__N_1849[15]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    LUT4 mux_1343_i15_3_lut (.A(spi_cmd[14]), .B(n3918[14]), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i15_3_lut.init = 16'hcaca;
    PFUMX int_cmd_dword_31__I_0_i15 (.BLUT(int_cmd_dword_31__N_1817[14]), 
          .ALUT(int_cmd_dword_31__N_1849[14]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    PFUMX int_cmd_dword_31__I_0_i14 (.BLUT(int_cmd_dword_31__N_1817[13]), 
          .ALUT(int_cmd_dword_31__N_1849[13]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    PFUMX int_cmd_dword_31__I_0_i13 (.BLUT(int_cmd_dword_31__N_1817[12]), 
          .ALUT(int_cmd_dword_31__N_1849[12]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    LUT4 bit_cnt_1672_mux_6_i3_3_lut (.A(n1[2]), .B(n3905[2]), .C(n1998), 
         .Z(n37[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672_mux_6_i3_3_lut.init = 16'hcaca;
    PFUMX int_cmd_dword_31__I_0_i12 (.BLUT(int_cmd_dword_31__N_1817[11]), 
          .ALUT(int_cmd_dword_31__N_1849[11]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    FD1P3IX read_data__i0 (.D(SPIFlashSO_c), .SP(clk_div_enable_19), .CD(dword_wr_31__N_1809), 
            .CK(clk_div), .Q(read_data[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(362[13] 365[36])
    defparam read_data__i0.GSR = "ENABLED";
    FD1S3AX spi_state_FSM_i1 (.D(n18188), .CK(clk_div), .Q(int_cmd_dword_31__N_1881));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_state_FSM_i1.GSR = "ENABLED";
    LUT4 mux_1324_i24_3_lut (.A(\spi_cmd_ext[23] ), .B(\spi_cmd_ext[7] ), 
         .C(cmd_bytes[1]), .Z(n3788[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1324_i24_3_lut.init = 16'hcaca;
    PFUMX int_cmd_dword_31__I_0_i25 (.BLUT(int_cmd_dword_31__N_1817[24]), 
          .ALUT(int_cmd_dword_31__N_1849[24]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[24])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    LUT4 i16015_3_lut (.A(\spi_cmd_ext[6] ), .B(\spi_cmd_ext[22] ), .C(cmd_bytes[1]), 
         .Z(n18786)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16015_3_lut.init = 16'hcaca;
    PFUMX int_cmd_dword_31__I_0_i11 (.BLUT(int_cmd_dword_31__N_1817[10]), 
          .ALUT(int_cmd_dword_31__N_1849[10]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    LUT4 bit_cnt_1672_mux_6_i4_3_lut (.A(n1[3]), .B(n3906), .C(n1998), 
         .Z(n37[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672_mux_6_i4_3_lut.init = 16'hcaca;
    FD1P3IX cmd_dword_i0_i20 (.D(\int_cmd_dword[20] ), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[20])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i20.GSR = "ENABLED";
    FD1P3AX spi_init_delay_i0_i0 (.D(spi_init_delay_11__N_1942[0]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i0.GSR = "ENABLED";
    PFUMX int_cmd_dword_31__I_0_i9 (.BLUT(int_cmd_dword_31__N_1817[8]), .ALUT(int_cmd_dword_31__N_1849[8]), 
          .C0(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    FD1P3AX SI_187 (.D(SI_N_2068), .SP(clk_div_enable_4), .CK(clk_div), 
            .Q(SPIFlashSI_c)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam SI_187.GSR = "ENABLED";
    PFUMX int_cmd_dword_31__I_0_i8 (.BLUT(int_cmd_dword_31__N_1817[7]), .ALUT(int_cmd_dword_31__N_1849[7]), 
          .C0(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    PFUMX int_cmd_dword_31__I_0_i7 (.BLUT(int_cmd_dword_31__N_1817[6]), .ALUT(int_cmd_dword_31__N_1849[6]), 
          .C0(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    PFUMX int_cmd_dword_31__I_0_i6 (.BLUT(int_cmd_dword_31__N_1817[5]), .ALUT(int_cmd_dword_31__N_1849[5]), 
          .C0(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    PFUMX int_cmd_dword_31__I_0_i24 (.BLUT(int_cmd_dword_31__N_1817[23]), 
          .ALUT(int_cmd_dword_31__N_1849[23]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[23])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    FD1P3AX cmd_dword_i0_i25 (.D(n913), .SP(clk_div_enable_70), .CK(clk_div), 
            .Q(cmd_dword[25])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i25.GSR = "ENABLED";
    PFUMX int_cmd_dword_31__I_0_i5 (.BLUT(int_cmd_dword_31__N_1817[4]), .ALUT(int_cmd_dword_31__N_1849[4]), 
          .C0(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    PFUMX int_cmd_dword_31__I_0_i4 (.BLUT(int_cmd_dword_31__N_1817[3]), .ALUT(int_cmd_dword_31__N_1849[3]), 
          .C0(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    PFUMX int_cmd_dword_31__I_0_i3 (.BLUT(int_cmd_dword_31__N_1817[2]), .ALUT(int_cmd_dword_31__N_1849[2]), 
          .C0(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    FD1S3AX cmd_state_FSM_i3 (.D(n5567), .CK(clk_div), .Q(SI_N_2079));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam cmd_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX cmd_state_FSM_i2 (.D(n16938), .CK(clk_div), .Q(SI_N_2083));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam cmd_state_FSM_i2.GSR = "ENABLED";
    FD1S3AX cmd_state_FSM_i1 (.D(n4833), .CK(clk_div), .Q(SI_N_2077));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam cmd_state_FSM_i1.GSR = "ENABLED";
    FD1P3AX bit_cnt_1672__i0 (.D(n37[0]), .SP(clk_div_enable_51), .CK(clk_div), 
            .Q(bit_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672__i0.GSR = "ENABLED";
    FD1P3AX cmd_dword_i0_i26 (.D(n914), .SP(clk_div_enable_70), .CK(clk_div), 
            .Q(cmd_dword[26])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i26.GSR = "ENABLED";
    FD1P3AX cmd_dword_i0_i27 (.D(n915), .SP(clk_div_enable_70), .CK(clk_div), 
            .Q(cmd_dword[27])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i27.GSR = "ENABLED";
    FD1P3AX cmd_dword_i0_i28 (.D(n916), .SP(clk_div_enable_70), .CK(clk_div), 
            .Q(cmd_dword[28])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i28.GSR = "ENABLED";
    FD1P3AX cmd_dword_i0_i29 (.D(n917), .SP(clk_div_enable_70), .CK(clk_div), 
            .Q(cmd_dword[29])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i29.GSR = "ENABLED";
    FD1P3AX cmd_dword_i0_i30 (.D(n918), .SP(clk_div_enable_70), .CK(clk_div), 
            .Q(cmd_dword[30])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i30.GSR = "ENABLED";
    FD1P3AX cmd_dword_i0_i31 (.D(n919), .SP(clk_div_enable_70), .CK(clk_div), 
            .Q(cmd_dword[31])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i31.GSR = "ENABLED";
    FD1P3IX read_data__i1 (.D(read_data[0]), .SP(clk_div_enable_19), .CD(dword_wr_31__N_1809), 
            .CK(clk_div), .Q(read_data[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(362[13] 365[36])
    defparam read_data__i1.GSR = "ENABLED";
    FD1P3IX read_data__i2 (.D(read_data[1]), .SP(clk_div_enable_19), .CD(dword_wr_31__N_1809), 
            .CK(clk_div), .Q(read_data[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(362[13] 365[36])
    defparam read_data__i2.GSR = "ENABLED";
    FD1P3IX read_data__i3 (.D(read_data[2]), .SP(clk_div_enable_19), .CD(dword_wr_31__N_1809), 
            .CK(clk_div), .Q(read_data[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(362[13] 365[36])
    defparam read_data__i3.GSR = "ENABLED";
    FD1P3IX read_data__i4 (.D(read_data[3]), .SP(clk_div_enable_19), .CD(dword_wr_31__N_1809), 
            .CK(clk_div), .Q(read_data[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(362[13] 365[36])
    defparam read_data__i4.GSR = "ENABLED";
    FD1P3IX read_data__i5 (.D(read_data[4]), .SP(clk_div_enable_19), .CD(dword_wr_31__N_1809), 
            .CK(clk_div), .Q(read_data[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(362[13] 365[36])
    defparam read_data__i5.GSR = "ENABLED";
    FD1P3IX read_data__i6 (.D(read_data[5]), .SP(clk_div_enable_19), .CD(dword_wr_31__N_1809), 
            .CK(clk_div), .Q(read_data[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(362[13] 365[36])
    defparam read_data__i6.GSR = "ENABLED";
    FD1P3IX read_data__i7 (.D(read_data[6]), .SP(clk_div_enable_19), .CD(dword_wr_31__N_1809), 
            .CK(clk_div), .Q(read_data[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(362[13] 365[36])
    defparam read_data__i7.GSR = "ENABLED";
    FD1S3AX spi_state_FSM_i2 (.D(n5178), .CK(clk_div), .Q(dword_wr_31__N_1809));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_state_FSM_i2.GSR = "ENABLED";
    FD1S3AX spi_state_FSM_i3 (.D(n5176), .CK(clk_div), .Q(n497[2]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX spi_state_FSM_i4 (.D(n16972), .CK(clk_div), .Q(n502));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_state_FSM_i4.GSR = "ENABLED";
    FD1S3AX spi_state_FSM_i5 (.D(n5170), .CK(clk_div), .Q(n497[4]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_state_FSM_i5.GSR = "ENABLED";
    FD1S3AX spi_state_FSM_i6 (.D(n18054), .CK(clk_div), .Q(spi_ack_N_2099));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_state_FSM_i6.GSR = "ENABLED";
    FD1S3AY spi_state_FSM_i7 (.D(n5161), .CK(clk_div), .Q(n497[6]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_state_FSM_i7.GSR = "ENABLED";
    LUT4 i16014_3_lut (.A(\spi_cmd_ext[30] ), .B(\spi_cmd_ext[14] ), .C(cmd_bytes[1]), 
         .Z(n18785)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16014_3_lut.init = 16'hcaca;
    LUT4 i21_4_lut_rep_278_4_lut (.A(cmd_bytes[1]), .B(cmd_bytes[0]), .C(cmd_bytes[3]), 
         .D(cmd_bytes[2]), .Z(n20137)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(170[8] 185[10])
    defparam i21_4_lut_rep_278_4_lut.init = 16'h0e10;
    LUT4 i15867_4_lut_4_lut_4_lut (.A(cmd_bytes[1]), .B(cmd_bytes[2]), .C(cmd_bytes[3]), 
         .D(cmd_bytes[0]), .Z(n18638)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+((D)+!C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(189[9:25])
    defparam i15867_4_lut_4_lut_4_lut.init = 16'h0810;
    LUT4 int_SI_I_103_4_lut_then_4_lut (.A(\spi_cmd_ext[23] ), .B(cmd_bytes[3]), 
         .C(cmd_bytes[2]), .D(cmd_bytes[0]), .Z(n20214)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(193[7] 199[9])
    defparam int_SI_I_103_4_lut_then_4_lut.init = 16'h2000;
    LUT4 i10477_3_lut_rep_249 (.A(n1018), .B(\counter[2] ), .C(n497[4]), 
         .Z(clk_div_enable_45)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i10477_3_lut_rep_249.init = 16'hc8c8;
    LUT4 i16505_2_lut_2_lut_4_lut_3_lut (.A(\counter[2] ), .B(n497[4]), 
         .C(n20128), .Z(n13031)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i16505_2_lut_2_lut_4_lut_3_lut.init = 16'h8080;
    LUT4 int_SI_I_103_4_lut_else_4_lut (.A(\spi_cmd_ext[31] ), .B(cmd_bytes[3]), 
         .C(cmd_bytes[2]), .D(cmd_bytes[0]), .Z(n20213)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(193[7] 199[9])
    defparam int_SI_I_103_4_lut_else_4_lut.init = 16'h0008;
    LUT4 i16009_3_lut (.A(\spi_cmd_ext[5] ), .B(\spi_cmd_ext[21] ), .C(cmd_bytes[1]), 
         .Z(n18780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16009_3_lut.init = 16'hcaca;
    LUT4 i16008_3_lut (.A(\spi_cmd_ext[29] ), .B(\spi_cmd_ext[13] ), .C(cmd_bytes[1]), 
         .Z(n18779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16008_3_lut.init = 16'hcaca;
    LUT4 i16006_3_lut (.A(\spi_cmd_ext[4] ), .B(\spi_cmd_ext[20] ), .C(cmd_bytes[1]), 
         .Z(n18777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16006_3_lut.init = 16'hcaca;
    LUT4 i16005_3_lut (.A(\spi_cmd_ext[28] ), .B(\spi_cmd_ext[12] ), .C(cmd_bytes[1]), 
         .Z(n18776)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16005_3_lut.init = 16'hcaca;
    LUT4 i16000_3_lut (.A(\spi_cmd_ext[3] ), .B(\spi_cmd_ext[19] ), .C(cmd_bytes[1]), 
         .Z(n18771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i16000_3_lut.init = 16'hcaca;
    LUT4 i15999_3_lut (.A(\spi_cmd_ext[27] ), .B(\spi_cmd_ext[11] ), .C(cmd_bytes[1]), 
         .Z(n18770)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i15999_3_lut.init = 16'hcaca;
    LUT4 i15991_3_lut (.A(\spi_cmd_ext[2] ), .B(\spi_cmd_ext[18] ), .C(cmd_bytes[1]), 
         .Z(n18762)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i15991_3_lut.init = 16'hcaca;
    LUT4 i15990_3_lut (.A(\spi_cmd_ext[26] ), .B(\spi_cmd_ext[10] ), .C(cmd_bytes[1]), 
         .Z(n18761)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i15990_3_lut.init = 16'hcaca;
    LUT4 spi_cmd_17__bdd_3_lut_16974 (.A(spi_cmd[17]), .B(n19831), .C(n20137), 
         .Z(n19832)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam spi_cmd_17__bdd_3_lut_16974.init = 16'hcaca;
    LUT4 spi_cmd_ext_1__bdd_3_lut_17436 (.A(\spi_cmd_ext[1] ), .B(cmd_bytes[0]), 
         .C(\spi_cmd_ext[9] ), .Z(n19829)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam spi_cmd_ext_1__bdd_3_lut_17436.init = 16'he2e2;
    LUT4 spi_cmd_ext_1__bdd_2_lut_17437 (.A(cmd_bytes[0]), .B(\spi_cmd_ext[17] ), 
         .Z(n19830)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam spi_cmd_ext_1__bdd_2_lut_17437.init = 16'h4444;
    LUT4 n413_bdd_3_lut_16973 (.A(cmd_dword[31]), .B(byte_wr[7]), .C(dword_wr_31__N_1809), 
         .Z(n19848)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n413_bdd_3_lut_16973.init = 16'hacac;
    LUT4 i2_4_lut_4_lut (.A(n502), .B(n497[4]), .C(SI_N_2079), .D(n20118), 
         .Z(n8752)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i2_4_lut_4_lut.init = 16'h1000;
    FD1P3IX byte_cnt_1674__i0 (.D(n2[0]), .SP(clk_div_enable_24), .CD(n8752), 
            .CK(clk_div), .Q(byte_cnt[0]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_cnt_1674__i0.GSR = "ENABLED";
    FD1P3AX spi_ack_181 (.D(n5415), .SP(clk_div_enable_21), .CK(clk_div), 
            .Q(spi_ack));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam spi_ack_181.GSR = "ENABLED";
    FD1P3JX CS_186 (.D(n20143), .SP(clk_div_enable_22), .PD(n8748), .CK(clk_div), 
            .Q(SPIFlashCEJ_c)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam CS_186.GSR = "ENABLED";
    LUT4 mux_1343_i29_3_lut (.A(spi_cmd[28]), .B(n18778), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i29_3_lut.init = 16'hcaca;
    FD1P3IX byte_wr__i1 (.D(dword_wr[24]), .SP(clk_div_enable_45), .CD(n13031), 
            .CK(clk_div), .Q(byte_wr[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_wr__i1.GSR = "DISABLED";
    LUT4 i5894_2_lut_4_lut (.A(n20119), .B(n497[6]), .C(n17086), .D(n1998), 
         .Z(n8768)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i5894_2_lut_4_lut.init = 16'h0100;
    LUT4 mux_1343_i16_3_lut (.A(spi_cmd[15]), .B(n3918[15]), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i16_3_lut.init = 16'hcaca;
    LUT4 n1069_bdd_4_lut (.A(n1069), .B(n21075), .C(n20168), .D(dword_wr_31__N_1809), 
         .Z(n19858)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(D)))) */ ;
    defparam n1069_bdd_4_lut.init = 16'h1d0c;
    LUT4 i16424_2_lut_2_lut_4_lut (.A(SI_N_2083), .B(n20121), .C(n20180), 
         .D(clk_div_enable_70), .Z(n8713)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;
    defparam i16424_2_lut_2_lut_4_lut.init = 16'h3100;
    LUT4 n499_bdd_3_lut (.A(n497[6]), .B(spi_ack_N_2099), .C(n502), .Z(n19869)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam n499_bdd_3_lut.init = 16'h0101;
    FD1P3IX byte_cnt_1674__i1 (.D(n16999), .SP(clk_div_enable_24), .CD(n8752), 
            .CK(clk_div), .Q(byte_cnt[1]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_cnt_1674__i1.GSR = "ENABLED";
    FD1P3IX bit_cnt_1672__i5 (.D(n1[5]), .SP(clk_div_enable_51), .CD(n8768), 
            .CK(clk_div), .Q(bit_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672__i5.GSR = "ENABLED";
    FD1P3IX bit_cnt_1672__i4 (.D(n1[4]), .SP(clk_div_enable_51), .CD(n8768), 
            .CK(clk_div), .Q(bit_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672__i4.GSR = "ENABLED";
    FD1P3IX cmd_dword_i0_i1 (.D(\int_cmd_dword[1] ), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i1.GSR = "ENABLED";
    FD1P3IX cmd_dword_i0_i21 (.D(\int_cmd_dword[21] ), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[21])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i21.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n20128), .B(dword_wr_31__N_1809), .C(spi_wr), 
         .D(n20124), .Z(n1018)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i2_3_lut_4_lut.init = 16'h0040;
    LUT4 i35_4_lut_4_lut (.A(n20137), .B(cmd_bytes[1]), .C(spi_cmd[16]), 
         .D(\spi_cmd_ext[8] ), .Z(n17)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(170[8] 185[10])
    defparam i35_4_lut_4_lut.init = 16'hd850;
    LUT4 i36_4_lut_4_lut (.A(n20137), .B(\spi_cmd_ext[12] ), .C(spi_cmd[20]), 
         .D(cmd_bytes[1]), .Z(n18)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(170[8] 185[10])
    defparam i36_4_lut_4_lut.init = 16'hd850;
    LUT4 i36_4_lut_4_lut_adj_118 (.A(n20137), .B(\spi_cmd_ext[13] ), .C(spi_cmd[21]), 
         .D(cmd_bytes[1]), .Z(n18_adj_2124)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(170[8] 185[10])
    defparam i36_4_lut_4_lut_adj_118.init = 16'hd850;
    LUT4 mux_1341_i19_4_lut_4_lut (.A(n20137), .B(cmd_bytes[1]), .C(spi_cmd[18]), 
         .D(\spi_cmd_ext[10] ), .Z(n3918[18])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(170[8] 185[10])
    defparam mux_1341_i19_4_lut_4_lut.init = 16'hd850;
    LUT4 mux_1341_i20_4_lut_4_lut (.A(n20137), .B(cmd_bytes[1]), .C(spi_cmd[19]), 
         .D(\spi_cmd_ext[11] ), .Z(n3918[19])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(170[8] 185[10])
    defparam mux_1341_i20_4_lut_4_lut.init = 16'hd850;
    LUT4 mux_1341_i23_4_lut_4_lut (.A(n20137), .B(cmd_bytes[1]), .C(spi_cmd[22]), 
         .D(\spi_cmd_ext[14] ), .Z(n3918[22])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(170[8] 185[10])
    defparam mux_1341_i23_4_lut_4_lut.init = 16'hd850;
    LUT4 mux_1341_i24_4_lut_4_lut (.A(n20137), .B(cmd_bytes[1]), .C(spi_cmd[23]), 
         .D(\spi_cmd_ext[15] ), .Z(n3918[23])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(170[8] 185[10])
    defparam mux_1341_i24_4_lut_4_lut.init = 16'hd850;
    LUT4 i16456_3_lut_rep_254_4_lut (.A(spi_ack_N_2099), .B(n20128), .C(n17086), 
         .D(n497[6]), .Z(clk_div_enable_51)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(139[9:45])
    defparam i16456_3_lut_rep_254_4_lut.init = 16'h000d;
    FD1P3AX spi_init_delay_i0_i1 (.D(spi_init_delay_11__N_1942[1]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i1.GSR = "ENABLED";
    FD1P3AY spi_init_delay_i0_i2 (.D(spi_init_delay_11__N_1942[2]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i2.GSR = "ENABLED";
    FD1P3AX spi_init_delay_i0_i3 (.D(spi_init_delay_11__N_1942[3]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i3.GSR = "ENABLED";
    FD1P3AX spi_init_delay_i0_i4 (.D(spi_init_delay_11__N_1942[4]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i4.GSR = "ENABLED";
    FD1P3AX spi_init_delay_i0_i5 (.D(spi_init_delay_11__N_1942[5]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i5.GSR = "ENABLED";
    FD1P3AY spi_init_delay_i0_i6 (.D(spi_init_delay_11__N_1942[6]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i6.GSR = "ENABLED";
    FD1P3AY spi_init_delay_i0_i7 (.D(spi_init_delay_11__N_1942[7]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i7.GSR = "ENABLED";
    FD1P3AY spi_init_delay_i0_i8 (.D(spi_init_delay_11__N_1942[8]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i8.GSR = "ENABLED";
    FD1P3AX spi_init_delay_i0_i9 (.D(spi_init_delay_11__N_1942[9]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i9.GSR = "ENABLED";
    FD1P3AX spi_init_delay_i0_i10 (.D(spi_init_delay_11__N_1942[10]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i10.GSR = "ENABLED";
    FD1P3AY spi_init_delay_i0_i11 (.D(spi_init_delay_11__N_1942[11]), .SP(n497[6]), 
            .CK(clk_div), .Q(spi_init_delay[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam spi_init_delay_i0_i11.GSR = "ENABLED";
    LUT4 i487_3_lut_rep_256_4_lut (.A(dword_wr_31__N_1809), .B(n20128), 
         .C(n20180), .D(SI_N_2083), .Z(n20115)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i487_3_lut_rep_256_4_lut.init = 16'h8f88;
    LUT4 i16170_3_lut_4_lut (.A(n20137), .B(cmd_bytes[0]), .C(n3918[22]), 
         .D(n3788[22]), .Z(int_cmd_dword_31__N_1849[23])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam i16170_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i16146_3_lut_4_lut (.A(n20137), .B(cmd_bytes[0]), .C(n18), .D(n15), 
         .Z(n12)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam i16146_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i16150_3_lut_4_lut (.A(n20137), .B(cmd_bytes[0]), .C(n18_adj_2124), 
         .D(n15_adj_2), .Z(n12_adj_3)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam i16150_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i16172_3_lut_4_lut (.A(n20137), .B(cmd_bytes[0]), .C(n3918[23]), 
         .D(n3788[23]), .Z(int_cmd_dword_31__N_1849[24])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam i16172_3_lut_4_lut.init = 16'hf2d0;
    FD1P3AX byte_wr__i2 (.D(byte_wr_7__N_2052[2]), .SP(clk_div_enable_45), 
            .CK(clk_div), .Q(byte_wr[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_wr__i2.GSR = "DISABLED";
    LUT4 i16142_3_lut_4_lut (.A(n20137), .B(cmd_bytes[0]), .C(n17), .D(n16), 
         .Z(n8)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam i16142_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i16168_3_lut_4_lut (.A(n20137), .B(cmd_bytes[0]), .C(n3918[18]), 
         .D(n3788[18]), .Z(int_cmd_dword_31__N_1849[19])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam i16168_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i16148_3_lut_4_lut (.A(n20137), .B(cmd_bytes[0]), .C(n3918[19]), 
         .D(n3788[19]), .Z(\int_cmd_dword_31__N_1849[20] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam i16148_3_lut_4_lut.init = 16'hf2d0;
    LUT4 n19849_bdd_2_lut_4_lut (.A(dword_wr[31]), .B(n19848), .C(n20128), 
         .D(n497[2]), .Z(n19850)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n19849_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 mux_1341_i16_4_lut (.A(\spi_cmd_ext[15] ), .B(\spi_cmd_ext[7] ), 
         .C(cmd_bytes[0]), .D(cmd_bytes[1]), .Z(n3918[15])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1341_i16_4_lut.init = 16'hc00a;
    LUT4 i1_3_lut_4_lut (.A(SI_N_2079), .B(n20139), .C(n20128), .D(dword_wr_31__N_1809), 
         .Z(n18268)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0400;
    LUT4 i1976_3_lut_rep_248_4_lut (.A(bit_cnt[5]), .B(n20148), .C(n497[4]), 
         .D(n1018), .Z(n20107)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i1976_3_lut_rep_248_4_lut.init = 16'h1f10;
    LUT4 i18_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(dword_wr_31__N_1809), 
         .D(n512), .Z(clk_div_enable_70)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i18_3_lut_4_lut.init = 16'hefe0;
    LUT4 i2350_2_lut_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(n512), 
         .D(dword_wr_31__N_1809), .Z(n5178)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i2350_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 mux_1341_i15_4_lut (.A(\spi_cmd_ext[14] ), .B(\spi_cmd_ext[6] ), 
         .C(cmd_bytes[0]), .D(cmd_bytes[1]), .Z(n3918[14])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1341_i15_4_lut.init = 16'hc00a;
    LUT4 i10544_2_lut_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(n20140), 
         .D(spi_ack_N_2099), .Z(n12959)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i10544_2_lut_3_lut_4_lut.init = 16'heee0;
    FD1P3AX byte_wr__i3 (.D(byte_wr_7__N_2052[3]), .SP(clk_div_enable_45), 
            .CK(clk_div), .Q(byte_wr[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_wr__i3.GSR = "DISABLED";
    FD1P3AX byte_wr__i4 (.D(byte_wr_7__N_2052[4]), .SP(clk_div_enable_45), 
            .CK(clk_div), .Q(byte_wr[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_wr__i4.GSR = "DISABLED";
    FD1P3AX byte_wr__i5 (.D(byte_wr_7__N_2052[5]), .SP(clk_div_enable_45), 
            .CK(clk_div), .Q(byte_wr[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_wr__i5.GSR = "DISABLED";
    FD1P3AX byte_wr__i6 (.D(byte_wr_7__N_2052[6]), .SP(clk_div_enable_45), 
            .CK(clk_div), .Q(byte_wr[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_wr__i6.GSR = "DISABLED";
    FD1P3AX byte_wr__i7 (.D(byte_wr_7__N_2052[7]), .SP(clk_div_enable_45), 
            .CK(clk_div), .Q(byte_wr[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_wr__i7.GSR = "DISABLED";
    FD1P3AX dword_wr_i24 (.D(write_data[0]), .SP(dword_wr_31__N_1809), .CK(clk_div), 
            .Q(dword_wr[24])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(478[9] 479[36])
    defparam dword_wr_i24.GSR = "ENABLED";
    LUT4 i137_2_lut_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(SI_N_2077), 
         .D(spi_ack_N_2099), .Z(n436)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i137_2_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX int_cmd_dword_31__I_0_i20 (.BLUT(int_cmd_dword_31__N_1817[19]), 
          .ALUT(int_cmd_dword_31__N_1849[19]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[19])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    FD1P3AX dword_wr_i25 (.D(write_data[1]), .SP(dword_wr_31__N_1809), .CK(clk_div), 
            .Q(dword_wr[25])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(478[9] 479[36])
    defparam dword_wr_i25.GSR = "ENABLED";
    FD1P3AX dword_wr_i26 (.D(write_data[2]), .SP(dword_wr_31__N_1809), .CK(clk_div), 
            .Q(dword_wr[26])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(478[9] 479[36])
    defparam dword_wr_i26.GSR = "ENABLED";
    FD1P3AX dword_wr_i27 (.D(write_data[3]), .SP(dword_wr_31__N_1809), .CK(clk_div), 
            .Q(dword_wr[27])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(478[9] 479[36])
    defparam dword_wr_i27.GSR = "ENABLED";
    FD1P3AX dword_wr_i28 (.D(write_data[4]), .SP(dword_wr_31__N_1809), .CK(clk_div), 
            .Q(dword_wr[28])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(478[9] 479[36])
    defparam dword_wr_i28.GSR = "ENABLED";
    FD1P3AX dword_wr_i29 (.D(write_data[5]), .SP(dword_wr_31__N_1809), .CK(clk_div), 
            .Q(dword_wr[29])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(478[9] 479[36])
    defparam dword_wr_i29.GSR = "ENABLED";
    FD1P3AX dword_wr_i30 (.D(write_data[6]), .SP(dword_wr_31__N_1809), .CK(clk_div), 
            .Q(dword_wr[30])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(478[9] 479[36])
    defparam dword_wr_i30.GSR = "ENABLED";
    FD1P3AX dword_wr_i31 (.D(write_data[7]), .SP(dword_wr_31__N_1809), .CK(clk_div), 
            .Q(dword_wr[31])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(478[9] 479[36])
    defparam dword_wr_i31.GSR = "ENABLED";
    LUT4 mux_1341_i14_4_lut (.A(cmd_bytes[1]), .B(\spi_cmd_ext[5] ), .C(cmd_bytes[0]), 
         .D(\spi_cmd_ext[13] ), .Z(n3918[13])) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1341_i14_4_lut.init = 16'h8580;
    LUT4 mux_1341_i13_4_lut (.A(cmd_bytes[1]), .B(\spi_cmd_ext[4] ), .C(cmd_bytes[0]), 
         .D(\spi_cmd_ext[12] ), .Z(n3918[12])) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1341_i13_4_lut.init = 16'h8580;
    FD1P3IX cmd_dword_i0_i22 (.D(\int_cmd_dword[22] ), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[22])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i22.GSR = "ENABLED";
    LUT4 mux_1341_i12_4_lut (.A(\spi_cmd_ext[11] ), .B(\spi_cmd_ext[3] ), 
         .C(cmd_bytes[0]), .D(cmd_bytes[1]), .Z(n3918[11])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1341_i12_4_lut.init = 16'hc00a;
    FD1P3IX cmd_dword_i0_i2 (.D(int_cmd_dword[2]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i2.GSR = "ENABLED";
    FD1P3IX cmd_dword_i0_i3 (.D(int_cmd_dword[3]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i3.GSR = "ENABLED";
    LUT4 i16194_3_lut (.A(int_cmd_dword_31__N_1817[29]), .B(int_cmd_dword_31__N_1849[29]), 
         .C(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i16194_3_lut.init = 16'hcaca;
    LUT4 mux_1343_i30_3_lut (.A(spi_cmd[29]), .B(n18781), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i30_3_lut.init = 16'hcaca;
    LUT4 int_SI_I_102_3_lut_4_lut (.A(cmd_bytes[1]), .B(n20149), .C(\spi_cmd_ext[7] ), 
         .D(\spi_cmd_ext[15] ), .Z(int_SI_N_2114)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(189[9:25])
    defparam int_SI_I_102_3_lut_4_lut.init = 16'hfe10;
    LUT4 i16196_3_lut (.A(int_cmd_dword_31__N_1817[30]), .B(int_cmd_dword_31__N_1849[30]), 
         .C(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i16196_3_lut.init = 16'hcaca;
    LUT4 mux_1343_i31_3_lut (.A(spi_cmd[30]), .B(n18787), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i31_3_lut.init = 16'hcaca;
    LUT4 i16198_3_lut (.A(int_cmd_dword_31__N_1817[31]), .B(int_cmd_dword_31__N_1849[31]), 
         .C(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i16198_3_lut.init = 16'hcaca;
    LUT4 n4230_bdd_3_lut_16905_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[17]), 
         .D(spi_cmd[18]), .Z(n19833)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam n4230_bdd_3_lut_16905_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i3_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[1]), 
         .D(spi_cmd[2]), .Z(int_cmd_dword_31__N_1817[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i10_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[8]), .D(spi_cmd[9]), .Z(\int_cmd_dword_31__N_1817[9] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i10_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8819_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[21]), 
         .D(spi_cmd[22]), .Z(n11669)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i8819_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i5_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[3]), 
         .D(spi_cmd[4]), .Z(int_cmd_dword_31__N_1817[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8837_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[19]), 
         .D(spi_cmd[20]), .Z(n11687)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i8837_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8828_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[20]), 
         .D(spi_cmd[21]), .Z(n11678)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i8828_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i16190_3_lut (.A(n11785), .B(n11786), .C(int_cmd_dword_31__N_1881), 
         .Z(int_cmd_dword[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i16190_3_lut.init = 16'hcaca;
    LUT4 cmd_dword_30__I_0_i18_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[16]), .D(spi_cmd[17]), .Z(\int_cmd_dword_31__N_1817[17] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i18_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i4_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[2]), 
         .D(spi_cmd[3]), .Z(int_cmd_dword_31__N_1817[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8947_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[24]), 
         .D(spi_cmd[25]), .Z(int_cmd_dword_31__N_1817[25])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i8947_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i6_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[4]), 
         .D(spi_cmd[5]), .Z(int_cmd_dword_31__N_1817[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i7_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[5]), 
         .D(spi_cmd[6]), .Z(int_cmd_dword_31__N_1817[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i16188_3_lut (.A(n11777), .B(n4), .C(int_cmd_dword_31__N_1881), 
         .Z(int_cmd_dword[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i16188_3_lut.init = 16'hcaca;
    LUT4 cmd_dword_30__I_0_i8_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[6]), 
         .D(spi_cmd[7]), .Z(int_cmd_dword_31__N_1817[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i8_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i9_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[7]), 
         .D(spi_cmd[8]), .Z(int_cmd_dword_31__N_1817[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i9_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i11_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[9]), .D(spi_cmd[10]), .Z(int_cmd_dword_31__N_1817[10])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i11_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i12_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[10]), .D(spi_cmd[11]), .Z(int_cmd_dword_31__N_1817[11])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i12_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i13_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[11]), .D(spi_cmd[12]), .Z(int_cmd_dword_31__N_1817[12])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i13_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i14_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[12]), .D(spi_cmd[13]), .Z(int_cmd_dword_31__N_1817[13])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i14_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i15_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[13]), .D(spi_cmd[14]), .Z(int_cmd_dword_31__N_1817[14])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i15_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i16_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[14]), .D(spi_cmd[15]), .Z(int_cmd_dword_31__N_1817[15])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i16_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i17_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[15]), .D(spi_cmd[16]), .Z(int_cmd_dword_31__N_1817[16])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i17_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i20_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[18]), .D(spi_cmd[19]), .Z(int_cmd_dword_31__N_1817[19])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i20_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i24_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[22]), .D(spi_cmd[23]), .Z(int_cmd_dword_31__N_1817[23])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i24_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i25_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[23]), .D(spi_cmd[24]), .Z(int_cmd_dword_31__N_1817[24])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i25_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i29_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[27]), .D(spi_cmd[28]), .Z(int_cmd_dword_31__N_1817[28])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i29_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i30_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[28]), .D(spi_cmd[29]), .Z(int_cmd_dword_31__N_1817[29])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i30_3_lut_4_lut.init = 16'hf2d0;
    FD1P3AX bit_cnt_1672__i1 (.D(n37[1]), .SP(clk_div_enable_51), .CK(clk_div), 
            .Q(bit_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672__i1.GSR = "ENABLED";
    LUT4 cmd_dword_30__I_0_i31_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[29]), .D(spi_cmd[30]), .Z(int_cmd_dword_31__N_1817[30])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i31_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i32_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), 
         .C(cmd_dword[30]), .D(spi_cmd[31]), .Z(int_cmd_dword_31__N_1817[31])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i32_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8938_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[26]), 
         .D(spi_cmd[27]), .Z(n11785)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i8938_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8930_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[25]), 
         .D(spi_cmd[26]), .Z(n11777)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam i8930_3_lut_4_lut.init = 16'hf2d0;
    LUT4 cmd_dword_30__I_0_i2_3_lut_4_lut (.A(bit_cnt[5]), .B(n20148), .C(cmd_dword[0]), 
         .D(spi_cmd[1]), .Z(\int_cmd_dword_31__N_1817[1] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(186[8:23])
    defparam cmd_dword_30__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i66_3_lut (.A(\spi_read_stat[7] ), .B(\spi_wrt_enb[7] ), .C(SI_N_2077), 
         .Z(n38)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i66_3_lut.init = 16'hcaca;
    LUT4 mux_1341_i11_4_lut (.A(\spi_cmd_ext[10] ), .B(\spi_cmd_ext[2] ), 
         .C(cmd_bytes[0]), .D(cmd_bytes[1]), .Z(n3918[10])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1341_i11_4_lut.init = 16'hc00a;
    FD1P3AX bit_cnt_1672__i2 (.D(n37[2]), .SP(clk_div_enable_51), .CK(clk_div), 
            .Q(bit_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672__i2.GSR = "ENABLED";
    FD1P3AX bit_cnt_1672__i3 (.D(n37[3]), .SP(clk_div_enable_51), .CK(clk_div), 
            .Q(bit_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672__i3.GSR = "ENABLED";
    LUT4 mux_1332_i1_4_lut (.A(SI_N_2079), .B(\spi_wrt_enb[0] ), .C(SI_N_2077), 
         .D(\spi_read_stat[0] ), .Z(cmd_dword_31__N_2020[25])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(241[10] 256[33])
    defparam mux_1332_i1_4_lut.init = 16'hcac0;
    PFUMX i60 (.BLUT(n41_adj_2128), .ALUT(n29), .C0(n18646), .Z(SI_N_2068));
    LUT4 i1_4_lut (.A(n17086), .B(n17119), .C(spi_ack_N_2099), .D(n18392), 
         .Z(n18188)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i1_4_lut.init = 16'heefe;
    LUT4 i1_4_lut_adj_119 (.A(n497[6]), .B(n18577), .C(n18581), .D(n18579), 
         .Z(n17119)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_119.init = 16'h0002;
    LUT4 i15808_4_lut (.A(spi_init_delay[9]), .B(spi_init_delay[1]), .C(spi_init_delay[8]), 
         .D(spi_init_delay[4]), .Z(n18577)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15808_4_lut.init = 16'hfffe;
    LUT4 i15812_4_lut (.A(spi_init_delay[5]), .B(spi_init_delay[11]), .C(spi_init_delay[2]), 
         .D(spi_init_delay[7]), .Z(n18581)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15812_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut (.A(n20168), .B(n4_adj_2129), .C(n9), .D(n20150), 
         .Z(n18054)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(322[19:32])
    defparam i1_4_lut_4_lut.init = 16'hf0f8;
    LUT4 mux_1332_i4_4_lut (.A(\spi_read_stat[3] ), .B(\spi_wrt_enb[3] ), 
         .C(SI_N_2077), .D(SI_N_2079), .Z(cmd_dword_31__N_2020[28])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(241[10] 256[33])
    defparam mux_1332_i4_4_lut.init = 16'hcac0;
    LUT4 i15810_4_lut (.A(spi_init_delay[6]), .B(spi_init_delay[10]), .C(spi_init_delay[0]), 
         .D(spi_init_delay[3]), .Z(n18579)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15810_4_lut.init = 16'hfffe;
    LUT4 n499_bdd_3_lut_16921_4_lut (.A(SI_N_2077), .B(n20166), .C(spi_wr), 
         .D(SI_N_2079), .Z(n19868)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam n499_bdd_3_lut_16921_4_lut.init = 16'h0040;
    LUT4 i10381_2_lut_rep_265_3_lut (.A(SI_N_2077), .B(n20166), .C(SI_N_2079), 
         .Z(n20124)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i10381_2_lut_rep_265_3_lut.init = 16'hfbfb;
    LUT4 i488_2_lut_3_lut (.A(SI_N_2077), .B(n20166), .C(SI_N_2079), .Z(n1069)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i488_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i1_2_lut_rep_264_4_lut (.A(dword_wr_31__N_1809), .B(n21075), .C(n497[2]), 
         .D(spi_ack_N_2099), .Z(n20123)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_264_4_lut.init = 16'hfffe;
    LUT4 mux_1332_i6_4_lut (.A(\spi_read_stat[5] ), .B(\spi_wrt_enb[5] ), 
         .C(SI_N_2077), .D(SI_N_2079), .Z(cmd_dword_31__N_2020[30])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(241[10] 256[33])
    defparam mux_1332_i6_4_lut.init = 16'hcac0;
    LUT4 mux_1339_i3_3_lut_4_lut_4_lut (.A(n20168), .B(n17075), .C(n20128), 
         .D(n21075), .Z(n3905[2])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C+!(D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(322[19:32])
    defparam mux_1339_i3_3_lut_4_lut_4_lut.init = 16'h3533;
    LUT4 mux_1332_i7_4_lut (.A(SI_N_2079), .B(\spi_wrt_enb[6] ), .C(SI_N_2077), 
         .D(\spi_read_stat[6] ), .Z(cmd_dword_31__N_2020[31])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(241[10] 256[33])
    defparam mux_1332_i7_4_lut.init = 16'hcac0;
    LUT4 i44_3_lut_4_lut (.A(SI_N_2083), .B(n20180), .C(int_cmd_dword_31__N_1881), 
         .D(n29_adj_2130), .Z(clk_div_enable_4)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i44_3_lut_4_lut.init = 16'hefe0;
    LUT4 i16212_4_lut (.A(int_SI_N_2115), .B(n19851), .C(int_cmd_dword_31__N_1881), 
         .D(n18644), .Z(n29)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i16212_4_lut.init = 16'haccc;
    LUT4 i15873_2_lut (.A(SI_N_2077), .B(SI_N_2079), .Z(n18644)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i15873_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_rep_259_3_lut_4_lut (.A(n20179), .B(n20178), .C(dword_wr_31__N_1809), 
         .D(bit_cnt[5]), .Z(n20118)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_259_3_lut_4_lut.init = 16'h0010;
    LUT4 i16533_4_lut (.A(int_cmd_dword_31__N_1881), .B(SI_N_2077), .C(SI_N_2079), 
         .D(n18638), .Z(n18646)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i16533_4_lut.init = 16'hfffd;
    LUT4 i17_2_lut_rep_260_3_lut_4_lut (.A(n20179), .B(n20178), .C(spi_ack_N_2099), 
         .D(bit_cnt[5]), .Z(n20119)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i17_2_lut_rep_260_3_lut_4_lut.init = 16'h0010;
    LUT4 i2347_2_lut_3_lut_4_lut (.A(n20179), .B(n20178), .C(n497[2]), 
         .D(bit_cnt[5]), .Z(n5175)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i2347_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 n19858_bdd_2_lut_3_lut_4_lut (.A(n20179), .B(n20178), .C(n19858), 
         .D(bit_cnt[5]), .Z(clk_div_enable_24)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n19858_bdd_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 mux_1324_i19_3_lut (.A(\spi_cmd_ext[18] ), .B(\spi_cmd_ext[2] ), 
         .C(cmd_bytes[1]), .Z(n3788[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1324_i19_3_lut.init = 16'hcaca;
    LUT4 i2349_2_lut_rep_262_3_lut_4_lut (.A(n20179), .B(n20178), .C(dword_wr_31__N_1809), 
         .D(bit_cnt[5]), .Z(n20121)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i2349_2_lut_rep_262_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1390_2_lut_3_lut_4_lut (.A(n20179), .B(n20178), .C(n497[4]), 
         .D(bit_cnt[5]), .Z(n4067)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1390_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i187_2_lut_3_lut_3_lut_4_lut (.A(n20179), .B(n20178), .C(bit_cnt[5]), 
         .D(n20168), .Z(n487)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i187_2_lut_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_346 (.A(n502), .B(n497[4]), .Z(n21075)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i1_2_lut_rep_346.init = 16'heeee;
    LUT4 i63_3_lut (.A(int_SI_N_2114), .B(spi_cmd[31]), .C(n8_adj_2131), 
         .Z(n41_adj_2128)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i63_3_lut.init = 16'hacac;
    LUT4 i1_2_lut_3_lut_4_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(SI_N_2079), 
         .D(dword_wr_31__N_1809), .Z(n7942)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    PFUMX mux_368_i32 (.BLUT(cmd_dword_31__N_2020[31]), .ALUT(int_cmd_dword[31]), 
          .C0(n20115), .Z(n919));
    PFUMX mux_368_i31 (.BLUT(cmd_dword_31__N_2020[30]), .ALUT(int_cmd_dword[30]), 
          .C0(n20115), .Z(n918));
    PFUMX mux_368_i30 (.BLUT(\cmd_dword_31__N_2020[29] ), .ALUT(int_cmd_dword[29]), 
          .C0(n20115), .Z(n917));
    PFUMX mux_368_i29 (.BLUT(cmd_dword_31__N_2020[28]), .ALUT(int_cmd_dword[28]), 
          .C0(n20115), .Z(n916));
    PFUMX mux_368_i28 (.BLUT(\cmd_dword_31__N_2020[27] ), .ALUT(int_cmd_dword[27]), 
          .C0(n20115), .Z(n915));
    LUT4 spi_clk_I_0_1_lut (.A(clk_div), .Z(SPIFlashSCK_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(118[17:25])
    defparam spi_clk_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_269_3_lut_4_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[5]), 
         .D(n20179), .Z(n20128)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_269_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_307 (.A(byte_length[2]), .B(byte_length[1]), .C(byte_length[0]), 
         .Z(n20166)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_307.init = 16'hfefe;
    LUT4 mux_1324_i20_3_lut (.A(\spi_cmd_ext[19] ), .B(\spi_cmd_ext[3] ), 
         .C(cmd_bytes[1]), .Z(n3788[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1324_i20_3_lut.init = 16'hcaca;
    LUT4 i16494_2_lut_rep_280_4_lut (.A(byte_length[2]), .B(byte_length[1]), 
         .C(byte_length[0]), .D(SI_N_2077), .Z(n20139)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i16494_2_lut_rep_280_4_lut.init = 16'h00fe;
    PFUMX mux_368_i27 (.BLUT(\cmd_dword_31__N_2020[26] ), .ALUT(int_cmd_dword[26]), 
          .C0(n20115), .Z(n914));
    LUT4 i1_4_lut_adj_120 (.A(n20128), .B(n497[2]), .C(dword_wr_31__N_1809), 
         .D(n19870), .Z(n29_adj_2130)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_adj_120.init = 16'hbba8;
    PFUMX mux_368_i26 (.BLUT(cmd_dword_31__N_2020[25]), .ALUT(int_cmd_dword[25]), 
          .C0(n20115), .Z(n913));
    LUT4 i1_2_lut_rep_308 (.A(dword_wr_31__N_1809), .B(SI_N_2079), .Z(n20167)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(265[13] 284[18])
    defparam i1_2_lut_rep_308.init = 16'h2222;
    LUT4 i16480_2_lut_rep_309 (.A(byte_cnt[0]), .B(byte_cnt[1]), .Z(n20168)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(322[19:32])
    defparam i16480_2_lut_rep_309.init = 16'h1111;
    LUT4 byte_cnt_1674_mux_5_i1_3_lut_4_lut (.A(n502), .B(n497[4]), .C(byte_cnt[0]), 
         .D(byte_length[0]), .Z(n2[0])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam byte_cnt_1674_mux_5_i1_3_lut_4_lut.init = 16'h0e1f;
    LUT4 i2_3_lut_rep_281_4_lut (.A(n502), .B(n497[4]), .C(n497[2]), .D(dword_wr_31__N_1809), 
         .Z(n20140)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i2_3_lut_rep_281_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_311 (.A(spi_ack), .B(spi_req), .C(int_cmd_dword_31__N_1881), 
         .Z(n20170)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(131[21:65])
    defparam i2_3_lut_rep_311.init = 16'h4040;
    LUT4 i1_2_lut_4_lut (.A(spi_ack), .B(spi_req), .C(int_cmd_dword_31__N_1881), 
         .D(n421[0]), .Z(n18309)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(131[21:65])
    defparam i1_2_lut_4_lut.init = 16'h4000;
    LUT4 spi_ack_I_99_2_lut_rep_312 (.A(spi_ack_N_2099), .B(read_data[0]), 
         .Z(n20171)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(154[9:53])
    defparam spi_ack_I_99_2_lut_rep_312.init = 16'h2222;
    CCU2D bit_cnt_1672_add_4_7 (.A0(n20148), .B0(n20123), .C0(cmd_bytes[2]), 
          .D0(bit_cnt[5]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16826), .S0(n1[5]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672_add_4_7.INIT0 = 16'h038f;
    defparam bit_cnt_1672_add_4_7.INIT1 = 16'h0000;
    defparam bit_cnt_1672_add_4_7.INJECT1_0 = "NO";
    defparam bit_cnt_1672_add_4_7.INJECT1_1 = "NO";
    FD1P3IX cmd_dword_i0_i4 (.D(int_cmd_dword[4]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i4.GSR = "ENABLED";
    LUT4 i16458_3_lut_3_lut_4_lut (.A(spi_ack_N_2099), .B(read_data[0]), 
         .C(n13_c), .D(SI_N_2079), .Z(clk_div_enable_21)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(154[9:53])
    defparam i16458_3_lut_3_lut_4_lut.init = 16'h22f0;
    LUT4 i5697_2_lut_rep_282_3_lut (.A(spi_ack_N_2099), .B(read_data[0]), 
         .C(SI_N_2079), .Z(n20141)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(154[9:53])
    defparam i5697_2_lut_rep_282_3_lut.init = 16'hd0d0;
    CCU2D bit_cnt_1672_add_4_5 (.A0(n20123), .B0(n20128), .C0(cmd_bytes[0]), 
          .D0(bit_cnt[3]), .A1(n20123), .B1(n20128), .C1(cmd_bytes[1]), 
          .D1(bit_cnt[4]), .CIN(n16825), .COUT(n16826), .S0(n1[3]), 
          .S1(n1[4]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672_add_4_5.INIT0 = 16'h078f;
    defparam bit_cnt_1672_add_4_5.INIT1 = 16'h078f;
    defparam bit_cnt_1672_add_4_5.INJECT1_0 = "NO";
    defparam bit_cnt_1672_add_4_5.INJECT1_1 = "NO";
    FD1P3IX cmd_dword_i0_i5 (.D(int_cmd_dword[5]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i5.GSR = "ENABLED";
    CCU2D bit_cnt_1672_add_4_3 (.A0(bit_cnt[1]), .B0(n12959), .C0(GND_net), 
          .D0(GND_net), .A1(bit_cnt[2]), .B1(n12959), .C1(GND_net), 
          .D1(GND_net), .CIN(n16824), .COUT(n16825), .S0(n1[1]), .S1(n1[2]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672_add_4_3.INIT0 = 16'h7777;
    defparam bit_cnt_1672_add_4_3.INIT1 = 16'h7777;
    defparam bit_cnt_1672_add_4_3.INJECT1_0 = "NO";
    defparam bit_cnt_1672_add_4_3.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_121 (.A(spi_ack_N_2099), .B(read_data[0]), .C(SI_N_2079), 
         .D(n4_adj_2132), .Z(n16954)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(154[9:53])
    defparam i2_3_lut_4_lut_adj_121.init = 16'hff20;
    CCU2D bit_cnt_1672_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(bit_cnt[0]), .B1(n12959), .C1(GND_net), 
          .D1(GND_net), .COUT(n16824), .S1(n1[0]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672_add_4_1.INIT0 = 16'hF000;
    defparam bit_cnt_1672_add_4_1.INIT1 = 16'h7777;
    defparam bit_cnt_1672_add_4_1.INJECT1_0 = "NO";
    defparam bit_cnt_1672_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_43_add_2_13 (.A0(spi_init_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16823), .S0(spi_init_delay_11__N_1942[11]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(228[31:49])
    defparam sub_43_add_2_13.INIT0 = 16'h5555;
    defparam sub_43_add_2_13.INIT1 = 16'h0000;
    defparam sub_43_add_2_13.INJECT1_0 = "NO";
    defparam sub_43_add_2_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(spi_ack), .B(spi_wr), .Z(C_ACK_O_N_1694)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX cmd_dword_i0_i23 (.D(int_cmd_dword[23]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[23])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i23.GSR = "ENABLED";
    LUT4 i2729_4_lut (.A(n20141), .B(n18302), .C(n20128), .D(wr_enb), 
         .Z(n5567)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam i2729_4_lut.init = 16'haeaa;
    LUT4 i1_2_lut_adj_122 (.A(spi_ack_N_2099), .B(SI_N_2083), .Z(n18302)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(148[13] 151[18])
    defparam i1_2_lut_adj_122.init = 16'h8888;
    LUT4 i2_4_lut (.A(n436), .B(wr_enb), .C(n5568), .D(n18309), .Z(n16938)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam i2_4_lut.init = 16'hfbfa;
    LUT4 i2730_4_lut (.A(SI_N_2083), .B(spi_ack_N_2099), .C(n20128), .D(wr_enb), 
         .Z(n5568)) /* synthesis lut_function=(A ((C (D))+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam i2730_4_lut.init = 16'ha222;
    LUT4 i2013_4_lut (.A(SI_N_2077), .B(wr_enb), .C(n20119), .D(n18309), 
         .Z(n4833)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam i2013_4_lut.init = 16'hce0a;
    LUT4 bit_cnt_1672_mux_6_i1_3_lut (.A(n1[0]), .B(n3905[2]), .C(n1998), 
         .Z(n37[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672_mux_6_i1_3_lut.init = 16'hcaca;
    FD1P3AX cmd_dword_i0_i0 (.D(n17163), .SP(clk_div_enable_70), .CK(clk_div), 
            .Q(cmd_dword[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_123 (.A(n18595), .B(n29_adj_2133), .C(bit_cnt[5]), 
         .D(n20140), .Z(n1998)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_123.init = 16'hcdcc;
    FD1P3IX cmd_dword_i0_i6 (.D(int_cmd_dword[6]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i6.GSR = "ENABLED";
    LUT4 i15824_4_lut (.A(bit_cnt[4]), .B(bit_cnt[0]), .C(bit_cnt[1]), 
         .D(n18493), .Z(n18595)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15824_4_lut.init = 16'hfffe;
    LUT4 i15732_2_lut (.A(bit_cnt[2]), .B(bit_cnt[3]), .Z(n18493)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15732_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_124 (.A(n20179), .B(n20139), .C(n7942), .D(bit_cnt[5]), 
         .Z(n17075)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i2_4_lut_adj_124.init = 16'h0010;
    FD1P3IX cmd_dword_i0_i7 (.D(int_cmd_dword[7]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i7.GSR = "ENABLED";
    FD1P3IX cmd_dword_i0_i8 (.D(int_cmd_dword[8]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i8.GSR = "ENABLED";
    FD1P3IX cmd_dword_i0_i9 (.D(\int_cmd_dword[9] ), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i9.GSR = "ENABLED";
    LUT4 mux_1324_i23_3_lut (.A(\spi_cmd_ext[22] ), .B(\spi_cmd_ext[6] ), 
         .C(cmd_bytes[1]), .Z(n3788[22])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1324_i23_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_125 (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(n497[4]), 
         .D(n502), .Z(n4_adj_2129)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_125.init = 16'h1110;
    LUT4 i10027_2_lut_rep_319 (.A(bit_cnt[1]), .B(bit_cnt[0]), .Z(n20178)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10027_2_lut_rep_319.init = 16'heeee;
    LUT4 i1_2_lut_rep_272_3_lut_4_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[5]), 
         .D(n20179), .Z(n20131)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_272_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_126 (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(n20179), 
         .D(bit_cnt[5]), .Z(n18392)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_126.init = 16'hfffe;
    FD1P3IX cmd_dword_i0_i10 (.D(int_cmd_dword[10]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i10.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_320 (.A(bit_cnt[2]), .B(bit_cnt[3]), .C(bit_cnt[4]), 
         .Z(n20179)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_320.init = 16'hfefe;
    LUT4 i1_2_lut_rep_289_3_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(n20179), 
         .Z(n20148)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_289_3_lut.init = 16'hfefe;
    FD1P3IX cmd_dword_i0_i11 (.D(int_cmd_dword[11]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i11.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_291_4_lut (.A(bit_cnt[2]), .B(bit_cnt[3]), .C(bit_cnt[4]), 
         .D(bit_cnt[5]), .Z(n20150)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_291_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_290_3_lut (.A(cmd_bytes[2]), .B(cmd_bytes[3]), .C(cmd_bytes[0]), 
         .Z(n20149)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(191[12:28])
    defparam i1_2_lut_rep_290_3_lut.init = 16'hdfdf;
    LUT4 i2348_4_lut (.A(n5175), .B(n18268), .C(spi_wr), .D(\div_num[1] ), 
         .Z(n5176)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i2348_4_lut.init = 16'haeaa;
    LUT4 i2_4_lut_adj_127 (.A(n20128), .B(n4_adj_2134), .C(dword_wr_31__N_1809), 
         .D(n9_adj_2135), .Z(n16972)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i2_4_lut_adj_127.init = 16'hdccc;
    LUT4 i1_4_lut_adj_128 (.A(n497[2]), .B(n502), .C(n18392), .D(n487), 
         .Z(n4_adj_2134)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i1_4_lut_adj_128.init = 16'hce0a;
    LUT4 i1_4_lut_adj_129 (.A(SI_N_2079), .B(\div_num[1] ), .C(n20139), 
         .D(spi_wr), .Z(n9_adj_2135)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(277[13] 284[18])
    defparam i1_4_lut_adj_129.init = 16'haaba;
    LUT4 i2342_4_lut (.A(n497[4]), .B(spi_wr), .C(n487), .D(n18268), 
         .Z(n5170)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i2342_4_lut.init = 16'heca0;
    LUT4 i429_2_lut_rep_321 (.A(SI_N_2079), .B(SI_N_2077), .Z(n20180)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(241[10] 256[33])
    defparam i429_2_lut_rep_321.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_130 (.A(SI_N_2079), .B(SI_N_2077), .C(int_cmd_dword_31__N_1881), 
         .D(SI_N_2083), .Z(n17086)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(241[10] 256[33])
    defparam i2_3_lut_4_lut_adj_130.init = 16'h0010;
    LUT4 i202_2_lut_3_lut_4_lut (.A(SI_N_2079), .B(SI_N_2077), .C(int_cmd_dword_31__N_1881), 
         .D(SI_N_2083), .Z(n512)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(241[10] 256[33])
    defparam i202_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_2_lut_3_lut (.A(SI_N_2079), .B(SI_N_2077), .C(int_cmd_dword_31__N_1881), 
         .Z(n29_adj_2133)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(241[10] 256[33])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    FD1P3IX cmd_dword_i0_i12 (.D(int_cmd_dword[12]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i12.GSR = "ENABLED";
    CCU2D sub_43_add_2_11 (.A0(spi_init_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_init_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16822), .COUT(n16823), .S0(spi_init_delay_11__N_1942[9]), 
          .S1(spi_init_delay_11__N_1942[10]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(228[31:49])
    defparam sub_43_add_2_11.INIT0 = 16'h5555;
    defparam sub_43_add_2_11.INIT1 = 16'h5555;
    defparam sub_43_add_2_11.INJECT1_0 = "NO";
    defparam sub_43_add_2_11.INJECT1_1 = "NO";
    LUT4 i16528_2_lut_rep_284_3_lut (.A(SI_N_2079), .B(SI_N_2077), .C(SI_N_2083), 
         .Z(n20143)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(241[10] 256[33])
    defparam i16528_2_lut_rep_284_3_lut.init = 16'h0101;
    CCU2D sub_43_add_2_5 (.A0(spi_init_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_init_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16819), .COUT(n16820), .S0(spi_init_delay_11__N_1942[3]), 
          .S1(spi_init_delay_11__N_1942[4]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(228[31:49])
    defparam sub_43_add_2_5.INIT0 = 16'h5555;
    defparam sub_43_add_2_5.INIT1 = 16'h5555;
    defparam sub_43_add_2_5.INJECT1_0 = "NO";
    defparam sub_43_add_2_5.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(spi_cmd[0]), .B(n20131), .C(n20115), .D(int_cmd_dword_31__N_1881), 
         .Z(n17163)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0020;
    LUT4 i15_4_lut (.A(n20139), .B(spi_ack_N_2099), .C(n20128), .D(n20167), 
         .Z(n9)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i15_4_lut.init = 16'hc5c0;
    CCU2D sub_43_add_2_9 (.A0(spi_init_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_init_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16821), .COUT(n16822), .S0(spi_init_delay_11__N_1942[7]), 
          .S1(spi_init_delay_11__N_1942[8]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(228[31:49])
    defparam sub_43_add_2_9.INIT0 = 16'h5555;
    defparam sub_43_add_2_9.INIT1 = 16'h5555;
    defparam sub_43_add_2_9.INJECT1_0 = "NO";
    defparam sub_43_add_2_9.INJECT1_1 = "NO";
    FD1P3IX cmd_dword_i0_i13 (.D(int_cmd_dword[13]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i13.GSR = "ENABLED";
    LUT4 i2333_4_lut (.A(n497[6]), .B(n21), .C(n19), .D(n20), .Z(n5161)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i2333_4_lut.init = 16'haaa8;
    CCU2D sub_43_add_2_7 (.A0(spi_init_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_init_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16820), .COUT(n16821), .S0(spi_init_delay_11__N_1942[5]), 
          .S1(spi_init_delay_11__N_1942[6]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(228[31:49])
    defparam sub_43_add_2_7.INIT0 = 16'h5555;
    defparam sub_43_add_2_7.INIT1 = 16'h5555;
    defparam sub_43_add_2_7.INJECT1_0 = "NO";
    defparam sub_43_add_2_7.INJECT1_1 = "NO";
    LUT4 i9_4_lut (.A(spi_init_delay[4]), .B(spi_init_delay[1]), .C(spi_init_delay[7]), 
         .D(spi_init_delay[2]), .Z(n21)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(229[17:42])
    defparam i9_4_lut.init = 16'hfffe;
    FD1P3IX cmd_dword_i0_i24 (.D(int_cmd_dword[24]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[24])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i24.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(spi_init_delay[10]), .B(spi_init_delay[5]), .C(spi_init_delay[0]), 
         .D(spi_init_delay[8]), .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(229[17:42])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(spi_init_delay[9]), .B(spi_init_delay[6]), .C(spi_init_delay[3]), 
         .D(spi_init_delay[11]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(229[17:42])
    defparam i8_4_lut.init = 16'hfffe;
    FD1P3IX cmd_dword_i0_i14 (.D(int_cmd_dword[14]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i14.GSR = "ENABLED";
    CCU2D sub_43_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(spi_init_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16818), .S1(spi_init_delay_11__N_1942[0]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(228[31:49])
    defparam sub_43_add_2_1.INIT0 = 16'hF000;
    defparam sub_43_add_2_1.INIT1 = 16'h5555;
    defparam sub_43_add_2_1.INJECT1_0 = "NO";
    defparam sub_43_add_2_1.INJECT1_1 = "NO";
    LUT4 i16186_3_lut (.A(int_cmd_dword_31__N_1817[25]), .B(n13), .C(int_cmd_dword_31__N_1881), 
         .Z(int_cmd_dword[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i16186_3_lut.init = 16'hcaca;
    FD1P3IX cmd_dword_i0_i15 (.D(int_cmd_dword[15]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i15.GSR = "ENABLED";
    FD1S3AY cmd_state_FSM_i0 (.D(n16954), .CK(clk_div), .Q(n421[0]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam cmd_state_FSM_i0.GSR = "ENABLED";
    FD1P3IX cmd_dword_i0_i16 (.D(int_cmd_dword[16]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[16])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i16.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_131 (.A(wr_enb), .B(n421[0]), .C(n18302), .D(n20170), 
         .Z(n4_adj_2132)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam i1_4_lut_adj_131.init = 16'h50dc;
    CCU2D sub_43_add_2_3 (.A0(spi_init_delay[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(spi_init_delay[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16818), .COUT(n16819), .S0(spi_init_delay_11__N_1942[1]), 
          .S1(spi_init_delay_11__N_1942[2]));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(228[31:49])
    defparam sub_43_add_2_3.INIT0 = 16'h5555;
    defparam sub_43_add_2_3.INIT1 = 16'h5555;
    defparam sub_43_add_2_3.INJECT1_0 = "NO";
    defparam sub_43_add_2_3.INJECT1_1 = "NO";
    FD1P3IX cmd_dword_i0_i17 (.D(\int_cmd_dword[17] ), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[17])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i17.GSR = "ENABLED";
    FD1P3IX cmd_dword_i0_i18 (.D(int_cmd_dword[18]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[18])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i18.GSR = "ENABLED";
    LUT4 mux_1343_i2_4_lut (.A(spi_cmd[1]), .B(n20197), .C(n20137), .D(\spi_cmd_ext[1] ), 
         .Z(int_cmd_dword_31__N_1849[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i2_4_lut.init = 16'hca0a;
    LUT4 mux_1343_i3_4_lut (.A(spi_cmd[2]), .B(\spi_cmd_ext[2] ), .C(n20137), 
         .D(n20197), .Z(int_cmd_dword_31__N_1849[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i3_4_lut.init = 16'hca0a;
    LUT4 mux_1343_i4_4_lut (.A(spi_cmd[3]), .B(\spi_cmd_ext[3] ), .C(n20137), 
         .D(n20197), .Z(int_cmd_dword_31__N_1849[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i4_4_lut.init = 16'hca0a;
    FD1P3IX cmd_dword_i0_i19 (.D(int_cmd_dword[19]), .SP(clk_div_enable_70), 
            .CD(n8713), .CK(clk_div), .Q(cmd_dword[19])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam cmd_dword_i0_i19.GSR = "ENABLED";
    LUT4 mux_1343_i5_4_lut (.A(spi_cmd[4]), .B(n20197), .C(n20137), .D(\spi_cmd_ext[4] ), 
         .Z(int_cmd_dword_31__N_1849[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i5_4_lut.init = 16'hca0a;
    LUT4 i20_4_lut (.A(SI_N_2077), .B(spi_ack_N_2099), .C(SI_N_2083), 
         .D(n8_adj_2137), .Z(n13_c)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i20_4_lut.init = 16'hc5c0;
    PFUMX int_cmd_dword_31__I_0_i17 (.BLUT(int_cmd_dword_31__N_1817[16]), 
          .ALUT(int_cmd_dword_31__N_1849[16]), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[16])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=451, LSE_RLINE=482 */ ;
    LUT4 i1_3_lut (.A(int_cmd_dword_31__N_1881), .B(spi_req), .C(spi_ack), 
         .Z(n8_adj_2137)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i1_3_lut.init = 16'h3b3b;
    PFUMX i16922 (.BLUT(n19869), .ALUT(n19868), .C0(dword_wr_31__N_1809), 
          .Z(n19870));
    LUT4 i2586_4_lut (.A(wr_enb), .B(n20171), .C(SI_N_2079), .D(SI_N_2083), 
         .Z(n5415)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(127[8] 162[15])
    defparam i2586_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_adj_132 (.A(n8008), .B(int_cmd_dword_31__N_1881), .Z(clk_div_enable_22)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_132.init = 16'heeee;
    LUT4 i5874_2_lut (.A(n8008), .B(int_cmd_dword_31__N_1881), .Z(n8748)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i5874_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_133 (.A(n497[2]), .B(n7158), .C(n497[6]), .D(spi_ack_N_2099), 
         .Z(n8008)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_133.init = 16'h0504;
    LUT4 i4312_4_lut (.A(n1069), .B(n20128), .C(n20168), .D(n21075), 
         .Z(n7158)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i4312_4_lut.init = 16'h3022;
    LUT4 mux_1343_i6_4_lut (.A(spi_cmd[5]), .B(\spi_cmd_ext[5] ), .C(n20137), 
         .D(n20197), .Z(int_cmd_dword_31__N_1849[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i6_4_lut.init = 16'hca0a;
    LUT4 mux_1343_i7_4_lut (.A(spi_cmd[6]), .B(\spi_cmd_ext[6] ), .C(n20137), 
         .D(n20197), .Z(int_cmd_dword_31__N_1849[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i7_4_lut.init = 16'hca0a;
    LUT4 i16544_2_lut_rep_338 (.A(cmd_bytes[1]), .B(cmd_bytes[0]), .Z(n20197)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam i16544_2_lut_rep_338.init = 16'h1111;
    LUT4 i21_4_lut_3_lut_4_lut (.A(cmd_bytes[1]), .B(cmd_bytes[0]), .C(cmd_bytes[2]), 
         .D(cmd_bytes[3]), .Z(n8_adj_2131)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam i21_4_lut_3_lut_4_lut.init = 16'h01e0;
    LUT4 bit_cnt_1672_mux_6_i2_3_lut (.A(n1[1]), .B(n3905[2]), .C(n1998), 
         .Z(n37[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam bit_cnt_1672_mux_6_i2_3_lut.init = 16'hcaca;
    PFUMX i16912 (.BLUT(n19850), .ALUT(n38), .C0(int_cmd_dword_31__N_1881), 
          .Z(n19851));
    PFUMX i16901 (.BLUT(n19833), .ALUT(n19832), .C0(int_cmd_dword_31__N_1881), 
          .Z(int_cmd_dword[18]));
    LUT4 i1_4_lut_adj_134 (.A(byte_length[1]), .B(n2[0]), .C(byte_cnt[1]), 
         .D(n21075), .Z(n16999)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;
    defparam i1_4_lut_adj_134.init = 16'h3c66;
    LUT4 mux_1343_i8_4_lut (.A(spi_cmd[7]), .B(\spi_cmd_ext[7] ), .C(n20137), 
         .D(n20197), .Z(int_cmd_dword_31__N_1849[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i8_4_lut.init = 16'hca0a;
    LUT4 mux_1343_i10_3_lut (.A(spi_cmd[9]), .B(n3940), .C(n20137), .Z(int_cmd_dword_31__N_1849[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i10_3_lut.init = 16'hcaca;
    PFUMX i16899 (.BLUT(n19830), .ALUT(n19829), .C0(cmd_bytes[1]), .Z(n19831));
    PFUMX i15992 (.BLUT(n18761), .ALUT(n18762), .C0(cmd_bytes[0]), .Z(n18763));
    LUT4 mux_1343_i11_3_lut (.A(spi_cmd[10]), .B(n3918[10]), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i11_3_lut.init = 16'hcaca;
    LUT4 mux_1340_i2_4_lut (.A(byte_wr[1]), .B(dword_wr[25]), .C(n20107), 
         .D(n4067), .Z(byte_wr_7__N_2052[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam mux_1340_i2_4_lut.init = 16'hcac0;
    PFUMX i16001 (.BLUT(n18770), .ALUT(n18771), .C0(cmd_bytes[0]), .Z(n18772));
    LUT4 mux_1340_i3_4_lut (.A(byte_wr[2]), .B(dword_wr[26]), .C(n20107), 
         .D(n4067), .Z(byte_wr_7__N_2052[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam mux_1340_i3_4_lut.init = 16'hcac0;
    LUT4 mux_1340_i4_4_lut (.A(byte_wr[3]), .B(dword_wr[27]), .C(n20107), 
         .D(n4067), .Z(byte_wr_7__N_2052[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam mux_1340_i4_4_lut.init = 16'hcac0;
    LUT4 mux_1340_i5_4_lut (.A(byte_wr[4]), .B(dword_wr[28]), .C(n20107), 
         .D(n4067), .Z(byte_wr_7__N_2052[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam mux_1340_i5_4_lut.init = 16'hcac0;
    LUT4 mux_1340_i6_4_lut (.A(byte_wr[5]), .B(dword_wr[29]), .C(n20107), 
         .D(n4067), .Z(byte_wr_7__N_2052[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam mux_1340_i6_4_lut.init = 16'hcac0;
    LUT4 mux_1340_i7_4_lut (.A(byte_wr[6]), .B(dword_wr[30]), .C(n20107), 
         .D(n4067), .Z(byte_wr_7__N_2052[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam mux_1340_i7_4_lut.init = 16'hcac0;
    PFUMX i16007 (.BLUT(n18776), .ALUT(n18777), .C0(cmd_bytes[0]), .Z(n18778));
    PFUMX i16010 (.BLUT(n18779), .ALUT(n18780), .C0(cmd_bytes[0]), .Z(n18781));
    LUT4 mux_1343_i28_3_lut (.A(spi_cmd[27]), .B(n18772), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i28_3_lut.init = 16'hcaca;
    LUT4 mux_1343_i12_3_lut (.A(spi_cmd[11]), .B(n3918[11]), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i12_3_lut.init = 16'hcaca;
    LUT4 mux_1343_i13_3_lut (.A(spi_cmd[12]), .B(n3918[12]), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i13_3_lut.init = 16'hcaca;
    PFUMX i17002 (.BLUT(n20213), .ALUT(n20214), .C0(cmd_bytes[1]), .Z(int_SI_N_2115));
    LUT4 i16192_3_lut (.A(int_cmd_dword_31__N_1817[28]), .B(int_cmd_dword_31__N_1849[28]), 
         .C(int_cmd_dword_31__N_1881), .Z(int_cmd_dword[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(226[8] 352[15])
    defparam i16192_3_lut.init = 16'hcaca;
    LUT4 mux_1343_i14_3_lut (.A(spi_cmd[13]), .B(n3918[13]), .C(n20137), 
         .Z(int_cmd_dword_31__N_1849[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/spi_flash/rtl/verilog/spi_flash_intf.v(171[11] 183[13])
    defparam mux_1343_i14_3_lut.init = 16'hcaca;
    PFUMX i16016 (.BLUT(n18785), .ALUT(n18786), .C0(cmd_bytes[0]), .Z(n18787));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module lm8_renamed_due_excessive_length_1
//

module lm8_renamed_due_excessive_length_1 (n20103, ext_wb_state, n18980, 
            \selected[1] , n20053, interalClock, \SHAREDBUS_DAT_O[0] , 
            VCC_net, LM8D_DAT_O, \ext_addr[7] , \ext_addr[6] , \ext_addr[5] , 
            \ext_addr[4] , \ext_addr[3] , \ext_addr[2] , \ext_addr[1] , 
            \ext_addr[0] , n21083, n20089, n20054, \SHAREDBUS_DAT_O[1] , 
            \save_data[2] , \SHAREDBUS_DAT_O[2] , \SHAREDBUS_DAT_O[3] , 
            \SHAREDBUS_DAT_O[4] , \save_data[5] , \SHAREDBUS_DAT_O[5] , 
            \SHAREDBUS_DAT_O[6] , n20112, ext_io_wr, ext_mem_wr, n21076, 
            n20163, n20091, n20050, n20093, n18360, n18370, n8, 
            n20203, n20095, n20173, n20097, n20098, n20099, n18292, 
            \SPIFlashS_DAT_O[7] , n15, \SPIFlashC_DAT_O[7] , n10456, 
            n882, n15_adj_1, rcsr, n19917, n20102, n20101, \D_ADR_O_31__N_499[31] , 
            \SHAREDBUS_ADR_I[31] , n20087, n14, n10, n13341, n20096, 
            n20090, n20088, n20100, n20145, n13214, page_ptr3, page_ptr1, 
            n23, n7, \din_rd[5] , \din_rd[2] , page_ptr2, \din_rd1[1] , 
            \din_rd1[2] , \din_rd1[5] , n5718, n58, \SHAREDBUS_ADR_I[16] , 
            n20062, n96, n56, \SHAREDBUS_ADR_I[18] , n94, n21, n3, 
            n1, n20201, n18499, \im[1] , \im[2] , \im[5] , n7029, 
            n7030) /* synthesis syn_module_defined=1 */ ;
    output n20103;
    output ext_wb_state;
    input n18980;
    input \selected[1] ;
    output n20053;
    input interalClock;
    input \SHAREDBUS_DAT_O[0] ;
    input VCC_net;
    output [7:0]LM8D_DAT_O;
    output \ext_addr[7] ;
    output \ext_addr[6] ;
    output \ext_addr[5] ;
    output \ext_addr[4] ;
    output \ext_addr[3] ;
    output \ext_addr[2] ;
    output \ext_addr[1] ;
    output \ext_addr[0] ;
    input n21083;
    output n20089;
    input n20054;
    input \SHAREDBUS_DAT_O[1] ;
    output \save_data[2] ;
    input \SHAREDBUS_DAT_O[2] ;
    input \SHAREDBUS_DAT_O[3] ;
    input \SHAREDBUS_DAT_O[4] ;
    output \save_data[5] ;
    input \SHAREDBUS_DAT_O[5] ;
    input \SHAREDBUS_DAT_O[6] ;
    output n20112;
    output ext_io_wr;
    output ext_mem_wr;
    output n21076;
    input n20163;
    output n20091;
    input n20050;
    output n20093;
    input n18360;
    output n18370;
    input n8;
    input n20203;
    output n20095;
    input n20173;
    output n20097;
    output n20098;
    output n20099;
    input n18292;
    input \SPIFlashS_DAT_O[7] ;
    input n15;
    input \SPIFlashC_DAT_O[7] ;
    input n10456;
    output n882;
    output n15_adj_1;
    output rcsr;
    input n19917;
    output n20102;
    output n20101;
    output \D_ADR_O_31__N_499[31] ;
    output \SHAREDBUS_ADR_I[31] ;
    output n20087;
    output n14;
    output n10;
    input n13341;
    output n20096;
    output n20090;
    output n20088;
    output n20100;
    input n20145;
    output n13214;
    output [7:0]page_ptr3;
    output [7:0]page_ptr1;
    input n23;
    output n7;
    input \din_rd[5] ;
    input \din_rd[2] ;
    output [7:0]page_ptr2;
    output \din_rd1[1] ;
    output \din_rd1[2] ;
    output \din_rd1[5] ;
    output n5718;
    input n58;
    input \SHAREDBUS_ADR_I[16] ;
    input n20062;
    output n96;
    input n56;
    input \SHAREDBUS_ADR_I[18] ;
    output n94;
    input n21;
    output n3;
    input n1;
    output n20201;
    output n18499;
    output \im[1] ;
    output \im[2] ;
    output \im[5] ;
    input n7029;
    output n7030;
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    
    wire core_rst_n, rff1;
    wire [7:0]save_data;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(413[15:24])
    
    wire interalClock_enable_59, n20162, GND_net;
    wire [7:0]internal_sp_dout;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(410[15:31])
    wire [31:0]ext_addr;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(134[29:37])
    
    wire n20111, internal_sp_dout_7__N_550;
    wire [10:0]prom_addr_10__N_822;
    
    wire prom_enable;
    wire [17:0]\genblk1.instr_mem_out ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(362[15:28])
    
    wire ext_wb_state_nxt, \genblk2.D_ACK_I_d , n13100, prom_ready, 
        n21084;
    wire [31:0]SHAREDBUS_DAT_O;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(350[13:28])
    
    wire n20110, ext_addr_cyc, D_ADR_O_31__N_625, ext_mem_ready_N_631, 
        n18961, n20129, n20114, n20105;
    wire [7:0]ext_io_din;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(142[22:32])
    
    wire n19918, ext_io_rd, n20198, n10_c, n20138, page_ptr3_7__N_693, 
        page_ptr1_7__N_689, n16832, ext_mem_rd;
    wire [17:0]instr;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(131[23:28])
    
    wire data_cyc, n18156, n4, n16632;
    wire [7:0]din_rd;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(112[30:36])
    
    wire n20181, carry_flag, zero_flag, n18585, n20182;
    wire [7:0]dout_rb;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(100[30:37])
    wire [7:0]data_rb_int;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(70[18:29])
    
    wire n20183, ext_addr_nxt_7__N_949;
    wire [7:0]ext_addr_nxt;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(72[16:28])
    
    wire n20184, n20185, n20186, n20187;
    wire [7:0]din_rd1;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(112[38:45])
    wire [7:0]im;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(119[34:36])
    wire [7:0]din_rd_7__N_695;
    
    wire n20188, n18946, n8273, n19500, n18, n20190, ie_nxt_N_984, 
        n5487, ext_mem_ready, addr_cyc, n18277, n20192, n20195, 
        n20142, n20196, n20194, update_z_N_735, n20136, n20160, 
        n20127, n20104, n20151, n20153, n20202, n20154;
    
    LUT4 i16453_2_lut_rep_194_3_lut_4_lut (.A(n20103), .B(ext_wb_state), 
         .C(n18980), .D(\selected[1] ), .Z(n20053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i16453_2_lut_rep_194_3_lut_4_lut.init = 16'he000;
    FD1S3AX rst_n_58 (.D(rff1), .CK(interalClock), .Q(core_rst_n)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(164[8:38])
    defparam rst_n_58.GSR = "ENABLED";
    FD1P3IX save_data__i0 (.D(\SHAREDBUS_DAT_O[0] ), .SP(interalClock_enable_59), 
            .CD(n20162), .CK(interalClock), .Q(save_data[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i0.GSR = "DISABLED";
    pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6 \scratchpad_init.memspeedasyncdisablenoreg8112048  (.Data({LM8D_DAT_O}), 
            .Address({ext_addr[10:9], n20111, \ext_addr[7] , \ext_addr[6] , 
            \ext_addr[5] , \ext_addr[4] , \ext_addr[3] , \ext_addr[2] , 
            \ext_addr[1] , \ext_addr[0] }), .Q({internal_sp_dout}), .Clock(interalClock), 
            .ClockEn(VCC_net), .WE(internal_sp_dout_7__N_550), .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(523[2] 551[36])
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .module_type = "pmi_ram_dq";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_family = "MachXO2";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_write_mode = "normal";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_init_file_format = "hex";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_init_file = "scratchpad_init.mem";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_optimization = "speed";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_resetmode = "async";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_gsr = "disable";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_regmode = "noreg";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_data_width = 8;
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_addr_width = 11;
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_addr_depth = 2048;
    pmi_ram_dqMnhprom_initsadn18112048f3df93e \prom_init.memspeedasyncdisablenoreg18112048  (.Data({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net}), .Address({prom_addr_10__N_822}), 
            .Q({\genblk1.instr_mem_out }), .Clock(interalClock), .ClockEn(prom_enable), 
            .WE(GND_net), .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/platform1.v(523[2] 551[36])
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .module_type = "pmi_ram_dq";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_family = "MachXO2";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_write_mode = "normal";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_init_file_format = "hex";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_init_file = "prom_init.mem";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_optimization = "speed";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_resetmode = "async";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_gsr = "disable";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_regmode = "noreg";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_data_width = 18;
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_addr_width = 11;
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_addr_depth = 2048;
    FD1S3AX rff1_57 (.D(n21083), .CK(interalClock), .Q(rff1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(164[8:38])
    defparam rff1_57.GSR = "ENABLED";
    LUT4 i10161_2_lut_rep_230_3_lut_4_lut (.A(n20103), .B(ext_wb_state), 
         .C(\ext_addr[4] ), .D(\selected[1] ), .Z(n20089)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i10161_2_lut_rep_230_3_lut_4_lut.init = 16'he000;
    FD1S3IX ext_wb_state_61 (.D(ext_wb_state_nxt), .CK(interalClock), .CD(n20162), 
            .Q(ext_wb_state));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam ext_wb_state_61.GSR = "DISABLED";
    FD1S3IX \genblk2.D_ACK_I_d_60  (.D(n20054), .CK(interalClock), .CD(n13100), 
            .Q(\genblk2.D_ACK_I_d ));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(492[10] 496[31])
    defparam \genblk2.D_ACK_I_d_60 .GSR = "DISABLED";
    FD1P3DX \genblk1.first_fetch_59  (.D(n21083), .SP(prom_enable), .CK(interalClock), 
            .CD(n20162), .Q(prom_ready));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam \genblk1.first_fetch_59 .GSR = "DISABLED";
    FD1P3DX \genblk1.first_fetch_59_rep_349  (.D(n21083), .SP(prom_enable), 
            .CK(interalClock), .CD(n20162), .Q(n21084));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam \genblk1.first_fetch_59_rep_349 .GSR = "DISABLED";
    FD1P3IX save_data__i1 (.D(\SHAREDBUS_DAT_O[1] ), .SP(interalClock_enable_59), 
            .CD(n20162), .CK(interalClock), .Q(save_data[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i1.GSR = "DISABLED";
    FD1P3IX save_data__i2 (.D(\SHAREDBUS_DAT_O[2] ), .SP(interalClock_enable_59), 
            .CD(n20162), .CK(interalClock), .Q(\save_data[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i2.GSR = "DISABLED";
    FD1P3IX save_data__i3 (.D(\SHAREDBUS_DAT_O[3] ), .SP(interalClock_enable_59), 
            .CD(n20162), .CK(interalClock), .Q(save_data[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i3.GSR = "DISABLED";
    FD1P3IX save_data__i4 (.D(\SHAREDBUS_DAT_O[4] ), .SP(interalClock_enable_59), 
            .CD(n20162), .CK(interalClock), .Q(save_data[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i4.GSR = "DISABLED";
    FD1P3IX save_data__i5 (.D(\SHAREDBUS_DAT_O[5] ), .SP(interalClock_enable_59), 
            .CD(n20162), .CK(interalClock), .Q(\save_data[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i5.GSR = "DISABLED";
    FD1P3IX save_data__i6 (.D(\SHAREDBUS_DAT_O[6] ), .SP(interalClock_enable_59), 
            .CD(n20162), .CK(interalClock), .Q(save_data[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i6.GSR = "DISABLED";
    FD1P3IX save_data__i7 (.D(SHAREDBUS_DAT_O[7]), .SP(interalClock_enable_59), 
            .CD(n20162), .CK(interalClock), .Q(save_data[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=523, LSE_RLINE=551 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i7.GSR = "DISABLED";
    LUT4 ext_cyc_I_16_3_lut_rep_244_4_lut_4_lut (.A(n20110), .B(ext_addr_cyc), 
         .C(D_ADR_O_31__N_625), .D(ext_mem_ready_N_631), .Z(n20103)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(590[14:46])
    defparam ext_cyc_I_16_3_lut_rep_244_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i359_2_lut_rep_246_3_lut_4_lut (.A(n18961), .B(n20112), .C(n20129), 
         .D(n20114), .Z(n20105)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(590[14:46])
    defparam i359_2_lut_rep_246_3_lut_4_lut.init = 16'he000;
    LUT4 ext_io_wr_I_0_2_lut_rep_347 (.A(ext_io_wr), .B(ext_mem_wr), .Z(n21076)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(586[22:44])
    defparam ext_io_wr_I_0_2_lut_rep_347.init = 16'heeee;
    LUT4 i1_2_lut_rep_232_3_lut_4_lut (.A(n20103), .B(ext_wb_state), .C(n20163), 
         .D(\selected[1] ), .Z(n20091)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1_2_lut_rep_232_3_lut_4_lut.init = 16'he000;
    LUT4 save_data_7__I_0_64_i4_3_lut (.A(save_data[3]), .B(\SHAREDBUS_DAT_O[3] ), 
         .C(ext_wb_state), .Z(ext_io_din[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(554[24:58])
    defparam save_data_7__I_0_64_i4_3_lut.init = 16'hcaca;
    LUT4 external_sp_bdd_4_lut (.A(n20110), .B(n20050), .C(ext_mem_ready_N_631), 
         .D(ext_wb_state), .Z(n19918)) /* synthesis lut_function=(A (C)+!A (B (C (D)))) */ ;
    defparam external_sp_bdd_4_lut.init = 16'he0a0;
    LUT4 i1_2_lut_rep_234_3_lut_4_lut (.A(n20103), .B(ext_wb_state), .C(\ext_addr[7] ), 
         .D(\selected[1] ), .Z(n20093)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1_2_lut_rep_234_3_lut_4_lut.init = 16'he000;
    LUT4 save_data_7__I_0_64_i5_3_lut (.A(save_data[4]), .B(\SHAREDBUS_DAT_O[4] ), 
         .C(ext_wb_state), .Z(ext_io_din[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(554[24:58])
    defparam save_data_7__I_0_64_i5_3_lut.init = 16'hcaca;
    LUT4 save_data_7__I_0_64_i7_3_lut (.A(save_data[6]), .B(\SHAREDBUS_DAT_O[6] ), 
         .C(ext_wb_state), .Z(ext_io_din[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(554[24:58])
    defparam save_data_7__I_0_64_i7_3_lut.init = 16'hcaca;
    LUT4 i21_3_lut (.A(save_data[7]), .B(SHAREDBUS_DAT_O[7]), .C(ext_wb_state), 
         .Z(ext_io_din[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(554[24:58])
    defparam i21_3_lut.init = 16'hcaca;
    LUT4 i16433_4_lut (.A(n18360), .B(n18370), .C(n8), .D(n20203), .Z(n18961)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(590[14:46])
    defparam i16433_4_lut.init = 16'h0001;
    LUT4 ext_io_rd_I_0_2_lut (.A(ext_io_rd), .B(ext_io_wr), .Z(D_ADR_O_31__N_625)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(583[24:47])
    defparam ext_io_rd_I_0_2_lut.init = 16'heeee;
    LUT4 i4_4_lut (.A(\genblk1.instr_mem_out [11]), .B(\genblk1.instr_mem_out [12]), 
         .C(n20198), .D(n21084), .Z(n10_c)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i4_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_3_lut (.A(\genblk1.instr_mem_out [8]), .B(n20138), .C(\genblk1.instr_mem_out [9]), 
         .Z(page_ptr3_7__N_693)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_113 (.A(\genblk1.instr_mem_out [8]), .B(n20138), 
         .C(\genblk1.instr_mem_out [9]), .Z(page_ptr1_7__N_689)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_3_lut_adj_113.init = 16'h0808;
    LUT4 i14076_3_lut (.A(save_data[1]), .B(\SHAREDBUS_DAT_O[1] ), .C(ext_wb_state), 
         .Z(n16832)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14076_3_lut.init = 16'hcaca;
    LUT4 ext_mem_rd_I_0_2_lut (.A(ext_mem_rd), .B(ext_mem_wr), .Z(ext_mem_ready_N_631)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(585[12:37])
    defparam ext_mem_rd_I_0_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [11]), .Z(instr[11])) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_114 (.A(prom_ready), .B(\genblk1.instr_mem_out [10]), 
         .Z(instr[10])) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_adj_114.init = 16'h8888;
    LUT4 i1_2_lut_adj_115 (.A(prom_ready), .B(\genblk1.instr_mem_out [9]), 
         .Z(instr[9])) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_adj_115.init = 16'h8888;
    LUT4 i1_2_lut_adj_116 (.A(prom_ready), .B(\genblk1.instr_mem_out [8]), 
         .Z(instr[8])) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_adj_116.init = 16'h8888;
    LUT4 i5_3_lut_rep_279 (.A(data_cyc), .B(n10_c), .C(\genblk1.instr_mem_out [10]), 
         .Z(n20138)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i5_3_lut_rep_279.init = 16'h8080;
    LUT4 i1_2_lut_rep_236_3_lut_4_lut (.A(n20103), .B(ext_wb_state), .C(\ext_addr[5] ), 
         .D(\selected[1] ), .Z(n20095)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1_2_lut_rep_236_3_lut_4_lut.init = 16'he000;
    LUT4 save_data_7__I_0_64_i1_3_lut (.A(save_data[0]), .B(\SHAREDBUS_DAT_O[0] ), 
         .C(ext_wb_state), .Z(ext_io_din[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(554[24:58])
    defparam save_data_7__I_0_64_i1_3_lut.init = 16'hcaca;
    LUT4 ext_wb_state_nxt_I_17_4_lut (.A(\genblk2.D_ACK_I_d ), .B(n20103), 
         .C(n20050), .D(ext_wb_state), .Z(ext_wb_state_nxt)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(500[9] 501[85])
    defparam ext_wb_state_nxt_I_17_4_lut.init = 16'h0544;
    LUT4 i16514_2_lut (.A(\selected[1] ), .B(core_rst_n), .Z(n13100)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i16514_2_lut.init = 16'h7777;
    LUT4 i3_4_lut (.A(n21084), .B(\genblk1.instr_mem_out [12]), .C(\genblk1.instr_mem_out [10]), 
         .D(\genblk1.instr_mem_out [11]), .Z(n18156)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i3_4_lut.init = 16'hfffd;
    LUT4 i15792_2_lut_rep_238_3_lut_4_lut (.A(n20103), .B(ext_wb_state), 
         .C(n20173), .D(\selected[1] ), .Z(n20097)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i15792_2_lut_rep_238_3_lut_4_lut.init = 16'he000;
    LUT4 i1_2_lut_rep_239_3_lut_4_lut (.A(n20103), .B(ext_wb_state), .C(\ext_addr[1] ), 
         .D(\selected[1] ), .Z(n20098)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1_2_lut_rep_239_3_lut_4_lut.init = 16'he000;
    LUT4 i10160_2_lut_rep_240_3_lut_4_lut (.A(n20103), .B(ext_wb_state), 
         .C(\ext_addr[3] ), .D(\selected[1] ), .Z(n20099)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i10160_2_lut_rep_240_3_lut_4_lut.init = 16'he000;
    LUT4 i1_4_lut (.A(n18292), .B(\SPIFlashS_DAT_O[7] ), .C(n4), .D(n15), 
         .Z(SHAREDBUS_DAT_O[7])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(554[24:58])
    defparam i1_4_lut.init = 16'h5044;
    LUT4 i1_2_lut_adj_117 (.A(\SPIFlashC_DAT_O[7] ), .B(n10456), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(554[24:58])
    defparam i1_2_lut_adj_117.init = 16'h8888;
    PFUMX i14077 (.BLUT(n16632), .ALUT(n16832), .C0(n882), .Z(din_rd[1]));
    LUT4 i10154_2_lut_rep_322 (.A(\genblk1.instr_mem_out [13]), .B(n21084), 
         .Z(n20181)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10154_2_lut_rep_322.init = 16'h8888;
    LUT4 i78_3_lut_4_lut (.A(\genblk1.instr_mem_out [13]), .B(prom_ready), 
         .C(carry_flag), .D(zero_flag), .Z(n18585)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i78_3_lut_4_lut.init = 16'hf780;
    LUT4 i10147_2_lut_rep_323 (.A(\genblk1.instr_mem_out [2]), .B(n21084), 
         .Z(n20182)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10147_2_lut_rep_323.init = 16'h8888;
    LUT4 dout_rb_7__I_0_46_i3_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [2]), 
         .B(prom_ready), .C(dout_rb[2]), .D(\genblk1.instr_mem_out [13]), 
         .Z(data_rb_int[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_46_i3_3_lut_4_lut_4_lut.init = 16'hb8f0;
    LUT4 i10148_2_lut_rep_324 (.A(\genblk1.instr_mem_out [3]), .B(prom_ready), 
         .Z(n20183)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10148_2_lut_rep_324.init = 16'h8888;
    LUT4 dout_rb_7__I_0_i1_3_lut_4_lut (.A(\genblk1.instr_mem_out [3]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_949), .D(dout_rb[0]), .Z(ext_addr_nxt[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i1_3_lut_4_lut.init = 16'h8f80;
    LUT4 dout_rb_7__I_0_46_i4_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [3]), 
         .B(prom_ready), .C(dout_rb[3]), .D(\genblk1.instr_mem_out [13]), 
         .Z(data_rb_int[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_46_i4_3_lut_4_lut_4_lut.init = 16'hb8f0;
    LUT4 i10149_2_lut_rep_325 (.A(\genblk1.instr_mem_out [4]), .B(prom_ready), 
         .Z(n20184)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10149_2_lut_rep_325.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_3_lut (.A(\genblk1.instr_mem_out [4]), .B(n21084), 
         .C(\genblk1.instr_mem_out [3]), .Z(n15_adj_1)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    LUT4 dout_rb_7__I_0_i2_3_lut_4_lut (.A(\genblk1.instr_mem_out [4]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_949), .D(dout_rb[1]), .Z(ext_addr_nxt[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i2_3_lut_4_lut.init = 16'h8f80;
    LUT4 dout_rb_7__I_0_46_i5_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [4]), 
         .B(prom_ready), .C(dout_rb[4]), .D(\genblk1.instr_mem_out [13]), 
         .Z(data_rb_int[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_46_i5_3_lut_4_lut_4_lut.init = 16'hb8f0;
    LUT4 i10150_2_lut_rep_326 (.A(\genblk1.instr_mem_out [5]), .B(prom_ready), 
         .Z(n20185)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10150_2_lut_rep_326.init = 16'h8888;
    LUT4 dout_rb_7__I_0_46_i6_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [5]), 
         .B(prom_ready), .C(dout_rb[5]), .D(\genblk1.instr_mem_out [13]), 
         .Z(data_rb_int[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_46_i6_3_lut_4_lut_4_lut.init = 16'hb8f0;
    LUT4 dout_rb_7__I_0_i3_3_lut_4_lut (.A(\genblk1.instr_mem_out [5]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_949), .D(dout_rb[2]), .Z(ext_addr_nxt[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i3_3_lut_4_lut.init = 16'h8f80;
    LUT4 i10151_2_lut_rep_327 (.A(\genblk1.instr_mem_out [6]), .B(prom_ready), 
         .Z(n20186)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10151_2_lut_rep_327.init = 16'h8888;
    LUT4 dout_rb_7__I_0_46_i7_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [6]), 
         .B(prom_ready), .C(dout_rb[6]), .D(\genblk1.instr_mem_out [13]), 
         .Z(data_rb_int[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_46_i7_3_lut_4_lut_4_lut.init = 16'hb8f0;
    LUT4 dout_rb_7__I_0_i4_3_lut_4_lut (.A(\genblk1.instr_mem_out [6]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_949), .D(dout_rb[3]), .Z(ext_addr_nxt[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i4_3_lut_4_lut.init = 16'h8f80;
    LUT4 i10152_2_lut_rep_328 (.A(\genblk1.instr_mem_out [7]), .B(prom_ready), 
         .Z(n20187)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10152_2_lut_rep_328.init = 16'h8888;
    LUT4 i9293_4_lut (.A(din_rd1[6]), .B(n15_adj_1), .C(rcsr), .D(im[6]), 
         .Z(din_rd_7__N_695[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(93[22:26])
    defparam i9293_4_lut.init = 16'hca0a;
    LUT4 i9290_4_lut (.A(din_rd1[3]), .B(im[3]), .C(rcsr), .D(n15_adj_1), 
         .Z(din_rd_7__N_695[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(93[22:26])
    defparam i9290_4_lut.init = 16'hca0a;
    LUT4 dout_rb_7__I_0_46_i8_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [7]), 
         .B(prom_ready), .C(dout_rb[7]), .D(\genblk1.instr_mem_out [13]), 
         .Z(data_rb_int[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_46_i8_3_lut_4_lut_4_lut.init = 16'hb8f0;
    LUT4 dout_rb_7__I_0_i5_3_lut_4_lut (.A(\genblk1.instr_mem_out [7]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_949), .D(dout_rb[4]), .Z(ext_addr_nxt[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i5_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_329 (.A(n21084), .B(\genblk1.instr_mem_out [12]), 
         .Z(n20188)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_rep_329.init = 16'h8888;
    LUT4 i16418_2_lut_3_lut_3_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [12]), 
         .C(\genblk1.instr_mem_out [13]), .Z(n18946)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i16418_2_lut_3_lut_3_lut.init = 16'h2828;
    LUT4 i5810_2_lut_3_lut (.A(n21084), .B(\genblk1.instr_mem_out [12]), 
         .C(zero_flag), .Z(n8273)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i5810_2_lut_3_lut.init = 16'h7878;
    LUT4 n18239_bdd_2_lut_16802_3_lut_3_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [12]), 
         .C(\genblk1.instr_mem_out [13]), .Z(n19500)) /* synthesis lut_function=((B (C)+!B !(C))+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam n18239_bdd_2_lut_16802_3_lut_3_lut.init = 16'hd7d7;
    LUT4 i43_2_lut_3_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [12]), 
         .C(carry_flag), .Z(n18)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i43_2_lut_3_lut.init = 16'h7878;
    LUT4 i9997_2_lut_rep_331 (.A(\genblk1.instr_mem_out [0]), .B(prom_ready), 
         .Z(n20190)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i9997_2_lut_rep_331.init = 16'h8888;
    LUT4 dout_rb_7__I_0_46_i1_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [0]), 
         .B(prom_ready), .C(dout_rb[0]), .D(\genblk1.instr_mem_out [13]), 
         .Z(data_rb_int[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_46_i1_3_lut_4_lut_4_lut.init = 16'hb8f0;
    LUT4 i2657_3_lut_4_lut (.A(\genblk1.instr_mem_out [0]), .B(prom_ready), 
         .C(ie_nxt_N_984), .D(dout_rb[0]), .Z(n5487)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2657_3_lut_4_lut.init = 16'hf808;
    PFUMX i16954 (.BLUT(n19918), .ALUT(n19917), .C0(D_ADR_O_31__N_625), 
          .Z(ext_mem_ready));
    LUT4 i1_2_lut_3_lut_4_lut (.A(\genblk1.instr_mem_out [0]), .B(prom_ready), 
         .C(ext_addr_cyc), .D(addr_cyc), .Z(n18277)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h7770;
    LUT4 i10155_2_lut_rep_333 (.A(\genblk1.instr_mem_out [14]), .B(n21084), 
         .Z(n20192)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10155_2_lut_rep_333.init = 16'h8888;
    LUT4 i10158_2_lut_rep_336 (.A(\genblk1.instr_mem_out [17]), .B(n21084), 
         .Z(n20195)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10158_2_lut_rep_336.init = 16'h8888;
    LUT4 i2_2_lut_rep_283_3_lut (.A(\genblk1.instr_mem_out [17]), .B(prom_ready), 
         .C(\genblk1.instr_mem_out [16]), .Z(n20142)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_2_lut_rep_283_3_lut.init = 16'h8080;
    LUT4 i10157_2_lut_rep_337 (.A(\genblk1.instr_mem_out [16]), .B(n21084), 
         .Z(n20196)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10157_2_lut_rep_337.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [16]), .B(n21084), 
         .C(n20194), .D(\genblk1.instr_mem_out [17]), .Z(update_z_N_735)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i2_2_lut_rep_277_3_lut_4_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [16]), 
         .B(n21084), .C(\genblk1.instr_mem_out [15]), .D(\genblk1.instr_mem_out [17]), 
         .Z(n20136)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_2_lut_rep_277_3_lut_4_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 instr_17__I_0_160_2_lut_rep_301_3_lut_3_lut (.A(\genblk1.instr_mem_out [16]), 
         .B(n21084), .C(\genblk1.instr_mem_out [17]), .Z(n20160)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_17__I_0_160_2_lut_rep_301_3_lut_3_lut.init = 16'h4040;
    LUT4 instr_l1_2_I_0_135_2_lut_rep_268_3_lut_4_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [16]), 
         .B(prom_ready), .C(n20194), .D(\genblk1.instr_mem_out [17]), 
         .Z(n20127)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_l1_2_I_0_135_2_lut_rep_268_3_lut_4_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 ext_cyc_I_0_66_2_lut_rep_243_4_lut (.A(n20104), .B(ext_addr_cyc), 
         .C(D_ADR_O_31__N_625), .D(ext_wb_state), .Z(n20102)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(583[23] 585[52])
    defparam ext_cyc_I_0_66_2_lut_rep_243_4_lut.init = 16'hffca;
    LUT4 instr_1__N_750_I_0_2_lut_rep_292_3_lut_3_lut (.A(\genblk1.instr_mem_out [1]), 
         .B(prom_ready), .C(\genblk1.instr_mem_out [0]), .Z(n20151)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_1__N_750_I_0_2_lut_rep_292_3_lut_3_lut.init = 16'h4040;
    LUT4 i3547_2_lut_rep_270_3_lut_4_lut_4_lut_2_lut (.A(n21084), .B(\genblk1.instr_mem_out [0]), 
         .Z(n20129)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i3547_2_lut_rep_270_3_lut_4_lut_4_lut_2_lut.init = 16'h8888;
    LUT4 instr_1__I_0_163_2_lut_rep_294_3_lut_3_lut (.A(\genblk1.instr_mem_out [1]), 
         .B(n21084), .C(\genblk1.instr_mem_out [0]), .Z(n20153)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_1__I_0_163_2_lut_rep_294_3_lut_3_lut.init = 16'h0808;
    LUT4 i10290_2_lut_3_lut_4_lut_4_lut_2_lut (.A(\genblk1.instr_mem_out [1]), 
         .B(n21084), .Z(n20202)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i10290_2_lut_3_lut_4_lut_4_lut_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_rep_295_3_lut (.A(\genblk1.instr_mem_out [1]), .B(prom_ready), 
         .C(\genblk1.instr_mem_out [0]), .Z(n20154)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_2_lut_rep_295_3_lut.init = 16'h8080;
    LUT4 dout_rb_7__I_0_46_i2_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [1]), 
         .B(prom_ready), .C(dout_rb[1]), .D(\genblk1.instr_mem_out [13]), 
         .Z(data_rb_int[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_46_i2_3_lut_4_lut_4_lut.init = 16'hb8f0;
    LUT4 i9951_2_lut_rep_242_3_lut (.A(n20103), .B(ext_wb_state), .C(\selected[1] ), 
         .Z(n20101)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i9951_2_lut_rep_242_3_lut.init = 16'he0e0;
    LUT4 i10164_2_lut_3_lut_4_lut (.A(n20103), .B(ext_wb_state), .C(\D_ADR_O_31__N_499[31] ), 
         .D(\selected[1] ), .Z(\SHAREDBUS_ADR_I[31] )) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i10164_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i9998_2_lut_rep_228_3_lut_4_lut (.A(n20103), .B(ext_wb_state), 
         .C(\ext_addr[0] ), .D(\selected[1] ), .Z(n20087)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i9998_2_lut_rep_228_3_lut_4_lut.init = 16'he000;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n20103), .B(ext_wb_state), .C(n14), 
         .D(\selected[1] ), .Z(n10)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0e00;
    LUT4 i15801_2_lut_rep_237_3_lut_4_lut (.A(n20103), .B(ext_wb_state), 
         .C(n13341), .D(\selected[1] ), .Z(n20096)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i15801_2_lut_rep_237_3_lut_4_lut.init = 16'he000;
    LUT4 i10243_2_lut_rep_231_3_lut_4_lut (.A(n20103), .B(ext_wb_state), 
         .C(n21076), .D(\selected[1] ), .Z(n20090)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i10243_2_lut_rep_231_3_lut_4_lut.init = 16'he000;
    LUT4 i10163_2_lut_rep_229_3_lut_4_lut (.A(n20103), .B(ext_wb_state), 
         .C(\ext_addr[6] ), .D(\selected[1] ), .Z(n20088)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i10163_2_lut_rep_229_3_lut_4_lut.init = 16'he000;
    LUT4 i10159_2_lut_rep_241_3_lut_4_lut (.A(n20103), .B(ext_wb_state), 
         .C(\ext_addr[2] ), .D(\selected[1] ), .Z(n20100)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i10159_2_lut_rep_241_3_lut_4_lut.init = 16'he000;
    LUT4 i10530_2_lut_3_lut_4_lut (.A(n20103), .B(ext_wb_state), .C(n20145), 
         .D(\selected[1] ), .Z(n13214)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i10530_2_lut_3_lut_4_lut.init = 16'he000;
    \lm8_core(FAMILY_NAME="MachXO2",EXT_AW=32,PROM_AW=32'sb01011,PROM_AD=2048,REGISTERS_16=0,PGM_STACK_AW=32'sb0100)  u1_isp8_core (.page_ptr3({page_ptr3}), 
            .interalClock(interalClock), .page_ptr3_7__N_693(page_ptr3_7__N_693), 
            .n20162(n20162), .page_ptr1({page_ptr1}), .page_ptr1_7__N_689(page_ptr1_7__N_689), 
            .n20110(n20110), .internal_sp_dout({internal_sp_dout}), .n23(n23), 
            .n7(n7), .VCC_net(VCC_net), .n20188(n20188), .\instr[11] (instr[11]), 
            .\instr[10] (instr[10]), .\instr[9] (instr[9]), .\instr[8] (instr[8]), 
            .\din_rd[5] (\din_rd[5] ), .\din_rd[2] (\din_rd[2] ), .\din_rd[1] (din_rd[1]), 
            .n20187(n20187), .n20186(n20186), .n20185(n20185), .n20184(n20184), 
            .n20183(n20183), .dout_rb({dout_rb}), .page_ptr2({page_ptr2}), 
            .\din_rd_7__N_695[3] (din_rd_7__N_695[3]), .\din_rd_7__N_695[6] (din_rd_7__N_695[6]), 
            .\din_rd1[1] (\din_rd1[1] ), .\din_rd1[2] (\din_rd1[2] ), .\din_rd1[3] (din_rd1[3]), 
            .\din_rd1[5] (\din_rd1[5] ), .\din_rd1[6] (din_rd1[6]), .prom_ready(prom_ready), 
            .rcsr(rcsr), .\genblk1.instr_mem_out[17] (\genblk1.instr_mem_out [17]), 
            .n20202(n20202), .D_ADR_O_31__N_625(D_ADR_O_31__N_625), .\D_ADR_O_31__N_499[31] (\D_ADR_O_31__N_499[31] ), 
            .\ext_addr[7] (\ext_addr[7] ), .n5718(n5718), .ext_mem_ready_N_631(ext_mem_ready_N_631), 
            .n18961(n18961), .n20104(n20104), .ext_mem_wr(ext_mem_wr), 
            .internal_sp_dout_7__N_550(internal_sp_dout_7__N_550), .n20105(n20105), 
            .n20182(n20182), .n20129(n20129), .n882(n882), .n18585(n18585), 
            .\genblk1.instr_mem_out[9] (\genblk1.instr_mem_out [9]), .n20138(n20138), 
            .\genblk1.instr_mem_out[8] (\genblk1.instr_mem_out [8]), .n18156(n18156), 
            .n58(n58), .\SHAREDBUS_ADR_I[16] (\SHAREDBUS_ADR_I[16] ), .n20062(n20062), 
            .n96(n96), .n56(n56), .\SHAREDBUS_ADR_I[18] (\SHAREDBUS_ADR_I[18] ), 
            .n94(n94), .ie_nxt_N_984(ie_nxt_N_984), .n21(n21), .n3(n3), 
            .n1(n1), .n16632(n16632), .n15(n15_adj_1), .\ext_io_din[7] (ext_io_din[7]), 
            .\ext_io_din[6] (ext_io_din[6]), .\ext_io_din[4] (ext_io_din[4]), 
            .\ext_io_din[3] (ext_io_din[3]), .\ext_io_din[0] (ext_io_din[0]), 
            .n20198(n20198), .data_cyc(data_cyc), .n20201(n20201), .n18499(n18499), 
            .n18370(n18370), .n14(n14), .n5487(n5487), .\im[1] (\im[1] ), 
            .\im[2] (\im[2] ), .\im[3] (im[3]), .\im[5] (\im[5] ), .\im[6] (im[6]), 
            .core_rst_n(core_rst_n), .\selected[1] (\selected[1] ), .n20054(n20054), 
            .interalClock_enable_59(interalClock_enable_59), .n20151(n20151), 
            .n20153(n20153), .n20154(n20154), .n20160(n20160), .\genblk1.instr_mem_out[0] (\genblk1.instr_mem_out [0]), 
            .\genblk1.instr_mem_out[1] (\genblk1.instr_mem_out [1]), .n20181(n20181), 
            .n20111(n20111), .\ext_addr[10] (ext_addr[10]), .n7029(n7029), 
            .n7030(n7030), .\ext_addr[9] (ext_addr[9]), .n18277(n18277), 
            .n20142(n20142), .\genblk1.instr_mem_out[13] (\genblk1.instr_mem_out [13]), 
            .n18946(n18946), .update_z_N_735(update_z_N_735), .n20112(n20112), 
            .n20114(n20114), .n20192(n20192), .n20195(n20195), .\genblk1.instr_mem_out[16] (\genblk1.instr_mem_out [16]), 
            .n20196(n20196), .\genblk1.instr_mem_out[14] (\genblk1.instr_mem_out [14]), 
            .\genblk1.instr_mem_out[15] (\genblk1.instr_mem_out [15]), .n21084(n21084), 
            .n20194(n20194), .carry_flag(carry_flag), .addr_cyc(addr_cyc), 
            .zero_flag(zero_flag), .prom_addr_10__N_822({prom_addr_10__N_822}), 
            .n20190(n20190), .ext_addr_cyc(ext_addr_cyc), .n19500(n19500), 
            .prom_enable(prom_enable), .ext_mem_ready(ext_mem_ready), .\genblk1.instr_mem_out[12] (\genblk1.instr_mem_out [12]), 
            .n8273(n8273), .n18(n18), .ext_addr_nxt_7__N_949(ext_addr_nxt_7__N_949), 
            .LM8D_DAT_O({LM8D_DAT_O}), .\ext_addr[0] (\ext_addr[0] ), .\ext_addr_nxt[0] (ext_addr_nxt[0]), 
            .ext_io_wr(ext_io_wr), .ext_io_rd(ext_io_rd), .ext_mem_rd(ext_mem_rd), 
            .\ext_addr[1] (\ext_addr[1] ), .\ext_addr_nxt[1] (ext_addr_nxt[1]), 
            .\ext_addr[2] (\ext_addr[2] ), .\ext_addr_nxt[2] (ext_addr_nxt[2]), 
            .\ext_addr[3] (\ext_addr[3] ), .\ext_addr_nxt[3] (ext_addr_nxt[3]), 
            .\ext_addr[4] (\ext_addr[4] ), .\ext_addr_nxt[4] (ext_addr_nxt[4]), 
            .\ext_addr[5] (\ext_addr[5] ), .\ext_addr[6] (\ext_addr[6] ), 
            .data_rb_int({data_rb_int}), .n20136(n20136), .n20127(n20127)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(187[10] 209[26])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module \lm8_core(FAMILY_NAME="MachXO2",EXT_AW=32,PROM_AW=32'sb01011,PROM_AD=2048,REGISTERS_16=0,PGM_STACK_AW=32'sb0100) 
//

module \lm8_core(FAMILY_NAME="MachXO2",EXT_AW=32,PROM_AW=32'sb01011,PROM_AD=2048,REGISTERS_16=0,PGM_STACK_AW=32'sb0100)  (page_ptr3, 
            interalClock, page_ptr3_7__N_693, n20162, page_ptr1, page_ptr1_7__N_689, 
            n20110, internal_sp_dout, n23, n7, VCC_net, n20188, 
            \instr[11] , \instr[10] , \instr[9] , \instr[8] , \din_rd[5] , 
            \din_rd[2] , \din_rd[1] , n20187, n20186, n20185, n20184, 
            n20183, dout_rb, page_ptr2, \din_rd_7__N_695[3] , \din_rd_7__N_695[6] , 
            \din_rd1[1] , \din_rd1[2] , \din_rd1[3] , \din_rd1[5] , 
            \din_rd1[6] , prom_ready, rcsr, \genblk1.instr_mem_out[17] , 
            n20202, D_ADR_O_31__N_625, \D_ADR_O_31__N_499[31] , \ext_addr[7] , 
            n5718, ext_mem_ready_N_631, n18961, n20104, ext_mem_wr, 
            internal_sp_dout_7__N_550, n20105, n20182, n20129, n882, 
            n18585, \genblk1.instr_mem_out[9] , n20138, \genblk1.instr_mem_out[8] , 
            n18156, n58, \SHAREDBUS_ADR_I[16] , n20062, n96, n56, 
            \SHAREDBUS_ADR_I[18] , n94, ie_nxt_N_984, n21, n3, n1, 
            n16632, n15, \ext_io_din[7] , \ext_io_din[6] , \ext_io_din[4] , 
            \ext_io_din[3] , \ext_io_din[0] , n20198, data_cyc, n20201, 
            n18499, n18370, n14, n5487, \im[1] , \im[2] , \im[3] , 
            \im[5] , \im[6] , core_rst_n, \selected[1] , n20054, interalClock_enable_59, 
            n20151, n20153, n20154, n20160, \genblk1.instr_mem_out[0] , 
            \genblk1.instr_mem_out[1] , n20181, n20111, \ext_addr[10] , 
            n7029, n7030, \ext_addr[9] , n18277, n20142, \genblk1.instr_mem_out[13] , 
            n18946, update_z_N_735, n20112, n20114, n20192, n20195, 
            \genblk1.instr_mem_out[16] , n20196, \genblk1.instr_mem_out[14] , 
            \genblk1.instr_mem_out[15] , n21084, n20194, carry_flag, 
            addr_cyc, zero_flag, prom_addr_10__N_822, n20190, ext_addr_cyc, 
            n19500, prom_enable, ext_mem_ready, \genblk1.instr_mem_out[12] , 
            n8273, n18, ext_addr_nxt_7__N_949, LM8D_DAT_O, \ext_addr[0] , 
            \ext_addr_nxt[0] , ext_io_wr, ext_io_rd, ext_mem_rd, \ext_addr[1] , 
            \ext_addr_nxt[1] , \ext_addr[2] , \ext_addr_nxt[2] , \ext_addr[3] , 
            \ext_addr_nxt[3] , \ext_addr[4] , \ext_addr_nxt[4] , \ext_addr[5] , 
            \ext_addr[6] , data_rb_int, n20136, n20127) /* synthesis syn_module_defined=1 */ ;
    output [7:0]page_ptr3;
    input interalClock;
    input page_ptr3_7__N_693;
    output n20162;
    output [7:0]page_ptr1;
    input page_ptr1_7__N_689;
    output n20110;
    input [7:0]internal_sp_dout;
    input n23;
    output n7;
    input VCC_net;
    input n20188;
    input \instr[11] ;
    input \instr[10] ;
    input \instr[9] ;
    input \instr[8] ;
    input \din_rd[5] ;
    input \din_rd[2] ;
    input \din_rd[1] ;
    input n20187;
    input n20186;
    input n20185;
    input n20184;
    input n20183;
    output [7:0]dout_rb;
    output [7:0]page_ptr2;
    input \din_rd_7__N_695[3] ;
    input \din_rd_7__N_695[6] ;
    output \din_rd1[1] ;
    output \din_rd1[2] ;
    output \din_rd1[3] ;
    output \din_rd1[5] ;
    output \din_rd1[6] ;
    input prom_ready;
    output rcsr;
    input \genblk1.instr_mem_out[17] ;
    input n20202;
    input D_ADR_O_31__N_625;
    output \D_ADR_O_31__N_499[31] ;
    output \ext_addr[7] ;
    output n5718;
    input ext_mem_ready_N_631;
    input n18961;
    output n20104;
    output ext_mem_wr;
    output internal_sp_dout_7__N_550;
    input n20105;
    input n20182;
    input n20129;
    output n882;
    input n18585;
    input \genblk1.instr_mem_out[9] ;
    input n20138;
    input \genblk1.instr_mem_out[8] ;
    input n18156;
    input n58;
    input \SHAREDBUS_ADR_I[16] ;
    input n20062;
    output n96;
    input n56;
    input \SHAREDBUS_ADR_I[18] ;
    output n94;
    output ie_nxt_N_984;
    input n21;
    output n3;
    input n1;
    output n16632;
    input n15;
    input \ext_io_din[7] ;
    input \ext_io_din[6] ;
    input \ext_io_din[4] ;
    input \ext_io_din[3] ;
    input \ext_io_din[0] ;
    output n20198;
    output data_cyc;
    output n20201;
    output n18499;
    output n18370;
    output n14;
    input n5487;
    output \im[1] ;
    output \im[2] ;
    output \im[3] ;
    output \im[5] ;
    output \im[6] ;
    input core_rst_n;
    input \selected[1] ;
    input n20054;
    output interalClock_enable_59;
    input n20151;
    input n20153;
    input n20154;
    input n20160;
    input \genblk1.instr_mem_out[0] ;
    input \genblk1.instr_mem_out[1] ;
    input n20181;
    output n20111;
    output \ext_addr[10] ;
    input n7029;
    output n7030;
    output \ext_addr[9] ;
    input n18277;
    input n20142;
    input \genblk1.instr_mem_out[13] ;
    input n18946;
    input update_z_N_735;
    output n20112;
    output n20114;
    input n20192;
    input n20195;
    input \genblk1.instr_mem_out[16] ;
    input n20196;
    input \genblk1.instr_mem_out[14] ;
    input \genblk1.instr_mem_out[15] ;
    input n21084;
    output n20194;
    output carry_flag;
    output addr_cyc;
    output zero_flag;
    output [10:0]prom_addr_10__N_822;
    input n20190;
    output ext_addr_cyc;
    input n19500;
    output prom_enable;
    input ext_mem_ready;
    input \genblk1.instr_mem_out[12] ;
    input n8273;
    input n18;
    output ext_addr_nxt_7__N_949;
    output [7:0]LM8D_DAT_O;
    output \ext_addr[0] ;
    input \ext_addr_nxt[0] ;
    output ext_io_wr;
    output ext_io_rd;
    output ext_mem_rd;
    output \ext_addr[1] ;
    input \ext_addr_nxt[1] ;
    output \ext_addr[2] ;
    input \ext_addr_nxt[2] ;
    output \ext_addr[3] ;
    input \ext_addr_nxt[3] ;
    output \ext_addr[4] ;
    input \ext_addr_nxt[4] ;
    output \ext_addr[5] ;
    output \ext_addr[6] ;
    input [7:0]data_rb_int;
    input n20136;
    input n20127;
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    wire [7:0]din_rd;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(112[30:36])
    
    wire n20109;
    wire [7:0]din_rd1;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(112[38:45])
    wire [7:0]dout_alu;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(103[30:38])
    
    wire wren_alu_rd, wren_alu_rd_N_705, wren_il_rd, wren_il_rd_N_717, 
        GND_net;
    wire [7:0]dout_rd;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(99[30:37])
    
    wire wren_rd;
    wire [7:0]din_rd_7__N_695;
    
    wire page_ptr2_7__N_691, n876, n875, n879, n878, ro, ext_cycle_type;
    wire [7:0]dout_csr;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(101[22:30])
    
    wire n872, n20158, n20157, n45;
    wire [7:0]im;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(119[34:36])
    
    wire ie, n18328, im_nxt_7__N_969, interalClock_enable_44, n21074, 
        carry_flag_nxt_N_915, carry_flag_async, carry_flag_nxt_N_914, 
        n4641, zero_flag_nxt_N_911, zero_flag_async, zero_flag_nxt_N_910, 
        n4637, n18387, update_c, n20172, ext_io_rd_nxt, ext_mem_rd_nxt, 
        ext_addr_nxt_7__N_951, ext_io_wr_nxt, ext_mem_wr_nxt, n27, br_enb_nxt_N_916, 
        iret, update_z, n20193, n20126, n20125, n20189, n20152, 
        n20147, n19522, n3_adj_2121, n20130, cout_alu, n8581;
    
    FD1P3DX page_ptr3_i0_i0 (.D(din_rd[0]), .SP(page_ptr3_7__N_693), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr3[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(373[16] 376[39])
    defparam page_ptr3_i0_i0.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i0 (.D(din_rd[0]), .SP(page_ptr1_7__N_689), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr1[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i0.GSR = "DISABLED";
    LUT4 i42_3_lut_4_lut (.A(n20109), .B(n20110), .C(internal_sp_dout[5]), 
         .D(n23), .Z(n7)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam i42_3_lut_4_lut.init = 16'hf780;
    FD1S3DX din_rd1_i0 (.D(dout_alu[0]), .CK(interalClock), .CD(n20162), 
            .Q(din_rd1[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i0.GSR = "DISABLED";
    FD1S3DX wren_alu_rd_87 (.D(wren_alu_rd_N_705), .CK(interalClock), .CD(n20162), 
            .Q(wren_alu_rd)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(625[15] 630[13])
    defparam wren_alu_rd_87.GSR = "DISABLED";
    FD1S3DX wren_il_rd_88 (.D(wren_il_rd_N_717), .CK(interalClock), .CD(n20162), 
            .Q(wren_il_rd)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(625[15] 630[13])
    defparam wren_il_rd_88.GSR = "DISABLED";
    pmi_distributed_dpramMbnonen853292a5343 pmi_distributed_dpramMachXO2binarynonenoreg8532 (.WrAddress({n20188, 
            \instr[11] , \instr[10] , \instr[9] , \instr[8] }), .Data({din_rd[7:6], 
            \din_rd[5] , din_rd[4:3], \din_rd[2] , \din_rd[1] , din_rd[0]}), 
            .RdAddress({n20188, \instr[11] , \instr[10] , \instr[9] , 
            \instr[8] }), .Q({dout_rd}), .WrClock(interalClock), .WE(wren_rd), 
            .WrClockEn(VCC_net), .RdClock(interalClock), .RdClockEn(VCC_net), 
            .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(187[10] 209[26])
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532.module_type = "pmi_distributed_dpram";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532.pmi_family = "MachXO2";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532.pmi_init_file_format = "binary";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532.pmi_init_file = "none";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532.pmi_regmode = "noreg";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532.pmi_data_width = 8;
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532.pmi_addr_width = 5;
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532.pmi_addr_depth = 32;
    pmi_distributed_dpramMbnonen853292a5343_c pmi_distributed_dpramMachXO2binarynonenoreg8532_98 (.WrAddress({n20188, 
            \instr[11] , \instr[10] , \instr[9] , \instr[8] }), .Data({din_rd[7:6], 
            \din_rd[5] , din_rd[4:3], \din_rd[2] , \din_rd[1] , din_rd[0]}), 
            .RdAddress({n20187, n20186, n20185, n20184, n20183}), 
            .Q({dout_rb}), .WrClock(interalClock), .WE(wren_rd), .WrClockEn(VCC_net), 
            .RdClock(interalClock), .RdClockEn(VCC_net), .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(187[10] 209[26])
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532_98.module_type = "pmi_distributed_dpram";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532_98.pmi_family = "MachXO2";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532_98.pmi_init_file_format = "binary";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532_98.pmi_init_file = "none";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532_98.pmi_regmode = "noreg";
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532_98.pmi_data_width = 8;
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532_98.pmi_addr_width = 5;
    defparam pmi_distributed_dpramMachXO2binarynonenoreg8532_98.pmi_addr_depth = 32;
    LUT4 mux_75_i1_3_lut_4_lut (.A(n20109), .B(n20110), .C(internal_sp_dout[0]), 
         .D(din_rd1[0]), .Z(din_rd_7__N_695[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_75_i1_3_lut_4_lut.init = 16'hf780;
    FD1P3DX page_ptr2_i0_i0 (.D(din_rd[0]), .SP(page_ptr2_7__N_691), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr2[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam page_ptr2_i0_i0.GSR = "DISABLED";
    LUT4 mux_359_i5_3_lut_4_lut (.A(n20109), .B(n20110), .C(internal_sp_dout[4]), 
         .D(din_rd_7__N_695[4]), .Z(n876)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_359_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_359_i4_3_lut_4_lut (.A(n20109), .B(n20110), .C(internal_sp_dout[3]), 
         .D(\din_rd_7__N_695[3] ), .Z(n875)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_359_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_359_i8_3_lut_4_lut (.A(n20109), .B(n20110), .C(internal_sp_dout[7]), 
         .D(din_rd_7__N_695[7]), .Z(n879)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_359_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_359_i7_3_lut_4_lut (.A(n20109), .B(n20110), .C(internal_sp_dout[6]), 
         .D(\din_rd_7__N_695[6] ), .Z(n878)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_359_i7_3_lut_4_lut.init = 16'hf780;
    FD1P3DX page_ptr3_i0_i1 (.D(\din_rd[1] ), .SP(page_ptr3_7__N_693), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr3[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(373[16] 376[39])
    defparam page_ptr3_i0_i1.GSR = "DISABLED";
    FD1P3DX page_ptr3_i0_i2 (.D(\din_rd[2] ), .SP(page_ptr3_7__N_693), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr3[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(373[16] 376[39])
    defparam page_ptr3_i0_i2.GSR = "DISABLED";
    FD1P3DX page_ptr3_i0_i3 (.D(din_rd[3]), .SP(page_ptr3_7__N_693), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr3[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(373[16] 376[39])
    defparam page_ptr3_i0_i3.GSR = "DISABLED";
    FD1P3DX page_ptr3_i0_i4 (.D(din_rd[4]), .SP(page_ptr3_7__N_693), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr3[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(373[16] 376[39])
    defparam page_ptr3_i0_i4.GSR = "DISABLED";
    FD1P3DX page_ptr3_i0_i5 (.D(\din_rd[5] ), .SP(page_ptr3_7__N_693), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr3[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(373[16] 376[39])
    defparam page_ptr3_i0_i5.GSR = "DISABLED";
    FD1P3DX page_ptr3_i0_i6 (.D(din_rd[6]), .SP(page_ptr3_7__N_693), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr3[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(373[16] 376[39])
    defparam page_ptr3_i0_i6.GSR = "DISABLED";
    FD1P3DX page_ptr3_i0_i7 (.D(din_rd[7]), .SP(page_ptr3_7__N_693), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr3[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(373[16] 376[39])
    defparam page_ptr3_i0_i7.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i1 (.D(\din_rd[1] ), .SP(page_ptr1_7__N_689), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr1[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i1.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i2 (.D(\din_rd[2] ), .SP(page_ptr1_7__N_689), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr1[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i2.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i3 (.D(din_rd[3]), .SP(page_ptr1_7__N_689), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr1[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i3.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i4 (.D(din_rd[4]), .SP(page_ptr1_7__N_689), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr1[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i4.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i5 (.D(\din_rd[5] ), .SP(page_ptr1_7__N_689), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr1[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i5.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i6 (.D(din_rd[6]), .SP(page_ptr1_7__N_689), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr1[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i6.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i7 (.D(din_rd[7]), .SP(page_ptr1_7__N_689), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr1[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i7.GSR = "DISABLED";
    FD1S3DX din_rd1_i1 (.D(dout_alu[1]), .CK(interalClock), .CD(n20162), 
            .Q(\din_rd1[1] )) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i1.GSR = "DISABLED";
    FD1S3DX din_rd1_i2 (.D(dout_alu[2]), .CK(interalClock), .CD(n20162), 
            .Q(\din_rd1[2] )) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i2.GSR = "DISABLED";
    FD1S3DX din_rd1_i3 (.D(dout_alu[3]), .CK(interalClock), .CD(n20162), 
            .Q(\din_rd1[3] )) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i3.GSR = "DISABLED";
    FD1S3DX din_rd1_i4 (.D(dout_alu[4]), .CK(interalClock), .CD(n20162), 
            .Q(din_rd1[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i4.GSR = "DISABLED";
    FD1S3DX din_rd1_i5 (.D(dout_alu[5]), .CK(interalClock), .CD(n20162), 
            .Q(\din_rd1[5] )) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i5.GSR = "DISABLED";
    FD1S3DX din_rd1_i6 (.D(dout_alu[6]), .CK(interalClock), .CD(n20162), 
            .Q(\din_rd1[6] )) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i6.GSR = "DISABLED";
    FD1S3DX din_rd1_i7 (.D(dout_alu[7]), .CK(interalClock), .CD(n20162), 
            .Q(din_rd1[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i7.GSR = "DISABLED";
    FD1P3DX page_ptr2_i0_i1 (.D(\din_rd[1] ), .SP(page_ptr2_7__N_691), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr2[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam page_ptr2_i0_i1.GSR = "DISABLED";
    FD1P3DX page_ptr2_i0_i2 (.D(\din_rd[2] ), .SP(page_ptr2_7__N_691), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr2[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam page_ptr2_i0_i2.GSR = "DISABLED";
    FD1P3DX page_ptr2_i0_i3 (.D(din_rd[3]), .SP(page_ptr2_7__N_691), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr2[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam page_ptr2_i0_i3.GSR = "DISABLED";
    FD1P3DX page_ptr2_i0_i4 (.D(din_rd[4]), .SP(page_ptr2_7__N_691), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr2[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam page_ptr2_i0_i4.GSR = "DISABLED";
    FD1P3DX page_ptr2_i0_i5 (.D(\din_rd[5] ), .SP(page_ptr2_7__N_691), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr2[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam page_ptr2_i0_i5.GSR = "DISABLED";
    FD1P3DX page_ptr2_i0_i6 (.D(din_rd[6]), .SP(page_ptr2_7__N_691), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr2[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam page_ptr2_i0_i6.GSR = "DISABLED";
    FD1P3DX page_ptr2_i0_i7 (.D(din_rd[7]), .SP(page_ptr2_7__N_691), .CK(interalClock), 
            .CD(n20162), .Q(page_ptr2[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam page_ptr2_i0_i7.GSR = "DISABLED";
    LUT4 prom_ready_bdd_4_lut (.A(prom_ready), .B(rcsr), .C(ro), .D(\genblk1.instr_mem_out[17] ), 
         .Z(wren_alu_rd_N_705)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam prom_ready_bdd_4_lut.init = 16'hfdff;
    LUT4 i9996_3_lut_4_lut (.A(n20202), .B(ext_cycle_type), .C(page_ptr3[7]), 
         .D(D_ADR_O_31__N_625), .Z(\D_ADR_O_31__N_499[31] )) /* synthesis lut_function=(A (C+(D))+!A (B (D)+!B (C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(156[8:40])
    defparam i9996_3_lut_4_lut.init = 16'hffb0;
    LUT4 i2880_2_lut_3_lut_4_lut (.A(n20202), .B(ext_cycle_type), .C(\ext_addr[7] ), 
         .D(page_ptr1[0]), .Z(n5718)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(156[8:40])
    defparam i2880_2_lut_3_lut_4_lut.init = 16'hfbf0;
    LUT4 ext_mem_ready_N_631_I_0_2_lut_rep_245_2_lut_3_lut_4_lut (.A(n20202), 
         .B(ext_cycle_type), .C(ext_mem_ready_N_631), .D(n18961), .Z(n20104)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(156[8:40])
    defparam ext_mem_ready_N_631_I_0_2_lut_rep_245_2_lut_3_lut_4_lut.init = 16'h00b0;
    LUT4 ext_mem_wr_I_0_2_lut_3_lut_4_lut (.A(n20202), .B(ext_cycle_type), 
         .C(ext_mem_wr), .D(n18961), .Z(internal_sp_dout_7__N_550)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(156[8:40])
    defparam ext_mem_wr_I_0_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 i16332_4_lut (.A(dout_csr[0]), .B(din_rd_7__N_695[0]), .C(n20105), 
         .D(rcsr), .Z(n872)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam i16332_4_lut.init = 16'hcacc;
    LUT4 external_sp_bdd_4_lut_16953 (.A(n20110), .B(n20182), .C(n20129), 
         .D(ext_cycle_type), .Z(n882)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam external_sp_bdd_4_lut_16953.init = 16'h7000;
    LUT4 i1_3_lut_4_lut (.A(n20158), .B(n20157), .C(n18585), .D(n20188), 
         .Z(n45)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+(C (D)+!C !(D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(626[32:55])
    defparam i1_3_lut_4_lut.init = 16'h0bb0;
    LUT4 dout_csr_7__I_0_i1_4_lut (.A(im[0]), .B(ie), .C(n20184), .D(n20183), 
         .Z(dout_csr[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(653[22] 655[34])
    defparam dout_csr_7__I_0_i1_4_lut.init = 16'hcac0;
    LUT4 i2_3_lut (.A(\genblk1.instr_mem_out[9] ), .B(n20138), .C(\genblk1.instr_mem_out[8] ), 
         .Z(page_ptr2_7__N_691)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(657[22:61])
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i1_4_lut (.A(n18156), .B(n18328), .C(\genblk1.instr_mem_out[8] ), 
         .D(\genblk1.instr_mem_out[9] ), .Z(im_nxt_7__N_969)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(659[22:39])
    defparam i1_4_lut.init = 16'h0040;
    PFUMX i8724 (.BLUT(n58), .ALUT(\SHAREDBUS_ADR_I[16] ), .C0(n20062), 
          .Z(n96));
    PFUMX i8721 (.BLUT(n56), .ALUT(\SHAREDBUS_ADR_I[18] ), .C0(n20062), 
          .Z(n94));
    LUT4 i1_4_lut_adj_112 (.A(n18156), .B(n18328), .C(\genblk1.instr_mem_out[8] ), 
         .D(\genblk1.instr_mem_out[9] ), .Z(ie_nxt_N_984)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(659[22:39])
    defparam i1_4_lut_adj_112.init = 16'h0400;
    LUT4 i40_3_lut_4_lut (.A(n20109), .B(n20110), .C(internal_sp_dout[2]), 
         .D(n21), .Z(n3)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam i40_3_lut_4_lut.init = 16'hf780;
    LUT4 i6_3_lut_4_lut (.A(n20109), .B(n20110), .C(internal_sp_dout[1]), 
         .D(n1), .Z(n16632)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam i6_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_75_i8_4_lut (.A(din_rd1[7]), .B(n15), .C(rcsr), .D(im[7]), 
         .Z(din_rd_7__N_695[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(650[12:29])
    defparam mux_75_i8_4_lut.init = 16'hca0a;
    LUT4 mux_75_i5_4_lut (.A(din_rd1[4]), .B(n15), .C(rcsr), .D(im[4]), 
         .Z(din_rd_7__N_695[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(650[12:29])
    defparam mux_75_i5_4_lut.init = 16'hca0a;
    PFUMX din_rd_7__I_0_i8 (.BLUT(n879), .ALUT(\ext_io_din[7] ), .C0(n882), 
          .Z(din_rd[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i7 (.BLUT(n878), .ALUT(\ext_io_din[6] ), .C0(n882), 
          .Z(din_rd[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i5 (.BLUT(n876), .ALUT(\ext_io_din[4] ), .C0(n882), 
          .Z(din_rd[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i4 (.BLUT(n875), .ALUT(\ext_io_din[3] ), .C0(n882), 
          .Z(din_rd[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i1 (.BLUT(n872), .ALUT(\ext_io_din[0] ), .C0(n882), 
          .Z(din_rd[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    LUT4 wren_alu_rd_I_0_2_lut_rep_339 (.A(wren_alu_rd), .B(wren_il_rd), 
         .Z(n20198)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(657[23:49])
    defparam wren_alu_rd_I_0_2_lut_rep_339.init = 16'heeee;
    LUT4 wren_rd_I_0_2_lut_3_lut (.A(wren_alu_rd), .B(wren_il_rd), .C(data_cyc), 
         .Z(wren_rd)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(657[23:49])
    defparam wren_rd_I_0_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_rep_342 (.A(page_ptr2[0]), .B(page_ptr2[1]), .Z(n20201)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam i1_2_lut_rep_342.init = 16'heeee;
    LUT4 i15737_2_lut_3_lut (.A(page_ptr2[0]), .B(page_ptr2[1]), .C(page_ptr1[1]), 
         .Z(n18499)) /* synthesis lut_function=(A+(B+(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam i15737_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(page_ptr2[0]), .B(page_ptr2[1]), .C(page_ptr1[7]), 
         .D(page_ptr1[6]), .Z(n18370)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(361[16] 364[39])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(page_ptr3[6]), .B(page_ptr2[2]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    \lm8_interrupt(INTERRUPTS=8)  u1_lm8_interrupt (.im({im[7], \im[6] , 
            \im[5] , im[4], \im[3] , \im[2] , \im[1] , im[0]}), 
            .interalClock(interalClock), .im_nxt_7__N_969(im_nxt_7__N_969), 
            .n20162(n20162), .dout_rb({dout_rb}), .ie(ie), .interalClock_enable_44(interalClock_enable_44), 
            .n5487(n5487), .core_rst_n(core_rst_n), .\selected[1] (\selected[1] ), 
            .n20054(n20054), .interalClock_enable_59(interalClock_enable_59)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(328[10] 342[3])
    \lm8_idec(PROM_AW=32'sb01011)  u1_lm8_idec (.n21074(n21074), .carry_flag_nxt_N_915(carry_flag_nxt_N_915), 
            .n20151(n20151), .carry_flag_async(carry_flag_async), .carry_flag_nxt_N_914(carry_flag_nxt_N_914), 
            .n4641(n4641), .n20153(n20153), .zero_flag_nxt_N_911(zero_flag_nxt_N_911), 
            .n20154(n20154), .zero_flag_async(zero_flag_async), .zero_flag_nxt_N_910(zero_flag_nxt_N_910), 
            .n4637(n4637), .n20202(n20202), .n18387(n18387), .n20160(n20160), 
            .update_c(update_c), .prom_ready(prom_ready), .\genblk1.instr_mem_out[0] (\genblk1.instr_mem_out[0] ), 
            .\genblk1.instr_mem_out[1] (\genblk1.instr_mem_out[1] ), .n20182(n20182), 
            .ext_cycle_type(ext_cycle_type), .n20172(n20172), .n20129(n20129), 
            .ext_io_rd_nxt(ext_io_rd_nxt), .ext_mem_rd_nxt(ext_mem_rd_nxt), 
            .data_cyc(data_cyc), .n18328(n18328), .ie_nxt_N_984(ie_nxt_N_984), 
            .interalClock_enable_44(interalClock_enable_44), .n20181(n20181), 
            .\page_ptr1[0] (page_ptr1[0]), .n20111(n20111), .\page_ptr1[2] (page_ptr1[2]), 
            .\ext_addr[10] (\ext_addr[10] ), .n7029(n7029), .n7030(n7030), 
            .\page_ptr1[1] (page_ptr1[1]), .\ext_addr[9] (\ext_addr[9] ), 
            .n18961(n18961), .n20110(n20110), .ext_addr_nxt_7__N_951(ext_addr_nxt_7__N_951), 
            .n18277(n18277), .ext_io_wr_nxt(ext_io_wr_nxt), .n20109(n20109), 
            .ext_mem_wr_nxt(ext_mem_wr_nxt), .rcsr(rcsr), .n20142(n20142), 
            .\genblk1.instr_mem_out[13] (\genblk1.instr_mem_out[13] ), .n20188(n20188), 
            .n27(n27), .n45(n45), .n18946(n18946), .br_enb_nxt_N_916(br_enb_nxt_N_916), 
            .iret(iret), .ro(ro), .update_z_N_735(update_z_N_735), .update_z(update_z), 
            .n20112(n20112), .wren_il_rd_N_717(wren_il_rd_N_717), .n20114(n20114), 
            .n20193(n20193), .n20192(n20192), .n20195(n20195), .\genblk1.instr_mem_out[16] (\genblk1.instr_mem_out[16] ), 
            .n20126(n20126), .n20125(n20125), .n20196(n20196), .\genblk1.instr_mem_out[14] (\genblk1.instr_mem_out[14] ), 
            .\genblk1.instr_mem_out[17] (\genblk1.instr_mem_out[17] ), .n20189(n20189), 
            .n20152(n20152), .\genblk1.instr_mem_out[15] (\genblk1.instr_mem_out[15] ), 
            .n20158(n20158), .n21084(n21084), .n20147(n20147), .n19522(n19522), 
            .n3(n3_adj_2121), .n20194(n20194), .n20157(n20157), .n20130(n20130)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(167[10] 219[9])
    \lm8_flow_cntl(PGM_STACK_AW=32'sb0100,PROM_AW=32'sb01011,FAMILY_NAME="MachXO2")  u1_lm8_flow_cntl (.carry_flag(carry_flag), 
            .interalClock(interalClock), .n20162(n20162), .n4641(n4641), 
            .addr_cyc(addr_cyc), .zero_flag(zero_flag), .n4637(n4637), 
            .data_cyc(data_cyc), .prom_addr_10__N_822({prom_addr_10__N_822}), 
            .n20190(n20190), .ext_addr_cyc(ext_addr_cyc), .core_rst_n(core_rst_n), 
            .VCC_net(VCC_net), .zero_flag_async(zero_flag_async), .carry_flag_async(carry_flag_async), 
            .br_enb_nxt_N_916(br_enb_nxt_N_916), .cout_alu(cout_alu), .n8581(n8581), 
            .update_c(update_c), .carry_flag_nxt_N_915(carry_flag_nxt_N_915), 
            .n19500(n19500), .n20125(n20125), .n20126(n20126), .prom_enable(prom_enable), 
            .n20158(n20158), .n20142(n20142), .n20188(n20188), .zero_flag_nxt_N_911(zero_flag_nxt_N_911), 
            .iret(iret), .zero_flag_nxt_N_910(zero_flag_nxt_N_910), .update_z(update_z), 
            .din_rd1({din_rd1[7], \din_rd1[6] , \din_rd1[5] , din_rd1[4], 
            \din_rd1[3] , \din_rd1[2] , \din_rd1[1] , din_rd1[0]}), 
            .n20202(n20202), .n20182(n20182), .n20183(n20183), .n20184(n20184), 
            .n20185(n20185), .n20186(n20186), .n20187(n20187), .\instr[8] (\instr[8] ), 
            .\instr[9] (\instr[9] ), .\instr[10] (\instr[10] ), .n20181(n20181), 
            .ext_cycle_type(ext_cycle_type), .ext_mem_ready(ext_mem_ready), 
            .prom_ready(prom_ready), .\genblk1.instr_mem_out[12] (\genblk1.instr_mem_out[12] ), 
            .\genblk1.instr_mem_out[13] (\genblk1.instr_mem_out[13] ), .carry_flag_nxt_N_914(carry_flag_nxt_N_914), 
            .n27(n27), .n8273(n8273), .n18(n18)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(250[10] 294[3])
    lm8_io_cntl u1_lm8_cntl_u1 (.\dout_rb[5] (dout_rb[5]), .ext_addr_nxt_7__N_949(ext_addr_nxt_7__N_949), 
            .\dout_rb[6] (dout_rb[6]), .LM8D_DAT_O({LM8D_DAT_O}), .interalClock(interalClock), 
            .n20162(n20162), .dout_rd({dout_rd}), .\ext_addr[0] (\ext_addr[0] ), 
            .\ext_addr_nxt[0] (\ext_addr_nxt[0] ), .ext_io_wr(ext_io_wr), 
            .ext_io_wr_nxt(ext_io_wr_nxt), .ext_io_rd(ext_io_rd), .ext_io_rd_nxt(ext_io_rd_nxt), 
            .ext_mem_wr(ext_mem_wr), .ext_mem_wr_nxt(ext_mem_wr_nxt), .ext_mem_rd(ext_mem_rd), 
            .ext_mem_rd_nxt(ext_mem_rd_nxt), .\dout_rb[7] (dout_rb[7]), 
            .\ext_addr[1] (\ext_addr[1] ), .\ext_addr_nxt[1] (\ext_addr_nxt[1] ), 
            .\ext_addr[2] (\ext_addr[2] ), .\ext_addr_nxt[2] (\ext_addr_nxt[2] ), 
            .\ext_addr[3] (\ext_addr[3] ), .\ext_addr_nxt[3] (\ext_addr_nxt[3] ), 
            .\ext_addr[4] (\ext_addr[4] ), .\ext_addr_nxt[4] (\ext_addr_nxt[4] ), 
            .\ext_addr[5] (\ext_addr[5] ), .\ext_addr[6] (\ext_addr[6] ), 
            .\ext_addr[7] (\ext_addr[7] ), .addr_cyc(addr_cyc), .ext_addr_cyc(ext_addr_cyc), 
            .n20172(n20172), .ext_addr_nxt_7__N_951(ext_addr_nxt_7__N_951), 
            .n20114(n20114), .n20151(n20151), .n21074(n21074)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(300[16] 323[8])
    \lm8_alu(FAMILY_NAME="MachXO2")  u1_lm8_alu (.dout_alu({dout_alu}), .data_rb_int({data_rb_int}), 
            .dout_rd({dout_rd}), .n20130(n20130), .cout_alu(cout_alu), 
            .carry_flag(carry_flag), .dout_rb({dout_rb}), .prom_ready(prom_ready), 
            .\genblk1.instr_mem_out[0] (\genblk1.instr_mem_out[0] ), .n20147(n20147), 
            .n3(n3_adj_2121), .n20136(n20136), .n21074(n21074), .\genblk1.instr_mem_out[1] (\genblk1.instr_mem_out[1] ), 
            .n20189(n20189), .\genblk1.instr_mem_out[15] (\genblk1.instr_mem_out[15] ), 
            .n20127(n20127), .n20202(n20202), .n8581(n8581), .n20196(n20196), 
            .n20195(n20195), .n20193(n20193), .n20192(n20192), .n20190(n20190), 
            .n20194(n20194), .n21084(n21084), .n20160(n20160), .n18387(n18387), 
            .n20152(n20152), .n19522(n19522), .n20129(n20129)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(225[11] 239[3])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module \lm8_interrupt(INTERRUPTS=8) 
//

module \lm8_interrupt(INTERRUPTS=8)  (im, interalClock, im_nxt_7__N_969, 
            n20162, dout_rb, ie, interalClock_enable_44, n5487, core_rst_n, 
            \selected[1] , n20054, interalClock_enable_59) /* synthesis syn_module_defined=1 */ ;
    output [7:0]im;
    input interalClock;
    input im_nxt_7__N_969;
    output n20162;
    input [7:0]dout_rb;
    output ie;
    input interalClock_enable_44;
    input n5487;
    input core_rst_n;
    input \selected[1] ;
    input n20054;
    output interalClock_enable_59;
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    
    FD1P3BX im_i0_i0 (.D(dout_rb[0]), .SP(im_nxt_7__N_969), .CK(interalClock), 
            .PD(n20162), .Q(im[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i0.GSR = "DISABLED";
    FD1P3DX ie_30 (.D(n5487), .SP(interalClock_enable_44), .CK(interalClock), 
            .CD(n20162), .Q(ie));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam ie_30.GSR = "DISABLED";
    FD1P3BX im_i0_i1 (.D(dout_rb[1]), .SP(im_nxt_7__N_969), .CK(interalClock), 
            .PD(n20162), .Q(im[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i1.GSR = "DISABLED";
    FD1P3BX im_i0_i2 (.D(dout_rb[2]), .SP(im_nxt_7__N_969), .CK(interalClock), 
            .PD(n20162), .Q(im[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i2.GSR = "DISABLED";
    FD1P3BX im_i0_i3 (.D(dout_rb[3]), .SP(im_nxt_7__N_969), .CK(interalClock), 
            .PD(n20162), .Q(im[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i3.GSR = "DISABLED";
    FD1P3BX im_i0_i4 (.D(dout_rb[4]), .SP(im_nxt_7__N_969), .CK(interalClock), 
            .PD(n20162), .Q(im[4])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i4.GSR = "DISABLED";
    FD1P3BX im_i0_i5 (.D(dout_rb[5]), .SP(im_nxt_7__N_969), .CK(interalClock), 
            .PD(n20162), .Q(im[5])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i5.GSR = "DISABLED";
    FD1P3BX im_i0_i6 (.D(dout_rb[6]), .SP(im_nxt_7__N_969), .CK(interalClock), 
            .PD(n20162), .Q(im[6])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i6.GSR = "DISABLED";
    FD1P3BX im_i0_i7 (.D(dout_rb[7]), .SP(im_nxt_7__N_969), .CK(interalClock), 
            .PD(n20162), .Q(im[7])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i7.GSR = "DISABLED";
    LUT4 core_rst_n_I_0_1_lut_rep_303 (.A(core_rst_n), .Z(n20162)) /* synthesis lut_function=(!(A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(392[12:30])
    defparam core_rst_n_I_0_1_lut_rep_303.init = 16'h5555;
    LUT4 i1770_2_lut_3_lut_3_lut (.A(core_rst_n), .B(\selected[1] ), .C(n20054), 
         .Z(interalClock_enable_59)) /* synthesis lut_function=((B (C))+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(392[12:30])
    defparam i1770_2_lut_3_lut_3_lut.init = 16'hd5d5;
    
endmodule
//
// Verilog Description of module \lm8_idec(PROM_AW=32'sb01011) 
//

module \lm8_idec(PROM_AW=32'sb01011)  (n21074, carry_flag_nxt_N_915, n20151, 
            carry_flag_async, carry_flag_nxt_N_914, n4641, n20153, zero_flag_nxt_N_911, 
            n20154, zero_flag_async, zero_flag_nxt_N_910, n4637, n20202, 
            n18387, n20160, update_c, prom_ready, \genblk1.instr_mem_out[0] , 
            \genblk1.instr_mem_out[1] , n20182, ext_cycle_type, n20172, 
            n20129, ext_io_rd_nxt, ext_mem_rd_nxt, data_cyc, n18328, 
            ie_nxt_N_984, interalClock_enable_44, n20181, \page_ptr1[0] , 
            n20111, \page_ptr1[2] , \ext_addr[10] , n7029, n7030, 
            \page_ptr1[1] , \ext_addr[9] , n18961, n20110, ext_addr_nxt_7__N_951, 
            n18277, ext_io_wr_nxt, n20109, ext_mem_wr_nxt, rcsr, n20142, 
            \genblk1.instr_mem_out[13] , n20188, n27, n45, n18946, 
            br_enb_nxt_N_916, iret, ro, update_z_N_735, update_z, 
            n20112, wren_il_rd_N_717, n20114, n20193, n20192, n20195, 
            \genblk1.instr_mem_out[16] , n20126, n20125, n20196, \genblk1.instr_mem_out[14] , 
            \genblk1.instr_mem_out[17] , n20189, n20152, \genblk1.instr_mem_out[15] , 
            n20158, n21084, n20147, n19522, n3, n20194, n20157, 
            n20130) /* synthesis syn_module_defined=1 */ ;
    output n21074;
    input carry_flag_nxt_N_915;
    input n20151;
    output carry_flag_async;
    input carry_flag_nxt_N_914;
    output n4641;
    input n20153;
    input zero_flag_nxt_N_911;
    input n20154;
    output zero_flag_async;
    input zero_flag_nxt_N_910;
    output n4637;
    input n20202;
    input n18387;
    input n20160;
    output update_c;
    input prom_ready;
    input \genblk1.instr_mem_out[0] ;
    input \genblk1.instr_mem_out[1] ;
    input n20182;
    output ext_cycle_type;
    input n20172;
    input n20129;
    output ext_io_rd_nxt;
    output ext_mem_rd_nxt;
    input data_cyc;
    output n18328;
    input ie_nxt_N_984;
    output interalClock_enable_44;
    input n20181;
    input \page_ptr1[0] ;
    output n20111;
    input \page_ptr1[2] ;
    output \ext_addr[10] ;
    input n7029;
    output n7030;
    input \page_ptr1[1] ;
    output \ext_addr[9] ;
    input n18961;
    output n20110;
    output ext_addr_nxt_7__N_951;
    input n18277;
    output ext_io_wr_nxt;
    output n20109;
    output ext_mem_wr_nxt;
    output rcsr;
    input n20142;
    input \genblk1.instr_mem_out[13] ;
    input n20188;
    output n27;
    input n45;
    input n18946;
    output br_enb_nxt_N_916;
    output iret;
    output ro;
    input update_z_N_735;
    output update_z;
    output n20112;
    output wren_il_rd_N_717;
    output n20114;
    output n20193;
    input n20192;
    input n20195;
    input \genblk1.instr_mem_out[16] ;
    output n20126;
    output n20125;
    input n20196;
    input \genblk1.instr_mem_out[14] ;
    input \genblk1.instr_mem_out[17] ;
    output n20189;
    output n20152;
    input \genblk1.instr_mem_out[15] ;
    output n20158;
    input n21084;
    output n20147;
    output n19522;
    output n3;
    output n20194;
    output n20157;
    output n20130;
    
    
    wire n20116, n20161, n20122, n20132, n20156, test;
    
    LUT4 i10103_3_lut_4_lut_4_lut (.A(n20116), .B(n21074), .C(carry_flag_nxt_N_915), 
         .D(n20151), .Z(carry_flag_async)) /* synthesis lut_function=(A (B (C+(D)))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(200[10:38])
    defparam i10103_3_lut_4_lut_4_lut.init = 16'hd8d0;
    LUT4 i10107_3_lut_4_lut_4_lut (.A(n20116), .B(n21074), .C(carry_flag_nxt_N_914), 
         .D(n20151), .Z(n4641)) /* synthesis lut_function=(A (B (C+(D)))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(200[10:38])
    defparam i10107_3_lut_4_lut_4_lut.init = 16'hd8d0;
    LUT4 i10106_3_lut_4_lut_4_lut (.A(n20116), .B(n20153), .C(zero_flag_nxt_N_911), 
         .D(n20154), .Z(zero_flag_async)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(202[10:38])
    defparam i10106_3_lut_4_lut_4_lut.init = 16'h7270;
    LUT4 i10080_3_lut_4_lut_4_lut (.A(n20116), .B(n20153), .C(zero_flag_nxt_N_910), 
         .D(n20154), .Z(n4637)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(202[10:38])
    defparam i10080_3_lut_4_lut_4_lut.init = 16'h7270;
    LUT4 i1_4_lut (.A(n20202), .B(n18387), .C(n20161), .D(n20160), .Z(update_c)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(262[13:94])
    defparam i1_4_lut.init = 16'hcecc;
    LUT4 i10229_3_lut_rep_345 (.A(prom_ready), .B(\genblk1.instr_mem_out[0] ), 
         .C(\genblk1.instr_mem_out[1] ), .Z(n21074)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i10229_3_lut_rep_345.init = 16'ha8a8;
    LUT4 ext_io_rd_nxt_I_0_2_lut_3_lut_4_lut (.A(n20182), .B(ext_cycle_type), 
         .C(n20172), .D(n20129), .Z(ext_io_rd_nxt)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam ext_io_rd_nxt_I_0_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 ext_mem_rd_nxt_I_0_2_lut_3_lut_4_lut (.A(n20182), .B(ext_cycle_type), 
         .C(n20172), .D(n20129), .Z(ext_mem_rd_nxt)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam ext_mem_rd_nxt_I_0_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(n20182), .B(n20122), .C(n20154), .D(data_cyc), 
         .Z(n18328)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:46])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut (.A(n20182), .B(n20122), .C(n20202), .D(ie_nxt_N_984), 
         .Z(interalClock_enable_44)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:46])
    defparam i1_3_lut_4_lut.init = 16'hff08;
    LUT4 i10026_2_lut_rep_252_3_lut_4_lut (.A(n20181), .B(n20132), .C(\page_ptr1[0] ), 
         .D(n20202), .Z(n20111)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i10026_2_lut_rep_252_3_lut_4_lut.init = 16'hf070;
    LUT4 i10024_2_lut_3_lut_4_lut (.A(n20181), .B(n20132), .C(\page_ptr1[2] ), 
         .D(n20202), .Z(\ext_addr[10] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i10024_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i10406_2_lut_3_lut_4_lut (.A(n20181), .B(n20132), .C(n7029), 
         .D(n20202), .Z(n7030)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i10406_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i10025_2_lut_3_lut_4_lut (.A(n20181), .B(n20132), .C(\page_ptr1[1] ), 
         .D(n20202), .Z(\ext_addr[9] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i10025_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i16434_2_lut_rep_251_3_lut_4_lut (.A(n20181), .B(n20132), .C(n18961), 
         .D(n20202), .Z(n20110)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i16434_2_lut_rep_251_3_lut_4_lut.init = 16'hf0f8;
    LUT4 i2698_2_lut_3_lut_4_lut (.A(n20181), .B(n20132), .C(n20202), 
         .D(n20182), .Z(ext_addr_nxt_7__N_951)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i2698_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n20181), .B(n20132), .C(n18277), .D(n20182), 
         .Z(ext_io_wr_nxt)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i2319_2_lut_rep_250_3_lut_4_lut (.A(n20181), .B(n20132), .C(n20129), 
         .D(n20182), .Z(n20109)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i2319_2_lut_rep_250_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_108 (.A(n20181), .B(n20132), .C(n18277), 
         .D(n20182), .Z(ext_mem_wr_nxt)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i1_2_lut_3_lut_4_lut_adj_108.init = 16'h8000;
    LUT4 clri_N_720_I_0_2_lut_3_lut_4_lut (.A(n20181), .B(n20132), .C(n20153), 
         .D(n20182), .Z(rcsr)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:46])
    defparam clri_N_720_I_0_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_109 (.A(n20142), .B(n20156), .C(\genblk1.instr_mem_out[13] ), 
         .D(n20188), .Z(n27)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(239[10:33])
    defparam i1_3_lut_4_lut_adj_109.init = 16'h0888;
    LUT4 i1_4_lut_4_lut (.A(n20142), .B(n20156), .C(n45), .D(n18946), 
         .Z(br_enb_nxt_N_916)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(239[10:33])
    defparam i1_4_lut_4_lut.init = 16'ha0a8;
    LUT4 i1_3_lut_4_lut_adj_110 (.A(n20142), .B(n20156), .C(n20188), .D(n20181), 
         .Z(iret)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(239[10:33])
    defparam i1_3_lut_4_lut_adj_110.init = 16'h0800;
    LUT4 i2_4_lut (.A(n18387), .B(ro), .C(test), .D(update_z_N_735), 
         .Z(update_z)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(262[13:94])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i5487_2_lut_rep_253_3_lut_4_lut (.A(n20160), .B(n20161), .C(n20202), 
         .D(n20181), .Z(n20112)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:33])
    defparam i5487_2_lut_rep_253_3_lut_4_lut.init = 16'h0800;
    LUT4 i15795_2_lut_3_lut_4_lut (.A(n20160), .B(n20161), .C(n20129), 
         .D(n20181), .Z(wren_il_rd_N_717)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:33])
    defparam i15795_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_255_3_lut_4_lut (.A(n20160), .B(n20161), .C(n20182), 
         .D(n20181), .Z(n20114)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:33])
    defparam i1_2_lut_rep_255_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_257_3_lut_4_lut (.A(n20160), .B(n20161), .C(n20182), 
         .D(n20181), .Z(n20116)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:33])
    defparam i1_2_lut_rep_257_3_lut_4_lut.init = 16'h0008;
    LUT4 instr_l1_3_I_0_2_lut_rep_267_3_lut_4_lut (.A(n20193), .B(n20192), 
         .C(n20195), .D(\genblk1.instr_mem_out[16] ), .Z(n20126)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(134[15:39])
    defparam instr_l1_3_I_0_2_lut_rep_267_3_lut_4_lut.init = 16'h2000;
    LUT4 i2_3_lut_4_lut_adj_111 (.A(n20193), .B(n20192), .C(n20160), .D(n20181), 
         .Z(ro)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(134[15:39])
    defparam i2_3_lut_4_lut_adj_111.init = 16'h0020;
    LUT4 i1_2_lut_rep_266_3_lut_4_lut (.A(n20193), .B(n20192), .C(n20195), 
         .D(\genblk1.instr_mem_out[16] ), .Z(n20125)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(133[15:39])
    defparam i1_2_lut_rep_266_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_258_3_lut_4_lut (.A(n20195), .B(n20196), .C(n20181), 
         .D(n20161), .Z(ext_cycle_type)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(128[15:39])
    defparam i1_2_lut_rep_258_3_lut_4_lut.init = 16'h2000;
    LUT4 instr_l1_2_I_0_154_2_lut_3_lut_4_lut (.A(n20195), .B(n20196), .C(n20192), 
         .D(n20193), .Z(test)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(128[15:39])
    defparam instr_l1_2_I_0_154_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_rep_263_3_lut_4_lut (.A(n20195), .B(n20196), .C(n20181), 
         .D(n20161), .Z(n20122)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(128[15:39])
    defparam i1_2_lut_rep_263_3_lut_4_lut.init = 16'h0200;
    LUT4 instr_l1_2_I_0_2_lut_rep_273_3_lut_4_lut (.A(\genblk1.instr_mem_out[14] ), 
         .B(n20193), .C(n20196), .D(n20195), .Z(n20132)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam instr_l1_2_I_0_2_lut_rep_273_3_lut_4_lut.init = 16'h0800;
    LUT4 i10083_2_lut_rep_330 (.A(\genblk1.instr_mem_out[17] ), .B(\genblk1.instr_mem_out[16] ), 
         .Z(n20189)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10083_2_lut_rep_330.init = 16'heeee;
    LUT4 i10484_2_lut_rep_293_3_lut (.A(\genblk1.instr_mem_out[17] ), .B(\genblk1.instr_mem_out[16] ), 
         .C(prom_ready), .Z(n20152)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i10484_2_lut_rep_293_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_rep_334 (.A(\genblk1.instr_mem_out[15] ), .B(prom_ready), 
         .Z(n20193)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam i1_2_lut_rep_334.init = 16'h8888;
    LUT4 instr_15__N_739_I_0_2_lut_rep_299_3_lut_3_lut (.A(\genblk1.instr_mem_out[15] ), 
         .B(prom_ready), .C(\genblk1.instr_mem_out[14] ), .Z(n20158)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam instr_15__N_739_I_0_2_lut_rep_299_3_lut_3_lut.init = 16'h4040;
    LUT4 i2_2_lut_rep_302_3_lut (.A(\genblk1.instr_mem_out[15] ), .B(n21084), 
         .C(\genblk1.instr_mem_out[14] ), .Z(n20161)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam i2_2_lut_rep_302_3_lut.init = 16'h8080;
    LUT4 equal_16_i3_2_lut_rep_288_3_lut_3_lut (.A(\genblk1.instr_mem_out[15] ), 
         .B(prom_ready), .C(\genblk1.instr_mem_out[14] ), .Z(n20147)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam equal_16_i3_2_lut_rep_288_3_lut_3_lut.init = 16'hf7f7;
    LUT4 prom_ready_bdd_3_lut_2_lut (.A(prom_ready), .B(\genblk1.instr_mem_out[14] ), 
         .Z(n19522)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam prom_ready_bdd_3_lut_2_lut.init = 16'h8888;
    LUT4 instr_15__I_0_i3_2_lut_3_lut_3_lut (.A(\genblk1.instr_mem_out[15] ), 
         .B(prom_ready), .C(\genblk1.instr_mem_out[14] ), .Z(n3)) /* synthesis lut_function=(A+!(B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam instr_15__I_0_i3_2_lut_3_lut_3_lut.init = 16'hbfbf;
    LUT4 instr_15__I_0_2_lut_rep_297_3_lut_3_lut (.A(\genblk1.instr_mem_out[15] ), 
         .B(prom_ready), .C(\genblk1.instr_mem_out[14] ), .Z(n20156)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam instr_15__I_0_2_lut_rep_297_3_lut_3_lut.init = 16'h0808;
    LUT4 i10085_2_lut_rep_335 (.A(\genblk1.instr_mem_out[15] ), .B(\genblk1.instr_mem_out[14] ), 
         .Z(n20194)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10085_2_lut_rep_335.init = 16'heeee;
    LUT4 i10308_2_lut_rep_298_3_lut (.A(\genblk1.instr_mem_out[15] ), .B(\genblk1.instr_mem_out[14] ), 
         .C(prom_ready), .Z(n20157)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i10308_2_lut_rep_298_3_lut.init = 16'he0e0;
    LUT4 i16487_3_lut_rep_271_3_lut_4_lut (.A(\genblk1.instr_mem_out[15] ), 
         .B(\genblk1.instr_mem_out[14] ), .C(n20195), .D(n20196), .Z(n20130)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i16487_3_lut_rep_271_3_lut_4_lut.init = 16'h001f;
    
endmodule
//
// Verilog Description of module \lm8_flow_cntl(PGM_STACK_AW=32'sb0100,PROM_AW=32'sb01011,FAMILY_NAME="MachXO2") 
//

module \lm8_flow_cntl(PGM_STACK_AW=32'sb0100,PROM_AW=32'sb01011,FAMILY_NAME="MachXO2")  (carry_flag, 
            interalClock, n20162, n4641, addr_cyc, zero_flag, n4637, 
            data_cyc, prom_addr_10__N_822, n20190, ext_addr_cyc, core_rst_n, 
            VCC_net, zero_flag_async, carry_flag_async, br_enb_nxt_N_916, 
            cout_alu, n8581, update_c, carry_flag_nxt_N_915, n19500, 
            n20125, n20126, prom_enable, n20158, n20142, n20188, 
            zero_flag_nxt_N_911, iret, zero_flag_nxt_N_910, update_z, 
            din_rd1, n20202, n20182, n20183, n20184, n20185, n20186, 
            n20187, \instr[8] , \instr[9] , \instr[10] , n20181, ext_cycle_type, 
            ext_mem_ready, prom_ready, \genblk1.instr_mem_out[12] , \genblk1.instr_mem_out[13] , 
            carry_flag_nxt_N_914, n27, n8273, n18) /* synthesis syn_module_defined=1 */ ;
    output carry_flag;
    input interalClock;
    input n20162;
    input n4641;
    output addr_cyc;
    output zero_flag;
    input n4637;
    output data_cyc;
    output [10:0]prom_addr_10__N_822;
    input n20190;
    output ext_addr_cyc;
    input core_rst_n;
    input VCC_net;
    input zero_flag_async;
    input carry_flag_async;
    input br_enb_nxt_N_916;
    input cout_alu;
    input n8581;
    input update_c;
    output carry_flag_nxt_N_915;
    input n19500;
    input n20125;
    input n20126;
    output prom_enable;
    input n20158;
    input n20142;
    input n20188;
    output zero_flag_nxt_N_911;
    input iret;
    output zero_flag_nxt_N_910;
    input update_z;
    input [7:0]din_rd1;
    input n20202;
    input n20182;
    input n20183;
    input n20184;
    input n20185;
    input n20186;
    input n20187;
    input \instr[8] ;
    input \instr[9] ;
    input \instr[10] ;
    input n20181;
    input ext_cycle_type;
    input ext_mem_ready;
    input prom_ready;
    input \genblk1.instr_mem_out[12] ;
    input \genblk1.instr_mem_out[13] ;
    output carry_flag_nxt_N_914;
    input n27;
    input n8273;
    input n18;
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    
    wire n13105, n16815;
    wire [10:0]jump_address;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(86[22:34])
    
    wire potential_address_10__N_884;
    wire [10:0]pc;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(79[26:28])
    
    wire GND_net;
    wire [10:0]potential_address;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(95[22:39])
    
    wire n16816, sp_we_N_946, n16;
    wire [3:0]stack_ptr;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(399[27:36])
    wire [3:0]stack_ptr_nxt;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(399[38:51])
    
    wire rst_exception, rst_exception_nxt, ext_addr_cyc_nxt, data_cyc_nxt, 
        ret_reg, ret_cycle_type, rst_n_reg;
    wire [10:0]dout_stack;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(95[55:65])
    
    wire pushed_carry, pushed_zero, br_enb, n19492, n20040, n19499, 
        n19490, n19491, n13, n14, n20106, n16812, n16813, n16814, 
        n18242;
    
    FD1S3DX carry_flag_158 (.D(n4641), .CK(interalClock), .CD(n20162), 
            .Q(carry_flag));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam carry_flag_158.GSR = "DISABLED";
    FD1S3BX addr_cyc_152 (.D(n13105), .CK(interalClock), .PD(n20162), 
            .Q(addr_cyc));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(203[7] 207[10])
    defparam addr_cyc_152.GSR = "DISABLED";
    FD1S3DX zero_flag_157 (.D(n4637), .CK(interalClock), .CD(n20162), 
            .Q(zero_flag));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam zero_flag_157.GSR = "DISABLED";
    CCU2D add_1030_9 (.A0(jump_address[7]), .B0(potential_address_10__N_884), 
          .C0(pc[7]), .D0(GND_net), .A1(jump_address[8]), .B1(potential_address_10__N_884), 
          .C1(pc[8]), .D1(GND_net), .CIN(n16815), .COUT(n16816), .S0(potential_address[7]), 
          .S1(potential_address[8]));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_1030_9.INIT0 = 16'h7878;
    defparam add_1030_9.INIT1 = 16'h7878;
    defparam add_1030_9.INJECT1_0 = "NO";
    defparam add_1030_9.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(sp_we_N_946), .B(n16), .C(stack_ptr[1]), .D(stack_ptr[2]), 
         .Z(stack_ptr_nxt[2])) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (D))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hdb24;
    FD1S3IX rst_exception_150 (.D(rst_exception_nxt), .CK(interalClock), 
            .CD(n20162), .Q(rst_exception));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(110[11] 114[67])
    defparam rst_exception_150.GSR = "DISABLED";
    FD1P3BX pc_i0_i0 (.D(prom_addr_10__N_822[0]), .SP(data_cyc), .CK(interalClock), 
            .PD(n20162), .Q(pc[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i0.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i0 (.D(n20190), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i0.GSR = "DISABLED";
    FD1S3BX ext_addr_cyc_153 (.D(ext_addr_cyc_nxt), .CK(interalClock), .PD(n20162), 
            .Q(ext_addr_cyc)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(203[7] 207[10])
    defparam ext_addr_cyc_153.GSR = "DISABLED";
    FD1S3DX data_cyc_154 (.D(data_cyc_nxt), .CK(interalClock), .CD(n20162), 
            .Q(data_cyc)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(203[7] 207[10])
    defparam data_cyc_154.GSR = "DISABLED";
    FD1S3DX stack_ptr_i0 (.D(stack_ptr_nxt[0]), .CK(interalClock), .CD(n20162), 
            .Q(stack_ptr[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam stack_ptr_i0.GSR = "DISABLED";
    FD1S3DX ret_reg_160 (.D(ret_cycle_type), .CK(interalClock), .CD(n20162), 
            .Q(ret_reg)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam ret_reg_160.GSR = "DISABLED";
    FD1S3AX rst_n_reg_149 (.D(core_rst_n), .CK(interalClock), .Q(rst_n_reg)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(110[11] 114[67])
    defparam rst_n_reg_149.GSR = "DISABLED";
    pmi_distributed_spramMbnonen1341693c3d10 pmi_distributed_spramMachXO2binarynonenoreg13416 (.Address({stack_ptr}), 
            .Data({carry_flag_async, zero_flag_async, potential_address}), 
            .Q({pushed_carry, pushed_zero, dout_stack}), .Clock(interalClock), 
            .ClockEn(VCC_net), .WE(sp_we_N_946), .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(250[10] 294[3])
    defparam pmi_distributed_spramMachXO2binarynonenoreg13416.module_type = "pmi_distributed_spram";
    defparam pmi_distributed_spramMachXO2binarynonenoreg13416.pmi_family = "MachXO2";
    defparam pmi_distributed_spramMachXO2binarynonenoreg13416.pmi_init_file_format = "binary";
    defparam pmi_distributed_spramMachXO2binarynonenoreg13416.pmi_init_file = "none";
    defparam pmi_distributed_spramMachXO2binarynonenoreg13416.pmi_regmode = "noreg";
    defparam pmi_distributed_spramMachXO2binarynonenoreg13416.pmi_data_width = 13;
    defparam pmi_distributed_spramMachXO2binarynonenoreg13416.pmi_addr_width = 4;
    defparam pmi_distributed_spramMachXO2binarynonenoreg13416.pmi_addr_depth = 16;
    FD1P3DX br_enb_159 (.D(br_enb_nxt_N_916), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(br_enb));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam br_enb_159.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_104 (.A(n16), .B(n19492), .C(addr_cyc), .D(stack_ptr[1]), 
         .Z(stack_ptr_nxt[1])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(D))+!A !(B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i2_3_lut_4_lut_adj_104.init = 16'h956a;
    LUT4 i2_4_lut_4_lut (.A(n19492), .B(addr_cyc), .C(stack_ptr[0]), .D(n20040), 
         .Z(stack_ptr_nxt[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C (D)+!C !(D))+!B (C)))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h78b4;
    LUT4 carry_flag_I_0_4_lut (.A(cout_alu), .B(carry_flag), .C(n8581), 
         .D(update_c), .Z(carry_flag_nxt_N_915)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(335[10:44])
    defparam carry_flag_I_0_4_lut.init = 16'hcacc;
    CCU2D add_1030_11 (.A0(jump_address[9]), .B0(potential_address_10__N_884), 
          .C0(pc[9]), .D0(GND_net), .A1(jump_address[10]), .B1(potential_address_10__N_884), 
          .C1(pc[10]), .D1(GND_net), .CIN(n16816), .S0(potential_address[9]), 
          .S1(potential_address[10]));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_1030_11.INIT0 = 16'h7878;
    defparam add_1030_11.INIT1 = 16'h7878;
    defparam add_1030_11.INJECT1_0 = "NO";
    defparam add_1030_11.INJECT1_1 = "NO";
    LUT4 n19500_bdd_4_lut (.A(n19500), .B(n19499), .C(n20125), .D(n20126), 
         .Z(n20040)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam n19500_bdd_4_lut.init = 16'hcaff;
    LUT4 i16517_2_lut (.A(ext_addr_cyc), .B(addr_cyc), .Z(n13105)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i16517_2_lut.init = 16'h1111;
    LUT4 prom_addr_10__I_53_i11_4_lut (.A(potential_address[10]), .B(dout_stack[10]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i11_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i10_4_lut (.A(potential_address[9]), .B(dout_stack[9]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i10_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i9_4_lut (.A(potential_address[8]), .B(dout_stack[8]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i9_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i8_4_lut (.A(potential_address[7]), .B(dout_stack[7]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i8_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i7_4_lut (.A(potential_address[6]), .B(dout_stack[6]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i7_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i6_4_lut (.A(potential_address[5]), .B(dout_stack[5]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i6_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i5_4_lut (.A(potential_address[4]), .B(dout_stack[4]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i5_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i4_4_lut (.A(potential_address[3]), .B(dout_stack[3]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i4_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i3_4_lut (.A(potential_address[2]), .B(dout_stack[2]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i3_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i2_4_lut (.A(potential_address[1]), .B(dout_stack[1]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i2_4_lut.init = 16'hc0ca;
    LUT4 prom_addr_10__I_53_i1_4_lut (.A(potential_address[0]), .B(dout_stack[0]), 
         .C(ret_reg), .D(rst_exception), .Z(prom_addr_10__N_822[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(291[6] 295[48])
    defparam prom_addr_10__I_53_i1_4_lut.init = 16'hcfca;
    LUT4 data_cyc_I_0_173_2_lut (.A(data_cyc), .B(core_rst_n), .Z(prom_enable)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(219[16:32])
    defparam data_cyc_I_0_173_2_lut.init = 16'h8888;
    LUT4 ca1_bdd_3_lut_16827_4_lut (.A(n20158), .B(n20142), .C(carry_flag), 
         .D(n20188), .Z(n19490)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam ca1_bdd_3_lut_16827_4_lut.init = 16'h0880;
    LUT4 ca1_bdd_4_lut_16828 (.A(n20126), .B(n20125), .C(n20188), .D(zero_flag), 
         .Z(n19491)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((C (D)+!C !(D))+!B))) */ ;
    defparam ca1_bdd_4_lut_16828.init = 16'h0eca;
    LUT4 zero_flag_nxt_I_55_3_lut (.A(zero_flag_nxt_N_911), .B(pushed_zero), 
         .C(iret), .Z(zero_flag_nxt_N_910)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(355[13] 357[58])
    defparam zero_flag_nxt_I_55_3_lut.init = 16'hcaca;
    LUT4 zero_flag_I_0_4_lut (.A(zero_flag), .B(n13), .C(update_z), .D(n14), 
         .Z(zero_flag_nxt_N_911)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(368[8:56])
    defparam zero_flag_I_0_4_lut.init = 16'h0a3a;
    LUT4 i5_4_lut (.A(din_rd1[0]), .B(din_rd1[1]), .C(din_rd1[6]), .D(din_rd1[4]), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(368[20:43])
    defparam i5_4_lut.init = 16'hfffe;
    FD1P3DX pc_i0_i1 (.D(prom_addr_10__N_822[1]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i1.GSR = "DISABLED";
    FD1P3DX pc_i0_i2 (.D(prom_addr_10__N_822[2]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i2.GSR = "DISABLED";
    FD1P3DX pc_i0_i3 (.D(prom_addr_10__N_822[3]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i3.GSR = "DISABLED";
    FD1P3DX pc_i0_i4 (.D(prom_addr_10__N_822[4]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[4])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i4.GSR = "DISABLED";
    FD1P3DX pc_i0_i5 (.D(prom_addr_10__N_822[5]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[5])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i5.GSR = "DISABLED";
    FD1P3DX pc_i0_i6 (.D(prom_addr_10__N_822[6]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[6])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i6.GSR = "DISABLED";
    FD1P3DX pc_i0_i7 (.D(prom_addr_10__N_822[7]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[7])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i7.GSR = "DISABLED";
    FD1P3DX pc_i0_i8 (.D(prom_addr_10__N_822[8]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[8])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i8.GSR = "DISABLED";
    FD1P3DX pc_i0_i9 (.D(prom_addr_10__N_822[9]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[9])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i9.GSR = "DISABLED";
    FD1P3DX pc_i0_i10 (.D(prom_addr_10__N_822[10]), .SP(data_cyc), .CK(interalClock), 
            .CD(n20162), .Q(pc[10])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i10.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i1 (.D(n20202), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i1.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i2 (.D(n20182), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i2.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i3 (.D(n20183), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i3.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i4 (.D(n20184), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[4])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i4.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i5 (.D(n20185), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[5])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i5.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i6 (.D(n20186), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[6])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i6.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i7 (.D(n20187), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[7])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i7.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i8 (.D(\instr[8] ), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[8])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i8.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i9 (.D(\instr[9] ), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[9])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i9.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i10 (.D(\instr[10] ), .SP(addr_cyc), .CK(interalClock), 
            .CD(n20162), .Q(jump_address[10])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i10.GSR = "DISABLED";
    LUT4 i6_4_lut (.A(din_rd1[3]), .B(din_rd1[2]), .C(din_rd1[5]), .D(din_rd1[7]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(368[20:43])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1848_4_lut_3_lut_rep_247_4_lut (.A(n19492), .B(addr_cyc), .C(n16), 
         .D(stack_ptr[1]), .Z(n20106)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !((D)+!C))+!A !((D)+!C))) */ ;
    defparam i1848_4_lut_3_lut_rep_247_4_lut.init = 16'h7f07;
    FD1S3DX stack_ptr_i1 (.D(stack_ptr_nxt[1]), .CK(interalClock), .CD(n20162), 
            .Q(stack_ptr[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam stack_ptr_i1.GSR = "DISABLED";
    FD1S3DX stack_ptr_i2 (.D(stack_ptr_nxt[2]), .CK(interalClock), .CD(n20162), 
            .Q(stack_ptr[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam stack_ptr_i2.GSR = "DISABLED";
    FD1S3DX stack_ptr_i3 (.D(stack_ptr_nxt[3]), .CK(interalClock), .CD(n20162), 
            .Q(stack_ptr[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam stack_ptr_i3.GSR = "DISABLED";
    LUT4 SPIFlashWPJ_c_bdd_2_lut_16698 (.A(n19492), .B(addr_cyc), .Z(sp_we_N_946)) /* synthesis lut_function=(A (B)) */ ;
    defparam SPIFlashWPJ_c_bdd_2_lut_16698.init = 16'h8888;
    CCU2D add_1030_3 (.A0(jump_address[1]), .B0(potential_address_10__N_884), 
          .C0(pc[1]), .D0(GND_net), .A1(jump_address[2]), .B1(potential_address_10__N_884), 
          .C1(pc[2]), .D1(GND_net), .CIN(n16812), .COUT(n16813), .S0(potential_address[1]), 
          .S1(potential_address[2]));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_1030_3.INIT0 = 16'h7878;
    defparam add_1030_3.INIT1 = 16'h7878;
    defparam add_1030_3.INJECT1_0 = "NO";
    defparam add_1030_3.INJECT1_1 = "NO";
    LUT4 n18239_bdd_4_lut_16801 (.A(n20188), .B(n20181), .C(zero_flag), 
         .D(carry_flag), .Z(n19499)) /* synthesis lut_function=(A (B+!(C))+!A ((D)+!B)) */ ;
    defparam n18239_bdd_4_lut_16801.init = 16'hdf9b;
    CCU2D add_1030_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[0]), .B1(br_enb), .C1(data_cyc), .D1(jump_address[0]), 
          .COUT(n16812), .S1(potential_address[0]));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_1030_1.INIT0 = 16'hF000;
    defparam add_1030_1.INIT1 = 16'h5595;
    defparam add_1030_1.INJECT1_0 = "NO";
    defparam add_1030_1.INJECT1_1 = "NO";
    PFUMX i16696 (.BLUT(n19491), .ALUT(n19490), .C0(n20181), .Z(n19492));
    LUT4 data_cyc_I_0_170_2_lut (.A(data_cyc), .B(br_enb), .Z(potential_address_10__N_884)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(275[6:24])
    defparam data_cyc_I_0_170_2_lut.init = 16'h8888;
    LUT4 rst_exception_nxt_I_63_2_lut (.A(rst_n_reg), .B(core_rst_n), .Z(rst_exception_nxt)) /* synthesis lut_function=(!(A+!(B))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(117[26:45])
    defparam rst_exception_nxt_I_63_2_lut.init = 16'h4444;
    LUT4 i1_4_lut (.A(ext_cycle_type), .B(addr_cyc), .C(ext_mem_ready), 
         .D(ext_addr_cyc), .Z(ext_addr_cyc_nxt)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(182[12] 183[59])
    defparam i1_4_lut.init = 16'h8a88;
    LUT4 i11_4_lut (.A(addr_cyc), .B(ext_mem_ready), .C(ext_cycle_type), 
         .D(ext_addr_cyc), .Z(data_cyc_nxt)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(188[12] 189[49])
    defparam i11_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_105 (.A(n20126), .B(prom_ready), .C(\genblk1.instr_mem_out[12] ), 
         .D(\genblk1.instr_mem_out[13] ), .Z(ret_cycle_type)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(238[19:27])
    defparam i1_4_lut_adj_105.init = 16'h0880;
    CCU2D add_1030_7 (.A0(jump_address[5]), .B0(potential_address_10__N_884), 
          .C0(pc[5]), .D0(GND_net), .A1(jump_address[6]), .B1(potential_address_10__N_884), 
          .C1(pc[6]), .D1(GND_net), .CIN(n16814), .COUT(n16815), .S0(potential_address[5]), 
          .S1(potential_address[6]));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_1030_7.INIT0 = 16'h7878;
    defparam add_1030_7.INIT1 = 16'h7878;
    defparam add_1030_7.INJECT1_0 = "NO";
    defparam add_1030_7.INJECT1_1 = "NO";
    CCU2D add_1030_5 (.A0(jump_address[3]), .B0(potential_address_10__N_884), 
          .C0(pc[3]), .D0(GND_net), .A1(jump_address[4]), .B1(potential_address_10__N_884), 
          .C1(pc[4]), .D1(GND_net), .CIN(n16813), .COUT(n16814), .S0(potential_address[3]), 
          .S1(potential_address[4]));   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_1030_5.INIT0 = 16'h7878;
    defparam add_1030_5.INIT1 = 16'h7878;
    defparam add_1030_5.INJECT1_0 = "NO";
    defparam add_1030_5.INJECT1_1 = "NO";
    LUT4 carry_flag_nxt_I_57_3_lut (.A(carry_flag_nxt_N_915), .B(pushed_carry), 
         .C(iret), .Z(carry_flag_nxt_N_914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(333[7] 335[45])
    defparam carry_flag_nxt_I_57_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(n18242), .B(stack_ptr[0]), .C(n27), .D(addr_cyc), 
         .Z(n16)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut.init = 16'h3200;
    LUT4 i1_4_lut_adj_106 (.A(n8273), .B(n20125), .C(n18), .D(n20181), 
         .Z(n18242)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_106.init = 16'hc088;
    LUT4 i2_4_lut_adj_107 (.A(stack_ptr[2]), .B(sp_we_N_946), .C(stack_ptr[3]), 
         .D(n20106), .Z(stack_ptr_nxt[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i2_4_lut_adj_107.init = 16'h78e1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module lm8_io_cntl
//

module lm8_io_cntl (\dout_rb[5] , ext_addr_nxt_7__N_949, \dout_rb[6] , 
            LM8D_DAT_O, interalClock, n20162, dout_rd, \ext_addr[0] , 
            \ext_addr_nxt[0] , ext_io_wr, ext_io_wr_nxt, ext_io_rd, 
            ext_io_rd_nxt, ext_mem_wr, ext_mem_wr_nxt, ext_mem_rd, ext_mem_rd_nxt, 
            \dout_rb[7] , \ext_addr[1] , \ext_addr_nxt[1] , \ext_addr[2] , 
            \ext_addr_nxt[2] , \ext_addr[3] , \ext_addr_nxt[3] , \ext_addr[4] , 
            \ext_addr_nxt[4] , \ext_addr[5] , \ext_addr[6] , \ext_addr[7] , 
            addr_cyc, ext_addr_cyc, n20172, ext_addr_nxt_7__N_951, n20114, 
            n20151, n21074) /* synthesis syn_module_defined=1 */ ;
    input \dout_rb[5] ;
    output ext_addr_nxt_7__N_949;
    input \dout_rb[6] ;
    output [7:0]LM8D_DAT_O;
    input interalClock;
    input n20162;
    input [7:0]dout_rd;
    output \ext_addr[0] ;
    input \ext_addr_nxt[0] ;
    output ext_io_wr;
    input ext_io_wr_nxt;
    output ext_io_rd;
    input ext_io_rd_nxt;
    output ext_mem_wr;
    input ext_mem_wr_nxt;
    output ext_mem_rd;
    input ext_mem_rd_nxt;
    input \dout_rb[7] ;
    output \ext_addr[1] ;
    input \ext_addr_nxt[1] ;
    output \ext_addr[2] ;
    input \ext_addr_nxt[2] ;
    output \ext_addr[3] ;
    input \ext_addr_nxt[3] ;
    output \ext_addr[4] ;
    input \ext_addr_nxt[4] ;
    output \ext_addr[5] ;
    output \ext_addr[6] ;
    output \ext_addr[7] ;
    input addr_cyc;
    input ext_addr_cyc;
    output n20172;
    input ext_addr_nxt_7__N_951;
    input n20114;
    input n20151;
    input n21074;
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    wire [7:0]ext_addr_nxt;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(72[16:28])
    
    LUT4 i10263_2_lut (.A(\dout_rb[5] ), .B(ext_addr_nxt_7__N_949), .Z(ext_addr_nxt[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(106[4:27])
    defparam i10263_2_lut.init = 16'h2222;
    LUT4 i10264_2_lut (.A(\dout_rb[6] ), .B(ext_addr_nxt_7__N_949), .Z(ext_addr_nxt[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(106[4:27])
    defparam i10264_2_lut.init = 16'h2222;
    FD1S3DX ext_dout_i0 (.D(dout_rd[0]), .CK(interalClock), .CD(n20162), 
            .Q(LM8D_DAT_O[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i0.GSR = "DISABLED";
    FD1S3DX ext_addr_i1 (.D(\ext_addr_nxt[0] ), .CK(interalClock), .CD(n20162), 
            .Q(\ext_addr[0] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i1.GSR = "DISABLED";
    FD1S3DX ext_io_wr_30 (.D(ext_io_wr_nxt), .CK(interalClock), .CD(n20162), 
            .Q(ext_io_wr)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_io_wr_30.GSR = "DISABLED";
    FD1S3DX ext_io_rd_31 (.D(ext_io_rd_nxt), .CK(interalClock), .CD(n20162), 
            .Q(ext_io_rd)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_io_rd_31.GSR = "DISABLED";
    FD1S3DX ext_mem_wr_32 (.D(ext_mem_wr_nxt), .CK(interalClock), .CD(n20162), 
            .Q(ext_mem_wr)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_mem_wr_32.GSR = "DISABLED";
    FD1S3DX ext_mem_rd_33 (.D(ext_mem_rd_nxt), .CK(interalClock), .CD(n20162), 
            .Q(ext_mem_rd)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_mem_rd_33.GSR = "DISABLED";
    LUT4 i10265_2_lut (.A(\dout_rb[7] ), .B(ext_addr_nxt_7__N_949), .Z(ext_addr_nxt[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(106[4:27])
    defparam i10265_2_lut.init = 16'h2222;
    FD1S3DX ext_dout_i1 (.D(dout_rd[1]), .CK(interalClock), .CD(n20162), 
            .Q(LM8D_DAT_O[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i1.GSR = "DISABLED";
    FD1S3DX ext_dout_i2 (.D(dout_rd[2]), .CK(interalClock), .CD(n20162), 
            .Q(LM8D_DAT_O[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i2.GSR = "DISABLED";
    FD1S3DX ext_dout_i3 (.D(dout_rd[3]), .CK(interalClock), .CD(n20162), 
            .Q(LM8D_DAT_O[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i3.GSR = "DISABLED";
    FD1S3DX ext_dout_i4 (.D(dout_rd[4]), .CK(interalClock), .CD(n20162), 
            .Q(LM8D_DAT_O[4])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i4.GSR = "DISABLED";
    FD1S3DX ext_dout_i5 (.D(dout_rd[5]), .CK(interalClock), .CD(n20162), 
            .Q(LM8D_DAT_O[5])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i5.GSR = "DISABLED";
    FD1S3DX ext_dout_i6 (.D(dout_rd[6]), .CK(interalClock), .CD(n20162), 
            .Q(LM8D_DAT_O[6])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i6.GSR = "DISABLED";
    FD1S3DX ext_dout_i7 (.D(dout_rd[7]), .CK(interalClock), .CD(n20162), 
            .Q(LM8D_DAT_O[7])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i7.GSR = "DISABLED";
    FD1S3DX ext_addr_i2 (.D(\ext_addr_nxt[1] ), .CK(interalClock), .CD(n20162), 
            .Q(\ext_addr[1] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i2.GSR = "DISABLED";
    FD1S3DX ext_addr_i3 (.D(\ext_addr_nxt[2] ), .CK(interalClock), .CD(n20162), 
            .Q(\ext_addr[2] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i3.GSR = "DISABLED";
    FD1S3DX ext_addr_i4 (.D(\ext_addr_nxt[3] ), .CK(interalClock), .CD(n20162), 
            .Q(\ext_addr[3] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i4.GSR = "DISABLED";
    FD1S3DX ext_addr_i5 (.D(\ext_addr_nxt[4] ), .CK(interalClock), .CD(n20162), 
            .Q(\ext_addr[4] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i5.GSR = "DISABLED";
    FD1S3DX ext_addr_i6 (.D(ext_addr_nxt[5]), .CK(interalClock), .CD(n20162), 
            .Q(\ext_addr[5] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i6.GSR = "DISABLED";
    FD1S3DX ext_addr_i7 (.D(ext_addr_nxt[6]), .CK(interalClock), .CD(n20162), 
            .Q(\ext_addr[6] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i7.GSR = "DISABLED";
    FD1S3DX ext_addr_i8 (.D(ext_addr_nxt[7]), .CK(interalClock), .CD(n20162), 
            .Q(\ext_addr[7] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i8.GSR = "DISABLED";
    LUT4 addr_cyc_I_0_2_lut_rep_313 (.A(addr_cyc), .B(ext_addr_cyc), .Z(n20172)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(93[23:49])
    defparam addr_cyc_I_0_2_lut_rep_313.init = 16'heeee;
    LUT4 i1_4_lut (.A(ext_addr_nxt_7__N_951), .B(n20114), .C(n20151), 
         .D(n21074), .Z(ext_addr_nxt_7__N_949)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(103[6:38])
    defparam i1_4_lut.init = 16'heaee;
    
endmodule
//
// Verilog Description of module \lm8_alu(FAMILY_NAME="MachXO2") 
//

module \lm8_alu(FAMILY_NAME="MachXO2")  (dout_alu, data_rb_int, dout_rd, 
            n20130, cout_alu, carry_flag, dout_rb, prom_ready, \genblk1.instr_mem_out[0] , 
            n20147, n3, n20136, n21074, \genblk1.instr_mem_out[1] , 
            n20189, \genblk1.instr_mem_out[15] , n20127, n20202, n8581, 
            n20196, n20195, n20193, n20192, n20190, n20194, n21084, 
            n20160, n18387, n20152, n19522, n20129) /* synthesis syn_module_defined=1 */ ;
    output [7:0]dout_alu;
    input [7:0]data_rb_int;
    input [7:0]dout_rd;
    input n20130;
    output cout_alu;
    input carry_flag;
    input [7:0]dout_rb;
    input prom_ready;
    input \genblk1.instr_mem_out[0] ;
    input n20147;
    input n3;
    input n20136;
    input n21074;
    input \genblk1.instr_mem_out[1] ;
    input n20189;
    input \genblk1.instr_mem_out[15] ;
    input n20127;
    input n20202;
    output n8581;
    input n20196;
    input n20195;
    input n20193;
    input n20192;
    input n20190;
    input n20194;
    input n21084;
    input n20160;
    output n18387;
    input n20152;
    input n19522;
    input n20129;
    
    wire [7:0]dout_l_7__N_767;
    
    wire n19670, n18731, n19668, n4488, n19669, n19666, n19664, 
        n19665, n19662, n19660, n19661, n19650;
    wire [7:0]data_add;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(72[18:26])
    
    wire carry_add_int, adsu_ci, add_sel_N_820, n19648, n19649, n19643, 
        n19641, n19642, n19639, n19637, n19638, n20120;
    wire [8:0]dout_alu_7__N_755;
    
    wire n21080, n20646, n20647, n20648;
    wire [8:0]dout_r_7__N_776;
    
    wire n20645, n21079;
    wire [7:0]dout_r;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(68[18:24])
    
    wire n20205;
    wire [7:0]dout_l;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(66[18:24])
    
    wire n20204;
    
    PFUMX i16799 (.BLUT(dout_l_7__N_767[1]), .ALUT(n19670), .C0(n18731), 
          .Z(dout_alu[1]));
    PFUMX i16797 (.BLUT(n19668), .ALUT(data_rb_int[1]), .C0(n4488), .Z(n19669));
    PFUMX i16794 (.BLUT(dout_l_7__N_767[2]), .ALUT(n19666), .C0(n18731), 
          .Z(dout_alu[2]));
    PFUMX i16792 (.BLUT(n19664), .ALUT(data_rb_int[2]), .C0(n4488), .Z(n19665));
    PFUMX i16789 (.BLUT(dout_l_7__N_767[3]), .ALUT(n19662), .C0(n18731), 
          .Z(dout_alu[3]));
    PFUMX i16787 (.BLUT(n19660), .ALUT(data_rb_int[3]), .C0(n4488), .Z(n19661));
    PFUMX i16779 (.BLUT(dout_l_7__N_767[4]), .ALUT(n19650), .C0(n18731), 
          .Z(dout_alu[4]));
    pmi_addsubMo884942741 pmi_addsubMachXO2off88 (.DataA({dout_rd}), .DataB({data_rb_int}), 
            .Result({data_add}), .Cin(adsu_ci), .Add_Sub(add_sel_N_820), 
            .Cout(carry_add_int)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=15, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=225, LSE_RLINE=239 */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(225[11] 239[3])
    defparam pmi_addsubMachXO2off88.module_type = "pmi_addsub";
    defparam pmi_addsubMachXO2off88.pmi_family = "MachXO2";
    defparam pmi_addsubMachXO2off88.pmi_sign = "off";
    defparam pmi_addsubMachXO2off88.pmi_result_width = 8;
    defparam pmi_addsubMachXO2off88.pmi_data_width = 8;
    PFUMX i16777 (.BLUT(n19648), .ALUT(data_rb_int[4]), .C0(n4488), .Z(n19649));
    PFUMX i16774 (.BLUT(dout_l_7__N_767[5]), .ALUT(n19643), .C0(n18731), 
          .Z(dout_alu[5]));
    PFUMX i16772 (.BLUT(n19641), .ALUT(data_rb_int[5]), .C0(n4488), .Z(n19642));
    PFUMX i16769 (.BLUT(dout_l_7__N_767[6]), .ALUT(n19639), .C0(n18731), 
          .Z(dout_alu[6]));
    PFUMX i16767 (.BLUT(n19637), .ALUT(data_rb_int[6]), .C0(n4488), .Z(n19638));
    LUT4 carry_add_int_bdd_4_lut (.A(carry_add_int), .B(n20120), .C(dout_alu_7__N_755[8]), 
         .D(n20130), .Z(cout_alu)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam carry_add_int_bdd_4_lut.init = 16'h66f0;
    LUT4 i2673_3_lut_4_lut_then_4_lut (.A(carry_flag), .B(dout_rb[1]), .C(prom_ready), 
         .D(\genblk1.instr_mem_out[0] ), .Z(n21080)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(123[32] 126[72])
    defparam i2673_3_lut_4_lut_then_4_lut.init = 16'haccc;
    LUT4 n20646_bdd_3_lut (.A(n20646), .B(data_add[7]), .C(n20130), .Z(n20647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n20646_bdd_3_lut.init = 16'hcaca;
    LUT4 dout_r_7__N_776_7__bdd_4_lut_17414 (.A(n20147), .B(data_rb_int[7]), 
         .C(n3), .D(dout_rd[7]), .Z(n20648)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam dout_r_7__N_776_7__bdd_4_lut_17414.init = 16'h7cc0;
    LUT4 dout_r_7__N_776_7__bdd_4_lut_17254 (.A(dout_r_7__N_776[7]), .B(n20136), 
         .C(n21074), .D(dout_rb[0]), .Z(n20645)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B (C+!(D)))) */ ;
    defparam dout_r_7__N_776_7__bdd_4_lut_17254.init = 16'hbfb3;
    PFUMX i17495 (.BLUT(n21079), .ALUT(n21080), .C0(\genblk1.instr_mem_out[1] ), 
          .Z(dout_r[0]));
    LUT4 i2_4_lut_rep_261 (.A(n20189), .B(prom_ready), .C(\genblk1.instr_mem_out[15] ), 
         .D(n20127), .Z(n20120)) /* synthesis lut_function=(A ((D)+!B)+!A (((D)+!C)+!B)) */ ;
    defparam i2_4_lut_rep_261.init = 16'hff37;
    LUT4 add_sel_I_0_1_lut_4_lut (.A(n20189), .B(prom_ready), .C(\genblk1.instr_mem_out[15] ), 
         .D(n20127), .Z(add_sel_N_820)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam add_sel_I_0_1_lut_4_lut.init = 16'h00c8;
    LUT4 i2673_3_lut_4_lut_else_4_lut (.A(dout_rb[1]), .B(prom_ready), .C(\genblk1.instr_mem_out[0] ), 
         .D(dout_rb[7]), .Z(n21079)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(123[32] 126[72])
    defparam i2673_3_lut_4_lut_else_4_lut.init = 16'hea2a;
    LUT4 i2_4_lut_4_lut (.A(n20202), .B(n4488), .C(n20136), .D(dout_r_7__N_776[8]), 
         .Z(dout_alu_7__N_755[8])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_4_lut_4_lut.init = 16'h2000;
    LUT4 i5710_2_lut_4_lut_4_lut (.A(n20130), .B(n20136), .C(n4488), .D(n20202), 
         .Z(n8581)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i5710_2_lut_4_lut_4_lut.init = 16'h5054;
    LUT4 dout_r_7__I_43_i9_4_lut_then_4_lut (.A(dout_rb[7]), .B(\genblk1.instr_mem_out[0] ), 
         .C(prom_ready), .D(\genblk1.instr_mem_out[1] ), .Z(n20205)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B+!(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(124[33] 126[71])
    defparam dout_r_7__I_43_i9_4_lut_then_4_lut.init = 16'hba2a;
    LUT4 dout_l_7__I_42_i1_4_lut_4_lut (.A(data_rb_int[0]), .B(n20147), 
         .C(dout_rd[0]), .D(n3), .Z(dout_l_7__N_767[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_42_i1_4_lut_4_lut.init = 16'h7aa0;
    LUT4 i13_4_lut (.A(n20196), .B(n20195), .C(n20193), .D(n20192), 
         .Z(n4488)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;
    defparam i13_4_lut.init = 16'h2622;
    LUT4 dout_l_7__I_42_i2_4_lut_4_lut (.A(data_rb_int[1]), .B(n20147), 
         .C(dout_rd[1]), .D(n3), .Z(dout_l_7__N_767[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_42_i2_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_l_7__I_42_i3_4_lut_4_lut (.A(data_rb_int[2]), .B(n20147), 
         .C(dout_rd[2]), .D(n3), .Z(dout_l_7__N_767[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_42_i3_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_l_7__I_42_i4_4_lut_4_lut (.A(data_rb_int[3]), .B(n20147), 
         .C(dout_rd[3]), .D(n3), .Z(dout_l_7__N_767[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_42_i4_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_l_7__I_42_i5_4_lut_4_lut (.A(data_rb_int[4]), .B(n20147), 
         .C(dout_rd[4]), .D(n3), .Z(dout_l_7__N_767[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_42_i5_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_l_7__I_42_i6_4_lut_4_lut (.A(data_rb_int[5]), .B(n20147), 
         .C(dout_rd[5]), .D(n3), .Z(dout_l_7__N_767[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_42_i6_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_l_7__I_42_i7_4_lut_4_lut (.A(data_rb_int[6]), .B(n20147), 
         .C(dout_rd[6]), .D(n3), .Z(dout_l_7__N_767[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_42_i7_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_alu_7__I_44_i1_3_lut (.A(dout_l[0]), .B(data_add[0]), .C(n20130), 
         .Z(dout_alu_7__N_755[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(132[35] 134[103])
    defparam dout_alu_7__I_44_i1_3_lut.init = 16'hcaca;
    LUT4 dout_r_7__I_43_i8_3_lut_4_lut (.A(n20190), .B(n20202), .C(dout_rb[6]), 
         .D(carry_flag), .Z(dout_r_7__N_776[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(124[33:54])
    defparam dout_r_7__I_43_i8_3_lut_4_lut.init = 16'hf4b0;
    PFUMX dout_alu_7__I_0_i1 (.BLUT(dout_l_7__N_767[0]), .ALUT(dout_alu_7__N_755[0]), 
          .C0(n18731), .Z(dout_alu[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=225, LSE_RLINE=239 */ ;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n20194), .B(n21084), .C(n20160), 
         .D(n20189), .Z(n18387)) /* synthesis lut_function=(!(A (B (D))+!A !((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(115[28:51])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h73ff;
    LUT4 i16440_2_lut_3_lut_4_lut (.A(n20194), .B(prom_ready), .C(n20130), 
         .D(n4488), .Z(n18731)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(115[28:51])
    defparam i16440_2_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 dout_l_7__I_0_i1_4_lut (.A(data_rb_int[0]), .B(dout_r[0]), .C(n4488), 
         .D(n20136), .Z(dout_l[0])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C)+!B (C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(115[27] 118[52])
    defparam dout_l_7__I_0_i1_4_lut.init = 16'hacaf;
    LUT4 adsu_ci_int_I_0_4_lut (.A(n20152), .B(n20120), .C(n19522), .D(carry_flag), 
         .Z(adsu_ci)) /* synthesis lut_function=(A (B)+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(92[28:66])
    defparam adsu_ci_int_I_0_4_lut.init = 16'h9ccc;
    PFUMX i16996 (.BLUT(n20204), .ALUT(n20205), .C0(dout_rb[0]), .Z(dout_r_7__N_776[8]));
    LUT4 dout_r_7__I_43_i9_4_lut_else_4_lut (.A(dout_rb[7]), .B(\genblk1.instr_mem_out[0] ), 
         .C(prom_ready), .D(\genblk1.instr_mem_out[1] ), .Z(n20204)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(124[33] 126[71])
    defparam dout_r_7__I_43_i9_4_lut_else_4_lut.init = 16'h8a2a;
    LUT4 n5504_bdd_4_lut_16771 (.A(n20129), .B(n20136), .C(dout_rb[5]), 
         .D(dout_rb[7]), .Z(n19637)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n5504_bdd_4_lut_16771.init = 16'hf7b3;
    LUT4 n19638_bdd_3_lut (.A(n19638), .B(data_add[6]), .C(n20130), .Z(n19639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19638_bdd_3_lut.init = 16'hcaca;
    LUT4 n5504_bdd_4_lut_16776 (.A(n20129), .B(n20136), .C(dout_rb[4]), 
         .D(dout_rb[6]), .Z(n19641)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n5504_bdd_4_lut_16776.init = 16'hf7b3;
    LUT4 n19642_bdd_3_lut (.A(n19642), .B(data_add[5]), .C(n20130), .Z(n19643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19642_bdd_3_lut.init = 16'hcaca;
    PFUMX i17255 (.BLUT(n20648), .ALUT(n20647), .C0(n18731), .Z(dout_alu[7]));
    PFUMX i17252 (.BLUT(n20645), .ALUT(data_rb_int[7]), .C0(n4488), .Z(n20646));
    LUT4 n5504_bdd_4_lut_16786 (.A(n20129), .B(n20136), .C(dout_rb[3]), 
         .D(dout_rb[5]), .Z(n19648)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n5504_bdd_4_lut_16786.init = 16'hf7b3;
    LUT4 n19649_bdd_3_lut (.A(n19649), .B(data_add[4]), .C(n20130), .Z(n19650)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19649_bdd_3_lut.init = 16'hcaca;
    LUT4 n19661_bdd_3_lut (.A(n19661), .B(data_add[3]), .C(n20130), .Z(n19662)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19661_bdd_3_lut.init = 16'hcaca;
    LUT4 n5504_bdd_4_lut_16791 (.A(n20129), .B(n20136), .C(dout_rb[2]), 
         .D(dout_rb[4]), .Z(n19660)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n5504_bdd_4_lut_16791.init = 16'hf7b3;
    LUT4 n5504_bdd_4_lut_16796 (.A(n20129), .B(n20136), .C(dout_rb[1]), 
         .D(dout_rb[3]), .Z(n19664)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n5504_bdd_4_lut_16796.init = 16'hf7b3;
    LUT4 n19665_bdd_3_lut (.A(n19665), .B(data_add[2]), .C(n20130), .Z(n19666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19665_bdd_3_lut.init = 16'hcaca;
    LUT4 n5504_bdd_4_lut (.A(n20129), .B(n20136), .C(dout_rb[0]), .D(dout_rb[2]), 
         .Z(n19668)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n5504_bdd_4_lut.init = 16'hf7b3;
    LUT4 n19669_bdd_3_lut (.A(n19669), .B(data_add[1]), .C(n20130), .Z(n19670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19669_bdd_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module \gpio(GPIO_WB_DAT_WIDTH=8,DATA_WIDTH=32'b010,INPUT_WIDTH=32'b01,OUTPUT_WIDTH=32'b01,EDGE=1,POSE_EDGE_IRQ=1,INPUT_PORTS_ONLY=0,OUTPUT_PORTS_ONLY=1) 
//

module \gpio(GPIO_WB_DAT_WIDTH=8,DATA_WIDTH=32'b010,INPUT_WIDTH=32'b01,OUTPUT_WIDTH=32'b01,EDGE=1,POSE_EDGE_IRQ=1,INPUT_PORTS_ONLY=0,OUTPUT_PORTS_ONLY=1)  (LEDGPIO_ACK_O, 
            interalClock, PIO_OUT_1__N_989, LEDPIO_OUT_c_1, PIO_OUT_1__N_987, 
            \SHAREDBUS_DAT_I[1] , LEDPIO_OUT_c_0, \SHAREDBUS_DAT_I[0] ) /* synthesis syn_module_defined=1 */ ;
    output LEDGPIO_ACK_O;
    input interalClock;
    input PIO_OUT_1__N_989;
    output LEDPIO_OUT_c_1;
    input PIO_OUT_1__N_987;
    input \SHAREDBUS_DAT_I[1] ;
    output LEDPIO_OUT_c_0;
    input \SHAREDBUS_DAT_I[0] ;
    
    wire interalClock /* synthesis SET_AS_NETWORK=interalClock, is_clock=1 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/platform1_top.v(16[6:18])
    
    FD1S3AX GPIO_ACK_O_163 (.D(PIO_OUT_1__N_989), .CK(interalClock), .Q(LEDGPIO_ACK_O)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=34, LSE_LLINE=576, LSE_RLINE=592 */ ;   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/gpio/rtl/verilog/gpio.v(188[11] 191[33])
    defparam GPIO_ACK_O_163.GSR = "ENABLED";
    FD1P3AX PIO_DATA_1__165 (.D(\SHAREDBUS_DAT_I[1] ), .SP(PIO_OUT_1__N_987), 
            .CK(interalClock), .Q(LEDPIO_OUT_c_1));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/gpio/rtl/verilog/gpio.v(213[11] 214[62])
    defparam PIO_DATA_1__165.GSR = "ENABLED";
    FD1P3AX PIO_DATA_0__164 (.D(\SHAREDBUS_DAT_I[0] ), .SP(PIO_OUT_1__N_987), 
            .CK(interalClock), .Q(LEDPIO_OUT_c_0));   // c:/users/suhail/desktop/work/machxo2_spi/platform1/soc/../soc/../components/gpio/rtl/verilog/gpio.v(213[11] 214[62])
    defparam PIO_DATA_0__164.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 7.5 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 1000 -data_width 8 -num_rows 2048 -gsr DISABLED -write_mode_0 0 -memfile scratchpad_init.mem -memformat hex -cascade -1 -n pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6 -pmi -lang verilog  */
/* Mon Aug 13 14:00:11 2018 */


`timescale 1 ns / 1 ps
module pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6 (Clock, ClockEn, 
    Reset, WE, Address, Data, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire Clock;
    input wire ClockEn;
    input wire Reset;
    input wire WE;
    input wire [10:0] Address;
    input wire [7:0] Data;
    output wire [7:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.INITVAL_00 = "0x000000008303869006040B8081B800020000000000401024000001F000800000E0000A0220000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.DATA_WIDTH_B = 4 ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1.DATA_WIDTH_A = 4 ;
    DP8KC pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(Address[10]), .ADA11(Address[9]), .ADA10(Address[8]), .ADA9(Address[7]), 
        .ADA8(Address[6]), .ADA7(Address[5]), .ADA6(Address[4]), .ADA5(Address[3]), 
        .ADA4(Address[2]), .ADA3(Address[1]), .ADA2(Address[0]), .ADA1(scuba_vlo), 
        .ADA0(scuba_vlo), .CEA(ClockEn), .OCEA(ClockEn), .CLKA(Clock), .WEA(WE), 
        .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), 
        .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), 
        .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), 
        .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), 
        .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), 
        .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), 
        .ADB1(scuba_vlo), .ADB0(scuba_vlo), .CEB(scuba_vhi), .OCEB(scuba_vhi), 
        .CLKB(scuba_vlo), .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), 
        .CSB0(scuba_vlo), .RSTB(scuba_vlo), .DOA8(), .DOA7(), .DOA6(), .DOA5(), 
        .DOA4(), .DOA3(Q[3]), .DOA2(Q[2]), .DOA1(Q[1]), .DOA0(Q[0]), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6__PMIS__2048__8__8H" */
             /* synthesis MEM_INIT_FILE="scratchpad_init.mem" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.INITVAL_00 = "0x00000000670CC440AA040880308880000800000000600000000000F1000000002000020000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.DATA_WIDTH_B = 4 ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0.DATA_WIDTH_A = 4 ;
    DP8KC pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(Data[7]), .DIA2(Data[6]), .DIA1(Data[5]), .DIA0(Data[4]), 
        .ADA12(Address[10]), .ADA11(Address[9]), .ADA10(Address[8]), .ADA9(Address[7]), 
        .ADA8(Address[6]), .ADA7(Address[5]), .ADA6(Address[4]), .ADA5(Address[3]), 
        .ADA4(Address[2]), .ADA3(Address[1]), .ADA2(Address[0]), .ADA1(scuba_vlo), 
        .ADA0(scuba_vlo), .CEA(ClockEn), .OCEA(ClockEn), .CLKA(Clock), .WEA(WE), 
        .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), 
        .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), 
        .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), 
        .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), 
        .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), 
        .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), 
        .ADB1(scuba_vlo), .ADB0(scuba_vlo), .CEB(scuba_vhi), .OCEB(scuba_vhi), 
        .CLKB(scuba_vlo), .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), 
        .CSB0(scuba_vlo), .RSTB(scuba_vlo), .DOA8(), .DOA7(), .DOA6(), .DOA5(), 
        .DOA4(), .DOA3(Q[7]), .DOA2(Q[6]), .DOA1(Q[5]), .DOA0(Q[4]), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6__PMIS__2048__8__8H" */
             /* synthesis MEM_INIT_FILE="scratchpad_init.mem" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1 MEM_LPC_FILE pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6__PMIS__2048__8__8H
    // exemplar attribute pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_0_1 MEM_INIT_FILE scratchpad_init.mem
    // exemplar attribute pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0 MEM_LPC_FILE pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6__PMIS__2048__8__8H
    // exemplar attribute pmi_ram_dqMnhscratchpad_initsadn8112048f9ce2e6_0_1_0 MEM_INIT_FILE scratchpad_init.mem
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 7.5 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 1000 -data_width 18 -num_rows 2048 -gsr DISABLED -write_mode_0 0 -memfile prom_init.mem -memformat hex -cascade -1 -n pmi_ram_dqMnhprom_initsadn18112048f3df93e -pmi -lang verilog  */
/* Mon Aug 13 14:00:12 2018 */


`timescale 1 ns / 1 ps
module pmi_ram_dqMnhprom_initsadn18112048f3df93e (Clock, ClockEn, Reset, 
    WE, Address, Data, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire Clock;
    input wire ClockEn;
    input wire Reset;
    input wire WE;
    input wire [10:0] Address;
    input wire [17:0] Data;
    output wire [17:0] Q;

    wire wren_inv;
    wire scuba_vhi;
    wire scuba_vlo;
    wire wren_inv_g;
    wire mdout0_1_0;
    wire mdout0_0_0;
    wire mdout0_1_1;
    wire mdout0_0_1;
    wire mdout0_1_2;
    wire mdout0_0_2;
    wire mdout0_1_3;
    wire mdout0_0_3;
    wire mdout0_1_4;
    wire mdout0_0_4;
    wire mdout0_1_5;
    wire mdout0_0_5;
    wire mdout0_1_6;
    wire mdout0_0_6;
    wire mdout0_1_7;
    wire mdout0_0_7;
    wire mdout0_1_8;
    wire mdout0_0_8;
    wire mdout0_1_9;
    wire mdout0_0_9;
    wire mdout0_1_10;
    wire mdout0_0_10;
    wire mdout0_1_11;
    wire mdout0_0_11;
    wire mdout0_1_12;
    wire mdout0_0_12;
    wire mdout0_1_13;
    wire mdout0_0_13;
    wire mdout0_1_14;
    wire mdout0_0_14;
    wire mdout0_1_15;
    wire mdout0_0_15;
    wire mdout0_1_16;
    wire mdout0_0_16;
    wire addr10_ff;
    wire mdout0_1_17;
    wire mdout0_0_17;

    INV INV_0 (.A(WE), .Z(wren_inv));

    AND2 AND2_t0 (.A(wren_inv), .B(ClockEn), .Z(wren_inv_g));

    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_1F = "0x0010121D10031201F1F01D1E03B0D0390C02000020007001000010100F0802118200002000120F08" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_1E = "0x02118200002000100F0802118200002000120F08021183F0F03D0E03B0D0390C020000200072D903" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_1D = "0x1D00A220182410000100024C7390D03B10000100003C7390D03B10000100002C7390D03B10000100" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_1C = "0x003C7390D03B1F81E1E81C1D81A1C8181000010001EE63D0F03F1D81A1C818100001000240721010" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_1B = "0x23100001000079812188100E63D0F03F1D81A1C81810000100022072101023100001000059812188" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_1A = "0x100E63D0F03F1D81A1C818100001000200721010231000010000398121881000621010231D81A1C8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_19 = "0x181000010001E8731090331F7206E800F08021183CDE81E1F820000200011CDE81E1F82000020001" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_18 = "0x3CDE81E1F820000200011CDE81E1F828038260281B1D0191C0001000010328038260281CFE81E1F8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_17 = "0x20000200013CFE81E1F820000200011CFE81E1F820000200013CFE81E1F828038260281B1D0191C0" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_16 = "0x00100001073CFE81E1F820000200011CFE81E1F820000200013CFE81E1F820000200011CFE81E1F8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_15 = "0x29040270303B0D0390C020000200031CDE81E1F83B0D0390C0200002000600F08021182000020003" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_14 = "0x370B0350A004D28061383B0D0390C0200002000500F08021182000020002370B0350A006D3808148" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_13 = "0x3B0D0390C0200002000400F08021182000020001370B0350A021D10031201B1D0191C00010000103" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_12 = "0x34FA8161B820D0802118200002000100D0802118200002000120D0802118200002000100D0802118" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_11 = "0x3B0D0390C02000020007200002001020000200042000020010375172000020020370B0350A020000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_10 = "0x2000122100014E63D0F03F0F0141B8161A81413000F0802118200002000333090310800510721010" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_0F = "0x231000010000598121881012000F0802118200002000133090310800208731090331000010000900" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_0E = "0x00100020A0201FF38FC81A1D806D38081483B0D0390C020000200010023727040291D81A1C818100" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_0D = "0x0010000371206E80151003120200002000E18FC81A1D8200002000138FC81A1D8200002000118FC8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_0C = "0x1A1D8200002000138FC81A1D829040270303B0D0390C0200002000B01F10031201B1D0191C000100" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_0B = "0x0010206D38081483B0D0390C0200002000E01F100312000100001031F1F01D1E006D38081483B0D0" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_0A = "0x390C0200002000D01F100312000100001021F1F01D1E006D38081483B0D0390C0200002000C01F10" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_09 = "0x0312000100001011F1F01D1E000D08021183B0D0390C0200002000B1CFE81E1F80103627040291D8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_08 = "0x1A1C81810000100005C6390D03B1031D087310903312003110010372704029100001000033727040" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_07 = "0x29100001000023727040291000010000337270402912003110010D83A0C8380002000020F0F22018" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_06 = "0x2400020000206B8360A83400F220182400020000204B8360A83410F220182400020000202B8360A8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_05 = "0x340A7350B03703627040291D81A1C818100001000140000D08021183B0D0390C020000200090000E" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_04 = "0x22018240D83A0C838000200002100006D38081483B0D0390C0200002000706F38081483B0D0390C0" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_03 = "0x200002000120D08021183B0D0390C020000200013309031080200002000420110191031D02225030" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_02 = "0x2700F20F08021182000020003330903108000F08021182000020002330903108020F080211820000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_01 = "0x20001330903108010F88121982000020010379D81A1C81810000100037FF1FFFF19A00001001DFBE" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.INITVAL_00 = "0x15BDE0084800B000010000100001071F1F4200002000120C07200000090000C3C201000010007953" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(Address[9]), .ADA11(Address[8]), .ADA10(Address[7]), .ADA9(Address[6]), 
        .ADA8(Address[5]), .ADA7(Address[4]), .ADA6(Address[3]), .ADA5(Address[2]), 
        .ADA4(Address[1]), .ADA3(Address[0]), .ADA2(scuba_vlo), .ADA1(scuba_vlo), 
        .ADA0(scuba_vhi), .CEA(ClockEn), .OCEA(ClockEn), .CLKA(Clock), .WEA(WE), 
        .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(Address[10]), .RSTA(Reset), 
        .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), 
        .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), 
        .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), 
        .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), 
        .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), 
        .ADB1(scuba_vlo), .ADB0(scuba_vlo), .CEB(scuba_vhi), .OCEB(scuba_vhi), 
        .CLKB(scuba_vlo), .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), 
        .CSB0(scuba_vlo), .RSTB(scuba_vlo), .DOA8(mdout0_0_8), .DOA7(mdout0_0_7), 
        .DOA6(mdout0_0_6), .DOA5(mdout0_0_5), .DOA4(mdout0_0_4), .DOA3(mdout0_0_3), 
        .DOA2(mdout0_0_2), .DOA1(mdout0_0_1), .DOA0(mdout0_0_0), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhprom_initsadn18112048f3df93e__PMIS__2048__18__18H" */
             /* synthesis MEM_INIT_FILE="prom_init.mem" */;

    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_1F = "0x0E2502E48610E8710481102800DE6F0DC4E13E9F13C9E0E8730E6522E88610E870E2710E0502E686" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_1E = "0x10E870E2710E0502E68610E870E2710E0502E48610E8710281100800DE6F0DC4E13E9F13C9E38090" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_1D = "0x1217410C8710E3D07A3C0397210C8710E7D0FA7C0B97110C8710E7D0FA7C0B97110C8710E7D0FA7C" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_1C = "0x0B97010C8710E8D11A8C1186F0DE6E09C9F13E9E13D7210C8710E6F0DE6E09C9F13E9E13D7210C87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_1B = "0x10E710E2700A081102801017210C8710E6F0DE6E09C9F13E9E13D7210C8710E710E2700A08110280" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_1A = "0x1017210C8710E6F0DE6E09C9F13E9E13D7210C8710E710E2700A081102801017210C8710E610C260" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_19 = "0x08091122901217210C8710FC0120902E88610E872E28610E870FE7F0FC5E2E28610E870FE7F0FC5E" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_18 = "0x2E08610E870FE7F0FC5E2E08610E8711E8F11C8E0C8630C64212893126920C2610C0402E88610E87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_17 = "0x0FE7F0FC5E2E68610E870FE7F0FC5E2E68610E870FE7F0FC5E2E48610E8711E8F11C8E0C8630C642" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_16 = "0x12893126922E28610E870FE7F0FC5E2E28610E870FE7F0FC5E2E08610E870FE7F0FC5E2E08610E87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_15 = "0x11E8F11C8E0C8640C64312894126932E48610E870DE6F0DC4E13E9F13C9E2E48610E870E2710E050" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_14 = "0x10281100802E88610E870C6630C44212693124922E88610E870E2710E05010281100802FC8610E87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_13 = "0x0C8640C64312894126932FC8610E870E2710E05010281100802E48610E870C4610C2401249112290" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_12 = "0x2E48610E872FE8610E870E2710E0502FE8610E870E2710E0502FC8610E870E2710E0502FC8610E87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_11 = "0x0C2610C040122911209013299130981369B1349A13E9F13C9E31FC1126931249210281100800F67B" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_10 = "0x0F45A382901217010C8710E501006F0DE6E09C8F2E68610E870E2710E050102811008011F7210C87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_0F = "0x10E710E2700A081102801008E2E48610E870E2710E050102811008011D7110C8710E99132981309B" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_0E = "0x1369A1358F224522E48610E872E08610E870C8640C64312894126930A17010C8710E640C86308694" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_0D = "0x12893127C1120902EC8610E8707A3D0781C2E48610E870FA7D0F85C2E28610E870FA7D0F85C2E286" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_0C = "0x10E870FA7D0F85C2E08610E8711A8D1188C0C8640C64312894126932EC8610E870C4610C24012491" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_0B = "0x122902E08610E870C8640C64312894126932E08610E870E4710E25010481102802E08610E870C864" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_0A = "0x0C64312894126932E08610E870E4710E25010481102802E08610E870C8640C64312894126932E086" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_09 = "0x10E870E4710E25010481102802E48610E870C2610C04012291120902E48610E873857610C8710E64" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_08 = "0x0C86308694128931277210C8710E901217610C8710E690D2680917210C8710E740E8730A77110C87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_07 = "0x10E740E8730A77110C8710E740E8730A77010C8710E8410883106620C26108092122911217910C87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_06 = "0x10E720E2710A082102811017910C8710E720E2710A082102811017810C8710E720E2710A08210281" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_05 = "0x1017810C8710F7010C8710E640C8630869412893126902E48610E870C2610C040122911209012573" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_04 = "0x10C8710E620C2610809212291120932E08610E870C8640C64312894126932E08610E870C8640C643" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_03 = "0x12894126932E88610E870C2610C040122911209011E8F11C8E1369B1349A12892384901217010C87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_02 = "0x10E902E68610E870E2710E05010281100802E68610E870E2710E05010281100802E48610E870E271" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_01 = "0x0E05010281100802E48610E871329913098384670CE6608C9712E9612C7D0FA7C0B9D03B08D13C9E" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.INITVAL_00 = "0x13E9F2C1C22C09F13E9E13C9D13A9C139DF0EE770EC502E18022F1731116311101209712E96121DA" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(Address[9]), .ADA11(Address[8]), .ADA10(Address[7]), .ADA9(Address[6]), 
        .ADA8(Address[5]), .ADA7(Address[4]), .ADA6(Address[3]), .ADA5(Address[2]), 
        .ADA4(Address[1]), .ADA3(Address[0]), .ADA2(scuba_vlo), .ADA1(scuba_vlo), 
        .ADA0(scuba_vhi), .CEA(ClockEn), .OCEA(ClockEn), .CLKA(Clock), .WEA(WE), 
        .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(Address[10]), .RSTA(Reset), 
        .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), 
        .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), 
        .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), 
        .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), 
        .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), 
        .ADB1(scuba_vlo), .ADB0(scuba_vlo), .CEB(scuba_vhi), .OCEB(scuba_vhi), 
        .CLKB(scuba_vlo), .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), 
        .CSB0(scuba_vlo), .RSTB(scuba_vlo), .DOA8(mdout0_0_17), .DOA7(mdout0_0_16), 
        .DOA6(mdout0_0_15), .DOA5(mdout0_0_14), .DOA4(mdout0_0_13), .DOA3(mdout0_0_12), 
        .DOA2(mdout0_0_11), .DOA1(mdout0_0_10), .DOA0(mdout0_0_9), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhprom_initsadn18112048f3df93e__PMIS__2048__18__18H" */
             /* synthesis MEM_INIT_FILE="prom_init.mem" */;

    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000020000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_14 = "0x200010CF00001000036720000200010CF00001000036720000200010CF0000100003672000020001" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_13 = "0x0CF00001000036720000200010CF00001000036720000200010CF00001000036720000200010CF00" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_12 = "0x001000036720000200010CF00001000036720000200010CF00001000036700100001000026620000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_11 = "0x200012CD00001000026620000200012CD00001000026620000200012CD0000100002662000020001" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_10 = "0x2CD00001000026620000200012CD00001000026620000200012CD00001000026620000200012CD00" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_0F = "0x001000026620000200012CD00001000026620000200012CC0023A1521A052CF00001000026720000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_0E = "0x200012CF00001000026720000200012CF00001000026720000200012CF0000100002672000020001" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_0D = "0x2CF00001000026720000200012CF00001000026720000200012CF000010000267200002042E16700" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_0C = "0x0010205D6620000200010CD00001000036620000200010CD00001000036620000200010CD0000100" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_0B = "0x0036620000200010CD00001000036620000200010CD00001000036620000200010CD000010000366" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_0A = "0x20000200010CD000010205D1C0290C008003FE020701820202060102020205008202020400020000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_09 = "0x3DD00003F720001000000000720003001031D01020003000003EF00002000000000F000060000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_08 = "0x20000200102ABD81A1C8180823109033000200002000B0140B0490A2201824000200002149832088" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_07 = "0x3001903416215100312000100001091319011180050290110A220182410000100001081319011180" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_06 = "0x05F3007140001000010E00A002000021E0608C0814FA8161B8200002000B28038260280200814FA8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_05 = "0x161B8200002000C28038260280C40820207210102310000100023400713021F10031200010000103" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_04 = "0x14FA8161B82000020002240182200834FA8161B82000020001240182200801F10031200010000104" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_03 = "0x0813806100031100110033DD81A1C8181FF1FFFF1E1B7169000010003C07200002000C001F823600" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_02 = "0x3EA1F00600020182020B0000000C0E0010000100067FA3B0D0390C0200002001B20000032FF20000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_01 = "0x2002024F28061383B0D0390C0200002000A1CFE81E1F83B0D0390C0200002000926F38081483B0D0" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.INITVAL_00 = "0x390C020000200081CFE81E1F801D1003120001000010121D1003120001000010101D100312000100" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(Address[9]), .ADA11(Address[8]), .ADA10(Address[7]), .ADA9(Address[6]), 
        .ADA8(Address[5]), .ADA7(Address[4]), .ADA6(Address[3]), .ADA5(Address[2]), 
        .ADA4(Address[1]), .ADA3(Address[0]), .ADA2(scuba_vlo), .ADA1(scuba_vlo), 
        .ADA0(scuba_vhi), .CEA(ClockEn), .OCEA(ClockEn), .CLKA(Clock), .WEA(WE), 
        .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(Address[10]), .RSTA(Reset), 
        .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), 
        .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), 
        .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), 
        .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), 
        .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), 
        .ADB1(scuba_vlo), .ADB0(scuba_vlo), .CEB(scuba_vhi), .OCEB(scuba_vhi), 
        .CLKB(scuba_vlo), .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), 
        .CSB0(scuba_vlo), .RSTB(scuba_vlo), .DOA8(mdout0_1_8), .DOA7(mdout0_1_7), 
        .DOA6(mdout0_1_6), .DOA5(mdout0_1_5), .DOA4(mdout0_1_4), .DOA3(mdout0_1_3), 
        .DOA2(mdout0_1_2), .DOA1(mdout0_1_1), .DOA0(mdout0_1_0), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhprom_initsadn18112048f3df93e__PMIS__2048__18__18H" */
             /* synthesis MEM_INIT_FILE="prom_init.mem" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_15 = "0x0000000000000000000000000000000000000000000000000000000000000000000000001C80EE77" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_14 = "0x0EC562E8770EE760AD740EE770EC562F0770EE760AD780EE770EC562F2770EE760AD790EE770EC56" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_13 = "0x2F4770EE760AD7A0EE770EC562F6770EE760AD7B0EE770EC562F8770EE760AD7C0EE770EC562FA77" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_12 = "0x0EE760AD7D0EE770EC562FC770EE760AD7E0EE770EC562FE770EE760AD7F390770EE760AD740EE77" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_11 = "0x0EC562E8770EE760AD780EE770EC562F0770EE760AD790EE770EC562F2770EE760AD7A0EE770EC56" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_10 = "0x2F4770EE760AD7B0EE770EC562F6770EE760AD7C0EE770EC562F8770EE760AD7D0EE770EC562FA77" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_0F = "0x0EE760AD7E0EE770EC562FC770EE760AD7F0EE770EC562FFD02EF772ED762EA770EE760AD750EE77" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_0E = "0x0EC562FA770EE760AD7D0EE770EC562F8770EE760AD7C0EE770EC562E6770EE760AD730EE770EC56" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_0D = "0x2E4770EE760AD720EE770EC562E2770EE760AD710EE770EC562E0770EE760AD7012E9712C9638E9D" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_0C = "0x13A9C139750EE770EC562EA770EE760AD7D0EE770EC562FA770EE760AD7C0EE770EC562F8770EE76" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_0B = "0x0AD730EE770EC562E6770EE760AD720EE770EC562E4770EE760AD710EE770EC562E2770EE760AD70" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_0A = "0x0EE770EC562E09712E9612D772EF762EDC826D8804C8612D8004C8612D8004C8612D8000C8612DC8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_09 = "0x3BE30021DF06211100801018022388222911238022188221C83BE3002080100803011031110391C8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_08 = "0x0FA7D0F85C3808710E8610D7010C8710E900F2790F058301902217210C8710E720E2710A08210281" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_07 = "0x10180321102E48610E870E4710E2501048110280301902217210C8710E920E4710E2501048110280" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_06 = "0x2E08610E870E8730E6523B0740E6730A5D8311002E08610E870F67B0F45A1168B1148A301002E086" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_05 = "0x10E870F67B0F45A1168B1148A311001217010C8710E710E2700A081102802F28610E870E4710E250" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_04 = "0x2F28610E870F67B0F45A1168B1148A2F08610E870F67B0F45A1168B1148A2F08610E870E4710E250" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_03 = "0x104811028010883106823808710E8610C7D0FA7C0B9DD3809112290121C01229112090391DF28360" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_02 = "0x3BF60301101408012380222A12C3603907D0FA7C0B9C00CE670CC4612E9712C961209031FC012693" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_01 = "0x124922E28610E870C6630C44212693124922E28610E870DE6F0DC4E13E9F13C9E2E08610E870C864" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.INITVAL_00 = "0x0C64312894126932E08610E872E88610E870E4710E2502E68610E870E4710E2502E68610E870E471" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(Address[9]), .ADA11(Address[8]), .ADA10(Address[7]), .ADA9(Address[6]), 
        .ADA8(Address[5]), .ADA7(Address[4]), .ADA6(Address[3]), .ADA5(Address[2]), 
        .ADA4(Address[1]), .ADA3(Address[0]), .ADA2(scuba_vlo), .ADA1(scuba_vlo), 
        .ADA0(scuba_vhi), .CEA(ClockEn), .OCEA(ClockEn), .CLKA(Clock), .WEA(WE), 
        .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(Address[10]), .RSTA(Reset), 
        .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), 
        .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), 
        .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), 
        .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), 
        .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), 
        .ADB1(scuba_vlo), .ADB0(scuba_vlo), .CEB(scuba_vhi), .OCEB(scuba_vhi), 
        .CLKB(scuba_vlo), .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), 
        .CSB0(scuba_vlo), .RSTB(scuba_vlo), .DOA8(mdout0_1_17), .DOA7(mdout0_1_16), 
        .DOA6(mdout0_1_15), .DOA5(mdout0_1_14), .DOA4(mdout0_1_13), .DOA3(mdout0_1_12), 
        .DOA2(mdout0_1_11), .DOA1(mdout0_1_10), .DOA0(mdout0_1_9), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhprom_initsadn18112048f3df93e__PMIS__2048__18__18H" */
             /* synthesis MEM_INIT_FILE="prom_init.mem" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(Address[10]), .SP(wren_inv_g), .CK(Clock), .CD(scuba_vlo), 
        .Q(addr10_ff))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_17 (.D0(mdout0_0_0), .D1(mdout0_1_0), .SD(addr10_ff), .Z(Q[0]));

    MUX21 mux_16 (.D0(mdout0_0_1), .D1(mdout0_1_1), .SD(addr10_ff), .Z(Q[1]));

    MUX21 mux_15 (.D0(mdout0_0_2), .D1(mdout0_1_2), .SD(addr10_ff), .Z(Q[2]));

    MUX21 mux_14 (.D0(mdout0_0_3), .D1(mdout0_1_3), .SD(addr10_ff), .Z(Q[3]));

    MUX21 mux_13 (.D0(mdout0_0_4), .D1(mdout0_1_4), .SD(addr10_ff), .Z(Q[4]));

    MUX21 mux_12 (.D0(mdout0_0_5), .D1(mdout0_1_5), .SD(addr10_ff), .Z(Q[5]));

    MUX21 mux_11 (.D0(mdout0_0_6), .D1(mdout0_1_6), .SD(addr10_ff), .Z(Q[6]));

    MUX21 mux_10 (.D0(mdout0_0_7), .D1(mdout0_1_7), .SD(addr10_ff), .Z(Q[7]));

    MUX21 mux_9 (.D0(mdout0_0_8), .D1(mdout0_1_8), .SD(addr10_ff), .Z(Q[8]));

    MUX21 mux_8 (.D0(mdout0_0_9), .D1(mdout0_1_9), .SD(addr10_ff), .Z(Q[9]));

    MUX21 mux_7 (.D0(mdout0_0_10), .D1(mdout0_1_10), .SD(addr10_ff), .Z(Q[10]));

    MUX21 mux_6 (.D0(mdout0_0_11), .D1(mdout0_1_11), .SD(addr10_ff), .Z(Q[11]));

    MUX21 mux_5 (.D0(mdout0_0_12), .D1(mdout0_1_12), .SD(addr10_ff), .Z(Q[12]));

    MUX21 mux_4 (.D0(mdout0_0_13), .D1(mdout0_1_13), .SD(addr10_ff), .Z(Q[13]));

    MUX21 mux_3 (.D0(mdout0_0_14), .D1(mdout0_1_14), .SD(addr10_ff), .Z(Q[14]));

    MUX21 mux_2 (.D0(mdout0_0_15), .D1(mdout0_1_15), .SD(addr10_ff), .Z(Q[15]));

    MUX21 mux_1 (.D0(mdout0_0_16), .D1(mdout0_1_16), .SD(addr10_ff), .Z(Q[16]));

    MUX21 mux_0 (.D0(mdout0_0_17), .D1(mdout0_1_17), .SD(addr10_ff), .Z(Q[17]));



    // exemplar begin
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3 MEM_LPC_FILE pmi_ram_dqMnhprom_initsadn18112048f3df93e__PMIS__2048__18__18H
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_0_3 MEM_INIT_FILE prom_init.mem
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2 MEM_LPC_FILE pmi_ram_dqMnhprom_initsadn18112048f3df93e__PMIS__2048__18__18H
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f3df93e_0_1_2 MEM_INIT_FILE prom_init.mem
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1 MEM_LPC_FILE pmi_ram_dqMnhprom_initsadn18112048f3df93e__PMIS__2048__18__18H
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_0_1 MEM_INIT_FILE prom_init.mem
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0 MEM_LPC_FILE pmi_ram_dqMnhprom_initsadn18112048f3df93e__PMIS__2048__18__18H
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f3df93e_1_1_0 MEM_INIT_FILE prom_init.mem
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 3.9 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type sdpram -num_rows 32 -data_width 8 -memformat bin -n pmi_distributed_dpramMbnonen853292a5343 -pmi -lang verilog  */
/* Mon Aug 13 14:00:13 2018 */


`timescale 1 ns / 1 ps
module pmi_distributed_dpramMbnonen853292a5343 (WrAddress, Data, WrClock, 
    WE, WrClockEn, RdAddress, RdClockEn, RdClockEn, Reset, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [4:0] WrAddress;
    input wire [7:0] Data;
    input wire WrClock;
    input wire WE;
    input wire WrClockEn;
    input wire [4:0] RdAddress;
    input wire RdClockEn;
    input wire RdClockEn;
    input wire Reset;
    output wire [7:0] Q;

    wire waddr4_inv;
    wire scuba_vhi;
    wire mdL0_0_7;
    wire mdL0_0_6;
    wire mdL0_0_5;
    wire mdL0_0_4;
    wire mdL0_0_3;
    wire mdL0_0_2;
    wire mdL0_0_1;
    wire mdL0_0_0;
    wire dec0_wre3;
    wire mdL0_1_7;
    wire mdL0_1_6;
    wire mdL0_1_5;
    wire mdL0_1_4;
    wire mdL0_1_3;
    wire mdL0_1_2;
    wire mdL0_1_1;
    wire mdL0_1_0;
    wire dec1_wre7;

    INV INV_0 (.A(WrAddress[4]), .Z(waddr4_inv));

    defparam LUT4_1.initval =  16'h8000 ;
    ROM16X1A LUT4_1 (.AD3(WE), .AD2(WrClockEn), .AD1(waddr4_inv), .AD0(scuba_vhi), 
        .DO0(dec0_wre3));

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam LUT4_0.initval =  16'h8000 ;
    ROM16X1A LUT4_0 (.AD3(WE), .AD2(WrClockEn), .AD1(WrAddress[4]), .AD0(scuba_vhi), 
        .DO0(dec1_wre7));

    MUX21 mux_7 (.D0(mdL0_0_7), .D1(mdL0_1_7), .SD(RdAddress[4]), .Z(Q[7]));

    MUX21 mux_6 (.D0(mdL0_0_6), .D1(mdL0_1_6), .SD(RdAddress[4]), .Z(Q[6]));

    MUX21 mux_5 (.D0(mdL0_0_5), .D1(mdL0_1_5), .SD(RdAddress[4]), .Z(Q[5]));

    MUX21 mux_4 (.D0(mdL0_0_4), .D1(mdL0_1_4), .SD(RdAddress[4]), .Z(Q[4]));

    MUX21 mux_3 (.D0(mdL0_0_3), .D1(mdL0_1_3), .SD(RdAddress[4]), .Z(Q[3]));

    MUX21 mux_2 (.D0(mdL0_0_2), .D1(mdL0_1_2), .SD(RdAddress[4]), .Z(Q[2]));

    MUX21 mux_1 (.D0(mdL0_0_1), .D1(mdL0_1_1), .SD(RdAddress[4]), .Z(Q[1]));

    MUX21 mux_0 (.D0(mdL0_0_0), .D1(mdL0_1_0), .SD(RdAddress[4]), .Z(Q[0]));

    defparam mem_0_0.initval = "0x0000000000000000" ;
    DPR16X4C mem_0_0 (.DI0(Data[4]), .DI1(Data[5]), .DI2(Data[6]), .DI3(Data[7]), 
        .WCK(WrClock), .WRE(dec0_wre3), .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), 
        .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), 
        .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), .DO0(mdL0_0_4), .DO1(mdL0_0_5), 
        .DO2(mdL0_0_6), .DO3(mdL0_0_7))
             /* synthesis MEM_INIT_FILE="(0-15)(0-3)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramMbnonen853292a5343__PMI__32__8__8B" */
             /* synthesis COMP="mem_0_0" */;

    defparam mem_0_1.initval = "0x0000000000000000" ;
    DPR16X4C mem_0_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), .DI3(Data[3]), 
        .WCK(WrClock), .WRE(dec0_wre3), .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), 
        .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), 
        .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), .DO0(mdL0_0_0), .DO1(mdL0_0_1), 
        .DO2(mdL0_0_2), .DO3(mdL0_0_3))
             /* synthesis MEM_INIT_FILE="(0-15)(4-7)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramMbnonen853292a5343__PMI__32__8__8B" */
             /* synthesis COMP="mem_0_1" */;

    defparam mem_1_0.initval = "0x0000000000000000" ;
    DPR16X4C mem_1_0 (.DI0(Data[4]), .DI1(Data[5]), .DI2(Data[6]), .DI3(Data[7]), 
        .WCK(WrClock), .WRE(dec1_wre7), .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), 
        .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), 
        .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), .DO0(mdL0_1_4), .DO1(mdL0_1_5), 
        .DO2(mdL0_1_6), .DO3(mdL0_1_7))
             /* synthesis MEM_INIT_FILE="(16-31)(0-3)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramMbnonen853292a5343__PMI__32__8__8B" */
             /* synthesis COMP="mem_1_0" */;

    defparam mem_1_1.initval = "0x0000000000000000" ;
    DPR16X4C mem_1_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), .DI3(Data[3]), 
        .WCK(WrClock), .WRE(dec1_wre7), .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), 
        .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), 
        .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), .DO0(mdL0_1_0), .DO1(mdL0_1_1), 
        .DO2(mdL0_1_2), .DO3(mdL0_1_3))
             /* synthesis MEM_INIT_FILE="(16-31)(4-7)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramMbnonen853292a5343__PMI__32__8__8B" */
             /* synthesis COMP="mem_1_1" */;



    // exemplar begin
    // exemplar attribute mem_0_0 MEM_INIT_FILE (0-15)(0-3)
    // exemplar attribute mem_0_0 MEM_LPC_FILE pmi_distributed_dpramMbnonen853292a5343__PMI__32__8__8B
    // exemplar attribute mem_0_0 COMP mem_0_0
    // exemplar attribute mem_0_1 MEM_INIT_FILE (0-15)(4-7)
    // exemplar attribute mem_0_1 MEM_LPC_FILE pmi_distributed_dpramMbnonen853292a5343__PMI__32__8__8B
    // exemplar attribute mem_0_1 COMP mem_0_1
    // exemplar attribute mem_1_0 MEM_INIT_FILE (16-31)(0-3)
    // exemplar attribute mem_1_0 MEM_LPC_FILE pmi_distributed_dpramMbnonen853292a5343__PMI__32__8__8B
    // exemplar attribute mem_1_0 COMP mem_1_0
    // exemplar attribute mem_1_1 MEM_INIT_FILE (16-31)(4-7)
    // exemplar attribute mem_1_1 MEM_LPC_FILE pmi_distributed_dpramMbnonen853292a5343__PMI__32__8__8B
    // exemplar attribute mem_1_1 COMP mem_1_1
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 3.9 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type sspram -num_rows 16 -data_width 13 -memformat bin -n pmi_distributed_spramMbnonen1341693c3d10 -pmi -lang verilog  */
/* Mon Aug 13 14:00:14 2018 */


`timescale 1 ns / 1 ps
module pmi_distributed_spramMbnonen1341693c3d10 (Address, Data, Clock, 
    WE, ClockEn, Reset, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] Address;
    input wire [12:0] Data;
    input wire Clock;
    input wire WE;
    input wire ClockEn;
    input wire Reset;
    output wire [12:0] Q;

    wire scuba_vhi;
    wire dec0_wre3;

    defparam LUT4_0.initval =  16'h8000 ;
    ROM16X1A LUT4_0 (.AD3(WE), .AD2(ClockEn), .AD1(scuba_vhi), .AD0(scuba_vhi), 
        .DO0(dec0_wre3));

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam mem_0_0.initval = "0x0000000000000000" ;
    SPR16X4C mem_0_0 (.DI0(Data[12]), .DI1(scuba_vhi), .DI2(scuba_vhi), 
        .DI3(scuba_vhi), .CK(Clock), .WRE(dec0_wre3), .AD0(Address[0]), 
        .AD1(Address[1]), .AD2(Address[2]), .AD3(Address[3]), .DO0(Q[12]), 
        .DO1(), .DO2(), .DO3())
             /* synthesis MEM_INIT_FILE="(0-15)(0-3)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_spramMbnonen1341693c3d10__PMI__16__13__13B" */
             /* synthesis COMP="mem_0_0" */;

    defparam mem_0_1.initval = "0x0000000000000000" ;
    SPR16X4C mem_0_1 (.DI0(Data[8]), .DI1(Data[9]), .DI2(Data[10]), .DI3(Data[11]), 
        .CK(Clock), .WRE(dec0_wre3), .AD0(Address[0]), .AD1(Address[1]), 
        .AD2(Address[2]), .AD3(Address[3]), .DO0(Q[8]), .DO1(Q[9]), .DO2(Q[10]), 
        .DO3(Q[11]))
             /* synthesis MEM_INIT_FILE="(0-15)(4-7)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_spramMbnonen1341693c3d10__PMI__16__13__13B" */
             /* synthesis COMP="mem_0_1" */;

    defparam mem_0_2.initval = "0x0000000000000000" ;
    SPR16X4C mem_0_2 (.DI0(Data[4]), .DI1(Data[5]), .DI2(Data[6]), .DI3(Data[7]), 
        .CK(Clock), .WRE(dec0_wre3), .AD0(Address[0]), .AD1(Address[1]), 
        .AD2(Address[2]), .AD3(Address[3]), .DO0(Q[4]), .DO1(Q[5]), .DO2(Q[6]), 
        .DO3(Q[7]))
             /* synthesis MEM_INIT_FILE="(0-15)(8-11)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_spramMbnonen1341693c3d10__PMI__16__13__13B" */
             /* synthesis COMP="mem_0_2" */;

    defparam mem_0_3.initval = "0x0000000000000000" ;
    SPR16X4C mem_0_3 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), .DI3(Data[3]), 
        .CK(Clock), .WRE(dec0_wre3), .AD0(Address[0]), .AD1(Address[1]), 
        .AD2(Address[2]), .AD3(Address[3]), .DO0(Q[0]), .DO1(Q[1]), .DO2(Q[2]), 
        .DO3(Q[3]))
             /* synthesis MEM_INIT_FILE="(0-15)(12-12)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_spramMbnonen1341693c3d10__PMI__16__13__13B" */
             /* synthesis COMP="mem_0_3" */;



    // exemplar begin
    // exemplar attribute mem_0_0 MEM_INIT_FILE (0-15)(0-3)
    // exemplar attribute mem_0_0 MEM_LPC_FILE pmi_distributed_spramMbnonen1341693c3d10__PMI__16__13__13B
    // exemplar attribute mem_0_0 COMP mem_0_0
    // exemplar attribute mem_0_1 MEM_INIT_FILE (0-15)(4-7)
    // exemplar attribute mem_0_1 MEM_LPC_FILE pmi_distributed_spramMbnonen1341693c3d10__PMI__16__13__13B
    // exemplar attribute mem_0_1 COMP mem_0_1
    // exemplar attribute mem_0_2 MEM_INIT_FILE (0-15)(8-11)
    // exemplar attribute mem_0_2 MEM_LPC_FILE pmi_distributed_spramMbnonen1341693c3d10__PMI__16__13__13B
    // exemplar attribute mem_0_2 COMP mem_0_2
    // exemplar attribute mem_0_3 MEM_INIT_FILE (0-15)(12-12)
    // exemplar attribute mem_0_3 MEM_LPC_FILE pmi_distributed_spramMbnonen1341693c3d10__PMI__16__13__13B
    // exemplar attribute mem_0_3 COMP mem_0_3
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 3.5 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -arch xo2c00 -n pmi_addsubMo884942741 -bb -bus_exp 7 -type addsub -width 8 -unsigned -port ci -port co -pmi -lang verilog  */
/* Mon Aug 13 14:00:13 2018 */


`timescale 1 ns / 1 ps
module pmi_addsubMo884942741 (DataA, DataB, Cin, Add_Sub, Result, Cout, 
    Overflow)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] DataA;
    input wire [7:0] DataB;
    input wire Cin;
    input wire Add_Sub;
    output wire [7:0] Result;
    output wire Cout;
    output wire Overflow;

    wire scuba_vhi;
    wire precin;
    wire ci_k;
    wire co0;
    wire co1;
    wire co2;
    wire co3;
    wire add_sub_inv;
    wire co4d;
    wire co4;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    XNOR2 XNOR2_t0 (.A(Cin), .B(Add_Sub), .Z(ci_k));

    INV INV_0 (.A(Add_Sub), .Z(add_sub_inv));

    FADD2B precin_inst30 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), 
        .B1(scuba_vlo), .CI(scuba_vlo), .COUT(precin), .S0(), .S1());

    FADSU2 addsub_0 (.A0(Cin), .A1(DataA[0]), .B0(ci_k), .B1(DataB[0]), 
        .BCI(precin), .CON(Add_Sub), .BCO(co0), .S0(), .S1(Result[0]));

    FADSU2 addsub_1 (.A0(DataA[1]), .A1(DataA[2]), .B0(DataB[1]), .B1(DataB[2]), 
        .BCI(co0), .CON(Add_Sub), .BCO(co1), .S0(Result[1]), .S1(Result[2]));

    FADSU2 addsub_2 (.A0(DataA[3]), .A1(DataA[4]), .B0(DataB[3]), .B1(DataB[4]), 
        .BCI(co1), .CON(Add_Sub), .BCO(co2), .S0(Result[3]), .S1(Result[4]));

    FADSU2 addsub_3 (.A0(DataA[5]), .A1(DataA[6]), .B0(DataB[5]), .B1(DataB[6]), 
        .BCI(co2), .CON(Add_Sub), .BCO(co3), .S0(Result[5]), .S1(Result[6]));

    FADSU2 addsub_4 (.A0(DataA[7]), .A1(scuba_vlo), .B0(DataB[7]), .B1(add_sub_inv), 
        .BCI(co3), .CON(Add_Sub), .BCO(co4), .S0(Result[7]), .S1(Cout));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FADD2B addsubd (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
        .CI(co4), .COUT(), .S0(co4d), .S1());



    // exemplar begin
    // exemplar end

endmodule
