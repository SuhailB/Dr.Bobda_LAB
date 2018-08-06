setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/sim/Simulation/Simulation.adf"]} { 
	design create Simulation "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/sim"
  set newDesign 1
}
design open "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/sim/Simulation"
cd "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/sim"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/parallel2byte_24s_1s_3E.vo"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/packetheader_1s.vo"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/crc16_1lane.vo"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/colorbar_gen.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DCS_Encoder.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DCS_ROM.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/IO_Controller_TX.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/oDDRx4.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DPHY_TX_INST.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/LP_HS_dly_ctrl.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/BYTE_PACKETIZER.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/IPExpress/pll_pix2byte_RGB888_1lane.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/top.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/Parallel2DSI_tb_1lane.v"
addfile "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/compiler_directives.v"
vlib "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/sim/Simulation/work"
set worklib work
adel -all
vlog -dbg "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/parallel2byte_24s_1s_3E.vo"
vlog -dbg "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/packetheader_1s.vo"
vlog -dbg "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/crc16_1lane.vo"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/colorbar_gen.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DCS_Encoder.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DCS_ROM.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/IO_Controller_TX.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/oDDRx4.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DPHY_TX_INST.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/LP_HS_dly_ctrl.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/BYTE_PACKETIZER.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/IPExpress/pll_pix2byte_RGB888_1lane.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/top.v"
vlog -dbg "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/tb/Parallel2DSI_tb_1lane.v"
vlog -dbg -work work "C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/compiler_directives.v"
module Parallel2DSI_tb
vsim  +access +r Parallel2DSI_tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
