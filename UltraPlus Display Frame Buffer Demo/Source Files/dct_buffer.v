//=============================================================================
// Copyright(c) 2014 Lattice Semiconductor Corporation. All rights reserved. 
//=============================================================================
// File:           dct_buffer.v
// Module:         dct_buffer
// Author:         Luke Wang
// Email:          Luke.Wang@latticesemi.com
// Creation Date:  2014/06/01
// Content:        transpose RAM for data buffering of two 1xD 8-DCT operations
//                 
// History:
// 2014-06-01:     Luke Wang        first edition.
//     
//=============================================================================

module dct_buffer (
    clock,
    dct_ram_we,
    dct_ram_waddr,
    dct_ram_wdata,
    dct_ram_raddr,
    dct_ram_rdata
);

parameter   D_WIDTH = 13;

/* interface declaration */

input                                   clock;
input                                   dct_ram_we;    /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
input   [D_WIDTH-1:0]                   dct_ram_wdata; /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
input   [7:0]                           dct_ram_waddr; /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
input   [7:0]                           dct_ram_raddr; /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
output  [D_WIDTH-1:0]                   dct_ram_rdata; /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */


/* wire-type signals definition */

wire    [15:0]                          dct_ram_wdata_wire;  /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */
wire    [15:0]                          dct_ram_rdata_wire;  /* synthesis syn_keep=1 */   /* synthesis syn_preserve=1 */

/* reg-type signals definition */


assign dct_ram_wdata_wire = {{(16-D_WIDTH){dct_ram_wdata[D_WIDTH-1]}},dct_ram_wdata};
assign dct_ram_rdata = dct_ram_rdata_wire[D_WIDTH-1:0]; 

// --------------------------------------------------------------------------------------
RAM_PDP_256x16      dct_buffer_inst (
    .din             (dct_ram_wdata_wire),
    .write_en        (dct_ram_we        ), 
    .waddr           (dct_ram_waddr     ), 
    .wclk            (clock             ), 
    .raddr           (dct_ram_raddr     ), 
    .rclk            (clock             ), 
    .dout            (dct_ram_rdata_wire) 
);



// --------------------------------------------------------------------------------------
endmodule
