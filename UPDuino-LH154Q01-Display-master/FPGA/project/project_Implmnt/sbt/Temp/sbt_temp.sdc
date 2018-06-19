####---- CreateClock list ----4
create_clock  -period 37.00 -name {osc_clk} [get_ports {osc_clk}] 
create_clock  -period 18.50 -name {DCK_N} [get_ports {DCK_N}] 
create_clock  -period 18.50 -name {DCK_P} [get_ports {DCK_P}] 
create_clock  -period 166.67 -name {byte_clk_g} [get_nets {byte_clk_g}] 

####---- CreateGenClock list ----3
create_generated_clock  [get_pins {divclk[0]/Q}]  -source [get_pins {divclk[0]/C}]  -add -name {upduino_top|clk_o0_derived_clock} 
create_generated_clock  [get_pins {divclkneg[0]/Q}]  -source [get_pins {divclkneg[0]/C}]  -add -name {upduino_top|clk_o1_derived_clock} 
create_generated_clock  [get_pins {clk_gen[1]/Q}]  -source [get_pins {clk_gen[1]/C}]  -add -master_clock [get_clocks {upduino_top|clk_o0_derived_clock}] -name {upduino_top|clk_gen_derived_clock[1]} 

####---- SetMultCyclePath list ----2
set_multicycle_path -setup  -from [get_clocks {upduino_top|clk_o0_derived_clock}]  -to [get_clocks {upduino_top|clk_o0_derived_clock}] 2 
set_multicycle_path -setup  -from [get_clocks {upduino_top|clk_gen_derived_clock[1]}]  -to [get_clocks {upduino_top|clk_gen_derived_clock[1]}] 2 

