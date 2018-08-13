

module reveal_coretop(
    clk,
    reset_n,
    trigger_din,
    trigger_en,
    
    trace_din
)/* synthesis syn_hier="hard" */;

///////// PARAMETERS for IO port///////////////
parameter NUM_CORES   = 1;
parameter TOTAL_TRIGGER_DIN= 1;
parameter TOTAL_TRACE_DIN= 6;

///////// IO port define //////////
input  [NUM_CORES-1:0] clk;
input  [NUM_CORES-1:0] reset_n;

input  [TOTAL_TRIGGER_DIN-1:0] trigger_din;
input  [TOTAL_TRACE_DIN -1:0] trace_din;

// other io ports defines, including the triggered out signals
input [0:0] trigger_en;



/// wires for interconnection ///
wire [NUM_CORES-1:0] trigger_out;
wire [NUM_CORES-1:0] jtck;
wire [NUM_CORES-1:0] jrstn;
wire [NUM_CORES-1:0] jce2;
wire [NUM_CORES-1:0] jtdi;
wire [NUM_CORES-1:0] er2_tdo;
wire [NUM_CORES-1:0] jshift;
wire [NUM_CORES-1:0] jupdate;
wire [NUM_CORES-1:0] ip_enable;
wire [5:0] trace_din_net;
wire [0:0] trigger_din_net;

assign trace_din_net[0] = trace_din[0];
assign trace_din_net[1] = trace_din[1];
assign trace_din_net[2] = trace_din[2];
assign trace_din_net[3] = trace_din[3];
assign trace_din_net[4] = trace_din[4];
assign trace_din_net[5] = trace_din[5];


assign trigger_din_net[0] = trigger_din[0];






////// core instances //////

platform1_top_la0 platform1_top_la0_inst_0(
   .clk    (clk[0]),
   .reset_n    (reset_n[0]),
   .jtck    (jtck[0]),
   .jrstn    (jrstn[0]),
   .jce2    (jce2[0]),
   .jtdi    (jtdi[0]),
   .er2_tdo    (er2_tdo[0]),
   .jshift    (jshift[0]),
   .jupdate    (jupdate[0]),
   .trigger_din_0    (trigger_din_net[0:0]),
   .trace_din    (trace_din_net[5:0]),
   .trigger_en    (trigger_en[0]),
   .ip_enable    (ip_enable[0])
)/*synthesis syn_noprune=1*/; 

jtagconn16 jtagconn16_inst_0(
   .jtck    (jtck[0]),
   .jtdi    (jtdi[0]),
   .jshift    (jshift[0]),
   .jupdate    (jupdate[0]),
   .jrstn    (jrstn[0]),
   .jce2    (jce2[0]),
   .ip_enable    (ip_enable[0]),
   .er2_tdo    (er2_tdo[0])
)/*synthesis JTAG_IP="REVEAL"*//*synthesis IP_ID="0"*//* synthesis HUB_ID="0"*//*synthesis syn_noprune=1*/; 

//exemplar attribute jtagconn16_inst_0 JTAG_IP "REVEAL"
//exemplar attribute jtagconn16_inst_0 IP_ID "0"
//exemplar attribute jtagconn16_inst_0 HUB_ID "0"


endmodule