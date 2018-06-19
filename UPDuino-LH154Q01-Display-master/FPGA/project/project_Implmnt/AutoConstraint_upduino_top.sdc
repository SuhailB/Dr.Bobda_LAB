
#Begin clock constraint
define_clock -name {upduino_top|int_osc_inferred_clock} {n:upduino_top|int_osc_inferred_clock} -period 20.830 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 10.415 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {upduino_top|clk_o0_derived_clock} {n:upduino_top|clk_o0_derived_clock} -period 1000.000 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 500.000 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {upduino_top|clk_o1_derived_clock} {n:upduino_top|clk_o1_derived_clock} -period 1000.000 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 500.000 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {upduino_top|clk_gen_derived_clock[1]} {n:upduino_top|clk_gen_derived_clock[1]} -period 1000.000 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 500.000 -route 0.000 
#End clock constraint
