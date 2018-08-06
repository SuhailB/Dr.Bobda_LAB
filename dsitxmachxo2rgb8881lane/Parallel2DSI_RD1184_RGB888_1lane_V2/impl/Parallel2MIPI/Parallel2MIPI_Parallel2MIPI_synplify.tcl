#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_2000ZE
set_option -package UWG49CTR
set_option -speed_grade -1

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency 200
set_option -maxfan 100
set_option -auto_constrain_io 1
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe false
set_option -force_gsr false
set_option -compiler_compatible 0
set_option -dup false
set_option -frequency 1
set_option -default_enum_encoding default

#simulation options


#timing analysis options
set_option -num_critical_paths 3
set_option -num_startend_points 0

#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 1


#-- add_file options
set_option -include_path {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/impl}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/compiler_directives.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/top.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/IPExpress/pll_pix2byte_RGB888_1lane.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DPHY_TX_INST.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/IO_Controller_TX.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/oDDRx4.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/colorbar_gen.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DCS_Encoder.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/DCS_ROM.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/BYTE_PACKETIZER.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/crc16_1lane_bb.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/parallel2byte_bb.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/packetheader_bb.v}
add_file -verilog {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/rtl/LP_HS_dly_ctrl.v}
add_file -verilog {C:/Users/Suhail/Documents/GitHub/iCE40UltraWearableReferenceDesigns/MIPI DSI TX Bridge/Parallel2DSI_RD1184_RGB888_1lane_V2_latest/rtl/pwr_sq_ctrl.v}

#-- top module name
set_option -top_module top

#-- set result format/file last
project -result_file {C:/Users/Suhail/Downloads/Documents (7)/dsitxmachxo2rgb8881lane/Parallel2DSI_RD1184_RGB888_1lane_V2/impl/Parallel2MIPI/Parallel2MIPI_Parallel2MIPI.edi}

#-- error message log file
project -log_file {Parallel2MIPI_Parallel2MIPI.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run
