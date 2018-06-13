// ============================================================================
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
// ----------------------------------------------------------------------------
// Copyright (c) 2006-2011 by Lattice Semiconductor Corporation
// ALL RIGHTS RESERVED 
// ----------------------------------------------------------------------------
//
// IMPORTANT: THIS FILE IS AUTO-GENERATED BY THE LATTICEMICO SYSTEM.
//
// Permission:
//
//      Lattice Semiconductor grants permission to use this code
//      pursuant to the terms of the Lattice Semiconductor Corporation
//      Open Source License Agreement.  
//
// Disclaimer:
//
//      Lattice Semiconductor provides no warranty regarding the use or
//      functionality of this code. It is the user's responsibility to
//      verify the user�s design for consistency and functionality through
//      the use of formal verification methods.
//
// ----------------------------------------------------------------------------
//
//                  Lattice Semiconductor Corporation
//                  5555 NE Moore Court
//                  Hillsboro, OR 97214
//                  U.S.A
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                         503-286-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
// ----------------------------------------------------------------------------
//                         FILE DETAILS
//
// Name			: lm8_core.v
// Project		: LatticeMico8
// Dependencies	: n/a
// Description	: LatticeMico8 microcontroller core's top level module.
// Revisions	: 3.2 (Initial version)
// 				: 3.3 (n/a)
// ============================================================================

module lm8_core 
  #(
    parameter FAMILY_NAME  = "XO",
    parameter EXT_AW       = 24,
    parameter PROM_WB      = 0,
    parameter PROM_AW      = 12,
    parameter PROM_AD      = 4096,
    parameter REGISTERS_16 = 1,
	parameter REGISTER_EBR = 0,
    parameter PGM_STACK_AW = 4,
    parameter PGM_STACK_AD = 16,
    parameter INTERRUPTS   = 8
    )
   (
    input clk,
    input rst_n,
    input [7:0] ext_mem_din,
    input [7:0] ext_io_din,
    input ext_mem_ready,
    input [INTERRUPTS-1:0] interrupts,
    input prom_ready,
    input [17:0] instr,
    output reg [EXT_AW - 1:0] ext_addr,
    output reg ext_addr_cyc,
    output [7:0] ext_dout,
    output ext_mem_wr,
    output ext_mem_rd,
    output ext_io_wr,
    output ext_io_rd,
    output intr_ack,
    output prom_enable,
    output [PROM_AW-1:0] prom_addr,
    output [PROM_AW-1:0] pc
    );

   parameter                 REG13 = 5'b01101;
   parameter                 REG14 = 5'b01110;
   parameter                 REG15 = 5'b01111;
   
   wire                      imi_instr, sub, subc, add, addc, mov;
   wire                      andr, orr, xorr, cmp, test, ror1, rorc;
   wire                      rol1, rolc, clrc, setc, clrz, setz;
   wire                      clri, seti, bz, bnz, bc, bnc, b;
   wire                      callz, callnz, callc, callnc, call;
   wire                      ret, iret, export_, import_, exporti, importi;
   wire                      ssp, lsp, sspi, lspi;
   wire 		     wcsr, rcsr;
   wire [4:0] 		     addr_rb;
   wire [4:0]                addr_rd;
   wire [7:0]                imi_data;
   wire [PROM_AW - 1:0]      addr_jmp;
   wire                      update_c,update_z;
   wire [7:0]                dout_rd;
   wire [7:0]                dout_rb;
   wire [7:0] 		     dout_csr;
   wire                      carry_flag;
   wire [7:0]                dout_alu;
   wire                      cout_alu;
   wire                      addr_cyc;
   wire                      ext_addr_cyc_int;
   wire                      data_cyc;
   wire                      wren_rd;
   
   reg                       wren_alu_rd;
   reg                       wren_il_rd;
   reg [7:0]                 din_rd, din_rd1;
   wire [7:0]                din_rd_int;
   
   reg [7:0] 		     page_ptr1, page_ptr2, page_ptr3;
   wire [7:0] 		     local_ext_addr;

   wire 		     ie;
   wire [INTERRUPTS-1:0]     ip, im;
   wire 		     wren_csr;
   wire 		     irq;
   
   assign                    din_rd_int = din_rd;
   
