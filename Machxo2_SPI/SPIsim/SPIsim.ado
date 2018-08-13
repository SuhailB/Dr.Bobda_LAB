setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Suhail/Desktop/Work/Machxo2_SPI/SPIsim/SPIsim.adf"]} { 
	design create SPIsim "C:/Users/Suhail/Desktop/Work/Machxo2_SPI"
  set newDesign 1
}
design open "C:/Users/Suhail/Desktop/Work/Machxo2_SPI/SPIsim"
cd "C:/Users/Suhail/Desktop/Work/Machxo2_SPI"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/platform1_top.v"
addfile "C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/platform1_tb.v"
vlib "C:/Users/Suhail/Desktop/Work/Machxo2_SPI/SPIsim/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/platform1_top.v"
vlog -dbg -work work "C:/Users/Suhail/Desktop/Work/Machxo2_SPI/platform1/soc/platform1_tb.v"
module platform1_tb
vsim  +access +r platform1_tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
