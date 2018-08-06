
________________________________________________________________________
______//----------------------------------------------------------------------------------//
//   Copyright (c) 2014 by Lattice Semiconductor Corporation						//
//   ALL RIGHTS RESERVED 															//
//----------------------------------------------------------------------------------//
//																					//
//   Permission:																	//
//																					//
//      Lattice SG Pte. Ltd. grants permission to use this code						//
//      pursuant to the terms of the Lattice Reference Design License Agreement. 
// ----------------------------------------------------------------------          
//                    Lattice SG Pte. Ltd.											//
//                  101 Thomson Road, United Square #07-02 							//
//                  Singapore 307591												//
//																					//
//																					//
//                  TEL: 1-800-Lattice (USA and Canada)								//
//                       +65-6631-2000 (Singapore)									//
//                       +1-503-268-8001 (other locations)							//
//																					//
//                  web: http://www.latticesemi.com/								//
//                  email: techsupport@latticesemi.com-----------
       ------------------------------------------------------------------------
	   
	 



________________________________________________________________________
	   PARALLEL TO MIPI DSI Sensor Bridge Design Readme
-------------------------------------------------------------------------
---------------------------------------------------------------------------
1.  ..\docs\readme.txt                                                        -->  read me file (this file)
    ..\docs\rd1184.pdf                                                        -->  Parallel to MIPI DSI TX Bridge reference document
    ..\docs\revision_history.xlsx                                             -->  Revision History

2.   ..ngo\crc16_*lane.ngo                                                    -->   NGO file for crc16_*lane 
     ..ngo\packetheader_*s.ngo                            				      -->   NGO file for packetheader
     ..ngo\parallel2byte_s_*s_*.ngo                         				  -->   NGO file for parallel2byte
   
  
 
3. ..rtl\oddrx4.v                                 			                  -->   source file for output DDR IO module
   ..\rtl\top.v                                                               -->  Verilog source file for top module  
   ..\rtl\byte_packetizer.v                                                   -->  Verilog source file for byte_packetizer module  
   ..\rtl\colorbar_gen.v                           		                      -->  Verilog source file for top module  
   ..\rtl\compiler_directives.v                     		                  -->  Verilog source file for compiler_directives module  
   ..\rtl\dphy_tx_inst.v                                  	                  -->  Verilog source file for dphy_tx_inst module  
   ..\rtl\io_controller_tx.v                      			                  -->  Verilog source file for io_controller_tx module  
   ..\rtl\lp_hs_dly_ctrl.v                        			                  -->  Verilog source file for lp_hs_dly_ctrl module  
   ..\rtl\top.v                                     		                  -->  Verilog source file for top module  
   ..\rtl\crc16_*lane_bb.v                          		                  -->  Verilog BlackBox file for NGO "crc16_*lane"
   ..\rtl\packetheader_bb.v                         		                  -->  Verilog BlackBox file for NGO "packetheader"
   ..\rtl\parallel2byte_bb.v                         		                  -->  Verilog BlackBox file for NGO "parallel2byte"
   ..\rtl\ipexpress\pll_pix2byte_*_*lane.ipx         					      -->  IPExpress PLL file for clock generation
   ..\rtl\ipexpress\pll_pix2byte_*_*lane.ipx          					      -->  IPExpress PLL file for clock generation

3. ..testbench\Parallel2CSI2_tb_*lane.v                                       -->  TestBench for parallel to MIPI dsi TX design
   ..\testbench\crc16_*lane.vo                                                -->  netlist file for simulation
   ..\testbench\packetheader_*s.vo                                            -->  netlist file for simulation
   ..\testbench\parallel2byte_*s_*s_*.vo                                      -->  netlist file for simulation

4.  ..imp\Parallel2MIPI.ldf                                                   -->  Diamond project file for  MIPI dsi tx design
    ..imp\Parallel2MIPI.lpf                                                   -->  constraint file for  MIPI dsi tx design
    ..imp\Parallel2MIPI.sty                                                   -->  strategy file for  MIPI dsi tx design

5  ..\simulation\simulation.spf                                               -->  script file for simulation

   
   
---------------------------------------------------------------------------------------------------------------
Complier Directives\Parameters used:
---------------------------------------------------------------------------------------------------------------
`define HS_1      >> Defines the number of HS (High Speed) Data Lanes;  HS_3 = 4 lanes, HS_2 = 3 lanes, HS_1 = 2 lanes, HS_0 = 1 lanes        

`define LP_CLK    >> Defines IO control for the LP (Low Power) Clock Lane                                                                   

`define LP_0      >> Defines IO control for the LP (Low Power) Data Lane 0                                    

`define LP_1      >> Defines IO control for the LP (Low Power) Data Lane 1                                    
`define LP_2      >> Defines IO control for the LP (Low Power) Data Lane 2                                                                    

`define LP_3      >> Defines IO control for the LP (Low Power) Data Lane 3 

`define sim       >> To simulate the design with Self checking test bench.
---------------------------------------------------------------------------------------------------------------
HOW TO OPEN A PROJECT IN DIAMOND:
---------------------------------------------------------------------------------------------------------------
1. Unzip the respective design files.
2. Launch Diamond and select "File -> Open -> Project..."
3. In the Open Project dialog, enter the Project location 
4. Click Finish. Now the project is successfully loaded. 

---------------------------------------------------------------------------------------------------------------
HOW TO RUN PLACE AND ROUTE, JEDEC GENERATION, AND TIMING ANALYSIS IN DIAMOND:
---------------------------------------------------------------------------------------------------------------

1. Click the Process tab in the process panel of the Diamond dashboard. 
   Double click on Place and Route Design. This will bring the
   design through synthesis, mapping, and place and route.
2. Click the Process tab in the process panel of the Diamond dashboard.
   a) MachXO2 ,MachXO3L LatticeECP3 and LatticeECP5 : Double click on "Export Files -> JEDEC File". This will generate
      the Jedec file for the design.
3. Once Place and Route is done, user can double click on Place and Route Trace
   Report on the right-side panel to get the timing analysis result.
4. Double click on "Export Files -> verilog Simulation File". This will generate
   the VO and SDF files for the timing simulation of the design.
 
-------------------------------------------------------------------------------------------------------
HOW TO RUN SIMULATION FROM DIAMOND:
-------------------------------------------------------------------------------------------------------
 Starting the simulation from the Simulation Wizard in Diamond:
  1. Bring up the Simulation Wizard under the Tools menu 
  2. Next provide a name for simulation project, and select RTL simulation
  3. Add the respective testbench file to the source file list.
  4. Click Finish.  This will bring up the Aldec simulator automatically.
  5. In Aldec environment, you can manually activate the simulation 
    	a. Click Simulation > Initialize Simulation
		   If prompted to select a top-level file, select the testbench as the top-level file and click Ok.
		b. Click File > New > Waveform, this will bring up the Waveform panel
		c. Click on the top-level testbench, drag all the signals into the Waveform panel
		d. Click Simulation > Run .
 

---------------------------------------------------------------------------------------------------