//    reg                       rst_n_reg;
//    always @(posedge clk or negedge rst_n)
//      begin
//         if (~rst_n)
//           rst_n_reg <= #1 1'b0;
//         else
//           rst_n_reg <= #1 rst_n;
//      end
   
   generate
      
      if (EXT_AW <= 8)
	always @(local_ext_addr)
          ext_addr = local_ext_addr;
      
      else if (EXT_AW <= 16)
	always @(local_ext_addr or page_ptr1 or import_ or export_ or lsp or ssp)
	  if (lsp || ssp || export_ || import_)
	    ext_addr = {{8{1'b0}}, local_ext_addr};
	  else
            ext_addr = {page_ptr1, local_ext_addr};

      else if (EXT_AW <= 24)
	always @(local_ext_addr or page_ptr1 or page_ptr2 or import_ or export_ or lsp or ssp)
	  if (lsp || ssp || export_ || import_)
	    ext_addr = {{16{1'b0}}, local_ext_addr};
	  else
	    ext_addr = {page_ptr2, page_ptr1, local_ext_addr};
      
      else
	always @(local_ext_addr or page_ptr1 or page_ptr2 or page_ptr3 or import_ or export_ or lsp or ssp)
	  if (lsp || ssp || export_ || import_)
	    ext_addr = {{24{1'b0}}, local_ext_addr};
	  else
            ext_addr = {page_ptr3, page_ptr2, page_ptr1, local_ext_addr};
      
   endgenerate

   // Instantiate Instruction Decoder.
   lm8_idec  
     #(
       .PROM_AW (PROM_AW)
       ) u1_lm8_idec
       (
	.instr     (instr),
	.imi_instr (imi_instr),
	.sub       (sub),
	.subc      (subc),
	.add       (add),
	.addc      (addc),
	.mov       (mov),
	.andr      (andr),
	.orr       (orr),
	.xorr      (xorr),
	.cmp       (cmp),
	.test      (test),
	.ror1      (ror1),
	.rorc      (rorc),
	.rol1      (rol1),
	.rolc      (rolc),
	.clrc      (clrc),
	.setc      (setc),
	.clrz      (clrz),
	.setz      (setz),
	.clri      (clri),
	.seti      (seti),
	.bz        (bz),
	.bnz       (bnz),
	.bc        (bc),
	.bnc       (bnc), 
	.b         (b),
	.callz     (callz),
	.callnz    (callnz),
	.callc     (callc),
	.callnc    (callnc),
	.call      (call),
	.ret       (ret),
	.iret      (iret),
	.export_    (export_),
	.import_    (import_),
	.exporti   (exporti),
	.importi   (importi),
	.ssp       (ssp),
	.lsp       (lsp),
	.sspi      (sspi),
	.lspi      (lspi),
	.wcsr      (wcsr),
	.rcsr      (rcsr),
	.addr_rb   (addr_rb),
	.addr_rd   (addr_rd),
	.imi_data  (imi_data),
	.addr_jmp  (addr_jmp),
	.update_c  (update_c),
	.update_z  (update_z)
       );

   //Instantiate Arithmetic/logic unit.
   lm8_alu 
     #(
       .FAMILY_NAME (FAMILY_NAME)
       )  u1_lm8_alu
       (
	.instr      (instr),
	.dout_rd    (dout_rd),
	.dout_rb    (dout_rb),
	.imi_data   (imi_data),
	.imi_instr  (imi_instr),
	.carry_flag (carry_flag),
	.sub        (sub),
	.subc       (subc),
	.addc       (addc),
	.cmp        (cmp),
	.dout_alu   (dout_alu),
	.cout_alu   (cout_alu)
	);
   
   //Instantiate flags/instruction read controller
   lm8_flow_cntl 
     #(
       .PGM_STACK_AW (PGM_STACK_AW),
       .PGM_STACK_AD (PGM_STACK_AD),
       .STK_EBR (REGISTER_EBR),
	   .PROM_WB (PROM_WB),
       .PROM_AW (PROM_AW),
       .FAMILY_NAME (FAMILY_NAME)
       ) u1_lm8_flow_cntl
       (
	.clk          ( clk),
	.rst_n        ( rst_n),
	.setc         ( setc),
	.clrc         ( clrc),
	.setz         ( setz),
	.clrz         ( clrz),
	.addr_jmp     ( addr_jmp),
	.update_c     ( update_c),
	.update_z     ( update_z),
	.cout_alu     ( cout_alu),
	.dout_alu     ( dout_alu),
	.bz           ( bz),
	.bnz          ( bnz),
	.bc           ( bc),
	.bnc          ( bnc),
	.b            ( b),
	.callz        ( callz),
	.callnz       ( callnz),
	.callc        ( callc),
	.callnc       ( callnc),
	.call         ( call),
	.ret          ( ret),
	.iret         ( iret),
	.irq          ( irq),
	.lsp          ( lsp),
	.lspi         ( lspi),
	.ssp          ( ssp),
	.sspi         ( sspi),
	.import_       ( import_),
	.importi      ( importi),
	.export_       ( export_),
	.exporti      ( exporti),
	.ready        ( ext_mem_ready),
	.prom_ready   ( prom_ready),
	.addr_cyc     ( addr_cyc),
	.ext_addr_cyc ( ext_addr_cyc_int),
	.data_cyc     ( data_cyc),
	.pc           ( pc),
	.prom_addr    ( prom_addr),
	.prom_enable  ( prom_enable),
	.carry_flag   ( carry_flag),
	.intr_ack     ( intr_ack)
	);
   
   always @(ext_addr_cyc_int)
     ext_addr_cyc = ext_addr_cyc_int;
   
   //Instantiate IO controller.
   lm8_io_cntl u1_lm8_cntl_u1
     (
      .clk          ( clk),
      .rst_n        ( rst_n),
      .import_       ( import_),
      .importi      ( importi),
      .export_       ( export_),
      .exporti      ( exporti),
      .ssp          ( ssp),
      .sspi         ( sspi),
      .lsp          ( lsp),
      .lspi         ( lspi),
      .addr_cyc     ( addr_cyc),
      .addr_rb      ( addr_rb),
      .dout_rd      ( dout_rd),
      .dout_rb      ( dout_rb),
      .ext_addr     ( local_ext_addr),
      .ext_dout     ( ext_dout),
      .ext_mem_wr   ( ext_mem_wr),
      .ext_mem_rd   ( ext_mem_rd),
      .ext_addr_cyc ( ext_addr_cyc_int),
      .ext_io_wr    ( ext_io_wr),
      .ext_io_rd    ( ext_io_rd)
      );

   lm8_interrupt
     #(
       .INTERRUPTS (INTERRUPTS)
       ) u1_lm8_interrupt
       (
	.clk          ( clk),
	.rst_n        ( rst_n),
	.interrupts   ( interrupts),
	.wren_csr     ( wren_csr),
	.addr_rd      ( addr_rd),
	.dout_rb      ( dout_rb),
	.seti         ( seti),
	.clri         ( clri),
	.ip           ( ip),
	.im           ( im),
	.ie           ( ie),
	.irq          ( irq)
	);
      
   generate if (EXT_AW > 8)
     always@(posedge clk or negedge rst_n)
       begin
          if (!rst_n)
            page_ptr1 <= #1 0;
          else if ((addr_rd == REG13) && (wren_rd == 1'b1))
            page_ptr1 <= #1 din_rd;
          else
            page_ptr1 <= #1 page_ptr1;
       end
   endgenerate
   
   generate if (EXT_AW > 16)
     always@(posedge clk or negedge rst_n)
       begin
          if (!rst_n)
            page_ptr2 <= #1 0;
          else if ((addr_rd == REG14) && (wren_rd == 1'b1))
            page_ptr2 <= #1 din_rd;
          else
            page_ptr2 <= #1 page_ptr2;
       end
   endgenerate
   
   generate if (EXT_AW > 16)
     always@(posedge clk or negedge rst_n)
       begin
          if (!rst_n)
            page_ptr3 <= #1 0;
          else if ((addr_rd == REG15) && (wren_rd == 1'b1))
            page_ptr3 <= #1 din_rd;
          else
            page_ptr3 <= #1 page_ptr3;
       end
   endgenerate
   
   generate if (REGISTERS_16 == 1) begin
    if (REGISTER_EBR == 0) begin
    //Distributed Ram 16bits
	pmi_distributed_dpram 
	  #(
            16,
            4,
            8,
            "noreg",
            "none",
            "binary",
            FAMILY_NAME,
            "pmi_distributed_dpram"
            ) u1_lm8_rfmem
	    (
	     .WrAddress( addr_rd[3:0]),
	     .Data     ( din_rd_int),
	     .WrClock  ( clk),
	     .WE       ( wren_rd),
	     .WrClockEn( `HI_VAL),
	     .RdAddress( addr_rb[3:0]),
	     .RdClock  ( clk),
	     .RdClockEn( `HI_VAL),
	     .Reset    ( `LO_VAL),
	     .Q        ( dout_rb)
	     );
	
	pmi_distributed_dpram 
	  #(
            16,
            4,
            8,
            "noreg",
            "none",
            "binary",
            FAMILY_NAME,
            "pmi_distributed_dpram"
            ) u2_lm8_rfmem
            (
             .WrAddress( addr_rd[3:0]),
             .Data     ( din_rd_int),
             .WrClock  ( clk),
             .WE       ( wren_rd),
             .WrClockEn( `HI_VAL),
             .RdAddress( addr_rd[3:0]),
             .RdClock  ( clk),
             .RdClockEn( `HI_VAL),
             .Reset    ( `LO_VAL),
             .Q        ( dout_rd)
             );
     end
	else
	 begin
	//EBR 16bits
	 pmi_ram_dp 
	   #(
		     .pmi_wr_addr_depth   (16         		),
		     .pmi_wr_addr_width   (4        		),
		     .pmi_wr_data_width   (8   				),
		     .pmi_rd_addr_depth   (16         		),
		     .pmi_rd_addr_width   (4        		),
		     .pmi_rd_data_width   (8                ),
		     .pmi_regmode         ("noreg"          ),       // "reg",
		     .pmi_gsr             ("enable"         ), 
		     .pmi_resetmode       ("async"           ),
		     .pmi_init_file       ("none"           ),       // "none",
		     .pmi_init_file_format("binary"         ),       // "binary",
		     .pmi_family          (FAMILY_NAME   	),       // "EC",
		     .module_type         ("pmi_ram_dp"     ))       // "pmi_ram_dp" 
	 u1_lm8_rfmem
		  (
		   // ----- Inputs -----
		   .Data         (din_rd_int     ),
		   .WrAddress    (addr_rd[3:0]   ),
		   .RdAddress    (addr_rb[3:0]   ),
		   .WrClock      (clk            ),
		   .RdClock      (~clk           ),
		   .WrClockEn    (wren_rd        ),
		   .RdClockEn    (~wren_rd       ),
		   .WE           (wren_rd        ),
		   .Reset        (`LO_VAL        ),
		   // ----- Outputs -----
		   .Q            (dout_rb        ));
		   
	 pmi_ram_dp 
	   #(
		     .pmi_wr_addr_depth   (16         		),
		     .pmi_wr_addr_width   (4        		),
		     .pmi_wr_data_width   (8   				),
		     .pmi_rd_addr_depth   (16         		),
		     .pmi_rd_addr_width   (4        		),
		     .pmi_rd_data_width   (8                ),
		     .pmi_regmode         ("noreg"          ),       // "reg",
		     .pmi_gsr             ("enable"         ), 
		     .pmi_resetmode       ("async"           ),
		     .pmi_init_file       ("none"           ),       // "none",
		     .pmi_init_file_format("binary"         ),       // "binary",
		     .pmi_family          (FAMILY_NAME   	),       // "EC",
		     .module_type         ("pmi_ram_dp"     ))       // "pmi_ram_dp" 
	 u2_lm8_rfmem
		  (
		   // ----- Inputs -----
		   .Data         (din_rd_int     ),
		   .WrAddress    (addr_rd[3:0]   ),
		   .RdAddress    (addr_rd[3:0]   ),
		   .WrClock      (clk            ),
		   .RdClock      (~clk           ),
		   .WrClockEn    (wren_rd        ),
		   .RdClockEn    (~wren_rd       ),
		   .WE           (wren_rd        ),
		   .Reset        (`LO_VAL        ),
		   // ----- Outputs -----
		   .Q            (dout_rd        ));
	 end
   end
   endgenerate
   
   generate if (REGISTERS_16 == 0)  begin
    if (REGISTER_EBR == 0) begin
	//Distributed Ram 32bits
	pmi_distributed_dpram 
	  #(
            32,
            5,
            8,
            "noreg",
            "none",
            "binary",
            FAMILY_NAME,
            "pmi_distributed_dpram"
            ) u1_lm8_rfmem
            (
             .WrAddress (addr_rd),
             .Data      (din_rd_int),
             .WrClock   (clk),
             .WE        (wren_rd),
             .WrClockEn (`HI_VAL),
             .RdAddress (addr_rb),
             .RdClock   (clk),
             .RdClockEn (`HI_VAL),
             .Reset     (`LO_VAL),
             .Q         (dout_rb)
             );
	
	pmi_distributed_dpram 
	  #(
            32,
            5,
            8,
            "noreg",
            "none",
            "binary",
            FAMILY_NAME,
            "pmi_distributed_dpram"
            ) u2_lm8_rfmem
            (
             .WrAddress (addr_rd),
             .Data      (din_rd_int),
             .WrClock   (clk),
             .WE        (wren_rd),
             .WrClockEn (`HI_VAL),
             .RdAddress (addr_rd),
             .RdClock   (clk),
             .RdClockEn (`HI_VAL),
             .Reset     (`LO_VAL),
             .Q         (dout_rd)
             );
     end
	 else
	 begin
	//EBR 32bits

	 pmi_ram_dp 
	   #(
		     .pmi_wr_addr_depth   (32         		),
		     .pmi_wr_addr_width   (5        		),
		     .pmi_wr_data_width   (8   				),
		     .pmi_rd_addr_depth   (32         		),
		     .pmi_rd_addr_width   (5        		),
		     .pmi_rd_data_width   (8                ),
		     .pmi_regmode         ("noreg"          ),       // "reg",
		     .pmi_gsr             ("enable"         ), 
		     .pmi_resetmode       ("async"           ),
		     .pmi_init_file       ("none"           ),       // "none",
		     .pmi_init_file_format("binary"         ),       // "binary",
		     .pmi_family          (FAMILY_NAME   	),       // "EC",
		     .module_type         ("pmi_ram_dp"     ))       // "pmi_ram_dp" 
	 u1_lm8_rfmem
		  (
		   // ----- Inputs -----
		   .Data         (din_rd_int     ),
		   .WrAddress    (addr_rd        ),
		   .RdAddress    (addr_rb        ),
		   .WrClock      (clk            ),
		   .RdClock      (~clk            ),
   		   .WrClockEn    (wren_rd        ),
		   .RdClockEn    (~wren_rd       ),
		   .WE           (wren_rd        ),
		   .Reset        (`LO_VAL        ),
		   // ----- Outputs -----
		   .Q            (dout_rb        ));
	  	 
	 pmi_ram_dp 
	   #(
		     .pmi_wr_addr_depth   (32         		),
		     .pmi_wr_addr_width   (5        		),
		     .pmi_wr_data_width   (8   				),
		     .pmi_rd_addr_depth   (32         		),
		     .pmi_rd_addr_width   (5        		),
		     .pmi_rd_data_width   (8                ),
		     .pmi_regmode         ("noreg"          ),       // "reg",
		     .pmi_gsr             ("enable"         ), 
		     .pmi_resetmode       ("async"           ),
		     .pmi_init_file       ("none"           ),       // "none",
		     .pmi_init_file_format("binary"         ),       // "binary",
		     .pmi_family          (FAMILY_NAME   	),       // "EC",
		     .module_type         ("pmi_ram_dp"     ))       // "pmi_ram_dp" 
	 u2_lm8_rfmem
		  (
		   // ----- Inputs -----
		   .Data         (din_rd_int     ),
		   .WrAddress    (addr_rd        ),
		   .RdAddress    (addr_rd        ),
		   .WrClock      (clk            ),
		   .RdClock      (~clk            ),
		   .WrClockEn    (wren_rd        ),
		   .RdClockEn    (~wren_rd        ),
		   .WE           (wren_rd        ),
		   .Reset        (`LO_VAL        ),
		   // ----- Outputs -----
		   .Q            (dout_rd        ));
    
	 end
   end
   endgenerate
   
   //--------------------------------------------------------------
   //Registered data and write enable for register file memory

   always@(posedge clk or negedge rst_n)
      begin
         if (!rst_n) begin
            wren_alu_rd <= #1 0;
            wren_il_rd  <= #1 0;
         end
         else begin
            wren_alu_rd <= #1 (add | addc | sub | subc | mov | andr |
                            orr | xorr | ror1 | rorc | rol1 | rolc |
			    rcsr);
            wren_il_rd  <= #1 (import_ | importi | lsp | lspi);
         end
      end

   always@(posedge clk or negedge rst_n)
      begin
         if (!rst_n)
            din_rd1 <= #1 0;
         else
            din_rd1 <= #1 dout_alu;
      end

   always@(import_ or importi or lsp or lspi or ext_mem_din or ext_io_din or din_rd1 or rcsr or dout_csr)
      begin
         if (lspi||lsp)
            din_rd = ext_mem_din;
         else if (import_ | importi)
            din_rd = ext_io_din;
         else if (rcsr)
	   din_rd = dout_csr;
	 else	   
           din_rd = din_rd1;
      end
   
   assign dout_csr = (addr_rb[1]
		      ? ie
		      : (addr_rb[0] ? im : ip));
   
   assign wren_rd  = ((wren_alu_rd | wren_il_rd) & data_cyc);
   
   assign wren_csr = (wcsr & data_cyc);
   
endmodule

