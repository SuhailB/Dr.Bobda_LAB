// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Jun 11 14:47:14 2018
//
// Verilog Description of module platform1_top
//

module platform1_top (reset_n, uartSIN, uartSOUT, LEDPIO_OUT) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(2[8:21])
    input reset_n;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(4[7:14])
    input uartSIN;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(5[7:14])
    output uartSOUT;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(6[8:16])
    output [3:0]LEDPIO_OUT;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(7[14:24])
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    
    wire reset_n_c, uartSIN_c, uartSOUT_c, LEDPIO_OUT_c_3, LEDPIO_OUT_c_2, 
        LEDPIO_OUT_c_1, LEDPIO_OUT_c_0, VCC_net;
    wire [2:0]counter;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(402[11:18])
    
    wire n6934, GND_net;
    
    VHI i5 (.Z(VCC_net));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(clk_in)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "24.18";
    IB uartSIN_pad (.I(uartSIN), .O(uartSIN_c));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(5[7:14])
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(4[7:14])
    OB LEDPIO_OUT_pad_0 (.I(LEDPIO_OUT_c_0), .O(LEDPIO_OUT[0]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(7[14:24])
    OB LEDPIO_OUT_pad_1 (.I(LEDPIO_OUT_c_1), .O(LEDPIO_OUT[1]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(7[14:24])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n6934)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    OB LEDPIO_OUT_pad_2 (.I(LEDPIO_OUT_c_2), .O(LEDPIO_OUT[2]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(7[14:24])
    OB LEDPIO_OUT_pad_3 (.I(LEDPIO_OUT_c_3), .O(LEDPIO_OUT[3]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(7[14:24])
    OB uartSOUT_pad (.I(uartSOUT_c), .O(uartSOUT));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(6[8:16])
    platform1 platform1_u (.clk_in(clk_in), .\counter[2] (counter[2]), .n6934(n6934), 
            .reset_n_c(reset_n_c), .uartSIN_c(uartSIN_c), .uartSOUT_c(uartSOUT_c), 
            .VCC_net(VCC_net), .LEDPIO_OUT_c_2(LEDPIO_OUT_c_2), .LEDPIO_OUT_c_3(LEDPIO_OUT_c_3), 
            .LEDPIO_OUT_c_0(LEDPIO_OUT_c_0), .LEDPIO_OUT_c_1(LEDPIO_OUT_c_1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(13[11] 20[2])
    GSR GSR_INST (.GSR(counter[2]));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module platform1
//

module platform1 (clk_in, \counter[2] , n6934, reset_n_c, uartSIN_c, 
            uartSOUT_c, VCC_net, LEDPIO_OUT_c_2, LEDPIO_OUT_c_3, LEDPIO_OUT_c_0, 
            LEDPIO_OUT_c_1) /* synthesis syn_module_defined=1 */ ;
    input clk_in;
    output \counter[2] ;
    input n6934;
    input reset_n_c;
    input uartSIN_c;
    output uartSOUT_c;
    input VCC_net;
    output LEDPIO_OUT_c_2;
    output LEDPIO_OUT_c_3;
    output LEDPIO_OUT_c_0;
    output LEDPIO_OUT_c_1;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    wire [2:0]n30;
    
    wire counter_2__N_142, reset_n_N_41;
    wire [2:0]n17;
    
    wire n3032;
    wire [7:0]uartUART_DAT_O;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(394[12:26])
    
    wire ext_wb_state;
    wire [7:0]save_data;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(413[15:24])
    wire [7:0]ext_io_din;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(142[22:32])
    
    wire n6447, n6448, LEDGPIO_ACK_O, n1648, n2068, n6462, PIO_OUT_3__N_935;
    wire [7:0]page_ptr1;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(115[21:30])
    
    wire n6527, n5954, n53, n5978;
    wire [31:0]D_ADR_O_31__N_465;
    
    wire n5911, n5236, n5824, n6528, n5943, n5982, n6449, n6463;
    wire [1:0]selected;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(244[15:23])
    wire [0:0]n1;
    
    wire n2394, n6499, n6444, n6451, n5, n6376, n5900, n6458;
    wire [15:0]ext_addr;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(134[29:37])
    
    wire n6456, n6457, n6452, n6530, n14, n6446, n32, n46, n5921, 
        n6445, LM8interrupts_0__N_34, n6459, clk_in_enable_82, n7, 
        clk_in_enable_79, n6531, PIO_OUT_3__N_933;
    wire [7:0]LM8D_DAT_O;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(372[12:22])
    wire [31:0]SHAREDBUS_DAT_I;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(344[13:28])
    
    wire n6454, n6405, core_rst_n, clk_in_enable_15;
    wire [6:0]lcr;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(448[19:22])
    wire [2:0]ier;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(454[19:22])
    
    wire n6037, n6474, uartUART_ACK_O, n6533, n2961;
    wire [7:0]RBR;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(204[33:36])
    
    wire n11;
    wire [7:0]n1160;
    wire [7:0]dat_o_7__N_1029;
    
    wire clk_in_enable_43, n2_adj_1434, n2931, n4, n2915, n2916, 
        n2956, n2661;
    wire [6:0]n15;
    
    wire n6455, rx_rdy, n6461, n6460, clk_in_enable_36, GPIO_WE_I_N_949, 
        clk_in_enable_51, clk_in_enable_57, clk_in_enable_64, n5435, 
        clk_in_enable_72, cs_state_2__N_1061, n6039;
    
    FD1P3DX counter_693__i0 (.D(n17[0]), .SP(counter_2__N_142), .CK(clk_in), 
            .CD(reset_n_N_41), .Q(n30[0]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(409[15:29])
    defparam counter_693__i0.GSR = "DISABLED";
    FD1P3DX counter_693__i2 (.D(n6934), .SP(n17[2]), .CK(clk_in), .CD(reset_n_N_41), 
            .Q(\counter[2] ));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(409[15:29])
    defparam counter_693__i2.GSR = "DISABLED";
    FD1P3DX counter_693__i1 (.D(n17[1]), .SP(counter_2__N_142), .CK(clk_in), 
            .CD(reset_n_N_41), .Q(n30[1]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(409[15:29])
    defparam counter_693__i1.GSR = "DISABLED";
    LUT4 save_data_7__I_0_64_i8_3_lut_4_lut (.A(n3032), .B(uartUART_DAT_O[7]), 
         .C(ext_wb_state), .D(save_data[7]), .Z(ext_io_din[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam save_data_7__I_0_64_i8_3_lut_4_lut.init = 16'h8f80;
    LUT4 save_data_7__I_0_64_i3_3_lut_4_lut (.A(n3032), .B(uartUART_DAT_O[2]), 
         .C(ext_wb_state), .D(save_data[2]), .Z(ext_io_din[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam save_data_7__I_0_64_i3_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_119 (.A(n3032), .B(uartUART_DAT_O[3]), .Z(n6447)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_119.init = 16'h8888;
    LUT4 save_data_7__I_0_64_i4_3_lut_4_lut (.A(n3032), .B(uartUART_DAT_O[3]), 
         .C(ext_wb_state), .D(save_data[3]), .Z(ext_io_din[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam save_data_7__I_0_64_i4_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_120 (.A(n3032), .B(uartUART_DAT_O[4]), .Z(n6448)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_120.init = 16'h8888;
    LUT4 i1_2_lut_4_lut (.A(LEDGPIO_ACK_O), .B(n1648), .C(n2068), .D(n6462), 
         .Z(PIO_OUT_3__N_935)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 i5178_2_lut_rep_199 (.A(page_ptr1[1]), .B(page_ptr1[0]), .Z(n6527)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5178_2_lut_rep_199.init = 16'heeee;
    LUT4 i5215_2_lut_3_lut (.A(page_ptr1[1]), .B(page_ptr1[0]), .C(page_ptr1[3]), 
         .Z(n5954)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5215_2_lut_3_lut.init = 16'hfefe;
    LUT4 i5238_2_lut_4_lut (.A(LEDGPIO_ACK_O), .B(n1648), .C(n2068), .D(n53), 
         .Z(n5978)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5238_2_lut_4_lut.init = 16'hfffe;
    LUT4 save_data_7__I_0_64_i5_3_lut_4_lut (.A(n3032), .B(uartUART_DAT_O[4]), 
         .C(ext_wb_state), .D(save_data[4]), .Z(ext_io_din[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam save_data_7__I_0_64_i5_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_4_lut_4_lut (.A(D_ADR_O_31__N_465[31]), .B(n6462), .C(n5911), 
         .D(n5236), .Z(n5824)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(476[1] 478[2])
    defparam i1_4_lut_4_lut.init = 16'h0800;
    LUT4 i5241_3_lut_4_lut (.A(page_ptr1[1]), .B(page_ptr1[0]), .C(n6528), 
         .D(n5943), .Z(n5982)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5241_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2928_2_lut_rep_200 (.A(page_ptr1[3]), .B(page_ptr1[5]), .Z(n6528)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2928_2_lut_rep_200.init = 16'heeee;
    LUT4 i1_2_lut_rep_121 (.A(n3032), .B(uartUART_DAT_O[5]), .Z(n6449)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_121.init = 16'h8888;
    LUT4 save_data_7__I_0_64_i6_3_lut_4_lut (.A(n3032), .B(uartUART_DAT_O[5]), 
         .C(ext_wb_state), .D(save_data[5]), .Z(ext_io_din[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam save_data_7__I_0_64_i6_3_lut_4_lut.init = 16'h8f80;
    LUT4 i4313_3_lut (.A(\counter[2] ), .B(n30[1]), .C(n30[0]), .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(409[15:29])
    defparam i4313_3_lut.init = 16'h6a6a;
    LUT4 i4306_2_lut (.A(n30[1]), .B(n30[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(409[15:29])
    defparam i4306_2_lut.init = 16'h6666;
    LUT4 i2345_4_lut (.A(n6463), .B(selected[1]), .C(n1[0]), .D(n5824), 
         .Z(n2394)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A ((C)+!B))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(244[15:23])
    defparam i2345_4_lut.init = 16'h2e26;
    LUT4 i3_3_lut_rep_171_4_lut (.A(page_ptr1[3]), .B(page_ptr1[5]), .C(page_ptr1[6]), 
         .D(page_ptr1[4]), .Z(n6499)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_rep_171_4_lut.init = 16'hfffe;
    LUT4 i4304_1_lut (.A(n30[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(409[15:29])
    defparam i4304_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_116 (.A(n3032), .B(uartUART_DAT_O[0]), .Z(n6444)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_116.init = 16'h8888;
    LUT4 i1_2_lut_rep_123 (.A(n3032), .B(uartUART_DAT_O[6]), .Z(n6451)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_123.init = 16'h8888;
    LUT4 save_data_7__I_0_64_i7_3_lut_4_lut (.A(n3032), .B(uartUART_DAT_O[6]), 
         .C(ext_wb_state), .D(save_data[6]), .Z(ext_io_din[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam save_data_7__I_0_64_i7_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_4_lut_adj_138 (.A(page_ptr1[4]), .B(n6528), .C(page_ptr1[6]), 
         .D(n6527), .Z(n5)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(583[22:82])
    defparam i1_2_lut_4_lut_adj_138.init = 16'hfffe;
    LUT4 n640_bdd_3_lut_4_lut (.A(n3032), .B(uartUART_DAT_O[0]), .C(ext_wb_state), 
         .D(save_data[0]), .Z(n6376)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n640_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2_4_lut (.A(n5900), .B(n6458), .C(ext_addr[7]), .D(n6462), 
         .Z(n2068)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(583[22:82])
    defparam i2_4_lut.init = 16'hfeee;
    LUT4 i1_4_lut (.A(n6456), .B(n6457), .C(n5), .D(page_ptr1[7]), .Z(n5900)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(583[22:82])
    defparam i1_4_lut.init = 16'h7775;
    LUT4 i1_2_lut_rep_124 (.A(n3032), .B(uartUART_DAT_O[7]), .Z(n6452)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_124.init = 16'h8888;
    LUT4 i1_2_lut_rep_202 (.A(ext_addr[5]), .B(ext_addr[6]), .Z(n6530)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_202.init = 16'heeee;
    LUT4 i2_4_lut_adj_139 (.A(n2068), .B(n1648), .C(n14), .D(ext_addr[4]), 
         .Z(n3032)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_139.init = 16'h0400;
    LUT4 i5176_2_lut_3_lut (.A(ext_addr[5]), .B(ext_addr[6]), .C(ext_addr[7]), 
         .Z(n5911)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5176_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_118 (.A(n3032), .B(uartUART_DAT_O[2]), .Z(n6446)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_118.init = 16'h8888;
    LUT4 i2_4_lut_adj_140 (.A(n32), .B(n6456), .C(n5911), .D(n46), .Z(n1[0])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(476[1] 478[2])
    defparam i2_4_lut_adj_140.init = 16'h0800;
    LUT4 i1_4_lut_adj_141 (.A(n5943), .B(n6457), .C(n5921), .D(n5954), 
         .Z(n32)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(476[1] 478[2])
    defparam i1_4_lut_adj_141.init = 16'hcccd;
    LUT4 i5184_2_lut (.A(page_ptr1[5]), .B(page_ptr1[2]), .Z(n5921)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5184_2_lut.init = 16'heeee;
    LUT4 i5205_3_lut (.A(page_ptr1[4]), .B(page_ptr1[7]), .C(page_ptr1[6]), 
         .Z(n5943)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5205_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_117 (.A(uartUART_DAT_O[1]), .B(n3032), .Z(n6445)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(583[22:82])
    defparam i1_2_lut_rep_117.init = 16'h8888;
    LUT4 counter_2__I_0_1_lut (.A(\counter[2] ), .Z(counter_2__N_142)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(403[18:29])
    defparam counter_2__I_0_1_lut.init = 16'h5555;
    LUT4 i2335_3_lut_4_lut (.A(uartUART_DAT_O[1]), .B(n3032), .C(ext_wb_state), 
         .D(save_data[1]), .Z(ext_io_din[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(583[22:82])
    defparam i2335_3_lut_4_lut.init = 16'h8f80;
    LUT4 reset_n_I_0_1_lut (.A(reset_n_c), .Z(reset_n_N_41)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(405[5:20])
    defparam reset_n_I_0_1_lut.init = 16'h5555;
    \arbiter2(MAX_DAT_WIDTH=8,WBS_DAT_WIDTH=8,WBM0_DAT_WIDTH=8,WBM1_DAT_WIDTH=8)  arbiter (.\selected[1] (selected[1]), 
            .clk_in(clk_in), .n2394(n2394), .LM8interrupts_0__N_34(LM8interrupts_0__N_34), 
            .n6459(n6459), .clk_in_enable_82(clk_in_enable_82), .n7(n7), 
            .clk_in_enable_79(clk_in_enable_79), .\ext_addr[1] (ext_addr[1]), 
            .n6462(n6462), .n6531(n6531), .n5978(n5978), .PIO_OUT_3__N_933(PIO_OUT_3__N_933), 
            .LM8D_DAT_O({LM8D_DAT_O}), .\SHAREDBUS_DAT_I[4] (SHAREDBUS_DAT_I[4]), 
            .n11({n1}), .n6454(n6454), .ext_wb_state(ext_wb_state), .n6405(n6405), 
            .core_rst_n(core_rst_n), .clk_in_enable_15(clk_in_enable_15), 
            .\lcr[2] (lcr[2]), .\ier[2] (ier[2]), .n6037(n6037), .\SHAREDBUS_DAT_I[5] (SHAREDBUS_DAT_I[5]), 
            .\SHAREDBUS_DAT_I[6] (SHAREDBUS_DAT_I[6]), .\SHAREDBUS_DAT_I[7] (SHAREDBUS_DAT_I[7]), 
            .\SHAREDBUS_DAT_I[0] (SHAREDBUS_DAT_I[0]), .n6474(n6474), .\page_ptr1[2] (page_ptr1[2]), 
            .n5982(n5982), .n5236(n5236), .\ext_addr[4] (ext_addr[4]), 
            .uartUART_ACK_O(uartUART_ACK_O), .LEDGPIO_ACK_O(LEDGPIO_ACK_O), 
            .n46(n46), .n6533(n6533), .n2961(n2961), .\RBR[6] (RBR[6]), 
            .n11_adj_1(n11), .n1161(n1160[7]), .\dat_o_7__N_1029[7] (dat_o_7__N_1029[7]), 
            .n6463(n6463), .clk_in_enable_43(clk_in_enable_43), .n2(n2_adj_1434), 
            .\RBR[0] (RBR[0]), .n2931(n2931), .n53(n53), .n4(n4), .n6530(n6530), 
            .n1648(n1648), .n6458(n6458), .\SHAREDBUS_DAT_I[3] (SHAREDBUS_DAT_I[3]), 
            .n2915(n2915), .\RBR[4] (RBR[4]), .n2916(n2916), .n2956(n2956), 
            .\RBR[5] (RBR[5]), .n1163(n1160[5]), .\SHAREDBUS_DAT_I[2] (SHAREDBUS_DAT_I[2]), 
            .\SHAREDBUS_DAT_I[1] (SHAREDBUS_DAT_I[1]), .n2068(n2068), .n2661(n2661)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(425[1] 466[20])
    \uart_core(CLK_IN_MHZ=25.0)  LM8interrupts_0__I_0 (.clk_in(clk_in), .parity_even(n15[4]), 
            .parity_stick(n15[5]), .parity_en(n15[3]), .\lcr[2] (lcr[2]), 
            .n11(n11), .n7(n7), .\RBR[0] (RBR[0]), .clk_in_enable_82(clk_in_enable_82), 
            .\RBR[5] (RBR[5]), .\RBR[4] (RBR[4]), .\RBR[3] (RBR[3]), .\RBR[1] (RBR[1]), 
            .uartSIN_c(uartSIN_c), .n6455(n6455), .rx_rdy(rx_rdy), .n6934(n6934), 
            .n6461(n6461), .clk_in_enable_79(clk_in_enable_79), .n2661(n2661), 
            .\RBR[6] (RBR[6]), .\RBR[7] (RBR[7]), .ier({ier}), .LM8interrupts_0__N_34(LM8interrupts_0__N_34), 
            .n6459(n6459), .n6037(n6037), .n6460(n6460), .clk_in_enable_36(clk_in_enable_36), 
            .\SHAREDBUS_DAT_I[3] (SHAREDBUS_DAT_I[3]), .\SHAREDBUS_DAT_I[2] (SHAREDBUS_DAT_I[2]), 
            .\SHAREDBUS_DAT_I[1] (SHAREDBUS_DAT_I[1]), .uartUART_ACK_O(uartUART_ACK_O), 
            .\SHAREDBUS_DAT_I[0] (SHAREDBUS_DAT_I[0]), .uartUART_DAT_O({uartUART_DAT_O}), 
            .clk_in_enable_43(clk_in_enable_43), .\dat_o_7__N_1029[0] (dat_o_7__N_1029[0]), 
            .GPIO_WE_I_N_949(GPIO_WE_I_N_949), .clk_in_enable_51(clk_in_enable_51), 
            .clk_in_enable_57(clk_in_enable_57), .clk_in_enable_64(clk_in_enable_64), 
            .tx_break(n15[6]), .uartSOUT_c(uartSOUT_c), .\SHAREDBUS_DAT_I[4] (SHAREDBUS_DAT_I[4]), 
            .\SHAREDBUS_DAT_I[5] (SHAREDBUS_DAT_I[5]), .\SHAREDBUS_DAT_I[6] (SHAREDBUS_DAT_I[6]), 
            .\SHAREDBUS_DAT_I[7] (SHAREDBUS_DAT_I[7]), .\dat_o_7__N_1029[7] (dat_o_7__N_1029[7]), 
            .n5435(n5435), .clk_in_enable_72(clk_in_enable_72), .cs_state_2__N_1061(cs_state_2__N_1061), 
            .n2916(n2916), .n1163(n1160[5]), .\ext_addr[1] (ext_addr[1]), 
            .n6462(n6462), .n53(n53), .n2(n2_adj_1434), .n4(n4), .n6039(n6039)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(599[2] 616[32])
    lm8_renamed_due_excessive_length_1 LM8 (.save_data({save_data}), .clk_in(clk_in), 
            .clk_in_enable_15(clk_in_enable_15), .n6449(n6449), .n6448(n6448), 
            .n6447(n6447), .n6446(n6446), .n6445(n6445), .n6444(n6444), 
            .ext_wb_state(ext_wb_state), .n11({n1}), .core_rst_n(core_rst_n), 
            .VCC_net(VCC_net), .LM8D_DAT_O({LM8D_DAT_O}), .\ext_addr[7] (ext_addr[7]), 
            .\ext_addr[6] (ext_addr[6]), .\ext_addr[5] (ext_addr[5]), .\ext_addr[4] (ext_addr[4]), 
            .\ext_addr[1] (ext_addr[1]), .n6934(n6934), .n6452(n6452), 
            .n6451(n6451), .\selected[1] (selected[1]), .n6460(n6460), 
            .n6531(n6531), .n6459(n6459), .n6454(n6454), .n6405(n6405), 
            .\D_ADR_O_31__N_465[31] (D_ADR_O_31__N_465[31]), .n6463(n6463), 
            .n6533(n6533), .n6461(n6461), .n6455(n6455), .page_ptr1({page_ptr1}), 
            .n6474(n6474), .n6499(n6499), .n6462(n6462), .n6530(n6530), 
            .n14(n14), .GPIO_WE_I_N_949(GPIO_WE_I_N_949), .LM8interrupts_0__N_34(LM8interrupts_0__N_34), 
            .n6457(n6457), .n6456(n6456), .n6376(n6376), .\ext_io_din[7] (ext_io_din[7]), 
            .\ext_io_din[6] (ext_io_din[6]), .\ext_io_din[5] (ext_io_din[5]), 
            .\ext_io_din[4] (ext_io_din[4]), .\ext_io_din[3] (ext_io_din[3]), 
            .\ext_io_din[2] (ext_io_din[2]), .\ext_io_din[1] (ext_io_din[1]), 
            .cs_state_2__N_1061(cs_state_2__N_1061), .\RBR[0] (RBR[0]), 
            .\ier[0] (ier[0]), .parity_en(n15[3]), .n5435(n5435), .\RBR[3] (RBR[3]), 
            .parity_even(n15[4]), .\RBR[4] (RBR[4]), .n2915(n2915), .parity_stick(n15[5]), 
            .\RBR[5] (RBR[5]), .n2956(n2956), .\RBR[7] (RBR[7]), .n1161(n1160[7]), 
            .clk_in_enable_36(clk_in_enable_36), .\ier[1] (ier[1]), .\RBR[1] (RBR[1]), 
            .n6039(n6039), .n7(n7), .rx_rdy(rx_rdy), .\dat_o_7__N_1029[0] (dat_o_7__N_1029[0]), 
            .clk_in_enable_64(clk_in_enable_64), .tx_break(n15[6]), .\RBR[6] (RBR[6]), 
            .n2961(n2961), .clk_in_enable_51(clk_in_enable_51), .clk_in_enable_72(clk_in_enable_72), 
            .clk_in_enable_57(clk_in_enable_57), .n2931(n2931), .n53(n53)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(507[2] 535[36])
    \gpio(GPIO_WB_DAT_WIDTH=8,DATA_WIDTH=32'b0100,INPUT_WIDTH=32'b01,OUTPUT_WIDTH=32'b01,EDGE=1,POSE_EDGE_IRQ=1,INPUT_PORTS_ONLY=0,OUTPUT_PORTS_ONLY=1)  LEDGPIO_DAT_O_7__I_0 (.LEDGPIO_ACK_O(LEDGPIO_ACK_O), 
            .clk_in(clk_in), .PIO_OUT_3__N_935(PIO_OUT_3__N_935), .LEDPIO_OUT_c_2(LEDPIO_OUT_c_2), 
            .PIO_OUT_3__N_933(PIO_OUT_3__N_933), .\SHAREDBUS_DAT_I[2] (SHAREDBUS_DAT_I[2]), 
            .LEDPIO_OUT_c_3(LEDPIO_OUT_c_3), .\SHAREDBUS_DAT_I[3] (SHAREDBUS_DAT_I[3]), 
            .LEDPIO_OUT_c_0(LEDPIO_OUT_c_0), .\SHAREDBUS_DAT_I[0] (SHAREDBUS_DAT_I[0]), 
            .LEDPIO_OUT_c_1(LEDPIO_OUT_c_1), .\SHAREDBUS_DAT_I[1] (SHAREDBUS_DAT_I[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(560[2] 576[34])
    
endmodule
//
// Verilog Description of module \arbiter2(MAX_DAT_WIDTH=8,WBS_DAT_WIDTH=8,WBM0_DAT_WIDTH=8,WBM1_DAT_WIDTH=8) 
//

module \arbiter2(MAX_DAT_WIDTH=8,WBS_DAT_WIDTH=8,WBM0_DAT_WIDTH=8,WBM1_DAT_WIDTH=8)  (\selected[1] , 
            clk_in, n2394, LM8interrupts_0__N_34, n6459, clk_in_enable_82, 
            n7, clk_in_enable_79, \ext_addr[1] , n6462, n6531, n5978, 
            PIO_OUT_3__N_933, LM8D_DAT_O, \SHAREDBUS_DAT_I[4] , n11, 
            n6454, ext_wb_state, n6405, core_rst_n, clk_in_enable_15, 
            \lcr[2] , \ier[2] , n6037, \SHAREDBUS_DAT_I[5] , \SHAREDBUS_DAT_I[6] , 
            \SHAREDBUS_DAT_I[7] , \SHAREDBUS_DAT_I[0] , n6474, \page_ptr1[2] , 
            n5982, n5236, \ext_addr[4] , uartUART_ACK_O, LEDGPIO_ACK_O, 
            n46, n6533, n2961, \RBR[6] , n11_adj_1, n1161, \dat_o_7__N_1029[7] , 
            n6463, clk_in_enable_43, n2, \RBR[0] , n2931, n53, n4, 
            n6530, n1648, n6458, \SHAREDBUS_DAT_I[3] , n2915, \RBR[4] , 
            n2916, n2956, \RBR[5] , n1163, \SHAREDBUS_DAT_I[2] , \SHAREDBUS_DAT_I[1] , 
            n2068, n2661) /* synthesis syn_module_defined=1 */ ;
    output \selected[1] ;
    input clk_in;
    input n2394;
    output LM8interrupts_0__N_34;
    input n6459;
    input clk_in_enable_82;
    input n7;
    output clk_in_enable_79;
    input \ext_addr[1] ;
    input n6462;
    input n6531;
    input n5978;
    output PIO_OUT_3__N_933;
    input [7:0]LM8D_DAT_O;
    output \SHAREDBUS_DAT_I[4] ;
    input [0:0]n11;
    output n6454;
    input ext_wb_state;
    output n6405;
    input core_rst_n;
    output clk_in_enable_15;
    input \lcr[2] ;
    input \ier[2] ;
    output n6037;
    output \SHAREDBUS_DAT_I[5] ;
    output \SHAREDBUS_DAT_I[6] ;
    output \SHAREDBUS_DAT_I[7] ;
    output \SHAREDBUS_DAT_I[0] ;
    input n6474;
    input \page_ptr1[2] ;
    input n5982;
    output n5236;
    input \ext_addr[4] ;
    input uartUART_ACK_O;
    input LEDGPIO_ACK_O;
    output n46;
    input n6533;
    input n2961;
    input \RBR[6] ;
    output n11_adj_1;
    input n1161;
    output \dat_o_7__N_1029[7] ;
    input n6463;
    output clk_in_enable_43;
    input n2;
    input \RBR[0] ;
    output n2931;
    input n53;
    output n4;
    input n6530;
    output n1648;
    output n6458;
    output \SHAREDBUS_DAT_I[3] ;
    input n2915;
    input \RBR[4] ;
    output n2916;
    input n2956;
    input \RBR[5] ;
    output n1163;
    output \SHAREDBUS_DAT_I[2] ;
    output \SHAREDBUS_DAT_I[1] ;
    input n2068;
    output n2661;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    
    FD1S3AX selected_i1 (.D(n2394), .CK(clk_in), .Q(\selected[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=1, LSE_RCOL=20, LSE_LLINE=425, LSE_RLINE=466 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam selected_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(LM8interrupts_0__N_34), .B(n6459), .C(clk_in_enable_82), 
         .D(n7), .Z(clk_in_enable_79)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i3_4_lut (.A(\ext_addr[1] ), .B(n6462), .C(n6531), .D(n5978), 
         .Z(PIO_OUT_3__N_933)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    LUT4 i2954_2_lut (.A(LM8D_DAT_O[4]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[4] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i2954_2_lut.init = 16'h8888;
    LUT4 i2923_2_lut_rep_126 (.A(n11[0]), .B(\selected[1] ), .Z(n6454)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(321[21:55])
    defparam i2923_2_lut_rep_126.init = 16'h8888;
    LUT4 external_sp_bdd_2_lut_3_lut (.A(n11[0]), .B(\selected[1] ), .C(ext_wb_state), 
         .Z(n6405)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(321[21:55])
    defparam external_sp_bdd_2_lut_3_lut.init = 16'h8080;
    LUT4 i719_2_lut_3_lut (.A(n11[0]), .B(\selected[1] ), .C(core_rst_n), 
         .Z(clk_in_enable_15)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(321[21:55])
    defparam i719_2_lut_3_lut.init = 16'h8f8f;
    LUT4 i5296_3_lut_4_lut (.A(n6462), .B(\ext_addr[1] ), .C(\lcr[2] ), 
         .D(\ier[2] ), .Z(n6037)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(292[2] 293[4])
    defparam i5296_3_lut_4_lut.init = 16'hf780;
    LUT4 i2953_2_lut (.A(LM8D_DAT_O[5]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[5] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i2953_2_lut.init = 16'h8888;
    LUT4 i2952_2_lut (.A(LM8D_DAT_O[6]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[6] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i2952_2_lut.init = 16'h8888;
    LUT4 i2951_2_lut (.A(LM8D_DAT_O[7]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[7] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i2951_2_lut.init = 16'h8888;
    LUT4 i2918_2_lut (.A(LM8D_DAT_O[0]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[0] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i2918_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut (.A(n6474), .B(n6462), .C(\page_ptr1[2] ), .D(n5982), 
         .Z(n5236)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_4_lut_4_lut.init = 16'hbbbf;
    LUT4 i56_4_lut_4_lut (.A(\ext_addr[4] ), .B(n6462), .C(uartUART_ACK_O), 
         .D(LEDGPIO_ACK_O), .Z(n46)) /* synthesis lut_function=(A (B (C))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i56_4_lut_4_lut.init = 16'hd580;
    LUT4 i1_4_lut_4_lut_adj_136 (.A(n6462), .B(n6533), .C(n2961), .D(\RBR[6] ), 
         .Z(n11_adj_1)) /* synthesis lut_function=(A (B+(C))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(292[2] 293[4])
    defparam i1_4_lut_4_lut_adj_136.init = 16'hfda8;
    LUT4 i2994_3_lut_4_lut (.A(n6462), .B(n6533), .C(n7), .D(n1161), 
         .Z(\dat_o_7__N_1029[7] )) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(292[2] 293[4])
    defparam i2994_3_lut_4_lut.init = 16'hf080;
    LUT4 i1_2_lut_rep_125_3_lut_4_lut (.A(n6463), .B(\selected[1] ), .C(LM8interrupts_0__N_34), 
         .D(n6531), .Z(clk_in_enable_43)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam i1_2_lut_rep_125_3_lut_4_lut.init = 16'h70f0;
    LUT4 i2227_3_lut_3_lut_4_lut (.A(n6463), .B(\selected[1] ), .C(n2), 
         .D(\RBR[0] ), .Z(n2931)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam i2227_3_lut_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_3_lut_3_lut_4_lut (.A(n6463), .B(\selected[1] ), .C(n53), 
         .D(\ext_addr[1] ), .Z(n4)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i3135_3_lut_4_lut (.A(n6463), .B(\selected[1] ), .C(n6530), .D(\ext_addr[4] ), 
         .Z(n1648)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam i3135_3_lut_4_lut.init = 16'h8880;
    LUT4 i3128_2_lut_3_lut_rep_130_4_lut (.A(n6463), .B(\selected[1] ), 
         .C(\page_ptr1[2] ), .D(n6474), .Z(n6458)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam i3128_2_lut_3_lut_rep_130_4_lut.init = 16'h0080;
    LUT4 i2955_2_lut (.A(LM8D_DAT_O[3]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[3] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i2955_2_lut.init = 16'h8888;
    LUT4 i2212_3_lut_4_lut (.A(n6463), .B(\selected[1] ), .C(n2915), .D(\RBR[4] ), 
         .Z(n2916)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam i2212_3_lut_4_lut.init = 16'hf780;
    LUT4 i2253_3_lut_4_lut (.A(n6463), .B(\selected[1] ), .C(n2956), .D(\RBR[5] ), 
         .Z(n1163)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(252[7] 275[5])
    defparam i2253_3_lut_4_lut.init = 16'hf780;
    LUT4 i2956_2_lut (.A(LM8D_DAT_O[2]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[2] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i2956_2_lut.init = 16'h8888;
    LUT4 i2957_2_lut (.A(LM8D_DAT_O[1]), .B(\selected[1] ), .Z(\SHAREDBUS_DAT_I[1] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(284[2] 285[4])
    defparam i2957_2_lut.init = 16'h8888;
    LUT4 ext_addr_4__bdd_4_lut (.A(\ext_addr[4] ), .B(n6462), .C(n2068), 
         .D(n6530), .Z(LM8interrupts_0__N_34)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam ext_addr_4__bdd_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_137 (.A(LM8interrupts_0__N_34), .B(n6459), 
         .C(clk_in_enable_82), .D(n7), .Z(n2661)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(526[3] 536[6])
    defparam i1_2_lut_3_lut_4_lut_adj_137.init = 16'h0002;
    
endmodule
//
// Verilog Description of module \uart_core(CLK_IN_MHZ=25.0) 
//

module \uart_core(CLK_IN_MHZ=25.0)  (clk_in, parity_even, parity_stick, 
            parity_en, \lcr[2] , n11, n7, \RBR[0] , clk_in_enable_82, 
            \RBR[5] , \RBR[4] , \RBR[3] , \RBR[1] , uartSIN_c, n6455, 
            rx_rdy, n6934, n6461, clk_in_enable_79, n2661, \RBR[6] , 
            \RBR[7] , ier, LM8interrupts_0__N_34, n6459, n6037, n6460, 
            clk_in_enable_36, \SHAREDBUS_DAT_I[3] , \SHAREDBUS_DAT_I[2] , 
            \SHAREDBUS_DAT_I[1] , uartUART_ACK_O, \SHAREDBUS_DAT_I[0] , 
            uartUART_DAT_O, clk_in_enable_43, \dat_o_7__N_1029[0] , GPIO_WE_I_N_949, 
            clk_in_enable_51, clk_in_enable_57, clk_in_enable_64, tx_break, 
            uartSOUT_c, \SHAREDBUS_DAT_I[4] , \SHAREDBUS_DAT_I[5] , \SHAREDBUS_DAT_I[6] , 
            \SHAREDBUS_DAT_I[7] , \dat_o_7__N_1029[7] , n5435, clk_in_enable_72, 
            cs_state_2__N_1061, n2916, n1163, \ext_addr[1] , n6462, 
            n53, n2, n4, n6039) /* synthesis syn_module_defined=1 */ ;
    input clk_in;
    output parity_even;
    output parity_stick;
    output parity_en;
    output \lcr[2] ;
    input n11;
    input n7;
    output \RBR[0] ;
    output clk_in_enable_82;
    output \RBR[5] ;
    output \RBR[4] ;
    output \RBR[3] ;
    output \RBR[1] ;
    input uartSIN_c;
    input n6455;
    output rx_rdy;
    input n6934;
    input n6461;
    input clk_in_enable_79;
    input n2661;
    output \RBR[6] ;
    output \RBR[7] ;
    output [2:0]ier;
    input LM8interrupts_0__N_34;
    input n6459;
    input n6037;
    input n6460;
    input clk_in_enable_36;
    input \SHAREDBUS_DAT_I[3] ;
    input \SHAREDBUS_DAT_I[2] ;
    input \SHAREDBUS_DAT_I[1] ;
    output uartUART_ACK_O;
    input \SHAREDBUS_DAT_I[0] ;
    output [7:0]uartUART_DAT_O;
    input clk_in_enable_43;
    input \dat_o_7__N_1029[0] ;
    input GPIO_WE_I_N_949;
    input clk_in_enable_51;
    input clk_in_enable_57;
    input clk_in_enable_64;
    output tx_break;
    output uartSOUT_c;
    input \SHAREDBUS_DAT_I[4] ;
    input \SHAREDBUS_DAT_I[5] ;
    input \SHAREDBUS_DAT_I[6] ;
    input \SHAREDBUS_DAT_I[7] ;
    input \dat_o_7__N_1029[7] ;
    input n5435;
    input clk_in_enable_72;
    output cs_state_2__N_1061;
    input n2916;
    input n1163;
    input \ext_addr[1] ;
    input n6462;
    input n53;
    output n2;
    input n4;
    input n6039;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    wire [7:0]THR;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(205[33:36])
    
    wire THRR;
    wire [15:0]divisor;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(228[21:28])
    wire [1:0]databits;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(206[20:28])
    
    wire tx_output, n5876, thr_wr;
    wire [7:0]dat_o_7__N_1029;
    wire [3:0]iir_3__N_1003;
    
    wire dataerr_int, rbr_rd, break_int, frame_err, overrun_err, n2143, 
        n198, n1705, n1715, n3853;
    
    txmitt u_txmitt (.clk_in(clk_in), .THR({THR}), .THRR(THRR), .divisor({divisor}), 
           .databits({databits}), .parity_even(parity_even), .parity_stick(parity_stick), 
           .tx_output(tx_output), .parity_en(parity_en), .n5876(n5876), 
           .\lcr[2] (\lcr[2] ), .thr_wr(thr_wr), .n11(n11), .n7(n7), 
           .\dat_o_7__N_1029[6] (dat_o_7__N_1029[6])) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(317[4] 335[8])
    rxcver u_rxcver (.RBR({Open_0, Open_1, \RBR[5] , \RBR[4] , \RBR[3] , 
           Open_2, Open_3, \RBR[0] }), .clk_in(clk_in), .clk_in_enable_82(clk_in_enable_82), 
           .\RBR[1] (\RBR[1] ), .parity_even(parity_even), .uartSIN_c(uartSIN_c), 
           .\iir_3__N_1003[2] (iir_3__N_1003[2]), .n6455(n6455), .dataerr_int(dataerr_int), 
           .divisor({divisor}), .rx_rdy(rx_rdy), .rbr_rd(rbr_rd), .n6934(n6934), 
           .databits({databits}), .n6461(n6461), .n7(n7), .\dat_o_7__N_1029[2] (dat_o_7__N_1029[2]), 
           .break_int(break_int), .clk_in_enable_79(clk_in_enable_79), .n2661(n2661), 
           .frame_err(frame_err), .overrun_err(overrun_err), .\RBR[6] (\RBR[6] ), 
           .\RBR[7] (\RBR[7] ), .n5876(n5876), .n2143(n2143), .\ier[2] (ier[2]), 
           .LM8interrupts_0__N_34(LM8interrupts_0__N_34), .n6459(n6459), 
           .n198(n198), .n1705(n1705), .n1715(n1715), .parity_en(parity_en), 
           .parity_stick(parity_stick), .\ier[0] (ier[0]), .n3853(n3853), 
           .n6037(n6037), .n6460(n6460)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(293[4] 313[8])
    \intface(CLK_IN_MHZ=25.0)  u_intface (.THR({THR}), .clk_in(clk_in), 
            .clk_in_enable_36(clk_in_enable_36), .\SHAREDBUS_DAT_I[3] (\SHAREDBUS_DAT_I[3] ), 
            .\SHAREDBUS_DAT_I[2] (\SHAREDBUS_DAT_I[2] ), .\SHAREDBUS_DAT_I[1] (\SHAREDBUS_DAT_I[1] ), 
            .uartUART_ACK_O(uartUART_ACK_O), .LM8interrupts_0__N_34(LM8interrupts_0__N_34), 
            .n6934(n6934), .\SHAREDBUS_DAT_I[0] (\SHAREDBUS_DAT_I[0] ), 
            .uartUART_DAT_O({uartUART_DAT_O}), .clk_in_enable_43(clk_in_enable_43), 
            .dat_o_7__N_1029({Open_4, Open_5, Open_6, Open_7, Open_8, 
            Open_9, Open_10, \dat_o_7__N_1029[0] }), .thr_wr(thr_wr), 
            .GPIO_WE_I_N_949(GPIO_WE_I_N_949), .ier({ier}), .clk_in_enable_51(clk_in_enable_51), 
            .databits({databits}), .clk_in_enable_57(clk_in_enable_57), 
            .divisor({divisor}), .clk_in_enable_64(clk_in_enable_64), .n6460(n6460), 
            .dataerr_int(dataerr_int), .tx_break(tx_break), .tx_output(tx_output), 
            .uartSOUT_c(uartSOUT_c), .\SHAREDBUS_DAT_I[4] (\SHAREDBUS_DAT_I[4] ), 
            .rbr_rd(rbr_rd), .n6459(n6459), .\SHAREDBUS_DAT_I[5] (\SHAREDBUS_DAT_I[5] ), 
            .\SHAREDBUS_DAT_I[6] (\SHAREDBUS_DAT_I[6] ), .\SHAREDBUS_DAT_I[7] (\SHAREDBUS_DAT_I[7] ), 
            .\dat_o_7__N_1029[2] (dat_o_7__N_1029[2]), .\dat_o_7__N_1029[6] (dat_o_7__N_1029[6]), 
            .\dat_o_7__N_1029[7] (\dat_o_7__N_1029[7] ), .overrun_err(overrun_err), 
            .n7(n7), .n6461(n6461), .\lcr[2] (\lcr[2] ), .parity_en(parity_en), 
            .parity_even(parity_even), .parity_stick(parity_stick), .frame_err(frame_err), 
            .n5435(n5435), .clk_in_enable_72(clk_in_enable_72), .\iir_3__N_1003[2] (iir_3__N_1003[2]), 
            .n1715(n1715), .cs_state_2__N_1061(cs_state_2__N_1061), .break_int(break_int), 
            .n2916(n2916), .THRR(THRR), .n1163(n1163), .n3853(n3853), 
            .n2143(n2143), .n198(n198), .n1705(n1705), .\ext_addr[1] (\ext_addr[1] ), 
            .n6462(n6462), .n53(n53), .n2(n2), .n4(n4), .n6039(n6039), 
            .n6455(n6455)) /* synthesis syn_module_defined=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(246[4] 289[9])
    
endmodule
//
// Verilog Description of module txmitt
//

module txmitt (clk_in, THR, THRR, divisor, databits, parity_even, 
            parity_stick, tx_output, parity_en, n5876, \lcr[2] , thr_wr, 
            n11, n7, \dat_o_7__N_1029[6] ) /* synthesis syn_module_defined=1 */ ;
    input clk_in;
    input [7:0]THR;
    output THRR;
    input [15:0]divisor;
    input [1:0]databits;
    input parity_even;
    input parity_stick;
    output tx_output;
    input parity_en;
    input n5876;
    input \lcr[2] ;
    input thr_wr;
    input n11;
    input n7;
    output \dat_o_7__N_1029[6] ;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    wire [7:0]tsr;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(145[36:39])
    
    wire clk_in_enable_74, n1614;
    wire [7:0]n271;
    
    wire n5135;
    wire [15:0]counter;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(173[14:21])
    
    wire n2065, n3166, n5868, tx_in_shift_s_N_1414, clk_in_enable_108, 
        n1445, clk_in_enable_33;
    wire [15:0]n12;
    wire [15:0]counter_15__N_1333;
    
    wire tx_in_stop_s_N_1411, n6805, n6807, n6539;
    wire [15:0]counter_15__N_1299;
    
    wire n6545, n6549, n6548, n6552, n6551, n6555, n6554, n6558, 
        n6557, n6561, n6560, n6563, n6570;
    wire [15:0]counter_15__N_1349;
    wire [2:0]tx_cnt;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(157[28:34])
    
    wire n6574, n6573, clk_in_enable_97, tx_in_stop_s, tsr_empty, 
        tx_in_stop_s1, n6518, n2405, clk_in_enable_29, thr_empty, 
        n5, n5133, tx_output_N_1394, tx_output_N_1395, tx_in_shift_s1, 
        tx_in_shift_s, tx_parity, n11_c, n6577, n6576, n6580, n6579, 
        n6583, n6582, n6586, n6585, n6589, n6588, n6592, n1461, 
        n6591, n2406, n1643, n1641, n1639, n1637, n1635, n1633, 
        n6578, n5932, n1666, n1664, n1652, n6483, n6476, n65;
    wire [2:0]n1;
    
    wire n6477, n6470, n5097, GND_net, n5096, n2214, n6473, n5095, 
        n5094, n5173, n5093, n5092, n5091, n1663, n5090, n28_adj_1428, 
        n24_adj_1429, n16_adj_1430, n26_adj_1431, n20_adj_1432, n6542, 
        n1673;
    
    FD1P3AX tsr__i0 (.D(n1614), .SP(clk_in_enable_74), .CK(clk_in), .Q(tsr[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tsr__i0.GSR = "ENABLED";
    FD1S3AY tx_state_FSM_i1 (.D(n5135), .CK(clk_in), .Q(n271[0]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam tx_state_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_3_lut_4_lut (.A(n271[6]), .B(counter[0]), 
         .C(n2065), .Z(n3166)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n271[6]), .B(counter[0]), .C(n2065), 
         .D(THR[7]), .Z(n5868)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_4_lut (.A(counter[0]), .B(n2065), .C(tx_in_shift_s_N_1414), 
         .D(n271[6]), .Z(clk_in_enable_108)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h22e0;
    FD1S3AY thr_ready_139 (.D(n1445), .CK(clk_in), .Q(THRR));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(531[11] 534[26])
    defparam thr_ready_139.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_130 (.A(counter[0]), .B(n2065), .C(n271[6]), 
         .D(tx_in_shift_s_N_1414), .Z(clk_in_enable_33)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_4_lut_4_lut_adj_130.init = 16'h2220;
    LUT4 mux_16_i16_4_lut_4_lut (.A(divisor[15]), .B(n12[15]), .C(counter[0]), 
         .D(n2065), .Z(counter_15__N_1333[15])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A (B (D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(350[18] 360[10])
    defparam mux_16_i16_4_lut_4_lut.init = 16'hcc0a;
    LUT4 n6806_bdd_3_lut_4_lut (.A(tx_in_stop_s_N_1411), .B(n6805), .C(counter[0]), 
         .D(n2065), .Z(n6807)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam n6806_bdd_3_lut_4_lut.init = 16'haaca;
    LUT4 n26_bdd_3_lut (.A(n12[2]), .B(n6539), .C(n2065), .Z(counter_15__N_1299[2])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n26_bdd_3_lut.init = 16'hacac;
    LUT4 i1703_else_1_lut (.A(divisor[0]), .B(counter[0]), .C(divisor[1]), 
         .D(n271[5]), .Z(n6545)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1703_else_1_lut.init = 16'h3022;
    LUT4 i1672_then_1_lut (.A(n12[8]), .Z(n6549)) /* synthesis lut_function=(A) */ ;
    defparam i1672_then_1_lut.init = 16'haaaa;
    LUT4 i1672_else_1_lut (.A(divisor[8]), .B(counter[0]), .C(divisor[9]), 
         .D(n271[5]), .Z(n6548)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1672_else_1_lut.init = 16'h3022;
    LUT4 i1674_then_1_lut (.A(n12[7]), .Z(n6552)) /* synthesis lut_function=(A) */ ;
    defparam i1674_then_1_lut.init = 16'haaaa;
    LUT4 i1674_else_1_lut (.A(divisor[7]), .B(counter[0]), .C(divisor[8]), 
         .D(n271[5]), .Z(n6551)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1674_else_1_lut.init = 16'h3022;
    LUT4 i1676_then_1_lut (.A(n12[6]), .Z(n6555)) /* synthesis lut_function=(A) */ ;
    defparam i1676_then_1_lut.init = 16'haaaa;
    LUT4 i1676_else_1_lut (.A(divisor[6]), .B(counter[0]), .C(divisor[7]), 
         .D(n271[5]), .Z(n6554)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1676_else_1_lut.init = 16'h3022;
    LUT4 i1678_then_1_lut (.A(n12[5]), .Z(n6558)) /* synthesis lut_function=(A) */ ;
    defparam i1678_then_1_lut.init = 16'haaaa;
    LUT4 i1678_else_1_lut (.A(divisor[5]), .B(counter[0]), .C(divisor[6]), 
         .D(n271[5]), .Z(n6557)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1678_else_1_lut.init = 16'h3022;
    LUT4 i1668_then_1_lut (.A(n12[10]), .Z(n6561)) /* synthesis lut_function=(A) */ ;
    defparam i1668_then_1_lut.init = 16'haaaa;
    LUT4 i1668_else_1_lut (.A(divisor[10]), .B(counter[0]), .C(divisor[11]), 
         .D(n271[5]), .Z(n6560)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1668_else_1_lut.init = 16'h3022;
    LUT4 i1680_else_1_lut (.A(divisor[4]), .B(counter[0]), .C(divisor[5]), 
         .D(n271[5]), .Z(n6563)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1680_else_1_lut.init = 16'h3022;
    LUT4 i1682_else_1_lut (.A(divisor[3]), .B(counter[0]), .C(divisor[4]), 
         .D(n271[5]), .Z(n6570)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1682_else_1_lut.init = 16'h3022;
    LUT4 i3055_2_lut (.A(n12[15]), .B(n2065), .Z(counter_15__N_1349[15])) /* synthesis lut_function=(A (B)) */ ;
    defparam i3055_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_then_4_lut (.A(tx_cnt[2]), .B(tx_cnt[1]), .C(databits[0]), 
         .D(databits[1]), .Z(n6574)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C)))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h7fdf;
    LUT4 i1_4_lut_else_4_lut (.A(tx_cnt[2]), .B(tx_cnt[1]), .C(databits[0]), 
         .D(databits[1]), .Z(n6573)) /* synthesis lut_function=((B (C+!(D))+!B (C+(D)))+!A) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'hf7fd;
    FD1P3AX counter_i0 (.D(counter_15__N_1299[0]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n271[0]), .B(n271[5]), .Z(clk_in_enable_97)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i35_4_lut (.A(tx_in_stop_s), .B(tsr_empty), .C(tx_in_stop_s1), 
         .D(n6518), .Z(n2405)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(152[28:40])
    defparam i35_4_lut.init = 16'h50dc;
    LUT4 i1_2_lut_adj_131 (.A(n271[0]), .B(tx_in_shift_s_N_1414), .Z(clk_in_enable_29)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_131.init = 16'hdddd;
    FD1S3AY tsr_empty_137 (.D(n2405), .CK(clk_in), .Q(tsr_empty)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(479[14] 482[29])
    defparam tsr_empty_137.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_132 (.A(thr_empty), .B(tsr_empty), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(505[11] 508[26])
    defparam i1_2_lut_adj_132.init = 16'h8888;
    LUT4 mux_509_i1_4_lut (.A(n5133), .B(tsr[0]), .C(tx_in_shift_s_N_1414), 
         .D(n271[6]), .Z(tx_output_N_1394)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam mux_509_i1_4_lut.init = 16'hc0ca;
    LUT4 i3_4_lut (.A(tx_output_N_1395), .B(tx_in_stop_s_N_1411), .C(n271[4]), 
         .D(n271[5]), .Z(n5133)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i3_4_lut.init = 16'hfffe;
    FD1S3AX tx_in_shift_s1_140 (.D(tx_in_shift_s), .CK(clk_in), .Q(tx_in_shift_s1)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(548[14] 551[14])
    defparam tx_in_shift_s1_140.GSR = "ENABLED";
    FD1S3AX tx_in_stop_s1_141 (.D(tx_in_stop_s), .CK(clk_in), .Q(tx_in_stop_s1)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(548[14] 551[14])
    defparam tx_in_stop_s1_141.GSR = "ENABLED";
    FD1S3AX tx_in_shift_s_142 (.D(tx_in_shift_s_N_1414), .CK(clk_in), .Q(tx_in_shift_s)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(562[14] 565[33])
    defparam tx_in_shift_s_142.GSR = "ENABLED";
    FD1S3AX tx_in_stop_s_143 (.D(tx_in_stop_s_N_1411), .CK(clk_in), .Q(tx_in_stop_s)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(572[14] 575[32])
    defparam tx_in_stop_s_143.GSR = "ENABLED";
    LUT4 tx_parity_I_0_150_3_lut (.A(tx_parity), .B(parity_even), .C(parity_stick), 
         .Z(tx_output_N_1395)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(396[27:70])
    defparam tx_parity_I_0_150_3_lut.init = 16'h3a3a;
    FD1P3AY tx_output_133 (.D(tx_output_N_1394), .SP(clk_in_enable_29), 
            .CK(clk_in), .Q(tx_output)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tx_output_133.GSR = "ENABLED";
    LUT4 i1008_4_lut_then_4_lut (.A(n11_c), .B(n2065), .C(counter[0]), 
         .D(n271[6]), .Z(n6577)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i1008_4_lut_then_4_lut.init = 16'hffef;
    LUT4 i1008_4_lut_else_4_lut (.A(n2065), .B(counter[0]), .C(n271[6]), 
         .Z(n6576)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i1008_4_lut_else_4_lut.init = 16'h4040;
    LUT4 i1670_then_1_lut (.A(n12[9]), .Z(n6580)) /* synthesis lut_function=(A) */ ;
    defparam i1670_then_1_lut.init = 16'haaaa;
    LUT4 i1670_else_1_lut (.A(divisor[9]), .B(counter[0]), .C(divisor[10]), 
         .D(n271[5]), .Z(n6579)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1670_else_1_lut.init = 16'h3022;
    LUT4 i1660_then_1_lut (.A(n12[14]), .Z(n6583)) /* synthesis lut_function=(A) */ ;
    defparam i1660_then_1_lut.init = 16'haaaa;
    LUT4 i1660_else_1_lut (.A(divisor[14]), .B(counter[0]), .C(divisor[15]), 
         .D(n271[5]), .Z(n6582)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1660_else_1_lut.init = 16'h3022;
    LUT4 i1662_then_1_lut (.A(n12[13]), .Z(n6586)) /* synthesis lut_function=(A) */ ;
    defparam i1662_then_1_lut.init = 16'haaaa;
    LUT4 i1662_else_1_lut (.A(divisor[13]), .B(counter[0]), .C(divisor[14]), 
         .D(n271[5]), .Z(n6585)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1662_else_1_lut.init = 16'h3022;
    LUT4 tx_in_stop_s_N_1411_bdd_4_lut (.A(n271[2]), .B(tx_in_shift_s_N_1414), 
         .C(parity_en), .D(n11_c), .Z(n6805)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam tx_in_stop_s_N_1411_bdd_4_lut.init = 16'haaae;
    LUT4 i1664_then_1_lut (.A(n12[12]), .Z(n6589)) /* synthesis lut_function=(A) */ ;
    defparam i1664_then_1_lut.init = 16'haaaa;
    LUT4 i1664_else_1_lut (.A(divisor[12]), .B(counter[0]), .C(divisor[13]), 
         .D(n271[5]), .Z(n6588)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1664_else_1_lut.init = 16'h3022;
    LUT4 i1666_then_1_lut (.A(n12[11]), .Z(n6592)) /* synthesis lut_function=(A) */ ;
    defparam i1666_then_1_lut.init = 16'haaaa;
    FD1S3AY thr_empty_138 (.D(n1461), .CK(clk_in), .Q(thr_empty));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(505[11] 508[26])
    defparam thr_empty_138.GSR = "ENABLED";
    LUT4 i1666_else_1_lut (.A(divisor[11]), .B(counter[0]), .C(divisor[12]), 
         .D(n271[5]), .Z(n6591)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1666_else_1_lut.init = 16'h3022;
    FD1P3AY tx_parity_134 (.D(n2406), .SP(clk_in_enable_33), .CK(clk_in), 
            .Q(tx_parity));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tx_parity_134.GSR = "ENABLED";
    FD1P3AX tsr__i1 (.D(n1643), .SP(clk_in_enable_74), .CK(clk_in), .Q(tsr[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tsr__i1.GSR = "ENABLED";
    FD1P3AX tsr__i2 (.D(n1641), .SP(clk_in_enable_74), .CK(clk_in), .Q(tsr[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tsr__i2.GSR = "ENABLED";
    FD1P3AX tsr__i3 (.D(n1639), .SP(clk_in_enable_74), .CK(clk_in), .Q(tsr[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tsr__i3.GSR = "ENABLED";
    FD1P3AX tsr__i4 (.D(n1637), .SP(clk_in_enable_74), .CK(clk_in), .Q(tsr[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tsr__i4.GSR = "ENABLED";
    FD1P3AX tsr__i5 (.D(n1635), .SP(clk_in_enable_74), .CK(clk_in), .Q(tsr[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tsr__i5.GSR = "ENABLED";
    FD1P3AX tsr__i6 (.D(n1633), .SP(clk_in_enable_74), .CK(clk_in), .Q(tsr[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tsr__i6.GSR = "ENABLED";
    LUT4 i1684_else_1_lut (.A(divisor[2]), .B(counter[0]), .C(divisor[3]), 
         .D(n271[5]), .Z(n6539)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1684_else_1_lut.init = 16'h3022;
    FD1S3AX tx_state_FSM_i2 (.D(n6578), .CK(clk_in), .Q(tx_in_shift_s_N_1414));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam tx_state_FSM_i2.GSR = "ENABLED";
    LUT4 i1700_4_lut (.A(tx_parity), .B(parity_even), .C(n271[6]), .D(tsr[0]), 
         .Z(n2406)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam i1700_4_lut.init = 16'h353a;
    FD1S3AX tx_state_FSM_i3 (.D(n5932), .CK(clk_in), .Q(n271[2]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam tx_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX tx_state_FSM_i4 (.D(n6807), .CK(clk_in), .Q(tx_in_stop_s_N_1411));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam tx_state_FSM_i4.GSR = "ENABLED";
    FD1S3AX tx_state_FSM_i5 (.D(n1666), .CK(clk_in), .Q(n271[4]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam tx_state_FSM_i5.GSR = "ENABLED";
    FD1S3AX tx_state_FSM_i6 (.D(n1664), .CK(clk_in), .Q(n271[5]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam tx_state_FSM_i6.GSR = "ENABLED";
    FD1S3AX tx_state_FSM_i7 (.D(n1652), .CK(clk_in), .Q(n271[6]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam tx_state_FSM_i7.GSR = "ENABLED";
    FD1P3AX counter_i1 (.D(counter_15__N_1299[1]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_155 (.A(counter[0]), .B(n2065), .Z(n6483)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(348[18:27])
    defparam i1_2_lut_rep_155.init = 16'heeee;
    LUT4 i5194_4_lut (.A(n6476), .B(n65), .C(parity_en), .D(n11_c), 
         .Z(n5932)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam i5194_4_lut.init = 16'hccec;
    LUT4 i78_2_lut_3_lut_4_lut_3_lut (.A(counter[0]), .B(n2065), .C(n271[2]), 
         .Z(n65)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(351[12:46])
    defparam i78_2_lut_3_lut_4_lut_3_lut.init = 16'hd0d0;
    FD1P3AX tsr__i7 (.D(n5868), .SP(clk_in_enable_74), .CK(clk_in), .Q(tsr[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam tsr__i7.GSR = "ENABLED";
    FD1P3IX tx_cnt_695__i1 (.D(n1[1]), .SP(clk_in_enable_108), .CD(n3166), 
            .CK(clk_in), .Q(tx_cnt[1]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(373[27:37])
    defparam tx_cnt_695__i1.GSR = "ENABLED";
    FD1P3AX counter_i2 (.D(counter_15__N_1299[2]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i2.GSR = "ENABLED";
    FD1P3AX counter_i3 (.D(counter_15__N_1299[3]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i3.GSR = "ENABLED";
    FD1P3AX counter_i4 (.D(counter_15__N_1299[4]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i4.GSR = "ENABLED";
    FD1P3AX counter_i5 (.D(counter_15__N_1299[5]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i5.GSR = "ENABLED";
    FD1P3AX counter_i6 (.D(counter_15__N_1299[6]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i6.GSR = "ENABLED";
    FD1P3AX counter_i7 (.D(counter_15__N_1299[7]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i7.GSR = "ENABLED";
    FD1P3AX counter_i8 (.D(counter_15__N_1299[8]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i8.GSR = "ENABLED";
    FD1P3AX counter_i9 (.D(counter_15__N_1299[9]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i9.GSR = "ENABLED";
    FD1P3AX counter_i10 (.D(counter_15__N_1299[10]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i10.GSR = "ENABLED";
    FD1P3AX counter_i11 (.D(counter_15__N_1299[11]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i11.GSR = "ENABLED";
    FD1P3AX counter_i12 (.D(counter_15__N_1299[12]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i12.GSR = "ENABLED";
    FD1P3AX counter_i13 (.D(counter_15__N_1299[13]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i13.GSR = "ENABLED";
    FD1P3AX counter_i14 (.D(counter_15__N_1299[14]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i14.GSR = "ENABLED";
    FD1P3AX counter_i15 (.D(counter_15__N_1299[15]), .SP(clk_in_enable_97), 
            .CK(clk_in), .Q(counter[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=317, LSE_RLINE=335 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(341[11] 448[9])
    defparam counter_i15.GSR = "ENABLED";
    LUT4 i4355_2_lut_3_lut_4_lut (.A(counter[0]), .B(n2065), .C(tx_cnt[1]), 
         .D(tx_cnt[0]), .Z(n1[1])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(351[12:46])
    defparam i4355_2_lut_3_lut_4_lut.init = 16'hd2f0;
    LUT4 i1002_4_lut (.A(n271[4]), .B(n5876), .C(n6477), .D(n6470), 
         .Z(n1666)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i1002_4_lut.init = 16'heca0;
    CCU2D sub_10_add_2_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5097), .S0(n12[15]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(359[21:35])
    defparam sub_10_add_2_17.INIT0 = 16'h5555;
    defparam sub_10_add_2_17.INIT1 = 16'h0000;
    defparam sub_10_add_2_17.INJECT1_0 = "NO";
    defparam sub_10_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5096), .COUT(n5097), .S0(n12[13]), .S1(n12[14]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(359[21:35])
    defparam sub_10_add_2_15.INIT0 = 16'h5555;
    defparam sub_10_add_2_15.INIT1 = 16'h5555;
    defparam sub_10_add_2_15.INJECT1_0 = "NO";
    defparam sub_10_add_2_15.INJECT1_1 = "NO";
    LUT4 i151_2_lut_rep_149_3_lut_2_lut (.A(counter[0]), .B(n2065), .Z(n6477)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(351[12:46])
    defparam i151_2_lut_rep_149_3_lut_2_lut.init = 16'hdddd;
    LUT4 i993_4_lut (.A(n271[6]), .B(THRR), .C(n6477), .D(n271[0]), 
         .Z(n1652)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i993_4_lut.init = 16'hb3a0;
    LUT4 i1_3_lut_4_lut (.A(counter[0]), .B(n2065), .C(n271[4]), .D(n271[5]), 
         .Z(n2214)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(351[12:46])
    defparam i1_3_lut_4_lut.init = 16'h2220;
    LUT4 i1_2_lut_rep_145_3_lut (.A(counter[0]), .B(n2065), .C(tx_in_stop_s_N_1411), 
         .Z(n6473)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(351[12:46])
    defparam i1_2_lut_rep_145_3_lut.init = 16'h2020;
    CCU2D sub_10_add_2_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5095), .COUT(n5096), .S0(n12[11]), .S1(n12[12]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(359[21:35])
    defparam sub_10_add_2_13.INIT0 = 16'h5555;
    defparam sub_10_add_2_13.INIT1 = 16'h5555;
    defparam sub_10_add_2_13.INJECT1_0 = "NO";
    defparam sub_10_add_2_13.INJECT1_1 = "NO";
    FD1P3IX tx_cnt_695__i2 (.D(n1[2]), .SP(clk_in_enable_108), .CD(n3166), 
            .CK(clk_in), .Q(tx_cnt[2]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(373[27:37])
    defparam tx_cnt_695__i2.GSR = "ENABLED";
    CCU2D sub_10_add_2_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5094), .COUT(n5095), .S0(n12[9]), .S1(n12[10]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(359[21:35])
    defparam sub_10_add_2_11.INIT0 = 16'h5555;
    defparam sub_10_add_2_11.INIT1 = 16'h5555;
    defparam sub_10_add_2_11.INJECT1_0 = "NO";
    defparam sub_10_add_2_11.INJECT1_1 = "NO";
    FD1P3IX tx_cnt_695__i0 (.D(n5173), .SP(clk_in_enable_108), .CD(n3166), 
            .CK(clk_in), .Q(tx_cnt[0]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(373[27:37])
    defparam tx_cnt_695__i0.GSR = "ENABLED";
    CCU2D sub_10_add_2_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5093), .COUT(n5094), .S0(n12[7]), .S1(n12[8]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(359[21:35])
    defparam sub_10_add_2_9.INIT0 = 16'h5555;
    defparam sub_10_add_2_9.INIT1 = 16'h5555;
    defparam sub_10_add_2_9.INJECT1_0 = "NO";
    defparam sub_10_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5092), .COUT(n5093), .S0(n12[5]), .S1(n12[6]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(359[21:35])
    defparam sub_10_add_2_7.INIT0 = 16'h5555;
    defparam sub_10_add_2_7.INIT1 = 16'h5555;
    defparam sub_10_add_2_7.INJECT1_0 = "NO";
    defparam sub_10_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5091), .COUT(n5092), .S0(n12[3]), .S1(n12[4]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(359[21:35])
    defparam sub_10_add_2_5.INIT0 = 16'h5555;
    defparam sub_10_add_2_5.INIT1 = 16'h5555;
    defparam sub_10_add_2_5.INJECT1_0 = "NO";
    defparam sub_10_add_2_5.INJECT1_1 = "NO";
    LUT4 n25_bdd_3_lut (.A(n12[3]), .B(n6570), .C(n2065), .Z(counter_15__N_1299[3])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n25_bdd_3_lut.init = 16'hacac;
    LUT4 i1_2_lut_rep_148_3_lut (.A(counter[0]), .B(n2065), .C(tx_in_shift_s_N_1414), 
         .Z(n6476)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(351[12:46])
    defparam i1_2_lut_rep_148_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_142_3_lut_4_lut (.A(counter[0]), .B(n2065), .C(\lcr[2] ), 
         .D(tx_in_stop_s_N_1411), .Z(n6470)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(351[12:46])
    defparam i1_2_lut_rep_142_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_3_lut (.A(counter[0]), .B(n2065), .C(tx_cnt[0]), .Z(n5173)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(351[12:46])
    defparam i1_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i999_2_lut_3_lut_4_lut_3_lut (.A(counter[0]), .B(n2065), .C(n271[5]), 
         .Z(n1663)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(351[12:46])
    defparam i999_2_lut_3_lut_4_lut_3_lut.init = 16'hd0d0;
    CCU2D sub_10_add_2_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5090), .COUT(n5091), .S0(n12[1]), .S1(n12[2]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(359[21:35])
    defparam sub_10_add_2_3.INIT0 = 16'h5555;
    defparam sub_10_add_2_3.INIT1 = 16'h5555;
    defparam sub_10_add_2_3.INJECT1_0 = "NO";
    defparam sub_10_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_10_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n5090), .S1(n12[0]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(359[21:35])
    defparam sub_10_add_2_1.INIT0 = 16'hF000;
    defparam sub_10_add_2_1.INIT1 = 16'h5555;
    defparam sub_10_add_2_1.INJECT1_0 = "NO";
    defparam sub_10_add_2_1.INJECT1_1 = "NO";
    LUT4 i14_4_lut (.A(counter[7]), .B(n28_adj_1428), .C(n24_adj_1429), 
         .D(n16_adj_1430), .Z(n2065)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(348[18:27])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(counter[6]), .B(n26_adj_1431), .C(n20_adj_1432), 
         .D(counter[12]), .Z(n28_adj_1428)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(348[18:27])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut (.A(counter[2]), .B(counter[14]), .C(counter[8]), .D(counter[5]), 
         .Z(n24_adj_1429)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(348[18:27])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_133 (.A(counter[15]), .B(counter[9]), .Z(n16_adj_1430)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(348[18:27])
    defparam i1_2_lut_adj_133.init = 16'heeee;
    LUT4 i11_4_lut (.A(counter[11]), .B(counter[3]), .C(counter[13]), 
         .D(counter[10]), .Z(n26_adj_1431)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(348[18:27])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(counter[1]), .B(counter[4]), .Z(n20_adj_1432)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(348[18:27])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 n24_bdd_3_lut (.A(n12[4]), .B(n6563), .C(n2065), .Z(counter_15__N_1299[4])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n24_bdd_3_lut.init = 16'hacac;
    LUT4 n27_bdd_3_lut (.A(n12[1]), .B(n6542), .C(n2065), .Z(counter_15__N_1299[1])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n27_bdd_3_lut.init = 16'hacac;
    LUT4 i2_4_lut (.A(\lcr[2] ), .B(n2214), .C(n6473), .D(n1673), .Z(n5135)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i2_4_lut.init = 16'hffdc;
    LUT4 i1009_2_lut (.A(n271[0]), .B(THRR), .Z(n1673)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i1009_2_lut.init = 16'h8888;
    LUT4 tx_in_shift_s_I_0_2_lut_rep_190 (.A(tx_in_shift_s), .B(tx_in_shift_s1), 
         .Z(n6518)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(533[15:47])
    defparam tx_in_shift_s_I_0_2_lut_rep_190.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_134 (.A(tx_in_shift_s), .B(tx_in_shift_s1), 
         .C(THRR), .D(thr_wr), .Z(n1445)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(533[15:47])
    defparam i1_3_lut_4_lut_adj_134.init = 16'h00f2;
    LUT4 i1_3_lut_4_lut_adj_135 (.A(tx_in_shift_s), .B(tx_in_shift_s1), 
         .C(thr_empty), .D(thr_wr), .Z(n1461)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(533[15:47])
    defparam i1_3_lut_4_lut_adj_135.init = 16'h00f2;
    LUT4 i1000_4_lut_4_lut (.A(\lcr[2] ), .B(n6473), .C(n5876), .D(n1663), 
         .Z(n1664)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(407[22] 410[42])
    defparam i1000_4_lut_4_lut.init = 16'hff08;
    LUT4 i4362_3_lut_4_lut (.A(n6477), .B(tx_cnt[0]), .C(tx_cnt[1]), .D(tx_cnt[2]), 
         .Z(n1[2])) /* synthesis lut_function=(A (D)+!A !(B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(373[27:37])
    defparam i4362_3_lut_4_lut.init = 16'hbf40;
    LUT4 i985_3_lut_4_lut (.A(n271[6]), .B(n6483), .C(THR[1]), .D(tsr[2]), 
         .Z(n1643)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i985_3_lut_4_lut.init = 16'hf780;
    LUT4 i956_3_lut_4_lut (.A(n271[6]), .B(n6483), .C(THR[0]), .D(tsr[1]), 
         .Z(n1614)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i956_3_lut_4_lut.init = 16'hf780;
    LUT4 i983_3_lut_4_lut (.A(n271[6]), .B(n6483), .C(THR[2]), .D(tsr[3]), 
         .Z(n1641)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i983_3_lut_4_lut.init = 16'hf780;
    LUT4 i2_2_lut_3_lut_4_lut (.A(tx_in_shift_s_N_1414), .B(n271[6]), .C(n2065), 
         .D(counter[0]), .Z(clk_in_enable_74)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0e00;
    LUT4 i1686_else_1_lut (.A(divisor[1]), .B(counter[0]), .C(divisor[2]), 
         .D(n271[5]), .Z(n6542)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1686_else_1_lut.init = 16'h3022;
    PFUMX i5509 (.BLUT(n6591), .ALUT(n6592), .C0(n2065), .Z(counter_15__N_1299[11]));
    PFUMX i5507 (.BLUT(n6588), .ALUT(n6589), .C0(n2065), .Z(counter_15__N_1299[12]));
    PFUMX i5505 (.BLUT(n6585), .ALUT(n6586), .C0(n2065), .Z(counter_15__N_1299[13]));
    PFUMX i5503 (.BLUT(n6582), .ALUT(n6583), .C0(n2065), .Z(counter_15__N_1299[14]));
    LUT4 i981_3_lut_4_lut (.A(n271[6]), .B(n6483), .C(THR[3]), .D(tsr[4]), 
         .Z(n1639)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i981_3_lut_4_lut.init = 16'hf780;
    PFUMX i5501 (.BLUT(n6579), .ALUT(n6580), .C0(n2065), .Z(counter_15__N_1299[9]));
    PFUMX i5499 (.BLUT(n6576), .ALUT(n6577), .C0(tx_in_shift_s_N_1414), 
          .Z(n6578));
    PFUMX i2893 (.BLUT(n5), .ALUT(n11), .C0(n7), .Z(\dat_o_7__N_1029[6] ));
    PFUMX i5497 (.BLUT(n6573), .ALUT(n6574), .C0(tx_cnt[0]), .Z(n11_c));
    LUT4 i979_3_lut_4_lut (.A(n271[6]), .B(n6483), .C(THR[4]), .D(tsr[5]), 
         .Z(n1637)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i979_3_lut_4_lut.init = 16'hf780;
    PFUMX mux_202_i16 (.BLUT(counter_15__N_1333[15]), .ALUT(counter_15__N_1349[15]), 
          .C0(n271[5]), .Z(counter_15__N_1299[15]));
    LUT4 i977_3_lut_4_lut (.A(n271[6]), .B(n6483), .C(THR[5]), .D(tsr[6]), 
         .Z(n1635)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i977_3_lut_4_lut.init = 16'hf780;
    LUT4 i975_3_lut_4_lut (.A(n271[6]), .B(n6483), .C(THR[6]), .D(tsr[7]), 
         .Z(n1633)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/txmitt.v(342[9] 447[16])
    defparam i975_3_lut_4_lut.init = 16'hf780;
    LUT4 n28_bdd_3_lut (.A(n12[0]), .B(n6545), .C(n2065), .Z(counter_15__N_1299[0])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n28_bdd_3_lut.init = 16'hacac;
    PFUMX i5489 (.BLUT(n6560), .ALUT(n6561), .C0(n2065), .Z(counter_15__N_1299[10]));
    PFUMX i5487 (.BLUT(n6557), .ALUT(n6558), .C0(n2065), .Z(counter_15__N_1299[5]));
    PFUMX i5485 (.BLUT(n6554), .ALUT(n6555), .C0(n2065), .Z(counter_15__N_1299[6]));
    PFUMX i5483 (.BLUT(n6551), .ALUT(n6552), .C0(n2065), .Z(counter_15__N_1299[7]));
    PFUMX i5481 (.BLUT(n6548), .ALUT(n6549), .C0(n2065), .Z(counter_15__N_1299[8]));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module rxcver
//

module rxcver (RBR, clk_in, clk_in_enable_82, \RBR[1] , parity_even, 
            uartSIN_c, \iir_3__N_1003[2] , n6455, dataerr_int, divisor, 
            rx_rdy, rbr_rd, n6934, databits, n6461, n7, \dat_o_7__N_1029[2] , 
            break_int, clk_in_enable_79, n2661, frame_err, overrun_err, 
            \RBR[6] , \RBR[7] , n5876, n2143, \ier[2] , LM8interrupts_0__N_34, 
            n6459, n198, n1705, n1715, parity_en, parity_stick, 
            \ier[0] , n3853, n6037, n6460) /* synthesis syn_module_defined=1 */ ;
    output [7:0]RBR;
    input clk_in;
    output clk_in_enable_82;
    output \RBR[1] ;
    input parity_even;
    input uartSIN_c;
    input \iir_3__N_1003[2] ;
    input n6455;
    input dataerr_int;
    input [15:0]divisor;
    output rx_rdy;
    input rbr_rd;
    input n6934;
    input [1:0]databits;
    input n6461;
    input n7;
    output \dat_o_7__N_1029[2] ;
    output break_int;
    input clk_in_enable_79;
    input n2661;
    output frame_err;
    output overrun_err;
    output \RBR[6] ;
    output \RBR[7] ;
    output n5876;
    output n2143;
    input \ier[2] ;
    input LM8interrupts_0__N_34;
    input n6459;
    output n198;
    input n1705;
    output n1715;
    input parity_en;
    input parity_stick;
    input \ier[0] ;
    output n3853;
    input n6037;
    input n6460;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    wire [7:0]rbr_7__N_1222;
    
    wire n5066;
    wire [15:0]n1059;
    
    wire GND_net;
    wire [15:0]counter_15__N_1119;
    
    wire n5067;
    wire [7:0]RBR_c;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(204[33:36])
    
    wire rx_frame_err, hunt_one, sin_d0, rx_frame_err_d1, sampled_once_N_1280;
    wire [15:0]counter_15__N_1174;
    wire [15:0]counter;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(190[17:24])
    wire [7:0]n58;
    
    wire hunt_one_N_1256;
    wire [3:0]databit_recved_num;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(145[26:44])
    wire [3:0]n21;
    
    wire rx_parity_err, n2413, n1830, sin_d0_delay, n6538, rx_idle_N_1255, 
        n87, n1415, n6487, n6, clk_in_enable_25, n3882, sampled_once, 
        n4, n5751, n5071, rx_idle, hunt, n5535, n26, n22, n5793, 
        n24, n18, clk_in_enable_99, rx_idle_d1, n6036;
    wire [15:0]n969;
    
    wire n5082, n5081, n5080, hunt_one_N_1251;
    wire [7:0]rsr;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(146[36:39])
    
    wire clk_in_enable_107, n6336, n6335, n5079, n5078, parity_err, 
        n6038, n5070, n5065, n5077, n1585, n1735, n5144, n1581, 
        clk_in_enable_75, n1831, break_int_N_1246, frame_err_N_1243, 
        parity_err_N_1239, n2425, n1, n5076, n5075, n68, n5068, 
        n209, n4957, n4958, n5802, n5902, n1748, n6480, n3701, 
        n5064, n5069, n4959, n1_adj_1420, n1_adj_1421, n4956, n1_adj_1422, 
        n1_adj_1423, n2, n6469, n2_adj_1424, rx_parity_err_N_1258, 
        n6_adj_1425;
    
    FD1P3AX rbr_i0_i0 (.D(rbr_7__N_1222[0]), .SP(clk_in_enable_82), .CK(clk_in), 
            .Q(RBR[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[14] 465[18])
    defparam rbr_i0_i0.GSR = "ENABLED";
    CCU2D add_541_7 (.A0(n1059[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1059[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5066), 
          .COUT(n5067), .S0(counter_15__N_1119[5]), .S1(counter_15__N_1119[6]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam add_541_7.INIT0 = 16'h5555;
    defparam add_541_7.INIT1 = 16'h5555;
    defparam add_541_7.INJECT1_0 = "NO";
    defparam add_541_7.INJECT1_1 = "NO";
    FD1P3AX rbr_i0_i5 (.D(rbr_7__N_1222[5]), .SP(clk_in_enable_82), .CK(clk_in), 
            .Q(RBR[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[14] 465[18])
    defparam rbr_i0_i5.GSR = "ENABLED";
    FD1P3AX rbr_i0_i4 (.D(rbr_7__N_1222[4]), .SP(clk_in_enable_82), .CK(clk_in), 
            .Q(RBR[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[14] 465[18])
    defparam rbr_i0_i4.GSR = "ENABLED";
    FD1P3AX rbr_i0_i3 (.D(rbr_7__N_1222[3]), .SP(clk_in_enable_82), .CK(clk_in), 
            .Q(RBR[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[14] 465[18])
    defparam rbr_i0_i3.GSR = "ENABLED";
    FD1P3AX rbr_i0_i2 (.D(rbr_7__N_1222[2]), .SP(clk_in_enable_82), .CK(clk_in), 
            .Q(RBR_c[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[14] 465[18])
    defparam rbr_i0_i2.GSR = "ENABLED";
    FD1P3AX rbr_i0_i1 (.D(rbr_7__N_1222[1]), .SP(clk_in_enable_82), .CK(clk_in), 
            .Q(\RBR[1] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[14] 465[18])
    defparam rbr_i0_i1.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(rx_frame_err), .B(hunt_one), .C(sin_d0), .D(rx_frame_err_d1), 
         .Z(sampled_once_N_1280)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0008;
    LUT4 i2848_3_lut (.A(counter_15__N_1174[15]), .B(counter[15]), .C(n58[3]), 
         .Z(n1059[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i2848_3_lut.init = 16'hcaca;
    LUT4 i4319_2_lut (.A(hunt_one_N_1256), .B(databit_recved_num[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam i4319_2_lut.init = 16'h6666;
    LUT4 i1708_4_lut (.A(rx_parity_err), .B(parity_even), .C(n2413), .D(sin_d0), 
         .Z(n1830)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i1708_4_lut.init = 16'hc53a;
    LUT4 i41_2_lut_rep_210 (.A(sin_d0), .B(sin_d0_delay), .Z(n6538)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(326[10:52])
    defparam i41_2_lut_rep_210.init = 16'h4444;
    LUT4 i78_2_lut_3_lut (.A(sin_d0), .B(sin_d0_delay), .C(rx_idle_N_1255), 
         .Z(n87)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(326[10:52])
    defparam i78_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut (.A(n58[4]), .B(sin_d0), .C(hunt_one_N_1256), 
         .Z(n1415)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_3_lut_4_lut (.A(n6487), .B(n58[4]), .C(n58[3]), .D(sin_d0), 
         .Z(n6)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i1_3_lut_4_lut.init = 16'hf8f0;
    FD1P3AX rx_frame_err_157 (.D(n3882), .SP(clk_in_enable_25), .CK(clk_in), 
            .Q(rx_frame_err));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rx_frame_err_157.GSR = "ENABLED";
    FD1S3AX sampled_once_151 (.D(sampled_once_N_1280), .CK(clk_in), .Q(sampled_once)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(278[14] 282[32])
    defparam sampled_once_151.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(sin_d0), .B(rx_idle_N_1255), .C(n4), .D(sin_d0_delay), 
         .Z(n5751)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(204[11] 212[21])
    defparam i1_4_lut.init = 16'h5450;
    CCU2D add_541_17 (.A0(n1059[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5071), 
          .S0(counter_15__N_1119[15]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam add_541_17.INIT0 = 16'h5555;
    defparam add_541_17.INIT1 = 16'h0000;
    defparam add_541_17.INJECT1_0 = "NO";
    defparam add_541_17.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(rx_idle), .B(sampled_once), .C(hunt), .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(204[11] 212[21])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i1_4_lut_adj_116 (.A(rx_idle_N_1255), .B(hunt_one_N_1256), .C(n6538), 
         .D(n6), .Z(n5535)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i1_4_lut_adj_116.init = 16'hce0a;
    FD1S3AX counter_i0 (.D(counter_15__N_1119[0]), .CK(clk_in), .Q(counter[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i0.GSR = "ENABLED";
    LUT4 i13_4_lut (.A(counter[15]), .B(n26), .C(n22), .D(counter[3]), 
         .Z(n5793)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i13_4_lut.init = 16'hfffe;
    FD1S3AX sin_d0_161 (.D(uartSIN_c), .CK(clk_in), .Q(sin_d0)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(477[14] 483[14])
    defparam sin_d0_161.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(counter[7]), .B(n24), .C(n18), .D(counter[13]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i12_4_lut.init = 16'hfffe;
    FD1P3IX databit_recved_num_694__i0 (.D(n21[0]), .SP(clk_in_enable_99), 
            .CD(n1415), .CK(clk_in), .Q(databit_recved_num[0]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam databit_recved_num_694__i0.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(counter[6]), .B(counter[2]), .C(counter[1]), .D(counter[8]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i8_4_lut.init = 16'hfffe;
    FD1S3AX sin_d0_delay_162 (.D(sin_d0), .CK(clk_in), .Q(sin_d0_delay)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(477[14] 483[14])
    defparam sin_d0_delay_162.GSR = "ENABLED";
    FD1S3AY rx_frame_err_d1_164 (.D(rx_frame_err), .CK(clk_in), .Q(rx_frame_err_d1)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(491[14] 498[12])
    defparam rx_frame_err_d1_164.GSR = "ENABLED";
    FD1S3AY rx_idle_d1_165 (.D(rx_idle), .CK(clk_in), .Q(rx_idle_d1)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(505[14] 508[14])
    defparam rx_idle_d1_165.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(counter[9]), .B(counter[4]), .C(counter[12]), .D(counter[10]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(counter[14]), .B(counter[5]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i4_2_lut.init = 16'heeee;
    FD1S3AX hunt_148 (.D(n5751), .CK(clk_in), .Q(hunt)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(204[11] 212[21])
    defparam hunt_148.GSR = "ENABLED";
    FD1S3AY rx_idle_153 (.D(rx_idle_N_1255), .CK(clk_in), .Q(rx_idle)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(290[11] 293[27])
    defparam rx_idle_153.GSR = "ENABLED";
    FD1S3AY cs_state_FSM_i1 (.D(n5535), .CK(clk_in), .Q(rx_idle_N_1255));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam cs_state_FSM_i1.GSR = "ENABLED";
    LUT4 i5295_4_lut (.A(RBR_c[2]), .B(\iir_3__N_1003[2] ), .C(n6455), 
         .D(dataerr_int), .Z(n6036)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i5295_4_lut.init = 16'hfaca;
    LUT4 i2849_3_lut (.A(divisor[14]), .B(counter[14]), .C(n6487), .Z(n969[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(390[23:49])
    defparam i2849_3_lut.init = 16'hcaca;
    CCU2D add_533_17 (.A0(n6487), .B0(rx_idle_N_1255), .C0(divisor[14]), 
          .D0(n969[14]), .A1(n6487), .B1(rx_idle_N_1255), .C1(divisor[15]), 
          .D1(n969[15]), .CIN(n5082), .S0(counter_15__N_1174[14]), .S1(counter_15__N_1174[15]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam add_533_17.INIT0 = 16'hd1e2;
    defparam add_533_17.INIT1 = 16'hd1e2;
    defparam add_533_17.INJECT1_0 = "NO";
    defparam add_533_17.INJECT1_1 = "NO";
    LUT4 mux_530_i16_3_lut (.A(divisor[15]), .B(counter[15]), .C(n6487), 
         .Z(n969[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam mux_530_i16_3_lut.init = 16'hcaca;
    CCU2D add_533_15 (.A0(n6487), .B0(rx_idle_N_1255), .C0(divisor[12]), 
          .D0(n969[12]), .A1(n6487), .B1(rx_idle_N_1255), .C1(divisor[13]), 
          .D1(n969[13]), .CIN(n5081), .COUT(n5082), .S0(counter_15__N_1174[12]), 
          .S1(counter_15__N_1174[13]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam add_533_15.INIT0 = 16'hd1e2;
    defparam add_533_15.INIT1 = 16'hd1e2;
    defparam add_533_15.INJECT1_0 = "NO";
    defparam add_533_15.INJECT1_1 = "NO";
    LUT4 mux_530_i13_3_lut (.A(divisor[12]), .B(counter[12]), .C(n6487), 
         .Z(n969[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam mux_530_i13_3_lut.init = 16'hcaca;
    CCU2D add_533_13 (.A0(n6487), .B0(rx_idle_N_1255), .C0(divisor[10]), 
          .D0(n969[10]), .A1(n6487), .B1(rx_idle_N_1255), .C1(divisor[11]), 
          .D1(n969[11]), .CIN(n5080), .COUT(n5081), .S0(counter_15__N_1174[10]), 
          .S1(counter_15__N_1174[11]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam add_533_13.INIT0 = 16'hd1e2;
    defparam add_533_13.INIT1 = 16'hd1e2;
    defparam add_533_13.INJECT1_0 = "NO";
    defparam add_533_13.INJECT1_1 = "NO";
    LUT4 i2791_3_lut (.A(divisor[13]), .B(counter[13]), .C(n6487), .Z(n969[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(390[23:49])
    defparam i2791_3_lut.init = 16'hcaca;
    LUT4 mux_530_i11_3_lut (.A(divisor[10]), .B(counter[10]), .C(n6487), 
         .Z(n969[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam mux_530_i11_3_lut.init = 16'hcaca;
    FD1P3IX rbr_datardy_150 (.D(n6934), .SP(clk_in_enable_82), .CD(rbr_rd), 
            .CK(clk_in), .Q(rx_rdy));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(257[14] 265[12])
    defparam rbr_datardy_150.GSR = "ENABLED";
    FD1P3IX hunt_one_149 (.D(n6934), .SP(hunt_one_N_1251), .CD(hunt), 
            .CK(clk_in), .Q(hunt_one));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(226[14] 229[28])
    defparam hunt_one_149.GSR = "ENABLED";
    FD1P3IX rsr__i0 (.D(rsr[1]), .SP(clk_in_enable_107), .CD(n1415), .CK(clk_in), 
            .Q(rsr[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rsr__i0.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(hunt_one_N_1256), .B(rx_idle), .C(sin_d0), .Z(hunt_one_N_1251)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(228[18:81])
    defparam i2_3_lut.init = 16'h2020;
    LUT4 databit_recved_num_1__bdd_4_lut (.A(databit_recved_num[1]), .B(databit_recved_num[2]), 
         .C(databit_recved_num[3]), .D(databits[1]), .Z(n6336)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C+(D))+!B))) */ ;
    defparam databit_recved_num_1__bdd_4_lut.init = 16'h0804;
    LUT4 databits_1__bdd_4_lut (.A(databits[1]), .B(databit_recved_num[2]), 
         .C(databit_recved_num[1]), .D(databit_recved_num[3]), .Z(n6335)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam databits_1__bdd_4_lut.init = 16'h0240;
    LUT4 i1_4_lut_adj_117 (.A(hunt_one_N_1256), .B(n58[1]), .C(sin_d0), 
         .D(n58[4]), .Z(clk_in_enable_107)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_117.init = 16'h0a88;
    CCU2D add_533_11 (.A0(n6487), .B0(rx_idle_N_1255), .C0(divisor[8]), 
          .D0(n969[8]), .A1(n6487), .B1(rx_idle_N_1255), .C1(divisor[9]), 
          .D1(n969[9]), .CIN(n5079), .COUT(n5080), .S0(counter_15__N_1174[8]), 
          .S1(counter_15__N_1174[9]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam add_533_11.INIT0 = 16'hd1e2;
    defparam add_533_11.INIT1 = 16'hd1e2;
    defparam add_533_11.INJECT1_0 = "NO";
    defparam add_533_11.INJECT1_1 = "NO";
    CCU2D add_533_9 (.A0(n6487), .B0(rx_idle_N_1255), .C0(divisor[6]), 
          .D0(n969[6]), .A1(n6487), .B1(rx_idle_N_1255), .C1(divisor[7]), 
          .D1(n969[7]), .CIN(n5078), .COUT(n5079), .S0(counter_15__N_1174[6]), 
          .S1(counter_15__N_1174[7]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam add_533_9.INIT0 = 16'hd1e2;
    defparam add_533_9.INIT1 = 16'hd1e2;
    defparam add_533_9.INJECT1_0 = "NO";
    defparam add_533_9.INJECT1_1 = "NO";
    LUT4 i10_4_lut_adj_118 (.A(parity_err), .B(n6461), .C(n7), .D(n6038), 
         .Z(\dat_o_7__N_1029[2] )) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(343[13:28])
    defparam i10_4_lut_adj_118.init = 16'hfaca;
    FD1S3AX counter_i1 (.D(counter_15__N_1119[1]), .CK(clk_in), .Q(counter[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i1.GSR = "ENABLED";
    CCU2D add_541_15 (.A0(n1059[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1059[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5070), .COUT(n5071), .S0(counter_15__N_1119[13]), .S1(counter_15__N_1119[14]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam add_541_15.INIT0 = 16'h5555;
    defparam add_541_15.INIT1 = 16'h5555;
    defparam add_541_15.INJECT1_0 = "NO";
    defparam add_541_15.INJECT1_1 = "NO";
    CCU2D add_541_5 (.A0(n1059[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1059[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5065), 
          .COUT(n5066), .S0(counter_15__N_1119[3]), .S1(counter_15__N_1119[4]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam add_541_5.INIT0 = 16'h5555;
    defparam add_541_5.INIT1 = 16'h5555;
    defparam add_541_5.INJECT1_0 = "NO";
    defparam add_541_5.INJECT1_1 = "NO";
    CCU2D add_533_7 (.A0(n6487), .B0(rx_idle_N_1255), .C0(divisor[4]), 
          .D0(n969[4]), .A1(n6487), .B1(rx_idle_N_1255), .C1(divisor[5]), 
          .D1(n969[5]), .CIN(n5077), .COUT(n5078), .S0(counter_15__N_1174[4]), 
          .S1(counter_15__N_1174[5]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam add_533_7.INIT0 = 16'hd1e2;
    defparam add_533_7.INIT1 = 16'hd1e2;
    defparam add_533_7.INJECT1_0 = "NO";
    defparam add_533_7.INJECT1_1 = "NO";
    FD1S3AX counter_i2 (.D(counter_15__N_1119[2]), .CK(clk_in), .Q(counter[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i2.GSR = "ENABLED";
    FD1S3AX counter_i3 (.D(counter_15__N_1119[3]), .CK(clk_in), .Q(counter[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i3.GSR = "ENABLED";
    FD1S3AX counter_i4 (.D(counter_15__N_1119[4]), .CK(clk_in), .Q(counter[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i4.GSR = "ENABLED";
    FD1S3AX counter_i5 (.D(counter_15__N_1119[5]), .CK(clk_in), .Q(counter[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i5.GSR = "ENABLED";
    FD1S3AX counter_i6 (.D(counter_15__N_1119[6]), .CK(clk_in), .Q(counter[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i6.GSR = "ENABLED";
    FD1S3AX counter_i7 (.D(counter_15__N_1119[7]), .CK(clk_in), .Q(counter[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i7.GSR = "ENABLED";
    FD1S3AX counter_i8 (.D(counter_15__N_1119[8]), .CK(clk_in), .Q(counter[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i8.GSR = "ENABLED";
    FD1S3AX counter_i9 (.D(counter_15__N_1119[9]), .CK(clk_in), .Q(counter[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i9.GSR = "ENABLED";
    FD1S3AX counter_i10 (.D(counter_15__N_1119[10]), .CK(clk_in), .Q(counter[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i10.GSR = "ENABLED";
    FD1S3AX counter_i11 (.D(counter_15__N_1119[11]), .CK(clk_in), .Q(counter[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i11.GSR = "ENABLED";
    FD1S3AX counter_i12 (.D(counter_15__N_1119[12]), .CK(clk_in), .Q(counter[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i12.GSR = "ENABLED";
    FD1S3AX counter_i13 (.D(counter_15__N_1119[13]), .CK(clk_in), .Q(counter[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i13.GSR = "ENABLED";
    FD1S3AX counter_i14 (.D(counter_15__N_1119[14]), .CK(clk_in), .Q(counter[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i14.GSR = "ENABLED";
    FD1S3AX counter_i15 (.D(counter_15__N_1119[15]), .CK(clk_in), .Q(counter[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam counter_i15.GSR = "ENABLED";
    FD1S3AX cs_state_FSM_i2 (.D(n1585), .CK(clk_in), .Q(n58[1]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam cs_state_FSM_i2.GSR = "ENABLED";
    FD1S3AX cs_state_FSM_i3 (.D(n1735), .CK(clk_in), .Q(n58[2]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam cs_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX cs_state_FSM_i4 (.D(n5144), .CK(clk_in), .Q(n58[3]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam cs_state_FSM_i4.GSR = "ENABLED";
    FD1S3AX cs_state_FSM_i5 (.D(n1581), .CK(clk_in), .Q(n58[4]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam cs_state_FSM_i5.GSR = "ENABLED";
    FD1P3AY rx_parity_err_156 (.D(n1831), .SP(clk_in_enable_75), .CK(clk_in), 
            .Q(rx_parity_err));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rx_parity_err_156.GSR = "ENABLED";
    FD1P3IX break_int_int_169 (.D(break_int_N_1246), .SP(clk_in_enable_79), 
            .CD(n2661), .CK(clk_in), .Q(break_int)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(560[14] 575[14])
    defparam break_int_int_169.GSR = "ENABLED";
    FD1P3IX frame_err_int_168 (.D(frame_err_N_1243), .SP(clk_in_enable_79), 
            .CD(n2661), .CK(clk_in), .Q(frame_err)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(560[14] 575[14])
    defparam frame_err_int_168.GSR = "ENABLED";
    FD1P3IX parity_err_int_167 (.D(parity_err_N_1239), .SP(clk_in_enable_79), 
            .CD(n2661), .CK(clk_in), .Q(parity_err)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(560[14] 575[14])
    defparam parity_err_int_167.GSR = "ENABLED";
    FD1P3IX overrun_err_int_166 (.D(rx_rdy), .SP(clk_in_enable_79), .CD(n2661), 
            .CK(clk_in), .Q(overrun_err)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(560[14] 575[14])
    defparam overrun_err_int_166.GSR = "ENABLED";
    FD1P3IX rbr_i0_i6 (.D(n1), .SP(clk_in_enable_82), .CD(n2425), .CK(clk_in), 
            .Q(\RBR[6] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[14] 465[18])
    defparam rbr_i0_i6.GSR = "ENABLED";
    FD1P3AX rbr_i0_i7 (.D(rbr_7__N_1222[7]), .SP(clk_in_enable_82), .CK(clk_in), 
            .Q(\RBR[7] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[14] 465[18])
    defparam rbr_i0_i7.GSR = "ENABLED";
    FD1P3IX databit_recved_num_694__i1 (.D(n21[1]), .SP(clk_in_enable_99), 
            .CD(n1415), .CK(clk_in), .Q(databit_recved_num[1]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam databit_recved_num_694__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(databits[1]), .B(databits[0]), .Z(n5876)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(359[14:29])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_533_5 (.A0(n6487), .B0(rx_idle_N_1255), .C0(divisor[2]), 
          .D0(n969[2]), .A1(n6487), .B1(rx_idle_N_1255), .C1(divisor[3]), 
          .D1(n969[3]), .CIN(n5076), .COUT(n5077), .S0(counter_15__N_1174[2]), 
          .S1(counter_15__N_1174[3]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam add_533_5.INIT0 = 16'hd1e2;
    defparam add_533_5.INIT1 = 16'hd1e2;
    defparam add_533_5.INJECT1_0 = "NO";
    defparam add_533_5.INJECT1_1 = "NO";
    CCU2D add_533_3 (.A0(n6487), .B0(rx_idle_N_1255), .C0(divisor[0]), 
          .D0(n969[0]), .A1(n6487), .B1(rx_idle_N_1255), .C1(divisor[1]), 
          .D1(n969[1]), .CIN(n5075), .COUT(n5076), .S0(counter_15__N_1174[0]), 
          .S1(counter_15__N_1174[1]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam add_533_3.INIT0 = 16'hd1e2;
    defparam add_533_3.INIT1 = 16'hd1e2;
    defparam add_533_3.INJECT1_0 = "NO";
    defparam add_533_3.INJECT1_1 = "NO";
    LUT4 i2790_3_lut (.A(divisor[8]), .B(counter[8]), .C(n6487), .Z(n969[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(390[23:49])
    defparam i2790_3_lut.init = 16'hcaca;
    LUT4 i2789_3_lut (.A(divisor[9]), .B(counter[9]), .C(n6487), .Z(n969[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(390[23:49])
    defparam i2789_3_lut.init = 16'hcaca;
    LUT4 i2851_3_lut (.A(divisor[6]), .B(counter[6]), .C(n6487), .Z(n969[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(390[23:49])
    defparam i2851_3_lut.init = 16'hcaca;
    FD1P3IX databit_recved_num_694__i2 (.D(n21[2]), .SP(clk_in_enable_99), 
            .CD(n1415), .CK(clk_in), .Q(databit_recved_num[2]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam databit_recved_num_694__i2.GSR = "ENABLED";
    LUT4 i2847_3_lut (.A(divisor[7]), .B(counter[7]), .C(n6487), .Z(n969[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(390[23:49])
    defparam i2847_3_lut.init = 16'hcaca;
    FD1P3IX databit_recved_num_694__i3 (.D(n21[3]), .SP(clk_in_enable_99), 
            .CD(n1415), .CK(clk_in), .Q(databit_recved_num[3]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam databit_recved_num_694__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_119 (.A(dataerr_int), .B(n68), .Z(n2143)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_119.init = 16'h2222;
    LUT4 i1_4_lut_adj_120 (.A(\ier[2] ), .B(LM8interrupts_0__N_34), .C(n6459), 
         .D(n7), .Z(n68)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_120.init = 16'haaa2;
    CCU2D add_533_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rx_idle_N_1255), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n5075));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam add_533_1.INIT0 = 16'hF000;
    defparam add_533_1.INIT1 = 16'h0fff;
    defparam add_533_1.INJECT1_0 = "NO";
    defparam add_533_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_121 (.A(n198), .B(dataerr_int), .C(n1705), .D(n68), 
         .Z(n1715)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_121.init = 16'heca0;
    FD1P3IX rsr__i1 (.D(rsr[2]), .SP(clk_in_enable_107), .CD(n1415), .CK(clk_in), 
            .Q(rsr[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rsr__i1.GSR = "ENABLED";
    CCU2D add_541_9 (.A0(n1059[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1059[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5067), 
          .COUT(n5068), .S0(counter_15__N_1119[7]), .S1(counter_15__N_1119[8]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam add_541_9.INIT0 = 16'h5555;
    defparam add_541_9.INIT1 = 16'h5555;
    defparam add_541_9.INJECT1_0 = "NO";
    defparam add_541_9.INJECT1_1 = "NO";
    FD1P3IX rsr__i2 (.D(rsr[3]), .SP(clk_in_enable_107), .CD(n1415), .CK(clk_in), 
            .Q(rsr[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rsr__i2.GSR = "ENABLED";
    FD1P3IX rsr__i3 (.D(rsr[4]), .SP(clk_in_enable_107), .CD(n1415), .CK(clk_in), 
            .Q(rsr[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rsr__i3.GSR = "ENABLED";
    FD1P3IX rsr__i4 (.D(rsr[5]), .SP(clk_in_enable_107), .CD(n1415), .CK(clk_in), 
            .Q(rsr[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rsr__i4.GSR = "ENABLED";
    FD1P3IX rsr__i5 (.D(rsr[6]), .SP(clk_in_enable_107), .CD(n1415), .CK(clk_in), 
            .Q(rsr[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rsr__i5.GSR = "ENABLED";
    FD1P3IX rsr__i6 (.D(rsr[7]), .SP(clk_in_enable_107), .CD(n1415), .CK(clk_in), 
            .Q(rsr[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rsr__i6.GSR = "ENABLED";
    FD1P3IX rsr__i7 (.D(sin_d0), .SP(clk_in_enable_107), .CD(n1415), .CK(clk_in), 
            .Q(rsr[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=8, LSE_LLINE=293, LSE_RLINE=313 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam rsr__i7.GSR = "ENABLED";
    LUT4 i22_3_lut (.A(counter_15__N_1174[13]), .B(counter[13]), .C(n58[3]), 
         .Z(n1059[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(149[14:21])
    defparam i22_3_lut.init = 16'hcaca;
    LUT4 i8_3_lut (.A(counter_15__N_1174[14]), .B(counter[14]), .C(n58[3]), 
         .Z(n1059[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(149[14:21])
    defparam i8_3_lut.init = 16'hcaca;
    LUT4 mux_538_i4_3_lut (.A(counter_15__N_1174[3]), .B(counter[3]), .C(n58[3]), 
         .Z(n1059[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam mux_538_i4_3_lut.init = 16'hcaca;
    LUT4 mux_538_i5_3_lut (.A(counter_15__N_1174[4]), .B(counter[4]), .C(n58[3]), 
         .Z(n1059[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam mux_538_i5_3_lut.init = 16'hcaca;
    LUT4 mux_530_i5_3_lut (.A(divisor[4]), .B(counter[4]), .C(n6487), 
         .Z(n969[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam mux_530_i5_3_lut.init = 16'hcaca;
    LUT4 mux_530_i6_3_lut (.A(divisor[5]), .B(counter[5]), .C(n6487), 
         .Z(n969[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam mux_530_i6_3_lut.init = 16'hcaca;
    LUT4 i927_4_lut (.A(n58[1]), .B(n6487), .C(n209), .D(n58[4]), .Z(n1585)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+!(D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i927_4_lut.init = 16'hbb8a;
    CCU2D counter_15__I_0_13 (.A0(divisor[10]), .B0(counter[9]), .C0(divisor[9]), 
          .D0(counter[8]), .A1(divisor[8]), .B1(counter[7]), .C1(divisor[7]), 
          .D1(counter[6]), .CIN(n4957), .COUT(n4958));
    defparam counter_15__I_0_13.INIT0 = 16'h9009;
    defparam counter_15__I_0_13.INIT1 = 16'h9009;
    defparam counter_15__I_0_13.INJECT1_0 = "YES";
    defparam counter_15__I_0_13.INJECT1_1 = "YES";
    LUT4 i1_4_lut_adj_122 (.A(databit_recved_num[0]), .B(databits[0]), .C(n6336), 
         .D(n6335), .Z(n209)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(359[13] 362[74])
    defparam i1_4_lut_adj_122.init = 16'h6420;
    LUT4 i1065_4_lut (.A(n58[2]), .B(parity_en), .C(n6487), .D(n5802), 
         .Z(n1735)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i1065_4_lut.init = 16'heca0;
    LUT4 i2_3_lut_adj_123 (.A(n58[1]), .B(n6487), .C(n209), .Z(n5802)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(343[17:51])
    defparam i2_3_lut_adj_123.init = 16'h2020;
    LUT4 i2_4_lut (.A(parity_en), .B(n5902), .C(n5802), .D(n1748), .Z(n5144)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i2_4_lut.init = 16'hffdc;
    LUT4 i1_4_lut_adj_124 (.A(n58[2]), .B(counter[11]), .C(n5793), .D(counter[0]), 
         .Z(n5902)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_124.init = 16'h0200;
    LUT4 i1073_2_lut (.A(n58[3]), .B(hunt_one_N_1256), .Z(n1748)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i1073_2_lut.init = 16'h2222;
    LUT4 i923_4_lut (.A(hunt_one_N_1256), .B(n87), .C(n6480), .D(sin_d0), 
         .Z(n1581)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i923_4_lut.init = 16'hdcfc;
    LUT4 i1_4_lut_adj_125 (.A(hunt_one_N_1256), .B(n3701), .C(sin_d0), 
         .D(n58[4]), .Z(clk_in_enable_75)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_125.init = 16'h0a88;
    LUT4 i3008_2_lut (.A(n58[1]), .B(n58[2]), .Z(n3701)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3008_2_lut.init = 16'heeee;
    LUT4 break_int_I_0_2_lut (.A(break_int), .B(hunt_one), .Z(break_int_N_1246)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(568[30:58])
    defparam break_int_I_0_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_126 (.A(rx_frame_err), .B(frame_err), .Z(frame_err_N_1243)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i1_2_lut_adj_126.init = 16'heeee;
    LUT4 parity_err_I_78_3_lut (.A(parity_err), .B(parity_en), .C(rx_parity_err), 
         .Z(parity_err_N_1239)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(564[30:74])
    defparam parity_err_I_78_3_lut.init = 16'hc8c8;
    CCU2D add_541_3 (.A0(n1059[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1059[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5064), 
          .COUT(n5065), .S0(counter_15__N_1119[1]), .S1(counter_15__N_1119[2]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam add_541_3.INIT0 = 16'h5555;
    defparam add_541_3.INIT1 = 16'h5555;
    defparam add_541_3.INJECT1_0 = "NO";
    defparam add_541_3.INJECT1_1 = "NO";
    CCU2D add_541_13 (.A0(n1059[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1059[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5069), .COUT(n5070), .S0(counter_15__N_1119[11]), .S1(counter_15__N_1119[12]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam add_541_13.INIT0 = 16'h5555;
    defparam add_541_13.INIT1 = 16'h5555;
    defparam add_541_13.INJECT1_0 = "NO";
    defparam add_541_13.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_159 (.A(n5793), .B(counter[0]), .C(counter[11]), 
         .Z(n6487)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i2_3_lut_rep_159.init = 16'hfbfb;
    CCU2D counter_15__I_0_16 (.A0(divisor[2]), .B0(counter[1]), .C0(divisor[1]), 
          .D0(counter[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4959), .S1(hunt_one_N_1256));
    defparam counter_15__I_0_16.INIT0 = 16'h9009;
    defparam counter_15__I_0_16.INIT1 = 16'hFFFF;
    defparam counter_15__I_0_16.INJECT1_0 = "YES";
    defparam counter_15__I_0_16.INJECT1_1 = "NO";
    LUT4 mux_530_i12_3_lut_4_lut (.A(n5793), .B(counter[0]), .C(counter[11]), 
         .D(divisor[11]), .Z(n969[11])) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam mux_530_i12_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i1_2_lut_rep_152_4_lut (.A(n5793), .B(counter[0]), .C(counter[11]), 
         .D(n58[4]), .Z(n6480)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i1_2_lut_rep_152_4_lut.init = 16'hfb00;
    LUT4 mux_530_i1_3_lut_4_lut (.A(n5793), .B(counter[0]), .C(counter[11]), 
         .D(divisor[0]), .Z(n969[0])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam mux_530_i1_3_lut_4_lut.init = 16'hccc8;
    LUT4 mux_120_Mux_3_i1_3_lut (.A(rsr[6]), .B(rsr[5]), .C(databits[0]), 
         .Z(n1_adj_1420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_3_i1_3_lut.init = 16'hcaca;
    LUT4 i2792_3_lut (.A(divisor[2]), .B(counter[2]), .C(n6487), .Z(n969[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(390[23:49])
    defparam i2792_3_lut.init = 16'hcaca;
    LUT4 mux_530_i4_3_lut (.A(divisor[3]), .B(counter[3]), .C(n6487), 
         .Z(n969[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam mux_530_i4_3_lut.init = 16'hcaca;
    LUT4 mux_120_Mux_4_i3_3_lut (.A(n1), .B(n1_adj_1421), .C(databits[1]), 
         .Z(rbr_7__N_1222[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_4_i3_3_lut.init = 16'hcaca;
    CCU2D counter_15__I_0_11 (.A0(divisor[14]), .B0(counter[13]), .C0(divisor[13]), 
          .D0(counter[12]), .A1(divisor[12]), .B1(counter[11]), .C1(divisor[11]), 
          .D1(counter[10]), .CIN(n4956), .COUT(n4957));
    defparam counter_15__I_0_11.INIT0 = 16'h9009;
    defparam counter_15__I_0_11.INIT1 = 16'h9009;
    defparam counter_15__I_0_11.INJECT1_0 = "YES";
    defparam counter_15__I_0_11.INJECT1_1 = "YES";
    CCU2D counter_15__I_0_0 (.A0(divisor[15]), .B0(counter[14]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4956));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(228[39:61])
    defparam counter_15__I_0_0.INIT0 = 16'h9000;
    defparam counter_15__I_0_0.INIT1 = 16'h5555;
    defparam counter_15__I_0_0.INJECT1_0 = "NO";
    defparam counter_15__I_0_0.INJECT1_1 = "YES";
    CCU2D counter_15__I_0_15 (.A0(divisor[6]), .B0(counter[5]), .C0(divisor[5]), 
          .D0(counter[4]), .A1(divisor[4]), .B1(counter[3]), .C1(divisor[3]), 
          .D1(counter[2]), .CIN(n4958), .COUT(n4959));
    defparam counter_15__I_0_15.INIT0 = 16'h9009;
    defparam counter_15__I_0_15.INIT1 = 16'h9009;
    defparam counter_15__I_0_15.INJECT1_0 = "YES";
    defparam counter_15__I_0_15.INJECT1_1 = "YES";
    LUT4 mux_120_Mux_4_i1_3_lut (.A(rsr[7]), .B(rsr[6]), .C(databits[0]), 
         .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_4_i1_3_lut.init = 16'hcaca;
    CCU2D add_541_11 (.A0(n1059[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1059[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5068), .COUT(n5069), .S0(counter_15__N_1119[9]), .S1(counter_15__N_1119[10]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam add_541_11.INIT0 = 16'h5555;
    defparam add_541_11.INIT1 = 16'h5555;
    defparam add_541_11.INJECT1_0 = "NO";
    defparam add_541_11.INJECT1_1 = "NO";
    LUT4 mux_120_Mux_2_i1_3_lut (.A(rsr[5]), .B(rsr[4]), .C(databits[0]), 
         .Z(n1_adj_1421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_2_i1_3_lut.init = 16'hcaca;
    LUT4 mux_120_Mux_3_i3_3_lut (.A(n1_adj_1420), .B(n1_adj_1422), .C(databits[1]), 
         .Z(rbr_7__N_1222[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_3_i3_3_lut.init = 16'hcaca;
    LUT4 mux_530_i2_3_lut (.A(divisor[1]), .B(counter[1]), .C(n6487), 
         .Z(n969[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(348[15:41])
    defparam mux_530_i2_3_lut.init = 16'hcaca;
    LUT4 mux_120_Mux_1_i1_3_lut (.A(rsr[4]), .B(rsr[3]), .C(databits[0]), 
         .Z(n1_adj_1422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_1_i1_3_lut.init = 16'hcaca;
    LUT4 mux_120_Mux_2_i3_3_lut (.A(n1_adj_1421), .B(n1_adj_1423), .C(databits[1]), 
         .Z(rbr_7__N_1222[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_2_i3_3_lut.init = 16'hcaca;
    LUT4 mux_120_Mux_1_i3_3_lut (.A(n1_adj_1422), .B(n2), .C(databits[1]), 
         .Z(rbr_7__N_1222[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_1_i3_3_lut.init = 16'hcaca;
    LUT4 mux_120_Mux_1_i2_3_lut (.A(rsr[2]), .B(rsr[1]), .C(databits[0]), 
         .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_1_i2_3_lut.init = 16'hcaca;
    CCU2D add_541_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rx_idle_N_1255), .B1(n58[3]), .C1(counter[0]), .D1(counter_15__N_1174[0]), 
          .COUT(n5064), .S1(counter_15__N_1119[0]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam add_541_1.INIT0 = 16'h0000;
    defparam add_541_1.INIT1 = 16'he2d1;
    defparam add_541_1.INJECT1_0 = "NO";
    defparam add_541_1.INJECT1_1 = "NO";
    LUT4 i10_3_lut (.A(counter_15__N_1174[7]), .B(counter[7]), .C(n58[3]), 
         .Z(n1059[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(149[14:21])
    defparam i10_3_lut.init = 16'hcaca;
    LUT4 i20_3_lut (.A(counter_15__N_1174[8]), .B(counter[8]), .C(n58[3]), 
         .Z(n1059[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(149[14:21])
    defparam i20_3_lut.init = 16'hcaca;
    LUT4 mux_538_i2_3_lut (.A(counter_15__N_1174[1]), .B(counter[1]), .C(n58[3]), 
         .Z(n1059[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam mux_538_i2_3_lut.init = 16'hcaca;
    LUT4 i26_3_lut (.A(counter_15__N_1174[2]), .B(counter[2]), .C(n58[3]), 
         .Z(n1059[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(149[14:21])
    defparam i26_3_lut.init = 16'hcaca;
    LUT4 mux_538_i12_3_lut (.A(counter_15__N_1174[11]), .B(counter[11]), 
         .C(n58[3]), .Z(n1059[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam mux_538_i12_3_lut.init = 16'hcaca;
    LUT4 mux_538_i13_3_lut (.A(counter_15__N_1174[12]), .B(counter[12]), 
         .C(n58[3]), .Z(n1059[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam mux_538_i13_3_lut.init = 16'hcaca;
    LUT4 i24_3_lut (.A(counter_15__N_1174[9]), .B(counter[9]), .C(n58[3]), 
         .Z(n1059[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(149[14:21])
    defparam i24_3_lut.init = 16'hcaca;
    LUT4 mux_538_i11_3_lut (.A(counter_15__N_1174[10]), .B(counter[10]), 
         .C(n58[3]), .Z(n1059[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam mux_538_i11_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_127 (.A(n58[2]), .B(parity_stick), .Z(n2413)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam i1_2_lut_adj_127.init = 16'h8888;
    LUT4 i1_4_lut_adj_128 (.A(hunt_one_N_1256), .B(n58[3]), .C(sin_d0), 
         .D(n58[4]), .Z(clk_in_enable_25)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_128.init = 16'h0a88;
    LUT4 i5360_2_lut (.A(sin_d0), .B(n58[4]), .Z(n3882)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i5360_2_lut.init = 16'h1111;
    LUT4 mux_538_i6_3_lut (.A(counter_15__N_1174[5]), .B(counter[5]), .C(n58[3]), 
         .Z(n1059[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(324[14] 405[18])
    defparam mux_538_i6_3_lut.init = 16'hcaca;
    LUT4 i6_3_lut (.A(counter_15__N_1174[6]), .B(counter[6]), .C(n58[3]), 
         .Z(n1059[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(149[14:21])
    defparam i6_3_lut.init = 16'hcaca;
    LUT4 i4341_3_lut_4_lut (.A(databit_recved_num[1]), .B(n6469), .C(databit_recved_num[2]), 
         .D(databit_recved_num[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam i4341_3_lut_4_lut.init = 16'h7f80;
    LUT4 mux_120_Mux_0_i3_3_lut (.A(n1_adj_1423), .B(n2_adj_1424), .C(databits[1]), 
         .Z(rbr_7__N_1222[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_0_i3_3_lut.init = 16'hcaca;
    LUT4 mux_120_Mux_0_i2_3_lut (.A(rsr[1]), .B(rsr[0]), .C(databits[0]), 
         .Z(n2_adj_1424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_0_i2_3_lut.init = 16'hcaca;
    LUT4 i4321_2_lut_rep_141 (.A(hunt_one_N_1256), .B(databit_recved_num[0]), 
         .Z(n6469)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam i4321_2_lut_rep_141.init = 16'h8888;
    LUT4 mux_120_Mux_0_i1_3_lut (.A(rsr[3]), .B(rsr[2]), .C(databits[0]), 
         .Z(n1_adj_1423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_0_i1_3_lut.init = 16'hcaca;
    LUT4 i4327_2_lut_3_lut (.A(hunt_one_N_1256), .B(databit_recved_num[0]), 
         .C(databit_recved_num[1]), .Z(n21[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam i4327_2_lut_3_lut.init = 16'h7878;
    LUT4 i4334_2_lut_3_lut_4_lut (.A(hunt_one_N_1256), .B(databit_recved_num[0]), 
         .C(databit_recved_num[2]), .D(databit_recved_num[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(355[45:67])
    defparam i4334_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 rx_idle_I_0_184_2_lut_rep_196 (.A(rx_idle), .B(rx_idle_d1), .Z(clk_in_enable_82)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[18:59])
    defparam rx_idle_I_0_184_2_lut_rep_196.init = 16'h2222;
    LUT4 i1719_2_lut_3_lut (.A(rx_idle), .B(rx_idle_d1), .C(databits[1]), 
         .Z(n2425)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(459[18:59])
    defparam i1719_2_lut_3_lut.init = 16'h0202;
    LUT4 i3183_2_lut_3_lut (.A(sin_d0), .B(hunt_one_N_1256), .C(parity_even), 
         .Z(rx_parity_err_N_1258)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(332[7] 341[17])
    defparam i3183_2_lut_3_lut.init = 16'h0404;
    LUT4 i606_3_lut_4_lut (.A(sin_d0), .B(hunt_one_N_1256), .C(n58[4]), 
         .D(n58[1]), .Z(clk_in_enable_99)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(332[7] 341[17])
    defparam i606_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_4_lut_adj_129 (.A(overrun_err), .B(\ier[2] ), .C(n6_adj_1425), 
         .D(parity_err), .Z(n198)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(215[14:24])
    defparam i1_4_lut_adj_129.init = 16'hccc8;
    LUT4 mux_120_Mux_5_i3_3_lut_4_lut (.A(rsr[7]), .B(databits[0]), .C(databits[1]), 
         .D(n1_adj_1420), .Z(rbr_7__N_1222[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam mux_120_Mux_5_i3_3_lut_4_lut.init = 16'hf808;
    LUT4 i2_2_lut_3_lut (.A(rsr[7]), .B(databits[0]), .C(databits[1]), 
         .Z(rbr_7__N_1222[7])) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/rxcver.v(460[11] 465[18])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i2_2_lut (.A(break_int), .B(frame_err), .Z(n6_adj_1425)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/uart_core.v(215[14:24])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i3157_2_lut (.A(rx_rdy), .B(\ier[0] ), .Z(n3853)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3157_2_lut.init = 16'h8888;
    PFUMX i5297 (.BLUT(n6036), .ALUT(n6037), .C0(n6460), .Z(n6038));
    PFUMX i1155 (.BLUT(n1830), .ALUT(rx_parity_err_N_1258), .C0(n58[4]), 
          .Z(n1831));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module \intface(CLK_IN_MHZ=25.0) 
//

module \intface(CLK_IN_MHZ=25.0)  (THR, clk_in, clk_in_enable_36, \SHAREDBUS_DAT_I[3] , 
            \SHAREDBUS_DAT_I[2] , \SHAREDBUS_DAT_I[1] , uartUART_ACK_O, 
            LM8interrupts_0__N_34, n6934, \SHAREDBUS_DAT_I[0] , uartUART_DAT_O, 
            clk_in_enable_43, dat_o_7__N_1029, thr_wr, GPIO_WE_I_N_949, 
            ier, clk_in_enable_51, databits, clk_in_enable_57, divisor, 
            clk_in_enable_64, n6460, dataerr_int, tx_break, tx_output, 
            uartSOUT_c, \SHAREDBUS_DAT_I[4] , rbr_rd, n6459, \SHAREDBUS_DAT_I[5] , 
            \SHAREDBUS_DAT_I[6] , \SHAREDBUS_DAT_I[7] , \dat_o_7__N_1029[2] , 
            \dat_o_7__N_1029[6] , \dat_o_7__N_1029[7] , overrun_err, n7, 
            n6461, \lcr[2] , parity_en, parity_even, parity_stick, 
            frame_err, n5435, clk_in_enable_72, \iir_3__N_1003[2] , 
            n1715, cs_state_2__N_1061, break_int, n2916, THRR, n1163, 
            n3853, n2143, n198, n1705, \ext_addr[1] , n6462, n53, 
            n2, n4, n6039, n6455) /* synthesis syn_module_defined=1 */ ;
    output [7:0]THR;
    input clk_in;
    input clk_in_enable_36;
    input \SHAREDBUS_DAT_I[3] ;
    input \SHAREDBUS_DAT_I[2] ;
    input \SHAREDBUS_DAT_I[1] ;
    output uartUART_ACK_O;
    input LM8interrupts_0__N_34;
    input n6934;
    input \SHAREDBUS_DAT_I[0] ;
    output [7:0]uartUART_DAT_O;
    input clk_in_enable_43;
    input [7:0]dat_o_7__N_1029;
    output thr_wr;
    input GPIO_WE_I_N_949;
    output [2:0]ier;
    input clk_in_enable_51;
    output [1:0]databits;
    input clk_in_enable_57;
    output [15:0]divisor;
    input clk_in_enable_64;
    input n6460;
    output dataerr_int;
    output tx_break;
    input tx_output;
    output uartSOUT_c;
    input \SHAREDBUS_DAT_I[4] ;
    output rbr_rd;
    input n6459;
    input \SHAREDBUS_DAT_I[5] ;
    input \SHAREDBUS_DAT_I[6] ;
    input \SHAREDBUS_DAT_I[7] ;
    input \dat_o_7__N_1029[2] ;
    input \dat_o_7__N_1029[6] ;
    input \dat_o_7__N_1029[7] ;
    input overrun_err;
    input n7;
    input n6461;
    output \lcr[2] ;
    output parity_en;
    output parity_even;
    output parity_stick;
    input frame_err;
    input n5435;
    input clk_in_enable_72;
    output \iir_3__N_1003[2] ;
    input n1715;
    output cs_state_2__N_1061;
    input break_int;
    input n2916;
    input THRR;
    input n1163;
    input n3853;
    input n2143;
    input n198;
    output n1705;
    input \ext_addr[1] ;
    input n6462;
    input n53;
    output n2;
    input n4;
    input n6039;
    input n6455;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    
    wire wr_strobe_N_1088;
    wire [3:0]iir_3__N_1075;
    
    wire n1700;
    wire [3:0]iir_3__N_1003;
    
    wire n6040;
    wire [7:0]dat_o_7__N_1029_c;
    
    wire n6041, n5287, n5293, n247, n17, n2_c, n4_c, n6509, 
        n5185;
    
    FD1P3AX thr_nonfifo_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(clk_in_enable_36), 
            .CK(clk_in), .Q(THR[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam thr_nonfifo_i0_i3.GSR = "ENABLED";
    FD1P3AX thr_nonfifo_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(clk_in_enable_36), 
            .CK(clk_in), .Q(THR[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam thr_nonfifo_i0_i2.GSR = "ENABLED";
    FD1P3AX thr_nonfifo_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(clk_in_enable_36), 
            .CK(clk_in), .Q(THR[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam thr_nonfifo_i0_i1.GSR = "ENABLED";
    FD1P3IX ack_o_129 (.D(n6934), .SP(LM8interrupts_0__N_34), .CD(uartUART_ACK_O), 
            .CK(clk_in), .Q(uartUART_ACK_O));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(924[12] 927[16])
    defparam ack_o_129.GSR = "ENABLED";
    FD1P3AX thr_nonfifo_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(clk_in_enable_36), 
            .CK(clk_in), .Q(THR[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam thr_nonfifo_i0_i0.GSR = "ENABLED";
    FD1P3AY data_8bit_i0_i0 (.D(dat_o_7__N_1029[0]), .SP(clk_in_enable_43), 
            .CK(clk_in), .Q(uartUART_DAT_O[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(628[11] 644[15])
    defparam data_8bit_i0_i0.GSR = "ENABLED";
    FD1S3IX thr_wr_122 (.D(wr_strobe_N_1088), .CK(clk_in), .CD(GPIO_WE_I_N_949), 
            .Q(thr_wr));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(527[4:28])
    defparam thr_wr_122.GSR = "ENABLED";
    FD1P3AX ier_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(clk_in_enable_51), 
            .CK(clk_in), .Q(ier[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam ier_i0_i0.GSR = "ENABLED";
    FD1P3AY lcr__i1 (.D(\SHAREDBUS_DAT_I[0] ), .SP(clk_in_enable_57), .CK(clk_in), 
            .Q(databits[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam lcr__i1.GSR = "ENABLED";
    FD1P3AY divisor_i0_i0 (.D(\SHAREDBUS_DAT_I[0] ), .SP(clk_in_enable_64), 
            .CK(clk_in), .Q(divisor[0])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i0.GSR = "ENABLED";
    FD1S3AX cs_state_FSM_i0 (.D(n1700), .CK(clk_in), .Q(iir_3__N_1075[1]));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam cs_state_FSM_i0.GSR = "ENABLED";
    LUT4 i5299_4_lut (.A(iir_3__N_1003[1]), .B(databits[1]), .C(n6460), 
         .D(dataerr_int), .Z(n6040)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i5299_4_lut.init = 16'hcfca;
    LUT4 i1_2_lut (.A(tx_break), .B(tx_output), .Z(uartSOUT_c)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam i1_2_lut.init = 16'h4444;
    FD1P3AX thr_nonfifo_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(clk_in_enable_36), 
            .CK(clk_in), .Q(THR[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam thr_nonfifo_i0_i4.GSR = "ENABLED";
    FD1S3IX rbr_rd_nonfifo_123 (.D(wr_strobe_N_1088), .CK(clk_in), .CD(n6459), 
            .Q(rbr_rd));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(539[4:36])
    defparam rbr_rd_nonfifo_123.GSR = "ENABLED";
    FD1P3AX thr_nonfifo_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(clk_in_enable_36), 
            .CK(clk_in), .Q(THR[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam thr_nonfifo_i0_i5.GSR = "ENABLED";
    FD1P3AX thr_nonfifo_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(clk_in_enable_36), 
            .CK(clk_in), .Q(THR[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam thr_nonfifo_i0_i6.GSR = "ENABLED";
    FD1P3AX thr_nonfifo_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(clk_in_enable_36), 
            .CK(clk_in), .Q(THR[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam thr_nonfifo_i0_i7.GSR = "ENABLED";
    FD1P3AY data_8bit_i0_i1 (.D(dat_o_7__N_1029_c[1]), .SP(clk_in_enable_43), 
            .CK(clk_in), .Q(uartUART_DAT_O[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(628[11] 644[15])
    defparam data_8bit_i0_i1.GSR = "ENABLED";
    FD1P3AY data_8bit_i0_i2 (.D(\dat_o_7__N_1029[2] ), .SP(clk_in_enable_43), 
            .CK(clk_in), .Q(uartUART_DAT_O[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(628[11] 644[15])
    defparam data_8bit_i0_i2.GSR = "ENABLED";
    FD1P3AY data_8bit_i0_i3 (.D(dat_o_7__N_1029_c[3]), .SP(clk_in_enable_43), 
            .CK(clk_in), .Q(uartUART_DAT_O[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(628[11] 644[15])
    defparam data_8bit_i0_i3.GSR = "ENABLED";
    FD1P3AY data_8bit_i0_i4 (.D(dat_o_7__N_1029_c[4]), .SP(clk_in_enable_43), 
            .CK(clk_in), .Q(uartUART_DAT_O[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(628[11] 644[15])
    defparam data_8bit_i0_i4.GSR = "ENABLED";
    FD1P3AY data_8bit_i0_i5 (.D(dat_o_7__N_1029_c[5]), .SP(clk_in_enable_43), 
            .CK(clk_in), .Q(uartUART_DAT_O[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(628[11] 644[15])
    defparam data_8bit_i0_i5.GSR = "ENABLED";
    FD1P3AY data_8bit_i0_i6 (.D(\dat_o_7__N_1029[6] ), .SP(clk_in_enable_43), 
            .CK(clk_in), .Q(uartUART_DAT_O[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(628[11] 644[15])
    defparam data_8bit_i0_i6.GSR = "ENABLED";
    FD1P3AY data_8bit_i0_i7 (.D(\dat_o_7__N_1029[7] ), .SP(clk_in_enable_43), 
            .CK(clk_in), .Q(uartUART_DAT_O[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(628[11] 644[15])
    defparam data_8bit_i0_i7.GSR = "ENABLED";
    FD1P3AX ier_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(clk_in_enable_51), 
            .CK(clk_in), .Q(ier[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam ier_i0_i1.GSR = "ENABLED";
    LUT4 mux_549_i2_4_lut (.A(overrun_err), .B(n6041), .C(n7), .D(n6461), 
         .Z(dat_o_7__N_1029_c[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(629[8] 644[15])
    defparam mux_549_i2_4_lut.init = 16'hfaca;
    FD1P3AX ier_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(clk_in_enable_51), 
            .CK(clk_in), .Q(ier[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam ier_i0_i2.GSR = "ENABLED";
    FD1P3AY lcr__i2 (.D(\SHAREDBUS_DAT_I[1] ), .SP(clk_in_enable_57), .CK(clk_in), 
            .Q(databits[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam lcr__i2.GSR = "ENABLED";
    FD1P3AX lcr__i3 (.D(\SHAREDBUS_DAT_I[2] ), .SP(clk_in_enable_57), .CK(clk_in), 
            .Q(\lcr[2] )) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam lcr__i3.GSR = "ENABLED";
    FD1P3AX lcr__i4 (.D(\SHAREDBUS_DAT_I[3] ), .SP(clk_in_enable_57), .CK(clk_in), 
            .Q(parity_en)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam lcr__i4.GSR = "ENABLED";
    FD1P3AY lcr__i5 (.D(\SHAREDBUS_DAT_I[4] ), .SP(clk_in_enable_57), .CK(clk_in), 
            .Q(parity_even)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam lcr__i5.GSR = "ENABLED";
    FD1P3AX lcr__i6 (.D(\SHAREDBUS_DAT_I[5] ), .SP(clk_in_enable_57), .CK(clk_in), 
            .Q(parity_stick)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam lcr__i6.GSR = "ENABLED";
    FD1P3AX lcr__i7 (.D(\SHAREDBUS_DAT_I[6] ), .SP(clk_in_enable_57), .CK(clk_in), 
            .Q(tx_break)) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(664[13] 676[11])
    defparam lcr__i7.GSR = "ENABLED";
    FD1P3AX divisor_i0_i1 (.D(\SHAREDBUS_DAT_I[1] ), .SP(clk_in_enable_64), 
            .CK(clk_in), .Q(divisor[1])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i1.GSR = "ENABLED";
    LUT4 mux_549_i4_4_lut (.A(frame_err), .B(n5435), .C(n7), .D(n6461), 
         .Z(dat_o_7__N_1029_c[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(629[8] 644[15])
    defparam mux_549_i4_4_lut.init = 16'hfaca;
    FD1P3AX divisor_i0_i2 (.D(\SHAREDBUS_DAT_I[2] ), .SP(clk_in_enable_64), 
            .CK(clk_in), .Q(divisor[2])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i2.GSR = "ENABLED";
    FD1P3AY divisor_i0_i3 (.D(\SHAREDBUS_DAT_I[3] ), .SP(clk_in_enable_64), 
            .CK(clk_in), .Q(divisor[3])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i3.GSR = "ENABLED";
    FD1P3AY divisor_i0_i4 (.D(\SHAREDBUS_DAT_I[4] ), .SP(clk_in_enable_64), 
            .CK(clk_in), .Q(divisor[4])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i4.GSR = "ENABLED";
    FD1P3AX divisor_i0_i5 (.D(\SHAREDBUS_DAT_I[5] ), .SP(clk_in_enable_64), 
            .CK(clk_in), .Q(divisor[5])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i5.GSR = "ENABLED";
    FD1P3AY divisor_i0_i6 (.D(\SHAREDBUS_DAT_I[6] ), .SP(clk_in_enable_64), 
            .CK(clk_in), .Q(divisor[6])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i6.GSR = "ENABLED";
    FD1P3AY divisor_i0_i7 (.D(\SHAREDBUS_DAT_I[7] ), .SP(clk_in_enable_64), 
            .CK(clk_in), .Q(divisor[7])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i7.GSR = "ENABLED";
    FD1P3AX divisor_i0_i8 (.D(\SHAREDBUS_DAT_I[0] ), .SP(clk_in_enable_72), 
            .CK(clk_in), .Q(divisor[8])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i8.GSR = "ENABLED";
    FD1P3AX divisor_i0_i9 (.D(\SHAREDBUS_DAT_I[1] ), .SP(clk_in_enable_72), 
            .CK(clk_in), .Q(divisor[9])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i9.GSR = "ENABLED";
    FD1P3AX divisor_i0_i10 (.D(\SHAREDBUS_DAT_I[2] ), .SP(clk_in_enable_72), 
            .CK(clk_in), .Q(divisor[10])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i10.GSR = "ENABLED";
    FD1P3AX divisor_i0_i11 (.D(\SHAREDBUS_DAT_I[3] ), .SP(clk_in_enable_72), 
            .CK(clk_in), .Q(divisor[11])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i11.GSR = "ENABLED";
    FD1P3AX divisor_i0_i12 (.D(\SHAREDBUS_DAT_I[4] ), .SP(clk_in_enable_72), 
            .CK(clk_in), .Q(divisor[12])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i12.GSR = "ENABLED";
    FD1P3AX divisor_i0_i13 (.D(\SHAREDBUS_DAT_I[5] ), .SP(clk_in_enable_72), 
            .CK(clk_in), .Q(divisor[13])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i13.GSR = "ENABLED";
    FD1P3AX divisor_i0_i14 (.D(\SHAREDBUS_DAT_I[6] ), .SP(clk_in_enable_72), 
            .CK(clk_in), .Q(divisor[14])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i14.GSR = "ENABLED";
    FD1P3AX divisor_i0_i15 (.D(\SHAREDBUS_DAT_I[7] ), .SP(clk_in_enable_72), 
            .CK(clk_in), .Q(divisor[15])) /* synthesis LSE_LINE_FILE_ID=19, LSE_LCOL=4, LSE_RCOL=9, LSE_LLINE=246, LSE_RLINE=289 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(502[12] 506[49])
    defparam divisor_i0_i15.GSR = "ENABLED";
    FD1S3AX cs_state_FSM_i1 (.D(n5287), .CK(clk_in), .Q(\iir_3__N_1003[2] ));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam cs_state_FSM_i1.GSR = "ENABLED";
    FD1S3AX cs_state_FSM_i2 (.D(n1715), .CK(clk_in), .Q(dataerr_int));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam cs_state_FSM_i2.GSR = "ENABLED";
    FD1S3AY cs_state_FSM_i3 (.D(n5293), .CK(clk_in), .Q(cs_state_2__N_1061));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam cs_state_FSM_i3.GSR = "ENABLED";
    LUT4 mux_549_i5_4_lut (.A(break_int), .B(n2916), .C(n7), .D(n6461), 
         .Z(dat_o_7__N_1029_c[4])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(629[8] 644[15])
    defparam mux_549_i5_4_lut.init = 16'hfaca;
    LUT4 mux_549_i6_4_lut (.A(THRR), .B(n1163), .C(n7), .D(n6461), .Z(dat_o_7__N_1029_c[5])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(629[8] 644[15])
    defparam mux_549_i6_4_lut.init = 16'hfaca;
    LUT4 i1_4_lut (.A(n3853), .B(n2143), .C(n198), .D(n1705), .Z(n5287)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam i1_4_lut.init = 16'h8a88;
    LUT4 reduce_or_238_i1_2_lut (.A(\iir_3__N_1003[2] ), .B(cs_state_2__N_1061), 
         .Z(n1705)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam reduce_or_238_i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_112 (.A(iir_3__N_1075[1]), .B(n3853), .C(n247), 
         .D(n17), .Z(n5293)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam i1_4_lut_adj_112.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_113 (.A(n2143), .B(n198), .C(n2_c), .D(\iir_3__N_1003[2] ), 
         .Z(n17)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam i1_4_lut_adj_113.init = 16'hbbba;
    LUT4 wr_strobe_I_73_4_lut (.A(\ext_addr[1] ), .B(LM8interrupts_0__N_34), 
         .C(n6462), .D(n53), .Z(wr_strobe_N_1088)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(571[25:74])
    defparam wr_strobe_I_73_4_lut.init = 16'h0c4c;
    LUT4 mux_550_Mux_0_i2_4_lut (.A(dataerr_int), .B(databits[0]), .C(n6460), 
         .D(n4_c), .Z(n2)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(629[8] 644[15])
    defparam mux_550_Mux_0_i2_4_lut.init = 16'hc0c5;
    LUT4 i1_2_lut_adj_114 (.A(iir_3__N_1075[1]), .B(\iir_3__N_1003[2] ), 
         .Z(n4_c)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_114.init = 16'heeee;
    LUT4 i3067_2_lut (.A(iir_3__N_1075[1]), .B(\iir_3__N_1003[2] ), .Z(iir_3__N_1003[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(946[17] 951[24])
    defparam i3067_2_lut.init = 16'h2222;
    LUT4 i76_2_lut_rep_181 (.A(ier[1]), .B(THRR), .Z(n6509)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(884[15:45])
    defparam i76_2_lut_rep_181.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(ier[1]), .B(THRR), .C(cs_state_2__N_1061), 
         .Z(n2_c)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(884[15:45])
    defparam i1_2_lut_3_lut.init = 16'h7070;
    LUT4 i1033_3_lut (.A(iir_3__N_1075[1]), .B(n5185), .C(n247), .Z(n1700)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam i1033_3_lut.init = 16'hcece;
    LUT4 i2_4_lut (.A(n198), .B(n6509), .C(cs_state_2__N_1061), .D(n3853), 
         .Z(n5185)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(878[15] 915[22])
    defparam i2_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_115 (.A(THRR), .B(clk_in_enable_43), .C(ier[1]), 
         .D(n4), .Z(n247)) /* synthesis lut_function=((B ((D)+!C)+!B !(C))+!A) */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/uart_core/rtl/verilog/intface.v(905[10:61])
    defparam i1_4_lut_adj_115.init = 16'hdf5f;
    PFUMX i5300 (.BLUT(n6039), .ALUT(n6040), .C0(n6455), .Z(n6041));
    
endmodule
//
// Verilog Description of module lm8_renamed_due_excessive_length_1
//

module lm8_renamed_due_excessive_length_1 (save_data, clk_in, clk_in_enable_15, 
            n6449, n6448, n6447, n6446, n6445, n6444, ext_wb_state, 
            n11, core_rst_n, VCC_net, LM8D_DAT_O, \ext_addr[7] , \ext_addr[6] , 
            \ext_addr[5] , \ext_addr[4] , \ext_addr[1] , n6934, n6452, 
            n6451, \selected[1] , n6460, n6531, n6459, n6454, n6405, 
            \D_ADR_O_31__N_465[31] , n6463, n6533, n6461, n6455, page_ptr1, 
            n6474, n6499, n6462, n6530, n14, GPIO_WE_I_N_949, LM8interrupts_0__N_34, 
            n6457, n6456, n6376, \ext_io_din[7] , \ext_io_din[6] , 
            \ext_io_din[5] , \ext_io_din[4] , \ext_io_din[3] , \ext_io_din[2] , 
            \ext_io_din[1] , cs_state_2__N_1061, \RBR[0] , \ier[0] , 
            parity_en, n5435, \RBR[3] , parity_even, \RBR[4] , n2915, 
            parity_stick, \RBR[5] , n2956, \RBR[7] , n1161, clk_in_enable_36, 
            \ier[1] , \RBR[1] , n6039, n7, rx_rdy, \dat_o_7__N_1029[0] , 
            clk_in_enable_64, tx_break, \RBR[6] , n2961, clk_in_enable_51, 
            clk_in_enable_72, clk_in_enable_57, n2931, n53) /* synthesis syn_module_defined=1 */ ;
    output [7:0]save_data;
    input clk_in;
    input clk_in_enable_15;
    input n6449;
    input n6448;
    input n6447;
    input n6446;
    input n6445;
    input n6444;
    output ext_wb_state;
    input [0:0]n11;
    output core_rst_n;
    input VCC_net;
    output [7:0]LM8D_DAT_O;
    output \ext_addr[7] ;
    output \ext_addr[6] ;
    output \ext_addr[5] ;
    output \ext_addr[4] ;
    output \ext_addr[1] ;
    input n6934;
    input n6452;
    input n6451;
    input \selected[1] ;
    output n6460;
    output n6531;
    output n6459;
    input n6454;
    input n6405;
    output \D_ADR_O_31__N_465[31] ;
    output n6463;
    output n6533;
    output n6461;
    output n6455;
    output [7:0]page_ptr1;
    output n6474;
    input n6499;
    output n6462;
    input n6530;
    output n14;
    output GPIO_WE_I_N_949;
    input LM8interrupts_0__N_34;
    output n6457;
    output n6456;
    input n6376;
    input \ext_io_din[7] ;
    input \ext_io_din[6] ;
    input \ext_io_din[5] ;
    input \ext_io_din[4] ;
    input \ext_io_din[3] ;
    input \ext_io_din[2] ;
    input \ext_io_din[1] ;
    input cs_state_2__N_1061;
    input \RBR[0] ;
    input \ier[0] ;
    input parity_en;
    output n5435;
    input \RBR[3] ;
    input parity_even;
    input \RBR[4] ;
    output n2915;
    input parity_stick;
    input \RBR[5] ;
    output n2956;
    input \RBR[7] ;
    output n1161;
    output clk_in_enable_36;
    input \ier[1] ;
    input \RBR[1] ;
    output n6039;
    output n7;
    input rx_rdy;
    output \dat_o_7__N_1029[0] ;
    output clk_in_enable_64;
    input tx_break;
    input \RBR[6] ;
    output n2961;
    output clk_in_enable_51;
    output clk_in_enable_72;
    output clk_in_enable_57;
    input n2931;
    output n53;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    
    wire core_rst_n_N_593, ext_wb_state_nxt, \genblk2.D_ACK_I_d , n3815, 
        rff1, GND_net;
    wire [7:0]internal_sp_dout;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(410[15:31])
    wire [15:0]ext_addr;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(134[29:37])
    
    wire internal_sp_dout_7__N_516;
    wire [10:0]prom_addr;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(129[23:32])
    
    wire prom_enable;
    wire [17:0]\genblk1.instr_mem_out ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(362[15:28])
    
    wire prom_ready, n3, n6510, n6482, n6536, n6489, ext_mem_rd_nxt, 
        n6526, n1880, ext_addr_nxt_7__N_895;
    wire [7:0]dout_rb;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(100[30:37])
    wire [7:0]ext_addr_nxt;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(72[16:28])
    wire [7:0]im;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(119[34:36])
    wire [7:0]ip;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(119[30:32])
    wire [7:0]dout_csr_7__N_612;
    
    wire n6464, n6529;
    wire [7:0]data_rb_int;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(70[18:29])
    
    wire n6467, ext_mem_ready_N_597, n6406, ext_mem_ready, carry_flag, 
        n4, n6512, n6511, n10, page_ptr1_7__N_639, n5992, n6465, 
        ext_addr_cyc, ext_io_rd, ext_io_wr, n6504, ext_mem_rd, ext_mem_wr, 
        n6507, n74, n1703, n6466, ie_nxt_N_930, n6496, im_nxt_7__N_915, 
        n6513;
    wire [17:0]instr;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(131[23:28])
    
    wire n6515, n6516, n6506, n6517, n6532, n6491, n6493, n6501, 
        update_z_N_681, n6519, n6495, instr_l7_2, n1737, n6502, 
        n6521, ie, n6377, n6522, n6523, n6450, n6534, n6390, 
        n1345, n6500, n6537, n6508, n6505;
    
    FD1P3IX save_data__i5 (.D(n6449), .SP(clk_in_enable_15), .CD(core_rst_n_N_593), 
            .CK(clk_in), .Q(save_data[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i5.GSR = "DISABLED";
    FD1P3IX save_data__i4 (.D(n6448), .SP(clk_in_enable_15), .CD(core_rst_n_N_593), 
            .CK(clk_in), .Q(save_data[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i4.GSR = "DISABLED";
    FD1P3IX save_data__i3 (.D(n6447), .SP(clk_in_enable_15), .CD(core_rst_n_N_593), 
            .CK(clk_in), .Q(save_data[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i3.GSR = "DISABLED";
    FD1P3IX save_data__i2 (.D(n6446), .SP(clk_in_enable_15), .CD(core_rst_n_N_593), 
            .CK(clk_in), .Q(save_data[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i2.GSR = "DISABLED";
    FD1P3IX save_data__i1 (.D(n6445), .SP(clk_in_enable_15), .CD(core_rst_n_N_593), 
            .CK(clk_in), .Q(save_data[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i1.GSR = "DISABLED";
    FD1P3IX save_data__i0 (.D(n6444), .SP(clk_in_enable_15), .CD(core_rst_n_N_593), 
            .CK(clk_in), .Q(save_data[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i0.GSR = "DISABLED";
    FD1S3IX ext_wb_state_61 (.D(ext_wb_state_nxt), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(ext_wb_state));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam ext_wb_state_61.GSR = "DISABLED";
    FD1S3IX \genblk2.D_ACK_I_d_60  (.D(n11[0]), .CK(clk_in), .CD(n3815), 
            .Q(\genblk2.D_ACK_I_d ));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(492[10] 496[31])
    defparam \genblk2.D_ACK_I_d_60 .GSR = "DISABLED";
    FD1S3AX rst_n_58 (.D(rff1), .CK(clk_in), .Q(core_rst_n)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(164[8:38])
    defparam rst_n_58.GSR = "ENABLED";
    pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a \scratchpad_init.memspeedasyncdisablenoreg8112048  (.Data({LM8D_DAT_O}), 
            .Address({ext_addr[10:8], \ext_addr[7] , \ext_addr[6] , \ext_addr[5] , 
            \ext_addr[4] , ext_addr[3:2], \ext_addr[1] , ext_addr[0]}), 
            .Q({internal_sp_dout}), .Clock(clk_in), .ClockEn(VCC_net), 
            .WE(internal_sp_dout_7__N_516), .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(507[2] 535[36])
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .module_type = "pmi_ram_dq";
    defparam \scratchpad_init.memspeedasyncdisablenoreg8112048 .pmi_family = "MachXO3LF";
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
    pmi_ram_dqMnhprom_initsadn18112048f62b550 \prom_init.memspeedasyncdisablenoreg18112048  (.Data({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net}), .Address({prom_addr}), 
            .Q({\genblk1.instr_mem_out }), .Clock(clk_in), .ClockEn(prom_enable), 
            .WE(GND_net), .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/platform1.v(507[2] 535[36])
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .module_type = "pmi_ram_dq";
    defparam \prom_init.memspeedasyncdisablenoreg18112048 .pmi_family = "MachXO3LF";
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
    FD1S3AX rff1_57 (.D(n6934), .CK(clk_in), .Q(rff1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(164[8:38])
    defparam rff1_57.GSR = "ENABLED";
    FD1P3IX save_data__i7 (.D(n6452), .SP(clk_in_enable_15), .CD(core_rst_n_N_593), 
            .CK(clk_in), .Q(save_data[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i7.GSR = "DISABLED";
    FD1P3IX save_data__i6 (.D(n6451), .SP(clk_in_enable_15), .CD(core_rst_n_N_593), 
            .CK(clk_in), .Q(save_data[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=36, LSE_LLINE=507, LSE_RLINE=535 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(623[11] 633[11])
    defparam save_data__i6.GSR = "DISABLED";
    LUT4 instr_15__I_0_i3_2_lut_3_lut_3_lut (.A(\genblk1.instr_mem_out [14]), 
         .B(prom_ready), .C(\genblk1.instr_mem_out [15]), .Z(n3)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_15__I_0_i3_2_lut_3_lut_3_lut.init = 16'hf7f7;
    LUT4 ext_mem_rd_nxt_I_0_2_lut_3_lut_4_lut (.A(n6510), .B(n6482), .C(n6536), 
         .D(n6489), .Z(ext_mem_rd_nxt)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam ext_mem_rd_nxt_I_0_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3DX \genblk1.first_fetch_59  (.D(n6934), .SP(prom_enable), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(prom_ready));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam \genblk1.first_fetch_59 .GSR = "DISABLED";
    LUT4 i2921_2_lut_rep_198 (.A(\genblk1.instr_mem_out [3]), .B(prom_ready), 
         .Z(n6526)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2921_2_lut_rep_198.init = 16'h8888;
    LUT4 i1192_2_lut_3_lut_3_lut (.A(\genblk1.instr_mem_out [3]), .B(prom_ready), 
         .C(\genblk1.instr_mem_out [4]), .Z(n1880)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i1192_2_lut_3_lut_3_lut.init = 16'h0808;
    LUT4 dout_rb_7__I_0_i1_3_lut_4_lut (.A(\genblk1.instr_mem_out [3]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_895), .D(dout_rb[0]), .Z(ext_addr_nxt[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i1_3_lut_4_lut.init = 16'h8f80;
    LUT4 ip_7__I_0_i1_3_lut_4_lut (.A(\genblk1.instr_mem_out [3]), .B(prom_ready), 
         .C(im[0]), .D(ip[0]), .Z(dout_csr_7__N_612[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam ip_7__I_0_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_rep_132_3_lut_4_lut (.A(n6464), .B(ext_wb_state), .C(ext_addr[0]), 
         .D(\selected[1] ), .Z(n6460)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1_2_lut_rep_132_3_lut_4_lut.init = 16'he000;
    LUT4 i3119_2_lut_rep_131_3_lut_4_lut (.A(n6464), .B(ext_wb_state), .C(n6531), 
         .D(\selected[1] ), .Z(n6459)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i3119_2_lut_rep_131_3_lut_4_lut.init = 16'he000;
    LUT4 i1_2_lut_rep_201 (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .Z(n6529)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_rep_201.init = 16'h8888;
    LUT4 dout_rb_7__I_0_46_i1_3_lut_4_lut_4_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(dout_rb[0]), .D(\genblk1.instr_mem_out [0]), .Z(data_rb_int[0])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam dout_rb_7__I_0_46_i1_3_lut_4_lut_4_lut.init = 16'hf870;
    LUT4 external_sp_bdd_4_lut (.A(n6467), .B(n6454), .C(ext_mem_ready_N_597), 
         .D(ext_wb_state), .Z(n6406)) /* synthesis lut_function=(A (C)+!A (B (C (D)))) */ ;
    defparam external_sp_bdd_4_lut.init = 16'he0a0;
    LUT4 dout_rb_7__I_0_46_i7_3_lut_4_lut_4_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(dout_rb[6]), .D(\genblk1.instr_mem_out [6]), .Z(data_rb_int[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam dout_rb_7__I_0_46_i7_3_lut_4_lut_4_lut.init = 16'hf870;
    LUT4 dout_rb_7__I_0_46_i4_3_lut_4_lut_4_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(dout_rb[3]), .D(\genblk1.instr_mem_out [3]), .Z(data_rb_int[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam dout_rb_7__I_0_46_i4_3_lut_4_lut_4_lut.init = 16'hf870;
    PFUMX i5464 (.BLUT(n6406), .ALUT(n6405), .C0(\D_ADR_O_31__N_465[31] ), 
          .Z(ext_mem_ready));
    LUT4 i5301_3_lut_4_lut_4_lut_4_lut_4_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(carry_flag), .D(\genblk1.instr_mem_out [12]), .Z(n4)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i5301_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0880;
    LUT4 dout_rb_7__I_0_46_i6_3_lut_4_lut_4_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(dout_rb[5]), .D(\genblk1.instr_mem_out [5]), .Z(data_rb_int[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam dout_rb_7__I_0_46_i6_3_lut_4_lut_4_lut.init = 16'hf870;
    LUT4 i5_3_lut_4_lut (.A(n6512), .B(n6511), .C(n10), .D(\genblk1.instr_mem_out [10]), 
         .Z(page_ptr1_7__N_639)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i5_3_lut_4_lut.init = 16'h2000;
    LUT4 i5376_2_lut_3_lut_4_lut (.A(n6464), .B(ext_wb_state), .C(\ext_addr[1] ), 
         .D(\selected[1] ), .Z(n5992)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i5376_2_lut_3_lut_4_lut.init = 16'hf1ff;
    LUT4 ext_cyc_I_0_66_2_lut_rep_135_4_lut (.A(n6465), .B(ext_addr_cyc), 
         .C(\D_ADR_O_31__N_465[31] ), .D(ext_wb_state), .Z(n6463)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(583[23] 585[52])
    defparam ext_cyc_I_0_66_2_lut_rep_135_4_lut.init = 16'hffca;
    LUT4 i1_2_lut_rep_133_3_lut_4_lut (.A(n6464), .B(ext_wb_state), .C(n6533), 
         .D(\selected[1] ), .Z(n6461)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1_2_lut_rep_133_3_lut_4_lut.init = 16'he000;
    LUT4 ext_cyc_I_15_3_lut_rep_136_4_lut_4_lut (.A(n6467), .B(ext_addr_cyc), 
         .C(\D_ADR_O_31__N_465[31] ), .D(ext_mem_ready_N_597), .Z(n6464)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(590[14:46])
    defparam ext_cyc_I_15_3_lut_rep_136_4_lut_4_lut.init = 16'hc5c0;
    LUT4 ext_io_rd_I_0_2_lut (.A(ext_io_rd), .B(ext_io_wr), .Z(\D_ADR_O_31__N_465[31] )) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(583[24:47])
    defparam ext_io_rd_I_0_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_176_3_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(\genblk1.instr_mem_out [12]), .Z(n6504)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_rep_176_3_lut.init = 16'h8080;
    LUT4 ext_mem_rd_I_0_2_lut (.A(ext_mem_rd), .B(ext_mem_wr), .Z(ext_mem_ready_N_597)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(585[12:37])
    defparam ext_mem_rd_I_0_2_lut.init = 16'heeee;
    LUT4 dout_rb_7__I_0_46_i2_3_lut_4_lut_4_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(dout_rb[1]), .D(\genblk1.instr_mem_out [1]), .Z(data_rb_int[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam dout_rb_7__I_0_46_i2_3_lut_4_lut_4_lut.init = 16'hf870;
    LUT4 dout_rb_7__I_0_46_i5_3_lut_4_lut_4_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(dout_rb[4]), .D(\genblk1.instr_mem_out [4]), .Z(data_rb_int[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam dout_rb_7__I_0_46_i5_3_lut_4_lut_4_lut.init = 16'hf870;
    LUT4 dout_rb_7__I_0_46_i8_3_lut_4_lut_4_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(dout_rb[7]), .D(\genblk1.instr_mem_out [7]), .Z(data_rb_int[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam dout_rb_7__I_0_46_i8_3_lut_4_lut_4_lut.init = 16'hf870;
    LUT4 dout_rb_7__I_0_46_i3_3_lut_4_lut_4_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(dout_rb[2]), .D(\genblk1.instr_mem_out [2]), .Z(data_rb_int[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam dout_rb_7__I_0_46_i3_3_lut_4_lut_4_lut.init = 16'hf870;
    LUT4 i1_2_lut_rep_179_3_lut_3_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [13]), 
         .C(\genblk1.instr_mem_out [12]), .Z(n6507)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_rep_179_3_lut_3_lut.init = 16'h0808;
    LUT4 i2922_2_lut_rep_182 (.A(\genblk1.instr_mem_out [2]), .B(prom_ready), 
         .Z(n6510)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2922_2_lut_rep_182.init = 16'h8888;
    LUT4 i3017_2_lut_rep_183 (.A(\genblk1.instr_mem_out [9]), .B(prom_ready), 
         .Z(n6511)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i3017_2_lut_rep_183.init = 16'h8888;
    LUT4 i3018_2_lut_rep_184 (.A(\genblk1.instr_mem_out [8]), .B(prom_ready), 
         .Z(n6512)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i3018_2_lut_rep_184.init = 16'h8888;
    LUT4 ext_wb_state_nxt_I_16_4_lut (.A(\genblk2.D_ACK_I_d ), .B(n6464), 
         .C(n6454), .D(ext_wb_state), .Z(ext_wb_state_nxt)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(500[9] 501[85])
    defparam ext_wb_state_nxt_I_16_4_lut.init = 16'h0544;
    LUT4 i1_3_lut_rep_138 (.A(n74), .B(n1703), .C(prom_ready), .Z(n6466)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_3_lut_rep_138.init = 16'h2a2a;
    LUT4 i2_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [8]), .B(prom_ready), 
         .C(n6466), .D(\genblk1.instr_mem_out [9]), .Z(ie_nxt_N_930)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_4_lut (.A(n74), .B(n1703), .C(prom_ready), .D(n6496), 
         .Z(im_nxt_7__N_915)) /* synthesis lut_function=(!((B (C+!(D))+!B !(D))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(395[3] 396[35])
    defparam i1_2_lut_4_lut.init = 16'h2a00;
    LUT4 i1_2_lut_rep_168_3_lut_3_lut (.A(\genblk1.instr_mem_out [8]), .B(prom_ready), 
         .C(\genblk1.instr_mem_out [9]), .Z(n6496)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i1_2_lut_rep_168_3_lut_3_lut.init = 16'h0808;
    LUT4 i2978_2_lut_rep_185 (.A(\genblk1.instr_mem_out [12]), .B(prom_ready), 
         .Z(n6513)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2978_2_lut_rep_185.init = 16'h8888;
    LUT4 i2979_2_lut (.A(\genblk1.instr_mem_out [11]), .B(prom_ready), .Z(instr[11])) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2979_2_lut.init = 16'h8888;
    LUT4 i2917_2_lut_rep_187 (.A(\genblk1.instr_mem_out [5]), .B(prom_ready), 
         .Z(n6515)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2917_2_lut_rep_187.init = 16'h8888;
    LUT4 dout_rb_7__I_0_i3_3_lut_4_lut (.A(\genblk1.instr_mem_out [5]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_895), .D(dout_rb[2]), .Z(ext_addr_nxt[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i3_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2971_2_lut_rep_188 (.A(\genblk1.instr_mem_out [17]), .B(prom_ready), 
         .Z(n6516)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2971_2_lut_rep_188.init = 16'h8888;
    LUT4 i2_2_lut_rep_178_3_lut (.A(\genblk1.instr_mem_out [17]), .B(prom_ready), 
         .C(\genblk1.instr_mem_out [16]), .Z(n6506)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_2_lut_rep_178_3_lut.init = 16'h8080;
    LUT4 i5369_2_lut (.A(\selected[1] ), .B(core_rst_n), .Z(n3815)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i5369_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_rep_127_3_lut_4_lut (.A(n6464), .B(ext_wb_state), .C(\ext_addr[1] ), 
         .D(\selected[1] ), .Z(n6455)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1_2_lut_rep_127_3_lut_4_lut.init = 16'he000;
    LUT4 i2974_2_lut_rep_189 (.A(\genblk1.instr_mem_out [16]), .B(prom_ready), 
         .Z(n6517)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2974_2_lut_rep_189.init = 16'h8888;
    LUT4 i5354_3_lut_rep_163_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [16]), 
         .B(prom_ready), .C(n6532), .D(\genblk1.instr_mem_out [17]), .Z(n6491)) /* synthesis lut_function=(!(A (B)+!A (B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i5354_3_lut_rep_163_3_lut_4_lut_4_lut.init = 16'h3777;
    LUT4 instr_l1_2_I_0_135_2_lut_rep_165_3_lut_4_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [16]), 
         .B(prom_ready), .C(n6532), .D(\genblk1.instr_mem_out [17]), .Z(n6493)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_l1_2_I_0_135_2_lut_rep_165_3_lut_4_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 instr_17__I_0_160_2_lut_rep_173_3_lut_3_lut (.A(\genblk1.instr_mem_out [16]), 
         .B(prom_ready), .C(\genblk1.instr_mem_out [17]), .Z(n6501)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_17__I_0_160_2_lut_rep_173_3_lut_3_lut.init = 16'h4040;
    LUT4 ext_mem_wr_I_0_2_lut_4_lut (.A(page_ptr1[7]), .B(n6474), .C(n6499), 
         .D(ext_mem_wr), .Z(internal_sp_dout_7__N_516)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !(C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(590[14:46])
    defparam ext_mem_wr_I_0_2_lut_4_lut.init = 16'hcd00;
    LUT4 ext_io_wr_I_0_2_lut_rep_203 (.A(ext_io_wr), .B(ext_mem_wr), .Z(n6531)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(586[22:44])
    defparam ext_io_wr_I_0_2_lut_rep_203.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [16]), .B(prom_ready), 
         .C(n6532), .D(\genblk1.instr_mem_out [17]), .Z(update_z_N_681)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_134_3_lut (.A(n6464), .B(ext_wb_state), .C(\selected[1] ), 
         .Z(n6462)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1_2_lut_rep_134_3_lut.init = 16'he0e0;
    LUT4 i2948_2_lut_rep_191 (.A(\genblk1.instr_mem_out [1]), .B(prom_ready), 
         .Z(n6519)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2948_2_lut_rep_191.init = 16'h8888;
    LUT4 ext_mem_ready_N_597_I_0_2_lut_rep_137_2_lut_4_lut (.A(page_ptr1[7]), 
         .B(n6474), .C(n6499), .D(ext_mem_ready_N_597), .Z(n6465)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(590[14:46])
    defparam ext_mem_ready_N_597_I_0_2_lut_rep_137_2_lut_4_lut.init = 16'h3200;
    LUT4 i2_2_lut_rep_167_3_lut (.A(\genblk1.instr_mem_out [1]), .B(prom_ready), 
         .C(\genblk1.instr_mem_out [0]), .Z(n6495)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_2_lut_rep_167_3_lut.init = 16'h8080;
    LUT4 i3124_2_lut_3_lut_4_lut (.A(n6464), .B(ext_wb_state), .C(n6530), 
         .D(\selected[1] ), .Z(n14)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i3124_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i2941_2_lut_rep_192 (.A(\genblk1.instr_mem_out [0]), .B(prom_ready), 
         .Z(n6489)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2941_2_lut_rep_192.init = 16'h8888;
    LUT4 i2995_2_lut (.A(\genblk1.instr_mem_out [10]), .B(prom_ready), .Z(instr[10])) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2995_2_lut.init = 16'h8888;
    LUT4 instr_1__I_0_163_2_lut_3_lut_3_lut (.A(\genblk1.instr_mem_out [0]), 
         .B(prom_ready), .C(\genblk1.instr_mem_out [1]), .Z(instr_l7_2)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_1__I_0_163_2_lut_3_lut_3_lut.init = 16'h4040;
    LUT4 i1067_3_lut_4_lut (.A(\genblk1.instr_mem_out [0]), .B(prom_ready), 
         .C(ie_nxt_N_930), .D(dout_rb[0]), .Z(n1737)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i1067_3_lut_4_lut.init = 16'hf808;
    LUT4 instr_1__N_696_I_0_2_lut_rep_174_3_lut_3_lut (.A(\genblk1.instr_mem_out [0]), 
         .B(prom_ready), .C(\genblk1.instr_mem_out [1]), .Z(n6502)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_1__N_696_I_0_2_lut_rep_174_3_lut_3_lut.init = 16'h0808;
    LUT4 i2919_2_lut_rep_193 (.A(\genblk1.instr_mem_out [4]), .B(prom_ready), 
         .Z(n6521)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2919_2_lut_rep_193.init = 16'h8888;
    LUT4 rcsr_bdd_3_lut_4_lut (.A(\genblk1.instr_mem_out [4]), .B(prom_ready), 
         .C(ie), .D(dout_csr_7__N_612[0]), .Z(n6377)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam rcsr_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 dout_rb_7__I_0_i2_3_lut_4_lut (.A(\genblk1.instr_mem_out [4]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_895), .D(dout_rb[1]), .Z(ext_addr_nxt[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i2_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2916_2_lut_rep_194 (.A(\genblk1.instr_mem_out [6]), .B(prom_ready), 
         .Z(n6522)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2916_2_lut_rep_194.init = 16'h8888;
    LUT4 i1952_1_lut_2_lut_3_lut_4_lut (.A(n6464), .B(ext_wb_state), .C(n6531), 
         .D(\selected[1] ), .Z(GPIO_WE_I_N_949)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1952_1_lut_2_lut_3_lut_4_lut.init = 16'h1fff;
    LUT4 dout_rb_7__I_0_i4_3_lut_4_lut (.A(\genblk1.instr_mem_out [6]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_895), .D(dout_rb[3]), .Z(ext_addr_nxt[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i4_3_lut_4_lut.init = 16'h8f80;
    LUT4 i3044_2_lut_rep_195 (.A(\genblk1.instr_mem_out [7]), .B(prom_ready), 
         .Z(n6523)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i3044_2_lut_rep_195.init = 16'h8888;
    LUT4 dout_rb_7__I_0_i5_3_lut_4_lut (.A(\genblk1.instr_mem_out [7]), .B(prom_ready), 
         .C(ext_addr_nxt_7__N_895), .D(dout_rb[4]), .Z(ext_addr_nxt[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam dout_rb_7__I_0_i5_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2_3_lut_rep_122_4_lut (.A(ext_io_wr), .B(ext_mem_wr), .C(ext_addr[2]), 
         .D(LM8interrupts_0__N_34), .Z(n6450)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(586[22:44])
    defparam i2_3_lut_rep_122_4_lut.init = 16'h0e00;
    LUT4 i2975_2_lut_rep_206 (.A(\genblk1.instr_mem_out [15]), .B(prom_ready), 
         .Z(n6534)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2975_2_lut_rep_206.init = 16'h8888;
    LUT4 prom_ready_bdd_3_lut_2_lut (.A(prom_ready), .B(\genblk1.instr_mem_out [14]), 
         .Z(n6390)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam prom_ready_bdd_3_lut_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out [15]), 
         .B(prom_ready), .C(\genblk1.instr_mem_out [17]), .D(\genblk1.instr_mem_out [16]), 
         .Z(n1345)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i954_2_lut_rep_129_3_lut_4_lut (.A(n6464), .B(ext_wb_state), .C(n6474), 
         .D(\selected[1] ), .Z(n6457)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i954_2_lut_rep_129_3_lut_4_lut.init = 16'hf1ff;
    LUT4 i1_2_lut_rep_128_3_lut_4_lut (.A(n6464), .B(ext_wb_state), .C(\D_ADR_O_31__N_465[31] ), 
         .D(\selected[1] ), .Z(n6456)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(510[12:35])
    defparam i1_2_lut_rep_128_3_lut_4_lut.init = 16'he000;
    LUT4 i2_2_lut_rep_172_3_lut (.A(\genblk1.instr_mem_out [15]), .B(prom_ready), 
         .C(\genblk1.instr_mem_out [14]), .Z(n6500)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2_2_lut_rep_172_3_lut.init = 16'h8080;
    LUT4 i2976_2_lut_rep_209 (.A(\genblk1.instr_mem_out [14]), .B(prom_ready), 
         .Z(n6537)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam i2976_2_lut_rep_209.init = 16'h8888;
    LUT4 equal_16_i3_2_lut_rep_180_3_lut_3_lut (.A(\genblk1.instr_mem_out [14]), 
         .B(prom_ready), .C(\genblk1.instr_mem_out [15]), .Z(n6508)) /* synthesis lut_function=(A+!(B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam equal_16_i3_2_lut_rep_180_3_lut_3_lut.init = 16'hbfbf;
    LUT4 instr_15__I_0_2_lut_rep_177_3_lut_3_lut (.A(\genblk1.instr_mem_out [14]), 
         .B(prom_ready), .C(\genblk1.instr_mem_out [15]), .Z(n6505)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(387[18:53])
    defparam instr_15__I_0_2_lut_rep_177_3_lut_3_lut.init = 16'h4040;
    \lm8_core(FAMILY_NAME="MachXO3LF",EXT_AW=16,PROM_AW=32'sb01011,PROM_AD=2048,REGISTERS_16=0,PGM_STACK_AW=32'sb0100)  u1_isp8_core (.page_ptr1({page_ptr1}), 
            .clk_in(clk_in), .page_ptr1_7__N_639(page_ptr1_7__N_639), .core_rst_n_N_593(core_rst_n_N_593), 
            .VCC_net(VCC_net), .n6513(n6513), .\instr[11] (instr[11]), 
            .\instr[10] (instr[10]), .n6511(n6511), .n6512(n6512), .n6523(n6523), 
            .n6522(n6522), .n6515(n6515), .n6521(n6521), .n6526(n6526), 
            .dout_rb({dout_rb}), .n6467(n6467), .n6510(n6510), .n6489(n6489), 
            .n6482(n6482), .prom_ready(prom_ready), .\genblk1.instr_mem_out[17] (\genblk1.instr_mem_out [17]), 
            .n6519(n6519), .n6499(n6499), .n6502(n6502), .n6495(n6495), 
            .instr_l7_2(instr_l7_2), .n1880(n1880), .n6376(n6376), .internal_sp_dout({internal_sp_dout}), 
            .n10(n10), .\ext_io_din[7] (\ext_io_din[7] ), .\ext_io_din[6] (\ext_io_din[6] ), 
            .\ext_io_din[5] (\ext_io_din[5] ), .\ext_io_din[4] (\ext_io_din[4] ), 
            .\ext_io_din[3] (\ext_io_din[3] ), .\ext_io_din[2] (\ext_io_din[2] ), 
            .\ext_io_din[1] (\ext_io_din[1] ), .\genblk1.instr_mem_out[11] (\genblk1.instr_mem_out [11]), 
            .\genblk1.instr_mem_out[12] (\genblk1.instr_mem_out [12]), .\genblk1.instr_mem_out[10] (\genblk1.instr_mem_out [10]), 
            .n1703(n1703), .ie(ie), .n1737(n1737), .\im[0] (im[0]), 
            .im_nxt_7__N_915(im_nxt_7__N_915), .\ip[0] (ip[0]), .core_rst_n(core_rst_n), 
            .n6536(n6536), .n6529(n6529), .\genblk1.instr_mem_out[16] (\genblk1.instr_mem_out [16]), 
            .\ext_addr[8] (ext_addr[8]), .\ext_addr[9] (ext_addr[9]), .\ext_addr[10] (ext_addr[10]), 
            .cs_state_2__N_1061(cs_state_2__N_1061), .\genblk1.instr_mem_out[9] (\genblk1.instr_mem_out [9]), 
            .\genblk1.instr_mem_out[8] (\genblk1.instr_mem_out [8]), .n74(n74), 
            .update_z_N_681(update_z_N_681), .n6506(n6506), .n4(n4), .n6507(n6507), 
            .n6501(n6501), .n6500(n6500), .n6474(n6474), .\genblk1.instr_mem_out[14] (\genblk1.instr_mem_out [14]), 
            .n6534(n6534), .n6516(n6516), .n6517(n6517), .n6505(n6505), 
            .n6532(n6532), .n6491(n6491), .n6537(n6537), .ie_nxt_N_930(ie_nxt_N_930), 
            .n6377(n6377), .carry_flag(carry_flag), .\genblk1.instr_mem_out[13] (\genblk1.instr_mem_out [13]), 
            .prom_addr({prom_addr}), .ext_mem_ready(ext_mem_ready), .ext_addr_cyc(ext_addr_cyc), 
            .prom_enable(prom_enable), .n6504(n6504), .\RBR[0] (\RBR[0] ), 
            .\ier[0] (\ier[0] ), .\ext_addr[0] (ext_addr[0]), .LM8D_DAT_O({LM8D_DAT_O}), 
            .\ext_addr_nxt[0] (ext_addr_nxt[0]), .ext_io_wr(ext_io_wr), 
            .ext_io_rd(ext_io_rd), .ext_mem_wr(ext_mem_wr), .ext_mem_rd(ext_mem_rd), 
            .ext_mem_rd_nxt(ext_mem_rd_nxt), .ext_addr_nxt_7__N_895(ext_addr_nxt_7__N_895), 
            .n6460(n6460), .parity_en(parity_en), .\ext_addr[1] (\ext_addr[1] ), 
            .n5435(n5435), .\RBR[3] (\RBR[3] ), .n6462(n6462), .parity_even(parity_even), 
            .\RBR[4] (\RBR[4] ), .n2915(n2915), .parity_stick(parity_stick), 
            .\RBR[5] (\RBR[5] ), .n2956(n2956), .\RBR[7] (\RBR[7] ), .n1161(n1161), 
            .\ext_addr[3] (ext_addr[3]), .clk_in_enable_36(clk_in_enable_36), 
            .\ext_addr_nxt[1] (ext_addr_nxt[1]), .\ext_addr[2] (ext_addr[2]), 
            .\ext_addr_nxt[2] (ext_addr_nxt[2]), .\ext_addr_nxt[3] (ext_addr_nxt[3]), 
            .\ext_addr[4] (\ext_addr[4] ), .\ext_addr_nxt[4] (ext_addr_nxt[4]), 
            .\ext_addr[5] (\ext_addr[5] ), .\ext_addr[6] (\ext_addr[6] ), 
            .\ext_addr[7] (\ext_addr[7] ), .\ier[1] (\ier[1] ), .\RBR[1] (\RBR[1] ), 
            .n6039(n6039), .n7(n7), .rx_rdy(rx_rdy), .n6461(n6461), 
            .\dat_o_7__N_1029[0] (\dat_o_7__N_1029[0] ), .clk_in_enable_64(clk_in_enable_64), 
            .n6531(n6531), .LM8interrupts_0__N_34(LM8interrupts_0__N_34), 
            .tx_break(tx_break), .\RBR[6] (\RBR[6] ), .n2961(n2961), .n6450(n6450), 
            .clk_in_enable_51(clk_in_enable_51), .clk_in_enable_72(clk_in_enable_72), 
            .clk_in_enable_57(clk_in_enable_57), .n6533(n6533), .n2931(n2931), 
            .n5992(n5992), .n53(n53), .\genblk1.instr_mem_out[0] (\genblk1.instr_mem_out [0]), 
            .data_rb_int({data_rb_int}), .\genblk1.instr_mem_out[1] (\genblk1.instr_mem_out [1]), 
            .n1345(n1345), .n6390(n6390), .n6508(n6508), .n3(n3), .n6493(n6493), 
            .\genblk1.instr_mem_out[15] (\genblk1.instr_mem_out [15])) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(187[10] 209[26])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module \lm8_core(FAMILY_NAME="MachXO3LF",EXT_AW=16,PROM_AW=32'sb01011,PROM_AD=2048,REGISTERS_16=0,PGM_STACK_AW=32'sb0100) 
//

module \lm8_core(FAMILY_NAME="MachXO3LF",EXT_AW=16,PROM_AW=32'sb01011,PROM_AD=2048,REGISTERS_16=0,PGM_STACK_AW=32'sb0100)  (page_ptr1, 
            clk_in, page_ptr1_7__N_639, core_rst_n_N_593, VCC_net, n6513, 
            \instr[11] , \instr[10] , n6511, n6512, n6523, n6522, 
            n6515, n6521, n6526, dout_rb, n6467, n6510, n6489, 
            n6482, prom_ready, \genblk1.instr_mem_out[17] , n6519, n6499, 
            n6502, n6495, instr_l7_2, n1880, n6376, internal_sp_dout, 
            n10, \ext_io_din[7] , \ext_io_din[6] , \ext_io_din[5] , 
            \ext_io_din[4] , \ext_io_din[3] , \ext_io_din[2] , \ext_io_din[1] , 
            \genblk1.instr_mem_out[11] , \genblk1.instr_mem_out[12] , \genblk1.instr_mem_out[10] , 
            n1703, ie, n1737, \im[0] , im_nxt_7__N_915, \ip[0] , 
            core_rst_n, n6536, n6529, \genblk1.instr_mem_out[16] , \ext_addr[8] , 
            \ext_addr[9] , \ext_addr[10] , cs_state_2__N_1061, \genblk1.instr_mem_out[9] , 
            \genblk1.instr_mem_out[8] , n74, update_z_N_681, n6506, 
            n4, n6507, n6501, n6500, n6474, \genblk1.instr_mem_out[14] , 
            n6534, n6516, n6517, n6505, n6532, n6491, n6537, ie_nxt_N_930, 
            n6377, carry_flag, \genblk1.instr_mem_out[13] , prom_addr, 
            ext_mem_ready, ext_addr_cyc, prom_enable, n6504, \RBR[0] , 
            \ier[0] , \ext_addr[0] , LM8D_DAT_O, \ext_addr_nxt[0] , 
            ext_io_wr, ext_io_rd, ext_mem_wr, ext_mem_rd, ext_mem_rd_nxt, 
            ext_addr_nxt_7__N_895, n6460, parity_en, \ext_addr[1] , 
            n5435, \RBR[3] , n6462, parity_even, \RBR[4] , n2915, 
            parity_stick, \RBR[5] , n2956, \RBR[7] , n1161, \ext_addr[3] , 
            clk_in_enable_36, \ext_addr_nxt[1] , \ext_addr[2] , \ext_addr_nxt[2] , 
            \ext_addr_nxt[3] , \ext_addr[4] , \ext_addr_nxt[4] , \ext_addr[5] , 
            \ext_addr[6] , \ext_addr[7] , \ier[1] , \RBR[1] , n6039, 
            n7, rx_rdy, n6461, \dat_o_7__N_1029[0] , clk_in_enable_64, 
            n6531, LM8interrupts_0__N_34, tx_break, \RBR[6] , n2961, 
            n6450, clk_in_enable_51, clk_in_enable_72, clk_in_enable_57, 
            n6533, n2931, n5992, n53, \genblk1.instr_mem_out[0] , 
            data_rb_int, \genblk1.instr_mem_out[1] , n1345, n6390, n6508, 
            n3, n6493, \genblk1.instr_mem_out[15] ) /* synthesis syn_module_defined=1 */ ;
    output [7:0]page_ptr1;
    input clk_in;
    input page_ptr1_7__N_639;
    output core_rst_n_N_593;
    input VCC_net;
    input n6513;
    input \instr[11] ;
    input \instr[10] ;
    input n6511;
    input n6512;
    input n6523;
    input n6522;
    input n6515;
    input n6521;
    input n6526;
    output [7:0]dout_rb;
    output n6467;
    input n6510;
    input n6489;
    output n6482;
    input prom_ready;
    input \genblk1.instr_mem_out[17] ;
    input n6519;
    input n6499;
    input n6502;
    input n6495;
    input instr_l7_2;
    input n1880;
    input n6376;
    input [7:0]internal_sp_dout;
    output n10;
    input \ext_io_din[7] ;
    input \ext_io_din[6] ;
    input \ext_io_din[5] ;
    input \ext_io_din[4] ;
    input \ext_io_din[3] ;
    input \ext_io_din[2] ;
    input \ext_io_din[1] ;
    input \genblk1.instr_mem_out[11] ;
    input \genblk1.instr_mem_out[12] ;
    input \genblk1.instr_mem_out[10] ;
    output n1703;
    output ie;
    input n1737;
    output \im[0] ;
    input im_nxt_7__N_915;
    output \ip[0] ;
    input core_rst_n;
    output n6536;
    input n6529;
    input \genblk1.instr_mem_out[16] ;
    output \ext_addr[8] ;
    output \ext_addr[9] ;
    output \ext_addr[10] ;
    input cs_state_2__N_1061;
    input \genblk1.instr_mem_out[9] ;
    input \genblk1.instr_mem_out[8] ;
    output n74;
    input update_z_N_681;
    input n6506;
    input n4;
    input n6507;
    input n6501;
    input n6500;
    output n6474;
    input \genblk1.instr_mem_out[14] ;
    input n6534;
    input n6516;
    input n6517;
    input n6505;
    output n6532;
    input n6491;
    input n6537;
    input ie_nxt_N_930;
    input n6377;
    output carry_flag;
    input \genblk1.instr_mem_out[13] ;
    output [10:0]prom_addr;
    input ext_mem_ready;
    output ext_addr_cyc;
    output prom_enable;
    input n6504;
    input \RBR[0] ;
    input \ier[0] ;
    output \ext_addr[0] ;
    output [7:0]LM8D_DAT_O;
    input \ext_addr_nxt[0] ;
    output ext_io_wr;
    output ext_io_rd;
    output ext_mem_wr;
    output ext_mem_rd;
    input ext_mem_rd_nxt;
    output ext_addr_nxt_7__N_895;
    input n6460;
    input parity_en;
    output \ext_addr[1] ;
    output n5435;
    input \RBR[3] ;
    input n6462;
    input parity_even;
    input \RBR[4] ;
    output n2915;
    input parity_stick;
    input \RBR[5] ;
    output n2956;
    input \RBR[7] ;
    output n1161;
    output \ext_addr[3] ;
    output clk_in_enable_36;
    input \ext_addr_nxt[1] ;
    output \ext_addr[2] ;
    input \ext_addr_nxt[2] ;
    input \ext_addr_nxt[3] ;
    output \ext_addr[4] ;
    input \ext_addr_nxt[4] ;
    output \ext_addr[5] ;
    output \ext_addr[6] ;
    output \ext_addr[7] ;
    input \ier[1] ;
    input \RBR[1] ;
    output n6039;
    output n7;
    input rx_rdy;
    input n6461;
    output \dat_o_7__N_1029[0] ;
    output clk_in_enable_64;
    input n6531;
    input LM8interrupts_0__N_34;
    input tx_break;
    input \RBR[6] ;
    output n2961;
    input n6450;
    output clk_in_enable_51;
    output clk_in_enable_72;
    output clk_in_enable_57;
    output n6533;
    input n2931;
    input n5992;
    output n53;
    input \genblk1.instr_mem_out[0] ;
    input [7:0]data_rb_int;
    input \genblk1.instr_mem_out[1] ;
    input n1345;
    input n6390;
    input n6508;
    input n3;
    input n6493;
    input \genblk1.instr_mem_out[15] ;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    wire [7:0]din_rd;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(112[30:36])
    wire [7:0]din_rd1;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(112[38:45])
    wire [7:0]dout_alu;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(103[30:38])
    
    wire wren_alu_rd, wren_alu_rd_N_651, wren_il_rd, wren_il_rd_N_663, 
        GND_net;
    wire [7:0]dout_rd;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(99[30:37])
    
    wire wren_rd, n640, n6566, n6468, ro, n94, n6525;
    wire [7:0]im;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(119[34:36])
    wire [7:0]din_rd_7__N_641;
    
    wire n6379, n6471, n633, n632, n631, n6378, n634, n635, 
        n636, n637, data_cyc, n6514, clk_in_enable_26;
    wire [7:0]ip_nxt;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(68[25:31])
    
    wire ext_io_rd_nxt, n6503, ext_cycle_type, n5843, ext_io_wr_nxt, 
        ext_addr_nxt_7__N_897, ext_mem_wr_nxt, update_z, n5809, condbr_is_valid, 
        n6494, pushed_carry, carry_flag_nxt_N_861, pushed_zero, zero_flag_nxt_N_857, 
        n6479, n1348, n6035, n6485, n5873, n1447, zero_flag_async, 
        carry_flag_async, n1439, update_c, n6535, n3693, addr_cyc, 
        cout_alu, n2359;
    
    FD1P3DX page_ptr1_i0_i0 (.D(din_rd[0]), .SP(page_ptr1_7__N_639), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(page_ptr1[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i0.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i7 (.D(din_rd[7]), .SP(page_ptr1_7__N_639), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(page_ptr1[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i7.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i6 (.D(din_rd[6]), .SP(page_ptr1_7__N_639), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(page_ptr1[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i6.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i5 (.D(din_rd[5]), .SP(page_ptr1_7__N_639), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(page_ptr1[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i5.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i4 (.D(din_rd[4]), .SP(page_ptr1_7__N_639), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(page_ptr1[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i4.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i3 (.D(din_rd[3]), .SP(page_ptr1_7__N_639), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(page_ptr1[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i3.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i2 (.D(din_rd[2]), .SP(page_ptr1_7__N_639), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(page_ptr1[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i2.GSR = "DISABLED";
    FD1P3DX page_ptr1_i0_i1 (.D(din_rd[1]), .SP(page_ptr1_7__N_639), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(page_ptr1[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(349[16] 352[39])
    defparam page_ptr1_i0_i1.GSR = "DISABLED";
    FD1S3DX din_rd1_i0 (.D(dout_alu[0]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(din_rd1[0])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i0.GSR = "DISABLED";
    FD1S3DX wren_alu_rd_55 (.D(wren_alu_rd_N_651), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(wren_alu_rd)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(625[15] 630[13])
    defparam wren_alu_rd_55.GSR = "DISABLED";
    FD1S3DX wren_il_rd_56 (.D(wren_il_rd_N_663), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(wren_il_rd)) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(625[15] 630[13])
    defparam wren_il_rd_56.GSR = "DISABLED";
    pmi_distributed_dpramMbnonen853294f10db pmi_distributed_dpramMachXO3LFbinarynonenoreg8532 (.WrAddress({n6513, 
            \instr[11] , \instr[10] , n6511, n6512}), .Data({din_rd}), 
            .RdAddress({n6513, \instr[11] , \instr[10] , n6511, n6512}), 
            .Q({dout_rd}), .WrClock(clk_in), .WE(wren_rd), .WrClockEn(VCC_net), 
            .RdClock(clk_in), .RdClockEn(VCC_net), .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(187[10] 209[26])
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532.module_type = "pmi_distributed_dpram";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532.pmi_family = "MachXO3LF";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532.pmi_init_file_format = "binary";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532.pmi_init_file = "none";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532.pmi_regmode = "noreg";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532.pmi_data_width = 8;
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532.pmi_addr_width = 5;
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532.pmi_addr_depth = 32;
    pmi_distributed_dpramMbnonen853294f10db_c pmi_distributed_dpramMachXO3LFbinarynonenoreg8532_62 (.WrAddress({n6513, 
            \instr[11] , \instr[10] , n6511, n6512}), .Data({din_rd}), 
            .RdAddress({n6523, n6522, n6515, n6521, n6526}), .Q({dout_rb}), 
            .WrClock(clk_in), .WE(wren_rd), .WrClockEn(VCC_net), .RdClock(clk_in), 
            .RdClockEn(VCC_net), .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(187[10] 209[26])
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532_62.module_type = "pmi_distributed_dpram";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532_62.pmi_family = "MachXO3LF";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532_62.pmi_init_file_format = "binary";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532_62.pmi_init_file = "none";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532_62.pmi_regmode = "noreg";
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532_62.pmi_data_width = 8;
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532_62.pmi_addr_width = 5;
    defparam pmi_distributed_dpramMachXO3LFbinarynonenoreg8532_62.pmi_addr_depth = 32;
    LUT4 external_sp_bdd_4_lut_5463 (.A(n6467), .B(n6510), .C(n6489), 
         .D(n6482), .Z(n640)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam external_sp_bdd_4_lut_5463.init = 16'h7000;
    LUT4 \genblk1.instr_mem_out_15__bdd_2_lut  (.A(prom_ready), .B(\genblk1.instr_mem_out[17] ), 
         .Z(n6566)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam \genblk1.instr_mem_out_15__bdd_2_lut .init = 16'h7777;
    FD1S3DX din_rd1_i1 (.D(dout_alu[1]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(din_rd1[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i1.GSR = "DISABLED";
    FD1S3DX din_rd1_i2 (.D(dout_alu[2]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(din_rd1[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i2.GSR = "DISABLED";
    FD1S3DX din_rd1_i3 (.D(dout_alu[3]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(din_rd1[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i3.GSR = "DISABLED";
    FD1S3DX din_rd1_i4 (.D(dout_alu[4]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(din_rd1[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i4.GSR = "DISABLED";
    FD1S3DX din_rd1_i5 (.D(dout_alu[5]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(din_rd1[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i5.GSR = "DISABLED";
    FD1S3DX din_rd1_i6 (.D(dout_alu[6]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(din_rd1[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i6.GSR = "DISABLED";
    FD1S3DX din_rd1_i7 (.D(dout_alu[7]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(din_rd1[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(638[13:36])
    defparam din_rd1_i7.GSR = "DISABLED";
    LUT4 i5349_3_lut_rep_139_4_lut (.A(n6519), .B(n6482), .C(n6499), .D(page_ptr1[7]), 
         .Z(n6467)) /* synthesis lut_function=(!(A (C+(D))+!A !(B+!(C+(D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(142[8:40])
    defparam i5349_3_lut_rep_139_4_lut.init = 16'h444f;
    LUT4 i5374_4_lut (.A(n6566), .B(n6468), .C(ro), .D(n94), .Z(wren_alu_rd_N_651)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(626[31] 628[13])
    defparam i5374_4_lut.init = 16'hfeee;
    LUT4 i2_3_lut_4_lut (.A(n6502), .B(n6495), .C(instr_l7_2), .D(n6525), 
         .Z(n94)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    LUT4 mux_45_i8_4_lut (.A(din_rd1[7]), .B(im[7]), .C(n6468), .D(n1880), 
         .Z(din_rd_7__N_641[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(650[12:29])
    defparam mux_45_i8_4_lut.init = 16'hca0a;
    LUT4 mux_45_i7_4_lut (.A(din_rd1[6]), .B(im[6]), .C(n6468), .D(n1880), 
         .Z(din_rd_7__N_641[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(650[12:29])
    defparam mux_45_i7_4_lut.init = 16'hca0a;
    LUT4 mux_45_i6_4_lut (.A(din_rd1[5]), .B(im[5]), .C(n6468), .D(n1880), 
         .Z(din_rd_7__N_641[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(650[12:29])
    defparam mux_45_i6_4_lut.init = 16'hca0a;
    LUT4 mux_45_i5_4_lut (.A(din_rd1[4]), .B(im[4]), .C(n6468), .D(n1880), 
         .Z(din_rd_7__N_641[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(650[12:29])
    defparam mux_45_i5_4_lut.init = 16'hca0a;
    LUT4 mux_45_i4_4_lut (.A(din_rd1[3]), .B(im[3]), .C(n6468), .D(n1880), 
         .Z(din_rd_7__N_641[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(650[12:29])
    defparam mux_45_i4_4_lut.init = 16'hca0a;
    LUT4 mux_45_i3_4_lut (.A(din_rd1[2]), .B(im[2]), .C(n6468), .D(n1880), 
         .Z(din_rd_7__N_641[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(650[12:29])
    defparam mux_45_i3_4_lut.init = 16'hca0a;
    LUT4 mux_45_i2_4_lut (.A(din_rd1[1]), .B(im[1]), .C(n6468), .D(n1880), 
         .Z(din_rd_7__N_641[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(650[12:29])
    defparam mux_45_i2_4_lut.init = 16'hca0a;
    PFUMX i5459 (.BLUT(n6379), .ALUT(n6376), .C0(n640), .Z(din_rd[0]));
    LUT4 mux_369_i4_3_lut_4_lut (.A(n6471), .B(n6467), .C(internal_sp_dout[3]), 
         .D(din_rd_7__N_641[3]), .Z(n633)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_369_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_369_i3_3_lut_4_lut (.A(n6471), .B(n6467), .C(internal_sp_dout[2]), 
         .D(din_rd_7__N_641[2]), .Z(n632)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_369_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_369_i2_3_lut_4_lut (.A(n6471), .B(n6467), .C(internal_sp_dout[1]), 
         .D(din_rd_7__N_641[1]), .Z(n631)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_369_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 n6378_bdd_3_lut_4_lut (.A(n6471), .B(n6467), .C(internal_sp_dout[0]), 
         .D(n6378), .Z(n6379)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam n6378_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_369_i5_3_lut_4_lut (.A(n6471), .B(n6467), .C(internal_sp_dout[4]), 
         .D(din_rd_7__N_641[4]), .Z(n634)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_369_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_369_i6_3_lut_4_lut (.A(n6471), .B(n6467), .C(internal_sp_dout[5]), 
         .D(din_rd_7__N_641[5]), .Z(n635)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_369_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_369_i7_3_lut_4_lut (.A(n6471), .B(n6467), .C(internal_sp_dout[6]), 
         .D(din_rd_7__N_641[6]), .Z(n636)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_369_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_369_i8_3_lut_4_lut (.A(n6471), .B(n6467), .C(internal_sp_dout[7]), 
         .D(din_rd_7__N_641[7]), .Z(n637)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(645[15] 650[29])
    defparam mux_369_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 i4_4_lut (.A(data_cyc), .B(n6514), .C(\instr[11] ), .D(n6513), 
         .Z(n10)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 wren_alu_rd_I_0_2_lut_rep_186 (.A(wren_alu_rd), .B(wren_il_rd), 
         .Z(n6514)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(657[23:49])
    defparam wren_alu_rd_I_0_2_lut_rep_186.init = 16'heeee;
    LUT4 wren_rd_I_0_2_lut_3_lut (.A(wren_alu_rd), .B(wren_il_rd), .C(data_cyc), 
         .Z(wren_rd)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(657[23:49])
    defparam wren_rd_I_0_2_lut_3_lut.init = 16'he0e0;
    PFUMX din_rd_7__I_0_i8 (.BLUT(n637), .ALUT(\ext_io_din[7] ), .C0(n640), 
          .Z(din_rd[7])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i7 (.BLUT(n636), .ALUT(\ext_io_din[6] ), .C0(n640), 
          .Z(din_rd[6])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i6 (.BLUT(n635), .ALUT(\ext_io_din[5] ), .C0(n640), 
          .Z(din_rd[5])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i5 (.BLUT(n634), .ALUT(\ext_io_din[4] ), .C0(n640), 
          .Z(din_rd[4])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i4 (.BLUT(n633), .ALUT(\ext_io_din[3] ), .C0(n640), 
          .Z(din_rd[3])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i3 (.BLUT(n632), .ALUT(\ext_io_din[2] ), .C0(n640), 
          .Z(din_rd[2])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    PFUMX din_rd_7__I_0_i2 (.BLUT(n631), .ALUT(\ext_io_din[1] ), .C0(n640), 
          .Z(din_rd[1])) /* synthesis LSE_LINE_FILE_ID=16, LSE_LCOL=10, LSE_RCOL=26, LSE_LLINE=187, LSE_RLINE=209 */ ;
    \lm8_interrupt(INTERRUPTS=8)  u1_lm8_interrupt (.\genblk1.instr_mem_out[11] (\genblk1.instr_mem_out[11] ), 
            .\genblk1.instr_mem_out[12] (\genblk1.instr_mem_out[12] ), .\genblk1.instr_mem_out[10] (\genblk1.instr_mem_out[10] ), 
            .n1703(n1703), .ie(ie), .clk_in(clk_in), .clk_in_enable_26(clk_in_enable_26), 
            .core_rst_n_N_593(core_rst_n_N_593), .n1737(n1737), .im({im[7:1], 
            \im[0] }), .im_nxt_7__N_915(im_nxt_7__N_915), .dout_rb({dout_rb}), 
            .\ip[0] (\ip[0] ), .\ip_nxt[0] (ip_nxt[0]), .core_rst_n(core_rst_n)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(328[10] 342[3])
    \lm8_idec(PROM_AW=32'sb01011)  u1_lm8_idec (.n6510(n6510), .instr_l7_2(instr_l7_2), 
            .n6495(n6495), .n6482(n6482), .n6536(n6536), .n6489(n6489), 
            .ext_io_rd_nxt(ext_io_rd_nxt), .n6529(n6529), .n6468(n6468), 
            .\genblk1.instr_mem_out[17] (\genblk1.instr_mem_out[17] ), .prom_ready(prom_ready), 
            .\genblk1.instr_mem_out[16] (\genblk1.instr_mem_out[16] ), .n6503(n6503), 
            .n94(n94), .ext_cycle_type(ext_cycle_type), .\page_ptr1[0] (page_ptr1[0]), 
            .n6519(n6519), .\ext_addr[8] (\ext_addr[8] ), .\page_ptr1[1] (page_ptr1[1]), 
            .\ext_addr[9] (\ext_addr[9] ), .\page_ptr1[2] (page_ptr1[2]), 
            .\ext_addr[10] (\ext_addr[10] ), .n5843(n5843), .ext_io_wr_nxt(ext_io_wr_nxt), 
            .ext_addr_nxt_7__N_897(ext_addr_nxt_7__N_897), .cs_state_2__N_1061(cs_state_2__N_1061), 
            .\ip[0] (\ip[0] ), .\ip_nxt[0] (ip_nxt[0]), .\genblk1.instr_mem_out[9] (\genblk1.instr_mem_out[9] ), 
            .\genblk1.instr_mem_out[8] (\genblk1.instr_mem_out[8] ), .n1703(n1703), 
            .n74(n74), .\dout_rb[0] (dout_rb[0]), .n6471(n6471), .ext_mem_wr_nxt(ext_mem_wr_nxt), 
            .ro(ro), .update_z_N_681(update_z_N_681), .update_z(update_z), 
            .n6506(n6506), .n5809(n5809), .n4(n4), .condbr_is_valid(condbr_is_valid), 
            .n6494(n6494), .n6507(n6507), .pushed_carry(pushed_carry), 
            .carry_flag_nxt_N_861(carry_flag_nxt_N_861), .pushed_zero(pushed_zero), 
            .zero_flag_nxt_N_857(zero_flag_nxt_N_857), .n6501(n6501), .n6500(n6500), 
            .n6474(n6474), .wren_il_rd_N_663(wren_il_rd_N_663), .n6479(n6479), 
            .\genblk1.instr_mem_out[14] (\genblk1.instr_mem_out[14] ), .n6534(n6534), 
            .n6516(n6516), .n6517(n6517), .n6505(n6505), .n6532(n6532), 
            .n6491(n6491), .n1348(n1348), .n6035(n6035), .n6537(n6537), 
            .n6485(n6485), .n5873(n5873), .data_cyc(data_cyc), .n1447(n1447), 
            .ie_nxt_N_930(ie_nxt_N_930), .clk_in_enable_26(clk_in_enable_26), 
            .zero_flag_async(zero_flag_async), .n6525(n6525), .n6502(n6502), 
            .carry_flag_async(carry_flag_async), .n1439(n1439), .update_c(update_c), 
            .n6377(n6377), .\din_rd1[0] (din_rd1[0]), .n6378(n6378), .n6535(n6535), 
            .n3693(n3693)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(167[10] 219[9])
    \lm8_flow_cntl(PGM_STACK_AW=32'sb0100,PROM_AW=32'sb01011,FAMILY_NAME="MachXO3LF")  u1_lm8_flow_cntl (.data_cyc(data_cyc), 
            .clk_in(clk_in), .core_rst_n_N_593(core_rst_n_N_593), .n1447(n1447), 
            .carry_flag(carry_flag), .n1439(n1439), .\genblk1.instr_mem_out[12] (\genblk1.instr_mem_out[12] ), 
            .prom_ready(prom_ready), .\genblk1.instr_mem_out[13] (\genblk1.instr_mem_out[13] ), 
            .n5809(n5809), .addr_cyc(addr_cyc), .prom_addr({prom_addr}), 
            .n6489(n6489), .ext_cycle_type(ext_cycle_type), .ext_mem_ready(ext_mem_ready), 
            .ext_addr_cyc(ext_addr_cyc), .core_rst_n(core_rst_n), .VCC_net(VCC_net), 
            .zero_flag_async(zero_flag_async), .carry_flag_async(carry_flag_async), 
            .pushed_carry(pushed_carry), .pushed_zero(pushed_zero), .n6485(n6485), 
            .n6519(n6519), .n6510(n6510), .n6526(n6526), .n6521(n6521), 
            .n6515(n6515), .n6522(n6522), .n6523(n6523), .n6512(n6512), 
            .n6511(n6511), .\instr[10] (\instr[10] ), .prom_enable(prom_enable), 
            .ie(ie), .\im[0] (\im[0] ), .condbr_is_valid(condbr_is_valid), 
            .\ip[0] (\ip[0] ), .n6494(n6494), .n5873(n5873), .n4(n4), 
            .n6529(n6529), .n6513(n6513), .n6504(n6504), .cout_alu(cout_alu), 
            .n2359(n2359), .update_c(update_c), .carry_flag_nxt_N_861(carry_flag_nxt_N_861), 
            .din_rd1({din_rd1}), .update_z(update_z), .zero_flag_nxt_N_857(zero_flag_nxt_N_857)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(250[10] 294[3])
    lm8_io_cntl u1_lm8_cntl_u1 (.\RBR[0] (\RBR[0] ), .\ier[0] (\ier[0] ), 
            .\ext_addr[0] (\ext_addr[0] ), .LM8D_DAT_O({LM8D_DAT_O}), .clk_in(clk_in), 
            .core_rst_n_N_593(core_rst_n_N_593), .dout_rd({dout_rd}), .ext_addr_nxt({Open_11, 
            Open_12, Open_13, \ext_addr_nxt[4] , \ext_addr_nxt[3] , 
            \ext_addr_nxt[2] , \ext_addr_nxt[1] , \ext_addr_nxt[0] }), 
            .ext_io_wr(ext_io_wr), .ext_io_wr_nxt(ext_io_wr_nxt), .ext_io_rd(ext_io_rd), 
            .ext_io_rd_nxt(ext_io_rd_nxt), .ext_mem_wr(ext_mem_wr), .ext_mem_wr_nxt(ext_mem_wr_nxt), 
            .ext_mem_rd(ext_mem_rd), .ext_mem_rd_nxt(ext_mem_rd_nxt), .ext_addr_nxt_7__N_897(ext_addr_nxt_7__N_897), 
            .n6479(n6479), .n6502(n6502), .n6525(n6525), .ext_addr_nxt_7__N_895(ext_addr_nxt_7__N_895), 
            .n6460(n6460), .parity_en(parity_en), .\ext_addr[1] (\ext_addr[1] ), 
            .n5435(n5435), .\RBR[3] (\RBR[3] ), .n6462(n6462), .parity_even(parity_even), 
            .\RBR[4] (\RBR[4] ), .n2915(n2915), .parity_stick(parity_stick), 
            .\RBR[5] (\RBR[5] ), .n2956(n2956), .\RBR[7] (\RBR[7] ), .n1161(n1161), 
            .\ext_addr[3] (\ext_addr[3] ), .clk_in_enable_36(clk_in_enable_36), 
            .\ext_addr[2] (\ext_addr[2] ), .\ext_addr[4] (\ext_addr[4] ), 
            .\ext_addr[5] (\ext_addr[5] ), .\ext_addr[6] (\ext_addr[6] ), 
            .\ext_addr[7] (\ext_addr[7] ), .\ier[1] (\ier[1] ), .\RBR[1] (\RBR[1] ), 
            .n6039(n6039), .n7(n7), .rx_rdy(rx_rdy), .n6461(n6461), 
            .\dat_o_7__N_1029[0] (\dat_o_7__N_1029[0] ), .\dout_rb[5] (dout_rb[5]), 
            .\dout_rb[6] (dout_rb[6]), .\dout_rb[7] (dout_rb[7]), .clk_in_enable_64(clk_in_enable_64), 
            .n6531(n6531), .LM8interrupts_0__N_34(LM8interrupts_0__N_34), 
            .tx_break(tx_break), .\RBR[6] (\RBR[6] ), .n2961(n2961), .n6450(n6450), 
            .clk_in_enable_51(clk_in_enable_51), .clk_in_enable_72(clk_in_enable_72), 
            .clk_in_enable_57(clk_in_enable_57), .n6533(n6533), .n2931(n2931), 
            .n5992(n5992), .n53(n53), .addr_cyc(addr_cyc), .ext_addr_cyc(ext_addr_cyc), 
            .n6536(n6536), .prom_ready(prom_ready), .\genblk1.instr_mem_out[0] (\genblk1.instr_mem_out[0] ), 
            .n5843(n5843)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(300[16] 323[8])
    \lm8_alu(FAMILY_NAME="MachXO3LF")  u1_lm8_alu (.n6035(n6035), .dout_alu({dout_alu}), 
            .data_rb_int({data_rb_int}), .n1348(n1348), .dout_rb({dout_rb}), 
            .\genblk1.instr_mem_out[1] (\genblk1.instr_mem_out[1] ), .prom_ready(prom_ready), 
            .\genblk1.instr_mem_out[0] (\genblk1.instr_mem_out[0] ), .n1345(n1345), 
            .n6491(n6491), .n2359(n2359), .dout_rd({dout_rd}), .n3693(n3693), 
            .n6390(n6390), .carry_flag(carry_flag), .n6489(n6489), .n6508(n6508), 
            .n3(n3), .n6525(n6525), .n6493(n6493), .n6535(n6535), .\genblk1.instr_mem_out[15] (\genblk1.instr_mem_out[15] ), 
            .n6519(n6519), .cout_alu(cout_alu), .n6517(n6517), .n6516(n6516), 
            .n6534(n6534), .n6537(n6537), .\genblk1.instr_mem_out[14] (\genblk1.instr_mem_out[14] ), 
            .n6532(n6532), .n6503(n6503)) /* synthesis syn_module_defined=1 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(225[11] 239[3])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module \lm8_interrupt(INTERRUPTS=8) 
//

module \lm8_interrupt(INTERRUPTS=8)  (\genblk1.instr_mem_out[11] , \genblk1.instr_mem_out[12] , 
            \genblk1.instr_mem_out[10] , n1703, ie, clk_in, clk_in_enable_26, 
            core_rst_n_N_593, n1737, im, im_nxt_7__N_915, dout_rb, 
            \ip[0] , \ip_nxt[0] , core_rst_n) /* synthesis syn_module_defined=1 */ ;
    input \genblk1.instr_mem_out[11] ;
    input \genblk1.instr_mem_out[12] ;
    input \genblk1.instr_mem_out[10] ;
    output n1703;
    output ie;
    input clk_in;
    input clk_in_enable_26;
    output core_rst_n_N_593;
    input n1737;
    output [7:0]im;
    input im_nxt_7__N_915;
    input [7:0]dout_rb;
    output \ip[0] ;
    input \ip_nxt[0] ;
    input core_rst_n;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    
    LUT4 i2_3_lut (.A(\genblk1.instr_mem_out[11] ), .B(\genblk1.instr_mem_out[12] ), 
         .C(\genblk1.instr_mem_out[10] ), .Z(n1703)) /* synthesis lut_function=(A+(B+(C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(114[22:46])
    defparam i2_3_lut.init = 16'hfefe;
    FD1P3DX ie_30 (.D(n1737), .SP(clk_in_enable_26), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(ie));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam ie_30.GSR = "DISABLED";
    FD1P3BX im_i0_i0 (.D(dout_rb[0]), .SP(im_nxt_7__N_915), .CK(clk_in), 
            .PD(core_rst_n_N_593), .Q(im[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i0.GSR = "DISABLED";
    FD1S3DX ip_i0 (.D(\ip_nxt[0] ), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(\ip[0] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam ip_i0.GSR = "DISABLED";
    FD1P3BX im_i0_i1 (.D(dout_rb[1]), .SP(im_nxt_7__N_915), .CK(clk_in), 
            .PD(core_rst_n_N_593), .Q(im[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i1.GSR = "DISABLED";
    FD1P3BX im_i0_i2 (.D(dout_rb[2]), .SP(im_nxt_7__N_915), .CK(clk_in), 
            .PD(core_rst_n_N_593), .Q(im[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i2.GSR = "DISABLED";
    FD1P3BX im_i0_i3 (.D(dout_rb[3]), .SP(im_nxt_7__N_915), .CK(clk_in), 
            .PD(core_rst_n_N_593), .Q(im[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i3.GSR = "DISABLED";
    FD1P3BX im_i0_i4 (.D(dout_rb[4]), .SP(im_nxt_7__N_915), .CK(clk_in), 
            .PD(core_rst_n_N_593), .Q(im[4])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i4.GSR = "DISABLED";
    FD1P3BX im_i0_i5 (.D(dout_rb[5]), .SP(im_nxt_7__N_915), .CK(clk_in), 
            .PD(core_rst_n_N_593), .Q(im[5])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i5.GSR = "DISABLED";
    FD1P3BX im_i0_i6 (.D(dout_rb[6]), .SP(im_nxt_7__N_915), .CK(clk_in), 
            .PD(core_rst_n_N_593), .Q(im[6])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i6.GSR = "DISABLED";
    FD1P3BX im_i0_i7 (.D(dout_rb[7]), .SP(im_nxt_7__N_915), .CK(clk_in), 
            .PD(core_rst_n_N_593), .Q(im[7])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=328, LSE_RLINE=342 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_interrupt.v(130[8] 134[11])
    defparam im_i0_i7.GSR = "DISABLED";
    LUT4 core_rst_n_I_0_1_lut (.A(core_rst_n), .Z(core_rst_n_N_593)) /* synthesis lut_function=(!(A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(392[12:30])
    defparam core_rst_n_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module \lm8_idec(PROM_AW=32'sb01011) 
//

module \lm8_idec(PROM_AW=32'sb01011)  (n6510, instr_l7_2, n6495, n6482, 
            n6536, n6489, ext_io_rd_nxt, n6529, n6468, \genblk1.instr_mem_out[17] , 
            prom_ready, \genblk1.instr_mem_out[16] , n6503, n94, ext_cycle_type, 
            \page_ptr1[0] , n6519, \ext_addr[8] , \page_ptr1[1] , \ext_addr[9] , 
            \page_ptr1[2] , \ext_addr[10] , n5843, ext_io_wr_nxt, ext_addr_nxt_7__N_897, 
            cs_state_2__N_1061, \ip[0] , \ip_nxt[0] , \genblk1.instr_mem_out[9] , 
            \genblk1.instr_mem_out[8] , n1703, n74, \dout_rb[0] , n6471, 
            ext_mem_wr_nxt, ro, update_z_N_681, update_z, n6506, n5809, 
            n4, condbr_is_valid, n6494, n6507, pushed_carry, carry_flag_nxt_N_861, 
            pushed_zero, zero_flag_nxt_N_857, n6501, n6500, n6474, 
            wren_il_rd_N_663, n6479, \genblk1.instr_mem_out[14] , n6534, 
            n6516, n6517, n6505, n6532, n6491, n1348, n6035, n6537, 
            n6485, n5873, data_cyc, n1447, ie_nxt_N_930, clk_in_enable_26, 
            zero_flag_async, n6525, n6502, carry_flag_async, n1439, 
            update_c, n6377, \din_rd1[0] , n6378, n6535, n3693) /* synthesis syn_module_defined=1 */ ;
    input n6510;
    input instr_l7_2;
    input n6495;
    output n6482;
    input n6536;
    input n6489;
    output ext_io_rd_nxt;
    input n6529;
    output n6468;
    input \genblk1.instr_mem_out[17] ;
    input prom_ready;
    input \genblk1.instr_mem_out[16] ;
    input n6503;
    input n94;
    output ext_cycle_type;
    input \page_ptr1[0] ;
    input n6519;
    output \ext_addr[8] ;
    input \page_ptr1[1] ;
    output \ext_addr[9] ;
    input \page_ptr1[2] ;
    output \ext_addr[10] ;
    input n5843;
    output ext_io_wr_nxt;
    output ext_addr_nxt_7__N_897;
    input cs_state_2__N_1061;
    input \ip[0] ;
    output \ip_nxt[0] ;
    input \genblk1.instr_mem_out[9] ;
    input \genblk1.instr_mem_out[8] ;
    input n1703;
    output n74;
    input \dout_rb[0] ;
    output n6471;
    output ext_mem_wr_nxt;
    output ro;
    input update_z_N_681;
    output update_z;
    input n6506;
    input n5809;
    input n4;
    output condbr_is_valid;
    output n6494;
    input n6507;
    input pushed_carry;
    input carry_flag_nxt_N_861;
    input pushed_zero;
    input zero_flag_nxt_N_857;
    input n6501;
    input n6500;
    output n6474;
    output wren_il_rd_N_663;
    output n6479;
    input \genblk1.instr_mem_out[14] ;
    input n6534;
    input n6516;
    input n6517;
    input n6505;
    input n6532;
    input n6491;
    input n1348;
    output n6035;
    input n6537;
    output n6485;
    output n5873;
    input data_cyc;
    output n1447;
    input ie_nxt_N_930;
    output clk_in_enable_26;
    output zero_flag_async;
    input n6525;
    input n6502;
    output carry_flag_async;
    output n1439;
    output update_c;
    input n6377;
    input \din_rd1[0] ;
    output n6378;
    output n6535;
    output n3693;
    
    
    wire n6481, n4421, n6490, n5879, n5937, n8, test, carry_flag_nxt_N_860, 
        n4435, n6472, n6475;
    
    LUT4 i2_3_lut_4_lut (.A(n6510), .B(n6481), .C(instr_l7_2), .D(n6495), 
         .Z(n4421)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:46])
    defparam i2_3_lut_4_lut.init = 16'h0400;
    LUT4 ext_io_rd_nxt_I_0_2_lut_3_lut_4_lut (.A(n6510), .B(n6482), .C(n6536), 
         .D(n6489), .Z(ext_io_rd_nxt)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam ext_io_rd_nxt_I_0_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_140_3_lut_4_lut (.A(n6529), .B(n6490), .C(instr_l7_2), 
         .D(n6510), .Z(n6468)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:46])
    defparam i1_2_lut_rep_140_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(\genblk1.instr_mem_out[17] ), .B(prom_ready), 
         .C(\genblk1.instr_mem_out[16] ), .D(n6503), .Z(n5879)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(128[15:39])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h373f;
    LUT4 n94_bdd_3_lut_4_lut (.A(n6529), .B(n6490), .C(n6510), .D(n94), 
         .Z(ext_cycle_type)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam n94_bdd_3_lut_4_lut.init = 16'h8808;
    LUT4 i2961_2_lut_3_lut_4_lut (.A(n6529), .B(n6490), .C(\page_ptr1[0] ), 
         .D(n6519), .Z(\ext_addr[8] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i2961_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i2960_2_lut_3_lut_4_lut (.A(n6529), .B(n6490), .C(\page_ptr1[1] ), 
         .D(n6519), .Z(\ext_addr[9] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i2960_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i2959_2_lut_3_lut_4_lut (.A(n6529), .B(n6490), .C(\page_ptr1[2] ), 
         .D(n6519), .Z(\ext_addr[10] )) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i2959_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n6529), .B(n6490), .C(n5843), .D(n6510), 
         .Z(ext_io_wr_nxt)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_103 (.A(n6529), .B(n6490), .C(n6519), 
         .D(n6510), .Z(ext_addr_nxt_7__N_897)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i1_2_lut_3_lut_4_lut_adj_103.init = 16'h0008;
    LUT4 i1_4_lut (.A(n5937), .B(cs_state_2__N_1061), .C(n8), .D(\ip[0] ), 
         .Z(\ip_nxt[0] )) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(133[16:26])
    defparam i1_4_lut.init = 16'haf23;
    LUT4 i5199_2_lut (.A(\genblk1.instr_mem_out[9] ), .B(\genblk1.instr_mem_out[8] ), 
         .Z(n5937)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5199_2_lut.init = 16'heeee;
    LUT4 i3_3_lut (.A(n1703), .B(n74), .C(\dout_rb[0] ), .Z(n8)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i3_3_lut.init = 16'h4040;
    LUT4 i119_2_lut_rep_143_3_lut_4_lut (.A(n6529), .B(n6490), .C(n6489), 
         .D(n6510), .Z(n6471)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i119_2_lut_rep_143_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_104 (.A(n6529), .B(n6490), .C(n5843), 
         .D(n6510), .Z(ext_mem_wr_nxt)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(208[12:48])
    defparam i1_2_lut_3_lut_4_lut_adj_104.init = 16'h8000;
    LUT4 i2_4_lut (.A(n5879), .B(ro), .C(test), .D(update_z_N_681), 
         .Z(update_z)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(262[13:94])
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_105 (.A(n6503), .B(n6506), .C(n5809), .D(n4), 
         .Z(condbr_is_valid)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(224[10:26])
    defparam i2_4_lut_adj_105.init = 16'h4440;
    LUT4 carry_flag_nxt_I_54_3_lut_4_lut (.A(n6494), .B(n6507), .C(pushed_carry), 
         .D(carry_flag_nxt_N_861), .Z(carry_flag_nxt_N_860)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(243[10:26])
    defparam carry_flag_nxt_I_54_3_lut_4_lut.init = 16'hf780;
    LUT4 i3736_3_lut_4_lut (.A(n6494), .B(n6507), .C(pushed_zero), .D(zero_flag_nxt_N_857), 
         .Z(n4435)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(243[10:26])
    defparam i3736_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_rep_144_3_lut_4_lut (.A(n6501), .B(n6500), .C(n6510), 
         .D(n6529), .Z(n6472)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:33])
    defparam i1_2_lut_rep_144_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_rep_147_3_lut_4_lut (.A(n6501), .B(n6500), .C(n6510), 
         .D(n6529), .Z(n6475)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:33])
    defparam i1_2_lut_rep_147_3_lut_4_lut.init = 16'h0080;
    LUT4 i1563_2_lut_rep_146_3_lut_4_lut (.A(n6501), .B(n6500), .C(n6519), 
         .D(n6529), .Z(n6474)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:33])
    defparam i1563_2_lut_rep_146_3_lut_4_lut.init = 16'h0800;
    LUT4 i5219_2_lut_3_lut_4_lut (.A(n6501), .B(n6500), .C(n6489), .D(n6529), 
         .Z(wren_il_rd_N_663)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:33])
    defparam i5219_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_151_3_lut_4_lut (.A(n6501), .B(n6500), .C(n6510), 
         .D(n6529), .Z(n6479)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:33])
    defparam i1_2_lut_rep_151_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_153_3_lut_4_lut (.A(\genblk1.instr_mem_out[14] ), .B(n6534), 
         .C(n6529), .D(n6501), .Z(n6481)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam i1_2_lut_rep_153_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_154_3_lut_4_lut (.A(\genblk1.instr_mem_out[14] ), .B(n6534), 
         .C(n6529), .D(n6501), .Z(n6482)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(135[15:38])
    defparam i1_2_lut_rep_154_3_lut_4_lut.init = 16'h8000;
    LUT4 instr_l1_2_I_0_2_lut_rep_162_3_lut_4_lut (.A(n6516), .B(n6517), 
         .C(n6534), .D(\genblk1.instr_mem_out[14] ), .Z(n6490)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(128[15:39])
    defparam instr_l1_2_I_0_2_lut_rep_162_3_lut_4_lut.init = 16'h2000;
    LUT4 i2_3_lut_4_lut_adj_106 (.A(n6516), .B(n6517), .C(n6505), .D(n6529), 
         .Z(ro)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(128[15:39])
    defparam i2_3_lut_4_lut_adj_106.init = 16'h0020;
    LUT4 i5362_2_lut_3_lut_4_lut (.A(prom_ready), .B(n6532), .C(n6491), 
         .D(n1348), .Z(n6035)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i5362_2_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 instr_l1_2_I_0_154_2_lut_3_lut_4_lut (.A(n6534), .B(n6537), .C(n6517), 
         .D(n6516), .Z(test)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(133[15:39])
    defparam instr_l1_2_I_0_154_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_157_3_lut_4_lut (.A(n6534), .B(n6537), .C(n6507), 
         .D(n6506), .Z(n6485)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(134[15:39])
    defparam i1_2_lut_rep_157_3_lut_4_lut.init = 16'h2000;
    LUT4 instr_l1_3_I_0_2_lut_rep_166_3_lut_4_lut (.A(\genblk1.instr_mem_out[16] ), 
         .B(n6516), .C(n6537), .D(n6534), .Z(n6494)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(129[15:38])
    defparam instr_l1_3_I_0_2_lut_rep_166_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_107 (.A(\genblk1.instr_mem_out[16] ), .B(n6516), 
         .C(n6537), .D(n6534), .Z(n5873)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(129[15:38])
    defparam i1_2_lut_3_lut_4_lut_adj_107.init = 16'h0080;
    LUT4 i2_3_lut_4_lut_adj_108 (.A(n6510), .B(n6481), .C(data_cyc), .D(n6495), 
         .Z(n74)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:46])
    defparam i2_3_lut_4_lut_adj_108.init = 16'h8000;
    LUT4 i1_3_lut_4_lut (.A(instr_l7_2), .B(n6472), .C(n4435), .D(n4421), 
         .Z(n1447)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hff70;
    LUT4 i1_3_lut_4_lut_adj_109 (.A(n6510), .B(n6481), .C(n6519), .D(ie_nxt_N_930), 
         .Z(clk_in_enable_26)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(199[10:46])
    defparam i1_3_lut_4_lut_adj_109.init = 16'hff08;
    LUT4 i1_3_lut_4_lut_adj_110 (.A(instr_l7_2), .B(n6472), .C(zero_flag_nxt_N_857), 
         .D(n4421), .Z(zero_flag_async)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_110.init = 16'hff70;
    LUT4 i3037_3_lut_4_lut_4_lut (.A(n6525), .B(n6472), .C(carry_flag_nxt_N_861), 
         .D(n6502), .Z(carry_flag_async)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B+!(C))) */ ;
    defparam i3037_3_lut_4_lut_4_lut.init = 16'hb8b0;
    LUT4 i2936_3_lut_4_lut_4_lut (.A(n6525), .B(n6472), .C(carry_flag_nxt_N_860), 
         .D(n6502), .Z(n1439)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B+!(C))) */ ;
    defparam i2936_3_lut_4_lut_4_lut.init = 16'hb8b0;
    LUT4 i1_4_lut_adj_111 (.A(n6519), .B(n5879), .C(n6500), .D(n6501), 
         .Z(update_c)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(262[13:94])
    defparam i1_4_lut_adj_111.init = 16'hcecc;
    LUT4 din_rd1_0__bdd_3_lut_4_lut (.A(instr_l7_2), .B(n6475), .C(n6377), 
         .D(\din_rd1[0] ), .Z(n6378)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_idec.v(158[15:37])
    defparam din_rd1_0__bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 i3000_2_lut_rep_207 (.A(\genblk1.instr_mem_out[17] ), .B(\genblk1.instr_mem_out[16] ), 
         .Z(n6535)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3000_2_lut_rep_207.init = 16'heeee;
    LUT4 i3177_2_lut_3_lut (.A(\genblk1.instr_mem_out[17] ), .B(\genblk1.instr_mem_out[16] ), 
         .C(prom_ready), .Z(n3693)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3177_2_lut_3_lut.init = 16'he0e0;
    
endmodule
//
// Verilog Description of module \lm8_flow_cntl(PGM_STACK_AW=32'sb0100,PROM_AW=32'sb01011,FAMILY_NAME="MachXO3LF") 
//

module \lm8_flow_cntl(PGM_STACK_AW=32'sb0100,PROM_AW=32'sb01011,FAMILY_NAME="MachXO3LF")  (data_cyc, 
            clk_in, core_rst_n_N_593, n1447, carry_flag, n1439, \genblk1.instr_mem_out[12] , 
            prom_ready, \genblk1.instr_mem_out[13] , n5809, addr_cyc, 
            prom_addr, n6489, ext_cycle_type, ext_mem_ready, ext_addr_cyc, 
            core_rst_n, VCC_net, zero_flag_async, carry_flag_async, 
            pushed_carry, pushed_zero, n6485, n6519, n6510, n6526, 
            n6521, n6515, n6522, n6523, n6512, n6511, \instr[10] , 
            prom_enable, ie, \im[0] , condbr_is_valid, \ip[0] , n6494, 
            n5873, n4, n6529, n6513, n6504, cout_alu, n2359, update_c, 
            carry_flag_nxt_N_861, din_rd1, update_z, zero_flag_nxt_N_857) /* synthesis syn_module_defined=1 */ ;
    output data_cyc;
    input clk_in;
    input core_rst_n_N_593;
    input n1447;
    output carry_flag;
    input n1439;
    input \genblk1.instr_mem_out[12] ;
    input prom_ready;
    input \genblk1.instr_mem_out[13] ;
    output n5809;
    output addr_cyc;
    output [10:0]prom_addr;
    input n6489;
    input ext_cycle_type;
    input ext_mem_ready;
    output ext_addr_cyc;
    input core_rst_n;
    input VCC_net;
    input zero_flag_async;
    input carry_flag_async;
    output pushed_carry;
    output pushed_zero;
    input n6485;
    input n6519;
    input n6510;
    input n6526;
    input n6521;
    input n6515;
    input n6522;
    input n6523;
    input n6512;
    input n6511;
    input \instr[10] ;
    output prom_enable;
    input ie;
    input \im[0] ;
    input condbr_is_valid;
    input \ip[0] ;
    input n6494;
    input n5873;
    input n4;
    input n6529;
    input n6513;
    input n6504;
    input cout_alu;
    input n2359;
    input update_c;
    output carry_flag_nxt_N_861;
    input [7:0]din_rd1;
    input update_z;
    output zero_flag_nxt_N_857;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    
    wire GND_net;
    wire [10:0]pc;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(79[26:28])
    
    wire br_enb;
    wire [10:0]jump_address;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(86[22:34])
    wire [10:0]potential_address;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(95[22:39])
    
    wire n5084, zero_flag, ret_cycle_type, n6478;
    wire [3:0]stack_ptr;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(399[27:36])
    
    wire sp_we;
    wire [3:0]stack_ptr_nxt;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(399[38:51])
    
    wire n3746, br_enb_nxt_N_862, ext_addr_cyc_nxt, data_cyc_nxt, rst_exception, 
        rst_exception_nxt, ret_reg, intr_ack, n2412, rst_n_reg;
    wire [10:0]dout_stack;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(95[55:65])
    
    wire n4918, call_is_valid;
    wire [10:0]prom_addr_10__N_839;
    
    wire n5988, n6, n16, n5885, n5088, potential_address_10__N_830, 
        n5087, n5086, n5085, n4_adj_1415, n14, n13;
    
    CCU2D add_521_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[0]), .B1(br_enb), .C1(data_cyc), .D1(jump_address[0]), 
          .COUT(n5084), .S1(potential_address[0]));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_521_1.INIT0 = 16'hF000;
    defparam add_521_1.INIT1 = 16'h5595;
    defparam add_521_1.INJECT1_0 = "NO";
    defparam add_521_1.INJECT1_1 = "NO";
    FD1S3DX zero_flag_157 (.D(n1447), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(zero_flag));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam zero_flag_157.GSR = "DISABLED";
    FD1S3DX carry_flag_158 (.D(n1439), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(carry_flag));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam carry_flag_158.GSR = "DISABLED";
    LUT4 i5302_4_lut_4_lut (.A(\genblk1.instr_mem_out[12] ), .B(prom_ready), 
         .C(\genblk1.instr_mem_out[13] ), .D(zero_flag), .Z(n5809)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(248[20] 251[29])
    defparam i5302_4_lut_4_lut.init = 16'h3708;
    LUT4 addr_cyc_I_0_175_2_lut_rep_150 (.A(addr_cyc), .B(ret_cycle_type), 
         .Z(n6478)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(418[8:34])
    defparam addr_cyc_I_0_175_2_lut_rep_150.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(addr_cyc), .B(ret_cycle_type), .C(stack_ptr[0]), 
         .D(sp_we), .Z(stack_ptr_nxt[0])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(418[8:34])
    defparam i2_3_lut_4_lut.init = 16'h0f78;
    FD1P3BX pc_i0_i0 (.D(prom_addr[0]), .SP(data_cyc), .CK(clk_in), .PD(core_rst_n_N_593), 
            .Q(pc[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i0.GSR = "DISABLED";
    FD1S3BX addr_cyc_152 (.D(n3746), .CK(clk_in), .PD(core_rst_n_N_593), 
            .Q(addr_cyc));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(203[7] 207[10])
    defparam addr_cyc_152.GSR = "DISABLED";
    FD1P3DX br_enb_159 (.D(br_enb_nxt_N_862), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(br_enb));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam br_enb_159.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i0 (.D(n6489), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i0.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(ext_cycle_type), .B(addr_cyc), .C(ext_mem_ready), 
         .D(ext_addr_cyc), .Z(ext_addr_cyc_nxt)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(182[12] 183[59])
    defparam i1_4_lut.init = 16'h8a88;
    FD1S3BX ext_addr_cyc_153 (.D(ext_addr_cyc_nxt), .CK(clk_in), .PD(core_rst_n_N_593), 
            .Q(ext_addr_cyc)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(203[7] 207[10])
    defparam ext_addr_cyc_153.GSR = "DISABLED";
    FD1S3DX data_cyc_154 (.D(data_cyc_nxt), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(data_cyc)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(203[7] 207[10])
    defparam data_cyc_154.GSR = "DISABLED";
    LUT4 i11_4_lut (.A(addr_cyc), .B(ext_mem_ready), .C(ext_cycle_type), 
         .D(ext_addr_cyc), .Z(data_cyc_nxt)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(188[12] 189[49])
    defparam i11_4_lut.init = 16'hca0a;
    FD1S3IX rst_exception_150 (.D(rst_exception_nxt), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(rst_exception));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(110[11] 114[67])
    defparam rst_exception_150.GSR = "DISABLED";
    FD1S3DX stack_ptr_i0 (.D(stack_ptr_nxt[0]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(stack_ptr[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam stack_ptr_i0.GSR = "DISABLED";
    FD1S3DX ret_reg_160 (.D(ret_cycle_type), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(ret_reg)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam ret_reg_160.GSR = "DISABLED";
    FD1S3DX intr_ack_162 (.D(n2412), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(intr_ack)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam intr_ack_162.GSR = "DISABLED";
    FD1S3AX rst_n_reg_149 (.D(core_rst_n), .CK(clk_in), .Q(rst_n_reg)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(110[11] 114[67])
    defparam rst_n_reg_149.GSR = "DISABLED";
    pmi_distributed_spramMbnonen13416960fa53 pmi_distributed_spramMachXO3LFbinarynonenoreg13416 (.Address({stack_ptr}), 
            .Data({carry_flag_async, zero_flag_async, potential_address}), 
            .Q({pushed_carry, pushed_zero, dout_stack}), .Clock(clk_in), 
            .ClockEn(VCC_net), .WE(sp_we), .Reset(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(250[10] 294[3])
    defparam pmi_distributed_spramMachXO3LFbinarynonenoreg13416.module_type = "pmi_distributed_spram";
    defparam pmi_distributed_spramMachXO3LFbinarynonenoreg13416.pmi_family = "MachXO3LF";
    defparam pmi_distributed_spramMachXO3LFbinarynonenoreg13416.pmi_init_file_format = "binary";
    defparam pmi_distributed_spramMachXO3LFbinarynonenoreg13416.pmi_init_file = "none";
    defparam pmi_distributed_spramMachXO3LFbinarynonenoreg13416.pmi_regmode = "noreg";
    defparam pmi_distributed_spramMachXO3LFbinarynonenoreg13416.pmi_data_width = 13;
    defparam pmi_distributed_spramMachXO3LFbinarynonenoreg13416.pmi_addr_width = 4;
    defparam pmi_distributed_spramMachXO3LFbinarynonenoreg13416.pmi_addr_depth = 16;
    LUT4 rst_exception_nxt_I_60_2_lut (.A(rst_n_reg), .B(core_rst_n), .Z(rst_exception_nxt)) /* synthesis lut_function=(!(A+!(B))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(117[26:45])
    defparam rst_exception_nxt_I_60_2_lut.init = 16'h4444;
    LUT4 i1_3_lut (.A(n4918), .B(addr_cyc), .C(call_is_valid), .Z(sp_we)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut.init = 16'heaea;
    LUT4 i1_4_lut_adj_96 (.A(intr_ack), .B(n4918), .C(data_cyc), .D(n6485), 
         .Z(n2412)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_96.init = 16'hceee;
    FD1P3DX pc_i0_i1 (.D(prom_addr[1]), .SP(data_cyc), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(pc[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i1.GSR = "DISABLED";
    FD1P3DX pc_i0_i2 (.D(prom_addr[2]), .SP(data_cyc), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(pc[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i2.GSR = "DISABLED";
    FD1P3DX pc_i0_i3 (.D(prom_addr[3]), .SP(data_cyc), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(pc[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i3.GSR = "DISABLED";
    FD1P3DX pc_i0_i4 (.D(prom_addr[4]), .SP(data_cyc), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(pc[4])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i4.GSR = "DISABLED";
    FD1P3DX pc_i0_i5 (.D(prom_addr[5]), .SP(data_cyc), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(pc[5])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i5.GSR = "DISABLED";
    FD1P3DX pc_i0_i6 (.D(prom_addr[6]), .SP(data_cyc), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(pc[6])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i6.GSR = "DISABLED";
    FD1P3DX pc_i0_i7 (.D(prom_addr[7]), .SP(data_cyc), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(pc[7])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i7.GSR = "DISABLED";
    FD1P3DX pc_i0_i8 (.D(prom_addr[8]), .SP(data_cyc), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(pc[8])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i8.GSR = "DISABLED";
    FD1P3DX pc_i0_i9 (.D(prom_addr[9]), .SP(data_cyc), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(pc[9])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i9.GSR = "DISABLED";
    FD1P3DX pc_i0_i10 (.D(prom_addr[10]), .SP(data_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(pc[10])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam pc_i0_i10.GSR = "DISABLED";
    LUT4 i3114_4_lut (.A(prom_addr_10__N_839[10]), .B(n4918), .C(dout_stack[10]), 
         .D(ret_reg), .Z(prom_addr[10])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3114_4_lut.init = 16'h3022;
    LUT4 i3104_2_lut (.A(potential_address[10]), .B(rst_exception), .Z(prom_addr_10__N_839[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3104_2_lut.init = 16'h2222;
    LUT4 i3113_4_lut (.A(prom_addr_10__N_839[9]), .B(n4918), .C(dout_stack[9]), 
         .D(ret_reg), .Z(prom_addr[9])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3113_4_lut.init = 16'h3022;
    LUT4 i3103_2_lut (.A(potential_address[9]), .B(rst_exception), .Z(prom_addr_10__N_839[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3103_2_lut.init = 16'h2222;
    FD1P3DX jump_address_i0_i1 (.D(n6519), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i1.GSR = "DISABLED";
    LUT4 i3112_4_lut (.A(prom_addr_10__N_839[8]), .B(n4918), .C(dout_stack[8]), 
         .D(ret_reg), .Z(prom_addr[8])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3112_4_lut.init = 16'h3022;
    LUT4 i3102_2_lut (.A(potential_address[8]), .B(rst_exception), .Z(prom_addr_10__N_839[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3102_2_lut.init = 16'h2222;
    LUT4 i3111_4_lut (.A(prom_addr_10__N_839[7]), .B(n4918), .C(dout_stack[7]), 
         .D(ret_reg), .Z(prom_addr[7])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3111_4_lut.init = 16'h3022;
    LUT4 i3101_2_lut (.A(potential_address[7]), .B(rst_exception), .Z(prom_addr_10__N_839[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3101_2_lut.init = 16'h2222;
    LUT4 i3110_4_lut (.A(prom_addr_10__N_839[6]), .B(n4918), .C(dout_stack[6]), 
         .D(ret_reg), .Z(prom_addr[6])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3110_4_lut.init = 16'h3022;
    LUT4 i3100_2_lut (.A(potential_address[6]), .B(rst_exception), .Z(prom_addr_10__N_839[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3100_2_lut.init = 16'h2222;
    FD1P3DX jump_address_i0_i2 (.D(n6510), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i2.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i3 (.D(n6526), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i3.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i4 (.D(n6521), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[4])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i4.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i5 (.D(n6515), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[5])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i5.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i6 (.D(n6522), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[6])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i6.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i7 (.D(n6523), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[7])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i7.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i8 (.D(n6512), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[8])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i8.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i9 (.D(n6511), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[9])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i9.GSR = "DISABLED";
    FD1P3DX jump_address_i0_i10 (.D(\instr[10] ), .SP(addr_cyc), .CK(clk_in), 
            .CD(core_rst_n_N_593), .Q(jump_address[10])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam jump_address_i0_i10.GSR = "DISABLED";
    LUT4 i3109_4_lut (.A(prom_addr_10__N_839[5]), .B(n4918), .C(dout_stack[5]), 
         .D(ret_reg), .Z(prom_addr[5])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3109_4_lut.init = 16'h3022;
    LUT4 i3099_2_lut (.A(potential_address[5]), .B(rst_exception), .Z(prom_addr_10__N_839[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3099_2_lut.init = 16'h2222;
    LUT4 i3108_4_lut (.A(prom_addr_10__N_839[4]), .B(n4918), .C(dout_stack[4]), 
         .D(ret_reg), .Z(prom_addr[4])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3108_4_lut.init = 16'h3022;
    LUT4 i3098_2_lut (.A(potential_address[4]), .B(rst_exception), .Z(prom_addr_10__N_839[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3098_2_lut.init = 16'h2222;
    LUT4 i3107_4_lut (.A(prom_addr_10__N_839[3]), .B(n4918), .C(dout_stack[3]), 
         .D(ret_reg), .Z(prom_addr[3])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3107_4_lut.init = 16'h3022;
    LUT4 i3097_2_lut (.A(potential_address[3]), .B(rst_exception), .Z(prom_addr_10__N_839[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3097_2_lut.init = 16'h2222;
    LUT4 i3106_4_lut (.A(prom_addr_10__N_839[2]), .B(n4918), .C(dout_stack[2]), 
         .D(ret_reg), .Z(prom_addr[2])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3106_4_lut.init = 16'h3022;
    LUT4 i3096_2_lut (.A(potential_address[2]), .B(rst_exception), .Z(prom_addr_10__N_839[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3096_2_lut.init = 16'h2222;
    LUT4 i3105_4_lut (.A(prom_addr_10__N_839[1]), .B(n4918), .C(dout_stack[1]), 
         .D(ret_reg), .Z(prom_addr[1])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3105_4_lut.init = 16'h3022;
    LUT4 i3095_2_lut (.A(potential_address[1]), .B(rst_exception), .Z(prom_addr_10__N_839[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3095_2_lut.init = 16'h2222;
    LUT4 i3034_4_lut (.A(prom_addr_10__N_839[0]), .B(n4918), .C(dout_stack[0]), 
         .D(ret_reg), .Z(prom_addr[0])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(287[4] 295[48])
    defparam i3034_4_lut.init = 16'h3022;
    FD1S3DX stack_ptr_i1 (.D(stack_ptr_nxt[1]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(stack_ptr[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam stack_ptr_i1.GSR = "DISABLED";
    FD1S3DX stack_ptr_i2 (.D(stack_ptr_nxt[2]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(stack_ptr[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam stack_ptr_i2.GSR = "DISABLED";
    FD1S3DX stack_ptr_i3 (.D(stack_ptr_nxt[3]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(stack_ptr[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=250, LSE_RLINE=294 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(522[8] 532[11])
    defparam stack_ptr_i3.GSR = "DISABLED";
    LUT4 i3032_2_lut (.A(potential_address[0]), .B(rst_exception), .Z(prom_addr_10__N_839[0])) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(295[15:48])
    defparam i3032_2_lut.init = 16'heeee;
    LUT4 i5365_2_lut (.A(ext_addr_cyc), .B(addr_cyc), .Z(n3746)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i5365_2_lut.init = 16'h1111;
    LUT4 data_cyc_I_0_173_2_lut (.A(data_cyc), .B(core_rst_n), .Z(prom_enable)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(219[16:32])
    defparam data_cyc_I_0_173_2_lut.init = 16'h8888;
    LUT4 i4_4_lut (.A(ie), .B(n5988), .C(\im[0] ), .D(n6), .Z(n4918)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h2000;
    LUT4 i5247_4_lut (.A(ret_cycle_type), .B(condbr_is_valid), .C(call_is_valid), 
         .D(intr_ack), .Z(n5988)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5247_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(data_cyc), .B(\ip[0] ), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_97 (.A(n6494), .B(prom_ready), .C(\genblk1.instr_mem_out[13] ), 
         .D(\genblk1.instr_mem_out[12] ), .Z(ret_cycle_type)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(238[19:27])
    defparam i1_4_lut_adj_97.init = 16'h0880;
    LUT4 i1_4_lut_adj_98 (.A(n6494), .B(n5873), .C(n16), .D(n5885), 
         .Z(call_is_valid)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(241[17] 245[29])
    defparam i1_4_lut_adj_98.init = 16'hce0a;
    LUT4 i2_4_lut (.A(n4), .B(n6529), .C(zero_flag), .D(n6513), .Z(n5885)) /* synthesis lut_function=(A+!(B+(C (D)+!C !(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(241[17] 245[29])
    defparam i2_4_lut.init = 16'habba;
    LUT4 i1_3_lut_adj_99 (.A(prom_ready), .B(\genblk1.instr_mem_out[12] ), 
         .C(\genblk1.instr_mem_out[13] ), .Z(n16)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_99.init = 16'ha8a8;
    CCU2D add_521_11 (.A0(jump_address[9]), .B0(potential_address_10__N_830), 
          .C0(pc[9]), .D0(GND_net), .A1(jump_address[10]), .B1(potential_address_10__N_830), 
          .C1(pc[10]), .D1(GND_net), .CIN(n5088), .S0(potential_address[9]), 
          .S1(potential_address[10]));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_521_11.INIT0 = 16'h7878;
    defparam add_521_11.INIT1 = 16'h7878;
    defparam add_521_11.INJECT1_0 = "NO";
    defparam add_521_11.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_100 (.A(call_is_valid), .B(condbr_is_valid), .C(n6494), 
         .D(n6504), .Z(br_enb_nxt_N_862)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(255[17:52])
    defparam i2_4_lut_adj_100.init = 16'hfeee;
    CCU2D add_521_9 (.A0(jump_address[7]), .B0(potential_address_10__N_830), 
          .C0(pc[7]), .D0(GND_net), .A1(jump_address[8]), .B1(potential_address_10__N_830), 
          .C1(pc[8]), .D1(GND_net), .CIN(n5087), .COUT(n5088), .S0(potential_address[7]), 
          .S1(potential_address[8]));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_521_9.INIT0 = 16'h7878;
    defparam add_521_9.INIT1 = 16'h7878;
    defparam add_521_9.INJECT1_0 = "NO";
    defparam add_521_9.INJECT1_1 = "NO";
    CCU2D add_521_7 (.A0(jump_address[5]), .B0(potential_address_10__N_830), 
          .C0(pc[5]), .D0(GND_net), .A1(jump_address[6]), .B1(potential_address_10__N_830), 
          .C1(pc[6]), .D1(GND_net), .CIN(n5086), .COUT(n5087), .S0(potential_address[5]), 
          .S1(potential_address[6]));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_521_7.INIT0 = 16'h7878;
    defparam add_521_7.INIT1 = 16'h7878;
    defparam add_521_7.INJECT1_0 = "NO";
    defparam add_521_7.INJECT1_1 = "NO";
    CCU2D add_521_5 (.A0(jump_address[3]), .B0(potential_address_10__N_830), 
          .C0(pc[3]), .D0(GND_net), .A1(jump_address[4]), .B1(potential_address_10__N_830), 
          .C1(pc[4]), .D1(GND_net), .CIN(n5085), .COUT(n5086), .S0(potential_address[3]), 
          .S1(potential_address[4]));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_521_5.INIT0 = 16'h7878;
    defparam add_521_5.INIT1 = 16'h7878;
    defparam add_521_5.INJECT1_0 = "NO";
    defparam add_521_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_101 (.A(stack_ptr[0]), .B(sp_we), .C(n6478), .D(stack_ptr[1]), 
         .Z(stack_ptr_nxt[1])) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(B (D)+!B !(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut_adj_101.init = 16'h6798;
    LUT4 i2_3_lut (.A(n4_adj_1415), .B(sp_we), .C(stack_ptr[2]), .Z(stack_ptr_nxt[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i2_3_lut.init = 16'h6969;
    LUT4 i826_4_lut (.A(stack_ptr[1]), .B(sp_we), .C(n6478), .D(stack_ptr[0]), 
         .Z(n4_adj_1415)) /* synthesis lut_function=(A ((D)+!B)+!A !(B+!((D)+!C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(418[4] 421[32])
    defparam i826_4_lut.init = 16'hbb23;
    LUT4 i2_4_lut_adj_102 (.A(stack_ptr[2]), .B(sp_we), .C(stack_ptr[3]), 
         .D(n4_adj_1415), .Z(stack_ptr_nxt[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i2_4_lut_adj_102.init = 16'h78e1;
    CCU2D add_521_3 (.A0(jump_address[1]), .B0(potential_address_10__N_830), 
          .C0(pc[1]), .D0(GND_net), .A1(jump_address[2]), .B1(potential_address_10__N_830), 
          .C1(pc[2]), .D1(GND_net), .CIN(n5084), .COUT(n5085), .S0(potential_address[1]), 
          .S1(potential_address[2]));   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(280[4:34])
    defparam add_521_3.INIT0 = 16'h7878;
    defparam add_521_3.INIT1 = 16'h7878;
    defparam add_521_3.INJECT1_0 = "NO";
    defparam add_521_3.INJECT1_1 = "NO";
    LUT4 data_cyc_I_0_170_2_lut (.A(data_cyc), .B(br_enb), .Z(potential_address_10__N_830)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(275[6:24])
    defparam data_cyc_I_0_170_2_lut.init = 16'h8888;
    LUT4 carry_flag_I_0_4_lut (.A(cout_alu), .B(carry_flag), .C(n2359), 
         .D(update_c), .Z(carry_flag_nxt_N_861)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(335[10:44])
    defparam carry_flag_I_0_4_lut.init = 16'hcacc;
    LUT4 i6_4_lut (.A(din_rd1[3]), .B(din_rd1[1]), .C(din_rd1[5]), .D(din_rd1[7]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(368[20:43])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 zero_flag_I_0_4_lut (.A(zero_flag), .B(n13), .C(update_z), .D(n14), 
         .Z(zero_flag_nxt_N_857)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(368[8:56])
    defparam zero_flag_I_0_4_lut.init = 16'h0a3a;
    LUT4 i5_4_lut (.A(din_rd1[0]), .B(din_rd1[2]), .C(din_rd1[6]), .D(din_rd1[4]), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_flow_cntl.v(368[20:43])
    defparam i5_4_lut.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module lm8_io_cntl
//

module lm8_io_cntl (\RBR[0] , \ier[0] , \ext_addr[0] , LM8D_DAT_O, clk_in, 
            core_rst_n_N_593, dout_rd, ext_addr_nxt, ext_io_wr, ext_io_wr_nxt, 
            ext_io_rd, ext_io_rd_nxt, ext_mem_wr, ext_mem_wr_nxt, ext_mem_rd, 
            ext_mem_rd_nxt, ext_addr_nxt_7__N_897, n6479, n6502, n6525, 
            ext_addr_nxt_7__N_895, n6460, parity_en, \ext_addr[1] , 
            n5435, \RBR[3] , n6462, parity_even, \RBR[4] , n2915, 
            parity_stick, \RBR[5] , n2956, \RBR[7] , n1161, \ext_addr[3] , 
            clk_in_enable_36, \ext_addr[2] , \ext_addr[4] , \ext_addr[5] , 
            \ext_addr[6] , \ext_addr[7] , \ier[1] , \RBR[1] , n6039, 
            n7, rx_rdy, n6461, \dat_o_7__N_1029[0] , \dout_rb[5] , 
            \dout_rb[6] , \dout_rb[7] , clk_in_enable_64, n6531, LM8interrupts_0__N_34, 
            tx_break, \RBR[6] , n2961, n6450, clk_in_enable_51, clk_in_enable_72, 
            clk_in_enable_57, n6533, n2931, n5992, n53, addr_cyc, 
            ext_addr_cyc, n6536, prom_ready, \genblk1.instr_mem_out[0] , 
            n5843) /* synthesis syn_module_defined=1 */ ;
    input \RBR[0] ;
    input \ier[0] ;
    output \ext_addr[0] ;
    output [7:0]LM8D_DAT_O;
    input clk_in;
    input core_rst_n_N_593;
    input [7:0]dout_rd;
    input [7:0]ext_addr_nxt;
    output ext_io_wr;
    input ext_io_wr_nxt;
    output ext_io_rd;
    input ext_io_rd_nxt;
    output ext_mem_wr;
    input ext_mem_wr_nxt;
    output ext_mem_rd;
    input ext_mem_rd_nxt;
    input ext_addr_nxt_7__N_897;
    input n6479;
    input n6502;
    input n6525;
    output ext_addr_nxt_7__N_895;
    input n6460;
    input parity_en;
    output \ext_addr[1] ;
    output n5435;
    input \RBR[3] ;
    input n6462;
    input parity_even;
    input \RBR[4] ;
    output n2915;
    input parity_stick;
    input \RBR[5] ;
    output n2956;
    input \RBR[7] ;
    output n1161;
    output \ext_addr[3] ;
    output clk_in_enable_36;
    output \ext_addr[2] ;
    output \ext_addr[4] ;
    output \ext_addr[5] ;
    output \ext_addr[6] ;
    output \ext_addr[7] ;
    input \ier[1] ;
    input \RBR[1] ;
    output n6039;
    output n7;
    input rx_rdy;
    input n6461;
    output \dat_o_7__N_1029[0] ;
    input \dout_rb[5] ;
    input \dout_rb[6] ;
    input \dout_rb[7] ;
    output clk_in_enable_64;
    input n6531;
    input LM8interrupts_0__N_34;
    input tx_break;
    input \RBR[6] ;
    output n2961;
    input n6450;
    output clk_in_enable_51;
    output clk_in_enable_72;
    output clk_in_enable_57;
    output n6533;
    input n2931;
    input n5992;
    output n53;
    input addr_cyc;
    input ext_addr_cyc;
    output n6536;
    input prom_ready;
    input \genblk1.instr_mem_out[0] ;
    output n5843;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    
    wire n2930, n9, n6443;
    wire [7:0]ext_addr_nxt_c;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(72[16:28])
    
    wire n40;
    wire [7:0]n1160;
    
    LUT4 i2226_3_lut (.A(\RBR[0] ), .B(\ier[0] ), .C(\ext_addr[0] ), .Z(n2930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(134[29:37])
    defparam i2226_3_lut.init = 16'hcaca;
    FD1S3DX ext_dout_i0 (.D(dout_rd[0]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(LM8D_DAT_O[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i0.GSR = "DISABLED";
    FD1S3DX ext_addr_i1 (.D(ext_addr_nxt[0]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(\ext_addr[0] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i1.GSR = "DISABLED";
    FD1S3DX ext_io_wr_30 (.D(ext_io_wr_nxt), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(ext_io_wr)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_io_wr_30.GSR = "DISABLED";
    FD1S3DX ext_io_rd_31 (.D(ext_io_rd_nxt), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(ext_io_rd)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_io_rd_31.GSR = "DISABLED";
    FD1S3DX ext_mem_wr_32 (.D(ext_mem_wr_nxt), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(ext_mem_wr)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_mem_wr_32.GSR = "DISABLED";
    FD1S3DX ext_mem_rd_33 (.D(ext_mem_rd_nxt), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(ext_mem_rd)) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_mem_rd_33.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(ext_addr_nxt_7__N_897), .B(n6479), .C(n6502), .D(n6525), 
         .Z(ext_addr_nxt_7__N_895)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(103[6:38])
    defparam i1_4_lut.init = 16'heaee;
    LUT4 i1_4_lut_adj_91 (.A(n6460), .B(n9), .C(parity_en), .D(\ext_addr[1] ), 
         .Z(n5435)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_91.init = 16'heccc;
    LUT4 i1_4_lut_adj_92 (.A(\RBR[3] ), .B(n6462), .C(\ext_addr[0] ), 
         .D(\ext_addr[1] ), .Z(n9)) /* synthesis lut_function=(!((B (C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_92.init = 16'h222a;
    LUT4 i2211_4_lut (.A(\ext_addr[0] ), .B(parity_even), .C(\ext_addr[1] ), 
         .D(\RBR[4] ), .Z(n2915)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(134[29:37])
    defparam i2211_4_lut.init = 16'h8580;
    LUT4 i2252_4_lut (.A(\ext_addr[0] ), .B(parity_stick), .C(\ext_addr[1] ), 
         .D(\RBR[5] ), .Z(n2956)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(134[29:37])
    defparam i2252_4_lut.init = 16'h8580;
    LUT4 i2269_4_lut (.A(\RBR[7] ), .B(n6462), .C(\ext_addr[0] ), .D(\ext_addr[1] ), 
         .Z(n1161)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A (B (C (D)))) */ ;
    defparam i2269_4_lut.init = 16'he22a;
    LUT4 i1_2_lut_4_lut (.A(n6443), .B(n6462), .C(\ext_addr[0] ), .D(\ext_addr[3] ), 
         .Z(clk_in_enable_36)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam i1_2_lut_4_lut.init = 16'h0008;
    FD1S3DX ext_dout_i1 (.D(dout_rd[1]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(LM8D_DAT_O[1])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i1.GSR = "DISABLED";
    FD1S3DX ext_dout_i2 (.D(dout_rd[2]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(LM8D_DAT_O[2])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i2.GSR = "DISABLED";
    FD1S3DX ext_dout_i3 (.D(dout_rd[3]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(LM8D_DAT_O[3])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i3.GSR = "DISABLED";
    FD1S3DX ext_dout_i4 (.D(dout_rd[4]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(LM8D_DAT_O[4])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i4.GSR = "DISABLED";
    FD1S3DX ext_dout_i5 (.D(dout_rd[5]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(LM8D_DAT_O[5])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i5.GSR = "DISABLED";
    FD1S3DX ext_dout_i6 (.D(dout_rd[6]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(LM8D_DAT_O[6])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i6.GSR = "DISABLED";
    FD1S3DX ext_dout_i7 (.D(dout_rd[7]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(LM8D_DAT_O[7])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_dout_i7.GSR = "DISABLED";
    FD1S3DX ext_addr_i2 (.D(ext_addr_nxt[1]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(\ext_addr[1] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i2.GSR = "DISABLED";
    FD1S3DX ext_addr_i3 (.D(ext_addr_nxt[2]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(\ext_addr[2] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i3.GSR = "DISABLED";
    FD1S3DX ext_addr_i4 (.D(ext_addr_nxt[3]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(\ext_addr[3] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i4.GSR = "DISABLED";
    FD1S3DX ext_addr_i5 (.D(ext_addr_nxt[4]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(\ext_addr[4] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i5.GSR = "DISABLED";
    FD1S3DX ext_addr_i6 (.D(ext_addr_nxt_c[5]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(\ext_addr[5] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i6.GSR = "DISABLED";
    FD1S3DX ext_addr_i7 (.D(ext_addr_nxt_c[6]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(\ext_addr[6] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i7.GSR = "DISABLED";
    FD1S3DX ext_addr_i8 (.D(ext_addr_nxt_c[7]), .CK(clk_in), .CD(core_rst_n_N_593), 
            .Q(\ext_addr[7] )) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=16, LSE_RCOL=8, LSE_LLINE=300, LSE_RLINE=323 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam ext_addr_i8.GSR = "DISABLED";
    LUT4 i5298_3_lut_4_lut (.A(n6462), .B(\ext_addr[0] ), .C(\ier[1] ), 
         .D(\RBR[1] ), .Z(n6039)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam i5298_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_4_lut_4_lut (.A(n6462), .B(\ext_addr[0] ), .C(n40), .D(\ext_addr[2] ), 
         .Z(n7)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam i1_4_lut_4_lut.init = 16'hf7ff;
    LUT4 i2880_4_lut (.A(rx_rdy), .B(n6461), .C(n7), .D(n1160[0]), .Z(\dat_o_7__N_1029[0] )) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i2880_4_lut.init = 16'hfaca;
    LUT4 i1_2_lut (.A(\ext_addr[1] ), .B(\ext_addr[3] ), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i3116_2_lut (.A(\dout_rb[5] ), .B(ext_addr_nxt_7__N_895), .Z(ext_addr_nxt_c[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(106[4:27])
    defparam i3116_2_lut.init = 16'h2222;
    LUT4 i3117_2_lut (.A(\dout_rb[6] ), .B(ext_addr_nxt_7__N_895), .Z(ext_addr_nxt_c[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(106[4:27])
    defparam i3117_2_lut.init = 16'h2222;
    LUT4 i3118_2_lut (.A(\dout_rb[7] ), .B(ext_addr_nxt_7__N_895), .Z(ext_addr_nxt_c[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(106[4:27])
    defparam i3118_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_93 (.A(n6443), .B(n6462), .C(\ext_addr[0] ), 
         .D(\ext_addr[3] ), .Z(clk_in_enable_64)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam i1_2_lut_4_lut_adj_93.init = 16'h0800;
    LUT4 i1_2_lut_rep_115_4_lut (.A(n6531), .B(LM8interrupts_0__N_34), .C(\ext_addr[2] ), 
         .D(\ext_addr[1] ), .Z(n6443)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam i1_2_lut_rep_115_4_lut.init = 16'h0008;
    LUT4 i2257_4_lut (.A(\ext_addr[0] ), .B(tx_break), .C(\ext_addr[1] ), 
         .D(\RBR[6] ), .Z(n2961)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_top.v(134[29:37])
    defparam i2257_4_lut.init = 16'h8580;
    LUT4 i1_2_lut_4_lut_adj_94 (.A(\ext_addr[3] ), .B(n6460), .C(n6450), 
         .D(\ext_addr[1] ), .Z(clk_in_enable_51)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam i1_2_lut_4_lut_adj_94.init = 16'h0040;
    LUT4 i2_3_lut_4_lut (.A(\ext_addr[1] ), .B(n6450), .C(\ext_addr[3] ), 
         .D(n6460), .Z(clk_in_enable_72)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_adj_95 (.A(\ext_addr[3] ), .B(n6460), .C(n6450), 
         .D(\ext_addr[1] ), .Z(clk_in_enable_57)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(122[8] 129[11])
    defparam i1_2_lut_4_lut_adj_95.init = 16'h4000;
    LUT4 i1_2_lut_rep_205 (.A(\ext_addr[3] ), .B(\ext_addr[2] ), .Z(n6533)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_205.init = 16'heeee;
    PFUMX i2228 (.BLUT(n2930), .ALUT(n2931), .C0(n5992), .Z(n1160[0]));
    LUT4 i1_2_lut_3_lut (.A(\ext_addr[3] ), .B(\ext_addr[2] ), .C(\ext_addr[0] ), 
         .Z(n53)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 addr_cyc_I_0_2_lut_rep_208 (.A(addr_cyc), .B(ext_addr_cyc), .Z(n6536)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(93[23:49])
    defparam addr_cyc_I_0_2_lut_rep_208.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(addr_cyc), .B(ext_addr_cyc), .C(prom_ready), 
         .D(\genblk1.instr_mem_out[0] ), .Z(n5843)) /* synthesis lut_function=(!(A (C (D))+!A ((C (D))+!B))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_io_cntl.v(93[23:49])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0eee;
    
endmodule
//
// Verilog Description of module \lm8_alu(FAMILY_NAME="MachXO3LF") 
//

module \lm8_alu(FAMILY_NAME="MachXO3LF")  (n6035, dout_alu, data_rb_int, 
            n1348, dout_rb, \genblk1.instr_mem_out[1] , prom_ready, 
            \genblk1.instr_mem_out[0] , n1345, n6491, n2359, dout_rd, 
            n3693, n6390, carry_flag, n6489, n6508, n3, n6525, 
            n6493, n6535, \genblk1.instr_mem_out[15] , n6519, cout_alu, 
            n6517, n6516, n6534, n6537, \genblk1.instr_mem_out[14] , 
            n6532, n6503) /* synthesis syn_module_defined=1 */ ;
    input n6035;
    output [7:0]dout_alu;
    input [7:0]data_rb_int;
    output n1348;
    input [7:0]dout_rb;
    input \genblk1.instr_mem_out[1] ;
    input prom_ready;
    input \genblk1.instr_mem_out[0] ;
    input n1345;
    input n6491;
    output n2359;
    input [7:0]dout_rd;
    input n3693;
    input n6390;
    input carry_flag;
    input n6489;
    input n6508;
    input n3;
    output n6525;
    input n6493;
    input n6535;
    input \genblk1.instr_mem_out[15] ;
    input n6519;
    output cout_alu;
    input n6517;
    input n6516;
    input n6534;
    input n6537;
    input \genblk1.instr_mem_out[14] ;
    output n6532;
    output n6503;
    
    wire [7:0]dout_l_7__N_713;
    
    wire n6273, n6271, n6272, n6568, n6567, n6243, n6244, n6488;
    wire [8:0]dout_r_7__N_722;
    wire [8:0]dout_alu_7__N_701;
    
    wire n6245, n6226;
    wire [7:0]data_add;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(72[18:26])
    
    wire carry_add_int, adsu_ci, add_sel_N_766, n6486, n6197, n6920, 
        n6921, n6922, n6919, n6198, n6199, n6930, n6224, n6225, 
        n6210, n6211, n6191;
    wire [7:0]dout_r;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(68[18:24])
    wire [7:0]dout_l;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(66[18:24])
    
    wire n6189, n6190, n6209, n6931;
    
    PFUMX i5422 (.BLUT(dout_l_7__N_713[4]), .ALUT(n6273), .C0(n6035), 
          .Z(dout_alu[4]));
    PFUMX i5420 (.BLUT(n6271), .ALUT(data_rb_int[4]), .C0(n1348), .Z(n6272));
    LUT4 dout_r_7__I_40_i9_4_lut_then_4_lut (.A(dout_rb[7]), .B(\genblk1.instr_mem_out[1] ), 
         .C(prom_ready), .D(\genblk1.instr_mem_out[0] ), .Z(n6568)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(((D)+!C)+!B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(124[33] 126[71])
    defparam dout_r_7__I_40_i9_4_lut_then_4_lut.init = 16'h8aea;
    LUT4 dout_r_7__I_40_i9_4_lut_else_4_lut (.A(dout_rb[7]), .B(\genblk1.instr_mem_out[1] ), 
         .C(prom_ready), .D(\genblk1.instr_mem_out[0] ), .Z(n6567)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(124[33] 126[71])
    defparam dout_r_7__I_40_i9_4_lut_else_4_lut.init = 16'h8a2a;
    PFUMX i5412 (.BLUT(n6243), .ALUT(data_rb_int[1]), .C0(n1348), .Z(n6244));
    LUT4 i2_4_lut_4_lut (.A(n6488), .B(n1348), .C(n1345), .D(dout_r_7__N_722[8]), 
         .Z(dout_alu_7__N_701[8])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_4_lut_4_lut.init = 16'h2000;
    LUT4 i1653_2_lut_4_lut_4_lut (.A(n6491), .B(n1345), .C(n1348), .D(n6488), 
         .Z(n2359)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i1653_2_lut_4_lut_4_lut.init = 16'h5054;
    PFUMX i5414 (.BLUT(dout_l_7__N_713[1]), .ALUT(n6245), .C0(n6035), 
          .Z(dout_alu[1]));
    PFUMX i5405 (.BLUT(dout_l_7__N_713[2]), .ALUT(n6226), .C0(n6035), 
          .Z(dout_alu[2]));
    pmi_addsubMo884b8e0f5 pmi_addsubMachXO3LFoff88 (.DataA({dout_rd}), .DataB({data_rb_int}), 
            .Result({data_add}), .Cin(adsu_ci), .Add_Sub(add_sel_N_766), 
            .Cout(carry_add_int)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=15, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=225, LSE_RLINE=239 */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_core.v(225[11] 239[3])
    defparam pmi_addsubMachXO3LFoff88.module_type = "pmi_addsub";
    defparam pmi_addsubMachXO3LFoff88.pmi_family = "MachXO3LF";
    defparam pmi_addsubMachXO3LFoff88.pmi_sign = "off";
    defparam pmi_addsubMachXO3LFoff88.pmi_result_width = 8;
    defparam pmi_addsubMachXO3LFoff88.pmi_data_width = 8;
    LUT4 adsu_ci_int_I_0_4_lut (.A(n3693), .B(n6486), .C(n6390), .D(carry_flag), 
         .Z(adsu_ci)) /* synthesis lut_function=(A (B)+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(92[28:66])
    defparam adsu_ci_int_I_0_4_lut.init = 16'h9ccc;
    LUT4 n1732_bdd_4_lut_5392 (.A(n6489), .B(n1345), .C(dout_rb[2]), .D(dout_rb[4]), 
         .Z(n6197)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n1732_bdd_4_lut_5392.init = 16'hf7b3;
    LUT4 n6920_bdd_3_lut (.A(n6920), .B(data_add[7]), .C(n6491), .Z(n6921)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6920_bdd_3_lut.init = 16'hcaca;
    LUT4 dout_r_7__N_722_7__bdd_4_lut (.A(n6508), .B(data_rb_int[7]), .C(n3), 
         .D(dout_rd[7]), .Z(n6922)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam dout_r_7__N_722_7__bdd_4_lut.init = 16'h7cc0;
    LUT4 dout_r_7__N_722_7__bdd_4_lut_5652 (.A(dout_r_7__N_722[7]), .B(n1345), 
         .C(n6525), .D(dout_rb[0]), .Z(n6919)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B (C+!(D)))) */ ;
    defparam dout_r_7__N_722_7__bdd_4_lut_5652.init = 16'hbfb3;
    LUT4 n6198_bdd_3_lut (.A(n6198), .B(data_add[3]), .C(n6491), .Z(n6199)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6198_bdd_3_lut.init = 16'hcaca;
    LUT4 i1063_3_lut_4_lut_else_4_lut (.A(\genblk1.instr_mem_out[0] ), .B(dout_rb[1]), 
         .C(prom_ready), .D(dout_rb[7]), .Z(n6930)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(123[32] 126[72])
    defparam i1063_3_lut_4_lut_else_4_lut.init = 16'hec4c;
    PFUMX dout_alu_7__I_0_i1 (.BLUT(dout_l_7__N_713[0]), .ALUT(dout_alu_7__N_701[0]), 
          .C0(n6035), .Z(dout_alu[0])) /* synthesis LSE_LINE_FILE_ID=15, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=225, LSE_RLINE=239 */ ;
    PFUMX i5384 (.BLUT(n6197), .ALUT(data_rb_int[3]), .C0(n1348), .Z(n6198));
    PFUMX i5403 (.BLUT(n6224), .ALUT(data_rb_int[2]), .C0(n1348), .Z(n6225));
    LUT4 n6210_bdd_3_lut (.A(n6210), .B(data_add[5]), .C(n6491), .Z(n6211)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6210_bdd_3_lut.init = 16'hcaca;
    PFUMX i5379 (.BLUT(dout_l_7__N_713[6]), .ALUT(n6191), .C0(n6035), 
          .Z(dout_alu[6]));
    LUT4 i1_4_lut_rep_158 (.A(n6493), .B(prom_ready), .C(n6535), .D(\genblk1.instr_mem_out[15] ), 
         .Z(n6486)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i1_4_lut_rep_158.init = 16'hbbbf;
    LUT4 add_sel_I_0_1_lut_4_lut (.A(n6493), .B(prom_ready), .C(n6535), 
         .D(\genblk1.instr_mem_out[15] ), .Z(add_sel_N_766)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam add_sel_I_0_1_lut_4_lut.init = 16'h4440;
    LUT4 dout_l_7__I_39_i6_4_lut_4_lut (.A(data_rb_int[5]), .B(n6508), .C(dout_rd[5]), 
         .D(n3), .Z(dout_l_7__N_713[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_39_i6_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_l_7__I_0_i1_4_lut (.A(data_rb_int[0]), .B(dout_r[0]), .C(n1348), 
         .D(n1345), .Z(dout_l[0])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C)+!B (C+(D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(115[27] 118[52])
    defparam dout_l_7__I_0_i1_4_lut.init = 16'hacaf;
    LUT4 dout_l_7__I_39_i3_4_lut_4_lut (.A(data_rb_int[2]), .B(n6508), .C(dout_rd[2]), 
         .D(n3), .Z(dout_l_7__N_713[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_39_i3_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_l_7__I_39_i4_4_lut_4_lut (.A(data_rb_int[3]), .B(n6508), .C(dout_rd[3]), 
         .D(n3), .Z(dout_l_7__N_713[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_39_i4_4_lut_4_lut.init = 16'h7aa0;
    LUT4 n1732_bdd_4_lut_5383 (.A(n6489), .B(n1345), .C(dout_rb[5]), .D(dout_rb[7]), 
         .Z(n6189)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n1732_bdd_4_lut_5383.init = 16'hf7b3;
    LUT4 n6190_bdd_3_lut (.A(n6190), .B(data_add[6]), .C(n6491), .Z(n6191)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6190_bdd_3_lut.init = 16'hcaca;
    LUT4 dout_l_7__I_39_i5_4_lut_4_lut (.A(data_rb_int[4]), .B(n6508), .C(dout_rd[4]), 
         .D(n3), .Z(dout_l_7__N_713[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_39_i5_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_l_7__I_39_i1_4_lut_4_lut (.A(data_rb_int[0]), .B(n6508), .C(dout_rd[0]), 
         .D(n3), .Z(dout_l_7__N_713[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_39_i1_4_lut_4_lut.init = 16'h7aa0;
    LUT4 n1732_bdd_4_lut_5402 (.A(n6489), .B(n1345), .C(dout_rb[4]), .D(dout_rb[6]), 
         .Z(n6209)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n1732_bdd_4_lut_5402.init = 16'hf7b3;
    LUT4 dout_alu_7__I_41_i1_3_lut (.A(dout_l[0]), .B(data_add[0]), .C(n6491), 
         .Z(dout_alu_7__N_701[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(132[35] 134[103])
    defparam dout_alu_7__I_41_i1_3_lut.init = 16'hcaca;
    LUT4 dout_l_7__I_39_i2_4_lut_4_lut (.A(data_rb_int[1]), .B(n6508), .C(dout_rd[1]), 
         .D(n3), .Z(dout_l_7__N_713[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_39_i2_4_lut_4_lut.init = 16'h7aa0;
    LUT4 dout_l_7__I_39_i7_4_lut_4_lut (.A(data_rb_int[6]), .B(n6508), .C(dout_rd[6]), 
         .D(n3), .Z(dout_l_7__N_713[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C (D)))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(117[28] 118[51])
    defparam dout_l_7__I_39_i7_4_lut_4_lut.init = 16'h7aa0;
    LUT4 n6272_bdd_3_lut (.A(n6272), .B(data_add[4]), .C(n6491), .Z(n6273)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6272_bdd_3_lut.init = 16'hcaca;
    LUT4 dout_r_7__I_40_i8_3_lut_4_lut (.A(n6489), .B(n6519), .C(dout_rb[6]), 
         .D(carry_flag), .Z(dout_r_7__N_722[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(124[33:54])
    defparam dout_r_7__I_40_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 carry_add_int_bdd_4_lut (.A(carry_add_int), .B(n6486), .C(dout_alu_7__N_701[8]), 
         .D(n6491), .Z(cout_alu)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam carry_add_int_bdd_4_lut.init = 16'h66f0;
    LUT4 i1063_3_lut_4_lut_then_4_lut (.A(\genblk1.instr_mem_out[0] ), .B(carry_flag), 
         .C(dout_rb[1]), .D(prom_ready), .Z(n6931)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (C)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(123[32] 126[72])
    defparam i1063_3_lut_4_lut_then_4_lut.init = 16'hd8f0;
    PFUMX i5393 (.BLUT(n6209), .ALUT(data_rb_int[5]), .C0(n1348), .Z(n6210));
    PFUMX i5377 (.BLUT(n6189), .ALUT(data_rb_int[6]), .C0(n1348), .Z(n6190));
    LUT4 n1732_bdd_4_lut_5411 (.A(n6489), .B(n1345), .C(dout_rb[1]), .D(dout_rb[3]), 
         .Z(n6224)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n1732_bdd_4_lut_5411.init = 16'hf7b3;
    PFUMX i5395 (.BLUT(dout_l_7__N_713[5]), .ALUT(n6211), .C0(n6035), 
          .Z(dout_alu[5]));
    LUT4 n6225_bdd_3_lut (.A(n6225), .B(data_add[2]), .C(n6491), .Z(n6226)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6225_bdd_3_lut.init = 16'hcaca;
    LUT4 i13_4_lut (.A(n6517), .B(n6516), .C(n6534), .D(n6537), .Z(n1348)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;
    defparam i13_4_lut.init = 16'h2622;
    PFUMX i5386 (.BLUT(dout_l_7__N_713[3]), .ALUT(n6199), .C0(n6035), 
          .Z(dout_alu[3]));
    LUT4 n6244_bdd_3_lut (.A(n6244), .B(data_add[1]), .C(n6491), .Z(n6245)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6244_bdd_3_lut.init = 16'hcaca;
    LUT4 n1732_bdd_4_lut_5419 (.A(n6489), .B(n1345), .C(dout_rb[0]), .D(dout_rb[2]), 
         .Z(n6243)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n1732_bdd_4_lut_5419.init = 16'hf7b3;
    LUT4 i3145_3_lut_rep_197 (.A(\genblk1.instr_mem_out[0] ), .B(prom_ready), 
         .C(\genblk1.instr_mem_out[1] ), .Z(n6525)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(123[33:54])
    defparam i3145_3_lut_rep_197.init = 16'hc8c8;
    LUT4 i2966_2_lut_rep_160_3_lut_4_lut_4_lut_2_lut (.A(prom_ready), .B(\genblk1.instr_mem_out[1] ), 
         .Z(n6488)) /* synthesis lut_function=(A (B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(123[33:54])
    defparam i2966_2_lut_rep_160_3_lut_4_lut_4_lut_2_lut.init = 16'h8888;
    PFUMX i5653 (.BLUT(n6922), .ALUT(n6921), .C0(n6035), .Z(dout_alu[7]));
    LUT4 i916_2_lut_rep_204 (.A(\genblk1.instr_mem_out[14] ), .B(\genblk1.instr_mem_out[15] ), 
         .Z(n6532)) /* synthesis lut_function=(A+(B)) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(115[28:51])
    defparam i916_2_lut_rep_204.init = 16'heeee;
    PFUMX i5650 (.BLUT(n6919), .ALUT(data_rb_int[7]), .C0(n1348), .Z(n6920));
    LUT4 i3156_2_lut_rep_175_3_lut (.A(\genblk1.instr_mem_out[14] ), .B(\genblk1.instr_mem_out[15] ), 
         .C(prom_ready), .Z(n6503)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // C:/Users/Suhail/Desktop/Work/Lattice/Im8_tutor/platform1/soc/../components/lm8/rtl/verilog/lm8_alu.v(115[28:51])
    defparam i3156_2_lut_rep_175_3_lut.init = 16'he0e0;
    LUT4 n1732_bdd_4_lut (.A(n6489), .B(n1345), .C(dout_rb[3]), .D(dout_rb[5]), 
         .Z(n6271)) /* synthesis lut_function=(A ((C)+!B)+!A ((D)+!B)) */ ;
    defparam n1732_bdd_4_lut.init = 16'hf7b3;
    PFUMX i5655 (.BLUT(n6930), .ALUT(n6931), .C0(\genblk1.instr_mem_out[1] ), 
          .Z(dout_r[0]));
    PFUMX i5493 (.BLUT(n6567), .ALUT(n6568), .C0(dout_rb[0]), .Z(dout_r_7__N_722[8]));
    
endmodule
//
// Verilog Description of module \gpio(GPIO_WB_DAT_WIDTH=8,DATA_WIDTH=32'b0100,INPUT_WIDTH=32'b01,OUTPUT_WIDTH=32'b01,EDGE=1,POSE_EDGE_IRQ=1,INPUT_PORTS_ONLY=0,OUTPUT_PORTS_ONLY=1) 
//

module \gpio(GPIO_WB_DAT_WIDTH=8,DATA_WIDTH=32'b0100,INPUT_WIDTH=32'b01,OUTPUT_WIDTH=32'b01,EDGE=1,POSE_EDGE_IRQ=1,INPUT_PORTS_ONLY=0,OUTPUT_PORTS_ONLY=1)  (LEDGPIO_ACK_O, 
            clk_in, PIO_OUT_3__N_935, LEDPIO_OUT_c_2, PIO_OUT_3__N_933, 
            \SHAREDBUS_DAT_I[2] , LEDPIO_OUT_c_3, \SHAREDBUS_DAT_I[3] , 
            LEDPIO_OUT_c_0, \SHAREDBUS_DAT_I[0] , LEDPIO_OUT_c_1, \SHAREDBUS_DAT_I[1] ) /* synthesis syn_module_defined=1 */ ;
    output LEDGPIO_ACK_O;
    input clk_in;
    input PIO_OUT_3__N_935;
    output LEDPIO_OUT_c_2;
    input PIO_OUT_3__N_933;
    input \SHAREDBUS_DAT_I[2] ;
    output LEDPIO_OUT_c_3;
    input \SHAREDBUS_DAT_I[3] ;
    output LEDPIO_OUT_c_0;
    input \SHAREDBUS_DAT_I[0] ;
    output LEDPIO_OUT_c_1;
    input \SHAREDBUS_DAT_I[1] ;
    
    wire clk_in /* synthesis SET_AS_NETWORK=clk_in, is_clock=1 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/platform1_top.v(10[6:12])
    
    FD1S3AX GPIO_ACK_O_177 (.D(PIO_OUT_3__N_935), .CK(clk_in), .Q(LEDGPIO_ACK_O)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=2, LSE_RCOL=34, LSE_LLINE=560, LSE_RLINE=576 */ ;   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/gpio/rtl/verilog/gpio.v(188[11] 191[33])
    defparam GPIO_ACK_O_177.GSR = "ENABLED";
    FD1P3AX PIO_DATA_2__180 (.D(\SHAREDBUS_DAT_I[2] ), .SP(PIO_OUT_3__N_933), 
            .CK(clk_in), .Q(LEDPIO_OUT_c_2));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/gpio/rtl/verilog/gpio.v(213[11] 214[62])
    defparam PIO_DATA_2__180.GSR = "ENABLED";
    FD1P3AX PIO_DATA_3__181 (.D(\SHAREDBUS_DAT_I[3] ), .SP(PIO_OUT_3__N_933), 
            .CK(clk_in), .Q(LEDPIO_OUT_c_3));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/gpio/rtl/verilog/gpio.v(213[11] 214[62])
    defparam PIO_DATA_3__181.GSR = "ENABLED";
    FD1P3AX PIO_DATA_0__178 (.D(\SHAREDBUS_DAT_I[0] ), .SP(PIO_OUT_3__N_933), 
            .CK(clk_in), .Q(LEDPIO_OUT_c_0));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/gpio/rtl/verilog/gpio.v(213[11] 214[62])
    defparam PIO_DATA_0__178.GSR = "ENABLED";
    FD1P3AX PIO_DATA_1__179 (.D(\SHAREDBUS_DAT_I[1] ), .SP(PIO_OUT_3__N_933), 
            .CK(clk_in), .Q(LEDPIO_OUT_c_1));   // c:/users/suhail/desktop/work/lattice/im8_tutor/platform1/soc/../soc/../components/gpio/rtl/verilog/gpio.v(213[11] 214[62])
    defparam PIO_DATA_1__179.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 7.5 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00f -type bram -wp 10 -rp 1000 -data_width 8 -num_rows 2048 -gsr DISABLED -write_mode_0 0 -memfile scratchpad_init.mem -memformat hex -cascade -1 -n pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a -pmi -lang verilog  */
/* Mon Jun 11 14:47:11 2018 */


`timescale 1 ns / 1 ps
module pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a (Clock, ClockEn, 
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

    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_04 = "0x0000000000000000000000000000000000000000000000000000000084150085C010DC014D40A81E" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_03 = "0x13A25080EF12635060AD0685C00AC70FE401E804010751E4840020306A20014DD1A0430A80518E7F" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_02 = "0x08045180DD014D51CAD01D21D01E401C4540A40F0800006652000AD1BA0406A401F03501AD01C0AD" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_01 = "0x0685C00AC70FE401A02015A430A80F106500841501A01014DE1F2330A605082E91A45401A00014DD" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.INITVAL_00 = "0x1A05E0BA0E122D01BA0002001028000001F0001C030030060000E080060700A030020C0080200000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.DATA_WIDTH_B = 4 ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1.DATA_WIDTH_A = 4 ;
    DP8KC pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1 (.DIA8(scuba_vlo), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a__PMIS__2048__8__8H" */
             /* synthesis MEM_INIT_FILE="scratchpad_init.mem" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000EE670084400644000060CE66" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_03 = "0x0CC760A4660CE760A0000E84404C660CC720CE2304C670CE67046270EC75000020445508A2408844" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_02 = "0x0A44408422000070CC420CC6404C720CE770CE260E4320EE670A000044250A852088440442006000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_01 = "0x0E84404C660CC5204430000770CA260CC420EE6504423000060CC770CA260EC660CE650442300002" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.INITVAL_00 = "0x0445408824088420440100200000000000F000000000F0100D0120B010090100800E050080300000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.DATA_WIDTH_B = 4 ;
    defparam pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0.DATA_WIDTH_A = 4 ;
    DP8KC pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0 (.DIA8(scuba_vlo), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a__PMIS__2048__8__8H" */
             /* synthesis MEM_INIT_FILE="scratchpad_init.mem" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1 MEM_LPC_FILE pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a__PMIS__2048__8__8H
    // exemplar attribute pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_0_1 MEM_INIT_FILE scratchpad_init.mem
    // exemplar attribute pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0 MEM_LPC_FILE pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a__PMIS__2048__8__8H
    // exemplar attribute pmi_ram_dqMnhscratchpad_initsadn8112048fc1a05a_0_1_0 MEM_INIT_FILE scratchpad_init.mem
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 7.5 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00f -type bram -wp 10 -rp 1000 -data_width 18 -num_rows 2048 -gsr DISABLED -write_mode_0 0 -memfile prom_init.mem -memformat hex -cascade -1 -n pmi_ram_dqMnhprom_initsadn18112048f62b550 -pmi -lang verilog  */
/* Mon Jun 11 14:47:12 2018 */


`timescale 1 ns / 1 ps
module pmi_ram_dqMnhprom_initsadn18112048f62b550 (Clock, ClockEn, Reset, 
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

    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000100" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_14 = "0x00267200012CF0000267200010CF0000367200010CF0000367200010CF0000367200010CF0000367" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_13 = "0x200010CF0000367200010CF00003670010000266200012CD0000266200010CD0000366200010CD00" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_12 = "0x00366200010CD0000366200010CD0000366200010CD0000366200010CD00003660010000E5629040" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_11 = "0x045283F42020000000332710000B28041072110000207211000041008348081FF1F2002000A0E348" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_10 = "0x0803627023251FC003000A758200052502020F082000100F0820002230100BB48081FF1EC00001EE" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_0F = "0x200013EF00002000000000F0000600206E80210000600001F7200010000000007200030000004528" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_0E = "0x001000160600E24215100010A0512001E1002D0A2200021228240180320821510200002102824017" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_0D = "0x23100014032000B0082A010372710000F180200A0103727100011180203A0110100F082000D23010" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_0C = "0x20F082000100F0820002210003686E05D0000A20200002000F1F7480810000300001D50026120064" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_0B = "0x0029C23F20001011118010F882B05001B4A330902B050026C82B050016180600806406062A7350A3" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_0A = "0x350A02B050239580A01C20020201480802E200002134808100003FF1E2002001825F4808100009BC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_09 = "0x395D03EE0721100003580A1572B1C8175C01F60721100003580A1572B1D4155B01FA072110000358" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_08 = "0x0A1572B1E0335A000F08200012B0502AF58049EC0681B066063E2310080202C082643D0608731103" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_07 = "0x310802E0903FD0000500007480812623F200010103F202E090234002631F240002021F2417012118" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_06 = "0x0013C23F200010103F202E09022C0028F1F240002021F24170121140015D01918020080018429040" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_05 = "0x200043FEE82BF00009E32904023F200010103F202A058218002DF1F240002021F241500B10A0017A" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_04 = "0x23F200010103F202A0582100030B1F240002021F241500B1060019023F200010103F202A05820800" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_03 = "0x34C0C011003E548081FF1F8002000A0454808100003F43717010005060572B19D2B0502E08029040" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_02 = "0x3771F240002021F2417010112001C623F200010103F202E080220003A31F240002021F241701010E" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_01 = "0x001E7018080002D29040200013FEF60010001265290403EC000AF58200013FC572B1701011802008" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.INITVAL_00 = "0x00049290403FEF700000200EF37CAD3BC042FC052000020EFC3F3000030600B01006162010102C19" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3 (.DIA8(Data[8]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhprom_initsadn18112048f62b550__PMIS__2048__18__18H" */
             /* synthesis MEM_INIT_FILE="prom_init.mem" */;

    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000039076" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_14 = "0x0AD750EC562EA760AD770EC562F0760AD780EC562F2760AD790EC562F4760AD7A0EC562F6760AD7B" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_13 = "0x0EC562F8760AD7C0EC562FA760AD7D390760AD750EC562EA760AD770EC562F0760AD780EC562F276" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_12 = "0x0AD790EC562F4760AD7A0EC562F6760AD7B0EC562F8760AD7C0EC562FA760AD7D390740A9C010C86" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_11 = "0x2EE8630F3510A9010B7010C730A6831077210C700A17210C700A0873808610C740A9C80E85438086" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_10 = "0x10D7210D7210D87270982F0860EA5510A852E4860E0502E4860E050106833808610C740A9C8391DF" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_0F = "0x060103BE3102280100803011131111122913011031110391DF06010100801018022188221C82E086" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_0E = "0x120720A580321102E2860E25010280301902217110C710A08110180321102E286122710A08110170" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_0D = "0x10C710A3D80E2513B1882017010C730A683107802017010C730A68310788200902E0860E05010080" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_0C = "0x2E4860E0502E4860E050102813BFC01209038090121C80E8543806608C9612C901218F22FC012090" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_0B = "0x12FC72E2860E451104812E286100803B1C710281100803B1C7100803B18822180221802217010DC0" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_0A = "0x102811008038E8010098130991328A1149512A973806608C9612C740A9C80E8543806608C9612DDF" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_09 = "0x2E2861237D10C700A0801017C10DDF2E2861237C10C700A0801017B10DDF2E0861217B10C700A080" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_08 = "0x1017A10DDF2FA862F4860E050100802F2863B18F22180221D831F103119030100121802217010DC0" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_07 = "0x102811008013A750AA780B088111C72E2860E4512E286100801229238F7110C720A37110C8010091" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_06 = "0x125C72E2860E4512E286100801229238F7110C720A37110C8010091125C01228510A87113C00CC46" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_05 = "0x12C960E8543BE740A9C010C862E2860E4512E286100801229238F7110C720A37110C8010091125C7" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_04 = "0x2E2860E4512E286100801229238F7110C720A37110C8010091125C72E2860E4512E2861008012292" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_03 = "0x3809110A853808610C740A9C80E8543826608C9612DDF38080101802237110DC0102811008010A85" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_02 = "0x38F7110C720A37110C8010091125C72E2860E4512E286100801229238F7110C720A37110C8010091" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_01 = "0x125C012287111C10CC4612C960E854390740A9C110C8631F102E0860EA553817110C801008510A87" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.INITVAL_00 = "0x111C110C860E8543A1D811A9E13C9F13F603816012A95128943BE760A170301163111012096121D8" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2 (.DIA8(Data[17]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhprom_initsadn18112048f62b550__PMIS__2048__18__18H" */
             /* synthesis MEM_INIT_FILE="prom_init.mem" */;

    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1 (.DIA8(Data[8]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhprom_initsadn18112048f62b550__PMIS__2048__18__18H" */
             /* synthesis MEM_INIT_FILE="prom_init.mem" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.REGMODE_B = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.REGMODE_A = "NOREG" ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0 (.DIA8(Data[17]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dqMnhprom_initsadn18112048f62b550__PMIS__2048__18__18H" */
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
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3 MEM_LPC_FILE pmi_ram_dqMnhprom_initsadn18112048f62b550__PMIS__2048__18__18H
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f62b550_0_0_3 MEM_INIT_FILE prom_init.mem
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2 MEM_LPC_FILE pmi_ram_dqMnhprom_initsadn18112048f62b550__PMIS__2048__18__18H
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f62b550_0_1_2 MEM_INIT_FILE prom_init.mem
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1 MEM_LPC_FILE pmi_ram_dqMnhprom_initsadn18112048f62b550__PMIS__2048__18__18H
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f62b550_1_0_1 MEM_INIT_FILE prom_init.mem
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0 MEM_LPC_FILE pmi_ram_dqMnhprom_initsadn18112048f62b550__PMIS__2048__18__18H
    // exemplar attribute pmi_ram_dqMnhprom_initsadn18112048f62b550_1_1_0 MEM_INIT_FILE prom_init.mem
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 3.9 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00f -type sdpram -num_rows 32 -data_width 8 -memformat bin -n pmi_distributed_dpramMbnonen853294f10db -pmi -lang verilog  */
/* Mon Jun 11 14:47:13 2018 */


`timescale 1 ns / 1 ps
module pmi_distributed_dpramMbnonen853294f10db (WrAddress, Data, WrClock, 
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
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramMbnonen853294f10db__PMI__32__8__8B" */
             /* synthesis COMP="mem_0_0" */;

    defparam mem_0_1.initval = "0x0000000000000000" ;
    DPR16X4C mem_0_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), .DI3(Data[3]), 
        .WCK(WrClock), .WRE(dec0_wre3), .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), 
        .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), 
        .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), .DO0(mdL0_0_0), .DO1(mdL0_0_1), 
        .DO2(mdL0_0_2), .DO3(mdL0_0_3))
             /* synthesis MEM_INIT_FILE="(0-15)(4-7)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramMbnonen853294f10db__PMI__32__8__8B" */
             /* synthesis COMP="mem_0_1" */;

    defparam mem_1_0.initval = "0x0000000000000000" ;
    DPR16X4C mem_1_0 (.DI0(Data[4]), .DI1(Data[5]), .DI2(Data[6]), .DI3(Data[7]), 
        .WCK(WrClock), .WRE(dec1_wre7), .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), 
        .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), 
        .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), .DO0(mdL0_1_4), .DO1(mdL0_1_5), 
        .DO2(mdL0_1_6), .DO3(mdL0_1_7))
             /* synthesis MEM_INIT_FILE="(16-31)(0-3)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramMbnonen853294f10db__PMI__32__8__8B" */
             /* synthesis COMP="mem_1_0" */;

    defparam mem_1_1.initval = "0x0000000000000000" ;
    DPR16X4C mem_1_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), .DI3(Data[3]), 
        .WCK(WrClock), .WRE(dec1_wre7), .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), 
        .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), 
        .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), .DO0(mdL0_1_0), .DO1(mdL0_1_1), 
        .DO2(mdL0_1_2), .DO3(mdL0_1_3))
             /* synthesis MEM_INIT_FILE="(16-31)(4-7)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_dpramMbnonen853294f10db__PMI__32__8__8B" */
             /* synthesis COMP="mem_1_1" */;



    // exemplar begin
    // exemplar attribute mem_0_0 MEM_INIT_FILE (0-15)(0-3)
    // exemplar attribute mem_0_0 MEM_LPC_FILE pmi_distributed_dpramMbnonen853294f10db__PMI__32__8__8B
    // exemplar attribute mem_0_0 COMP mem_0_0
    // exemplar attribute mem_0_1 MEM_INIT_FILE (0-15)(4-7)
    // exemplar attribute mem_0_1 MEM_LPC_FILE pmi_distributed_dpramMbnonen853294f10db__PMI__32__8__8B
    // exemplar attribute mem_0_1 COMP mem_0_1
    // exemplar attribute mem_1_0 MEM_INIT_FILE (16-31)(0-3)
    // exemplar attribute mem_1_0 MEM_LPC_FILE pmi_distributed_dpramMbnonen853294f10db__PMI__32__8__8B
    // exemplar attribute mem_1_0 COMP mem_1_0
    // exemplar attribute mem_1_1 MEM_INIT_FILE (16-31)(4-7)
    // exemplar attribute mem_1_1 MEM_LPC_FILE pmi_distributed_dpramMbnonen853294f10db__PMI__32__8__8B
    // exemplar attribute mem_1_1 COMP mem_1_1
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 3.9 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00f -type sspram -num_rows 16 -data_width 13 -memformat bin -n pmi_distributed_spramMbnonen13416960fa53 -pmi -lang verilog  */
/* Mon Jun 11 14:47:14 2018 */


`timescale 1 ns / 1 ps
module pmi_distributed_spramMbnonen13416960fa53 (Address, Data, Clock, 
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
             /* synthesis MEM_LPC_FILE="pmi_distributed_spramMbnonen13416960fa53__PMI__16__13__13B" */
             /* synthesis COMP="mem_0_0" */;

    defparam mem_0_1.initval = "0x0000000000000000" ;
    SPR16X4C mem_0_1 (.DI0(Data[8]), .DI1(Data[9]), .DI2(Data[10]), .DI3(Data[11]), 
        .CK(Clock), .WRE(dec0_wre3), .AD0(Address[0]), .AD1(Address[1]), 
        .AD2(Address[2]), .AD3(Address[3]), .DO0(Q[8]), .DO1(Q[9]), .DO2(Q[10]), 
        .DO3(Q[11]))
             /* synthesis MEM_INIT_FILE="(0-15)(4-7)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_spramMbnonen13416960fa53__PMI__16__13__13B" */
             /* synthesis COMP="mem_0_1" */;

    defparam mem_0_2.initval = "0x0000000000000000" ;
    SPR16X4C mem_0_2 (.DI0(Data[4]), .DI1(Data[5]), .DI2(Data[6]), .DI3(Data[7]), 
        .CK(Clock), .WRE(dec0_wre3), .AD0(Address[0]), .AD1(Address[1]), 
        .AD2(Address[2]), .AD3(Address[3]), .DO0(Q[4]), .DO1(Q[5]), .DO2(Q[6]), 
        .DO3(Q[7]))
             /* synthesis MEM_INIT_FILE="(0-15)(8-11)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_spramMbnonen13416960fa53__PMI__16__13__13B" */
             /* synthesis COMP="mem_0_2" */;

    defparam mem_0_3.initval = "0x0000000000000000" ;
    SPR16X4C mem_0_3 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), .DI3(Data[3]), 
        .CK(Clock), .WRE(dec0_wre3), .AD0(Address[0]), .AD1(Address[1]), 
        .AD2(Address[2]), .AD3(Address[3]), .DO0(Q[0]), .DO1(Q[1]), .DO2(Q[2]), 
        .DO3(Q[3]))
             /* synthesis MEM_INIT_FILE="(0-15)(12-12)" */
             /* synthesis MEM_LPC_FILE="pmi_distributed_spramMbnonen13416960fa53__PMI__16__13__13B" */
             /* synthesis COMP="mem_0_3" */;



    // exemplar begin
    // exemplar attribute mem_0_0 MEM_INIT_FILE (0-15)(0-3)
    // exemplar attribute mem_0_0 MEM_LPC_FILE pmi_distributed_spramMbnonen13416960fa53__PMI__16__13__13B
    // exemplar attribute mem_0_0 COMP mem_0_0
    // exemplar attribute mem_0_1 MEM_INIT_FILE (0-15)(4-7)
    // exemplar attribute mem_0_1 MEM_LPC_FILE pmi_distributed_spramMbnonen13416960fa53__PMI__16__13__13B
    // exemplar attribute mem_0_1 COMP mem_0_1
    // exemplar attribute mem_0_2 MEM_INIT_FILE (0-15)(8-11)
    // exemplar attribute mem_0_2 MEM_LPC_FILE pmi_distributed_spramMbnonen13416960fa53__PMI__16__13__13B
    // exemplar attribute mem_0_2 COMP mem_0_2
    // exemplar attribute mem_0_3 MEM_INIT_FILE (0-15)(12-12)
    // exemplar attribute mem_0_3 MEM_LPC_FILE pmi_distributed_spramMbnonen13416960fa53__PMI__16__13__13B
    // exemplar attribute mem_0_3 COMP mem_0_3
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.10.0.111.2 */
/* Module Version: 3.5 */
/* C:/lscc/diamond/3.10_x64/ispfpga/bin/nt64/scuba -w -arch xo3c00f -n pmi_addsubMo884b8e0f5 -bb -bus_exp 7 -type addsub -width 8 -unsigned -port ci -port co -pmi -lang verilog  */
/* Mon Jun 11 14:47:13 2018 */


`timescale 1 ns / 1 ps
module pmi_addsubMo884b8e0f5 (DataA, DataB, Cin, Add_Sub, Result, Cout, 
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
