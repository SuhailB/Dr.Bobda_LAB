lappend auto_path "C:/lscc/diamond/3.10_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {Simulation}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/sim}
set ::bali::simulation::Para(FILELIST) {"C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/parallel2byte_24s_1s_3E.vo" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/packetheader_1s.vo" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/crc16_1lane.vo" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/colorbar_gen.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DCS_Encoder.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DCS_ROM.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/IO_Controller_TX.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/oDDRx4.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DPHY_TX_INST.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/LP_HS_dly_ctrl.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/BYTE_PACKETIZER.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/IPExpress/pll_pix2byte_RGB888_1lane.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/top.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/Parallel2DSI_tb_1lane.v" "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/compiler_directives.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"" "" "" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "" "work" }
set ::bali::simulation::Para(COMPLIST) {"none" "none" "none" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "none" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {Parallel2DSI_tb}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
