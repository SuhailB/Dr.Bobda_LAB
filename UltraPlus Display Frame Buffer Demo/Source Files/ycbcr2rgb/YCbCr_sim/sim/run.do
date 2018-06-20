quit -sim

vlib work
vmap work work

vlog -novopt -f filelist.f 
     
vsim -novopt  tb

do wave.do

run 10 ms

