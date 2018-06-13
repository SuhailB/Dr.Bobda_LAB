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
// Name			: lm8_flow_cntl.v
// Project		: LatticeMico8
// Dependencies	: n/a
// Description	: LatticeMico8 microcontroller core's flow control logic.
// Revisions	: 3.2 (Initial version)
// 				: 3.3
//				  - Fixed bug that did not store Carry and Zero flags to the
//					call stack on an interrupt.
// ============================================================================

module lm8_flow_cntl 
  #(
    parameter  PGM_STACK_AW=4,
    parameter  PGM_STACK_AD=16,
    parameter  STK_EBR=0,
	parameter  PROM_WB=0,
    parameter  PROM_AW=12,
    parameter  FAMILY_NAME="XO"  
    )
   (
    // Clock and Reset  
    input clk,        
    input rst_n,
    // Inputs
    input setc, clrc, setz, clrz, 
    input [PROM_AW-1:0] addr_jmp,
    input update_c, update_z,
    input cout_alu, 
    input [7:0] dout_alu,          
    input bz, bnz, bc, bnc, b, callz, callnz, callc, callnc, call,
    input ret, iret, 
    input irq,
    input lsp, lspi, ssp, sspi, import_, importi, export_, exporti,
    input ready,
    input prom_ready,
    // Outputs          
    output reg addr_cyc,
    output reg ext_addr_cyc,          
    output reg data_cyc,          
    output reg [PROM_AW-1:0] prom_addr, pc,
    output reg prom_enable,
    output reg carry_flag, 
    output reg intr_ack
    ); 

   // Registered data
   reg [PROM_AW-1:0] pc_nxt;
   reg [PROM_AW-1:0] jump_address, jump_address_nxt;
   reg 		     zero_flag, zero_flag_nxt;
   reg 		     carry_flag_nxt;
   reg 		     br_enb, br_enb_nxt;
   reg 		     ret_reg;
   reg [7:0] 	     dout_alu_reg;
   reg 		     intr_ack_nxt;
      
   // Unregistered data
   reg [PROM_AW-1:0] potential_address, next_address, dout_stack; 
   reg 		     ext_cycle_type;
   reg 		     condbr_cycle_type;
   reg 		     ret_cycle_type;
   reg 		     call_is_valid;
   reg 		     condbr_is_valid;
   reg 		     zero_flag_async;
   reg 		     carry_flag_async;
   reg 		     pushed_carry, pushed_zero;
   reg 		     intr_req_actv;
   
   /*----------------------------------------------------------------------
    Generate 'reset' exception
    ----------------------------------------------------------------------*/
   reg 		     rst_n_reg, rst_exception, rst_exception_nxt;
   always @(posedge clk)
     if (!rst_n)
       {rst_exception, rst_n_reg} <= #1 2'b00;
     else
       {rst_exception, rst_n_reg} <= #1 {rst_exception_nxt, 1'b1};
   
   always @(rst_n_reg or rst_n)
     rst_exception_nxt = !rst_n_reg && rst_n;
      
   /*----------------------------------------------------------------------
    Stage selection
    ----------------------------------------------------------------------*/
   reg 		     fetch_cyc;
   reg 		     addr_cyc_nxt, ext_addr_cyc_nxt, data_cyc_nxt, fetch_cyc_nxt;
   generate
      
      if (PROM_WB == 1) begin
	 
	 always @(/*AUTOSENSE*/addr_cyc or data_cyc or ext_addr_cyc
		  or ext_cycle_type or fetch_cyc or prom_ready
		  or ready)
	   begin
	      if (data_cyc || (fetch_cyc && (prom_ready == 1'b0)))
		fetch_cyc_nxt = 1'b1;
	      else
		fetch_cyc_nxt = 1'b0;
	      
	      if (fetch_cyc && prom_ready)
		addr_cyc_nxt = 1'b1;
	      else
		addr_cyc_nxt = 1'b0;
	      
	      if ((addr_cyc && ext_cycle_type) 
		  || (ext_addr_cyc && ext_cycle_type && (ready == 1'b0)))
		ext_addr_cyc_nxt = 1'b1;
	      else
		ext_addr_cyc_nxt = 1'b0;
	      
	      if ((addr_cyc && (ext_cycle_type == 1'b0))
		  || (ext_addr_cyc && ext_cycle_type && ready))
		data_cyc_nxt = 1'b1;
	      else
		data_cyc_nxt = 1'b0;
	   end
	 
	 always @(posedge clk or negedge rst_n)
	   if (rst_n == 1'b0)
	     begin
		fetch_cyc <= #1  1'b0;
		addr_cyc <= #1  1'b1;
		ext_addr_cyc <= #1  1'b1;
		data_cyc <= #1  1'b0;
	     end
	   else
	     begin
		fetch_cyc <= #1  fetch_cyc_nxt;
		addr_cyc <= #1  addr_cyc_nxt;
		ext_addr_cyc <= #1  ext_addr_cyc_nxt;
		data_cyc <= #1  data_cyc_nxt;
	     end
 
      end
      else begin
	 
	 always @(/*AUTOSENSE*/addr_cyc or ext_addr_cyc
		  or ext_cycle_type or ready)
	   begin
	      if ((addr_cyc == 1'b0) && (ext_addr_cyc == 1'b0))
		addr_cyc_nxt = 1'b1;
	      else
		addr_cyc_nxt = 1'b0;
	      
	      if ((addr_cyc && ext_cycle_type) 
		  || (ext_addr_cyc && ext_cycle_type && (ready == 1'b0)))
		ext_addr_cyc_nxt = 1'b1;
	      else
		ext_addr_cyc_nxt = 1'b0;
	      
	      if ((addr_cyc && (ext_cycle_type == 1'b0))
		  || (ext_addr_cyc && ext_cycle_type && ready))
		data_cyc_nxt = 1'b1;
	      else
		data_cyc_nxt = 1'b0;
	   end
	 
	 always @(posedge clk or negedge rst_n)
	   if (rst_n == 1'b0)
	     begin
		addr_cyc <= #1  1'b1;
		ext_addr_cyc <= #1  1'b1;
		data_cyc <= #1  1'b0;
	     end
	   else
	     begin
		addr_cyc <= #1  addr_cyc_nxt;
		ext_addr_cyc <= #1  ext_addr_cyc_nxt;
		data_cyc <= #1  data_cyc_nxt;
	     end
	 
      end
      
      endgenerate
   
   /*----------------------------------------------------------------------
    PROM Enable and Address
    ----------------------------------------------------------------------*/
   always @(/*AUTOSENSE*/data_cyc or next_address or rst_n)
     begin
	//prom_enable = ~rst_n | (data_cyc & rst_n);
	prom_enable = data_cyc & rst_n;
	prom_addr = next_address;
     end

   /*----------------------------------------------------------------------
    Classify instruction types
    ----------------------------------------------------------------------*/
   always @(/*AUTOSENSE*/addr_cyc or b or bc or bnc or bnz or br_enb
	    or bz or call or callc or callnc or callnz or callz
	    or carry_flag or exporti or importi or iret or lsp or lspi
	    or ret or ssp or sspi or zero_flag)
     begin
	// Conditional branches or calls
        condbr_cycle_type = bz|bnz|bc|bnc|call|callz|callnz|callc|callnc;
	
	// Load/Store type
	ext_cycle_type = lspi|lsp|sspi|ssp|export_|exporti|import_|importi;
	
	// Return type
	ret_cycle_type = ret|iret;
	
	// Call instruction that can actually execute
	call_is_valid =(call 
			| (callz & zero_flag) 
			| (callc & carry_flag) 
			| (callnz & ~zero_flag) 
			| (callnc & ~carry_flag));
	
	// Branch instruction that can actually execute
	condbr_is_valid = ((bz & zero_flag) 
			   | (bc & carry_flag)
			   | (bnz & ~zero_flag) 
			   | (bnc & ~carry_flag));
	
	// call + branch
	if (addr_cyc)
	  br_enb_nxt = b | condbr_is_valid | call_is_valid;
	else
	  br_enb_nxt = br_enb;
     end
   
   /*----------------------------------------------------------------------
    Manage Program Counter
    ----------------------------------------------------------------------*/
   always @(/*AUTOSENSE*/addr_cyc or addr_jmp or br_enb
	    or call_is_valid or condbr_is_valid or data_cyc
	    or dout_stack or intr_req_actv or jump_address or pc
	    or ret_cycle_type or ret_reg or rst_exception)
     begin
	// Buffer jump address
	if (addr_cyc)
	  jump_address_nxt = addr_jmp;
	else
	  jump_address_nxt = jump_address;
	
	// Calculate next potential address
	if (data_cyc && br_enb)
	  // Jump
	  potential_address = pc + jump_address;
	else
	  // Sequential
	  potential_address = pc + 1'b1;
	
	// Compute next address
        if (data_cyc && intr_req_actv && (call_is_valid == 1'b0) && (condbr_is_valid == 1'b0) && (ret_cycle_type == 1'b0))
          // Block interrupt processing on braches, calls, and returns
          next_address = {PROM_AW{1'b0}};
        else
	  if (ret_reg)
            // Returning from interrupt, pull return address from the stack
            next_address = dout_stack;
          else
	    if (rst_exception)
	      next_address = {{PROM_AW-1{1'b0}},1'b1};
	    else
              // Normal straight line/jump instruction
              next_address = potential_address;
	
	if (data_cyc)
	  pc_nxt = next_address;
	else
	  pc_nxt = pc;
     end

   /*----------------------------------------------------------------------
    When do we update the Carry and Zero flags?
    ----------------------------------------------------------------------*/
   wire update_valid;
   generate
      
      if (PROM_WB == 1)
	begin
	   assign update_valid = addr_cyc;
	end
      else
	begin
	   assign update_valid = 1'b1;
	end
      
   endgenerate
   
   /*----------------------------------------------------------------------
    Manage Carry and Zero flags
    ----------------------------------------------------------------------*/
   always @(/*AUTOSENSE*/carry_flag or clrc or clrz or cout_alu
	    or dout_alu_reg or iret or pushed_carry or pushed_zero
	    or setc or setz or update_c or update_valid or update_z
	    or zero_flag)
     begin
	carry_flag_nxt = (update_valid
			  ? (clrc 
			     ? 1'b0 
			     : (setc 
				? 1'b1 
				: (iret 
				   ? pushed_carry 
				   : (update_c ? cout_alu : carry_flag))))
			  : carry_flag);
	
	// This is needed to push the correct flag state on to the call/
	// interrupt stack. The equation does not need IRET since the
	// carry flag will be coming off the stack.
	carry_flag_async = (update_valid
			    ? (clrc
			       ? 1'b0
			       : (setc
				  ? 1'b1
				  : (update_c ? cout_alu : carry_flag)))
				  //: (update_c ? 1'b0 : carry_flag)))
			    : 1'b0);
	
	zero_flag_nxt = (update_valid
			 ? (clrz
			    ? 1'b0
			    : (setz
			       ? 1'b1
			       : (iret
				  ? pushed_zero
				  : (update_z ? (dout_alu_reg == 8'h00) : zero_flag))))
			 : zero_flag);
	
	// This is needed to push the correct flag state on to the call/
	// interrupt stack. The equation does not need IRET since the
	// zero flag will be coming off the stack.
	zero_flag_async = (update_valid
			   ? (clrz
			      ? 1'b0
			      : (setz
				 ? 1'b1
				 : (update_z ? (dout_alu_reg == 8'h00) : zero_flag)))
			   : 1'b0);
     end
   
   /*----------------------------------------------------------------------
    Manage interrupts
    ----------------------------------------------------------------------*/
   always @(/*AUTOSENSE*/call_is_valid or condbr_is_valid or data_cyc
	    or intr_ack or iret or irq or ret_cycle_type)
     begin
	// Indicate that an interrupt request is active
	intr_req_actv = irq & ~intr_ack;
	
	// Generate interrupt acknowledge (asserted as long as in interrupt
	// service routine)
	if (data_cyc 
	    && intr_req_actv 
	    && (call_is_valid == 1'b0) 
	    && (condbr_is_valid == 1'b0) 
	    && (ret_cycle_type == 1'b0))
	  intr_ack_nxt = 1'b1;
	else
	  if (data_cyc && iret)
	    intr_ack_nxt = 1'b0;
	  else
	    intr_ack_nxt = intr_ack;
     end
   
   /*----------------------------------------------------------------------
    Procedure Call Stack
    ----------------------------------------------------------------------*/
   reg [PGM_STACK_AW-1:0] stack_ptr, stack_ptr_nxt;
   reg [PROM_AW+1:0] 	  din_stack_w_cz;
   reg 			  sp_we;
   wire [PROM_AW+1:0] 	  dout_stack_w_cz;
   
   always @(/*AUTOSENSE*/addr_cyc or call_is_valid or carry_flag_async
	    or condbr_is_valid or data_cyc or dout_stack_w_cz
	    or intr_req_actv or potential_address or ret_cycle_type
	    or stack_ptr or zero_flag_async)
     begin
	// Manage stack pointer
	if ((addr_cyc && call_is_valid)
	    || (data_cyc
		&& intr_req_actv
		&& (call_is_valid == 1'b0)
		&& (condbr_is_valid == 1'b0)
		&& (ret_cycle_type == 1'b0)))
	  stack_ptr_nxt = stack_ptr + 1'b1;
	else
	  if (addr_cyc && ret_cycle_type)
	    stack_ptr_nxt = stack_ptr - 1'b1;
	  else
	    stack_ptr_nxt = stack_ptr;
	
	// Manage write to procedure call stack
	if ((addr_cyc && call_is_valid)
	    || (data_cyc 
		&& intr_req_actv 
		&& (call_is_valid == 1'b0) 
		&& (condbr_is_valid == 1'b0) 
		&& (ret_cycle_type == 1'b0)))
	  sp_we = 1'b1;
	else
	  sp_we = 1'b0;
	
	// Manage data written to procedure call stack
	din_stack_w_cz = {carry_flag_async, zero_flag_async, potential_address};
	
	
	// Manage data from procedure call stack
	dout_stack = dout_stack_w_cz[PROM_AW - 1 : 0];
	pushed_carry = dout_stack_w_cz[PROM_AW + 1];
	pushed_zero = dout_stack_w_cz[PROM_AW];
     end
   
   generate if (STK_EBR == 0) begin
   //use distributed ram
   pmi_distributed_spram 
     # (
	PGM_STACK_AD,
	PGM_STACK_AW,
	(PROM_AW+2),
	"noreg",
	"none",
	"binary",
	FAMILY_NAME,
	"pmi_distributed_spram"
	) u1_lm8_stkmem
       (
	.Address (stack_ptr),
	.Data    (din_stack_w_cz),
	.Clock   (clk),
	.ClockEn (`HI_VAL),
	.WE      (sp_we),
	.Reset   (`LO_VAL),
	.Q       (dout_stack_w_cz)
	);
	end
	else
	begin
	//use EBR

	pmi_ram_dp 
	   #(
		     .pmi_wr_addr_depth   (PGM_STACK_AD        		),
		     .pmi_wr_addr_width   (PGM_STACK_AW        		),
		     .pmi_wr_data_width   (PROM_AW+2   				),
		     .pmi_rd_addr_depth   (PGM_STACK_AD        		),
		     .pmi_rd_addr_width   (PGM_STACK_AW        		),
		     .pmi_rd_data_width   (PROM_AW+2                ),
		     .pmi_regmode         ("noreg"          ),       // "reg",
		     .pmi_gsr             ("enable"         ), 
		     .pmi_resetmode       ("async"           ),
		     .pmi_init_file       ("none"           ),       // "none",
		     .pmi_init_file_format("binary"         ),       // "binary",
		     .pmi_family          (FAMILY_NAME   	),       // "EC",
		     .module_type         ("pmi_ram_dp"     ))       // "pmi_ram_dp" 
	 u1_lm8_stkmem
		  (
		   // ----- Inputs -----
		   .Data         (din_stack_w_cz     ),
		   .WrAddress    (stack_ptr   ),
		   .RdAddress    (stack_ptr   ),
		   .WrClock      (clk            ),
		   .RdClock      (~clk           ),
		   .WrClockEn    (sp_we        ),
		   .RdClockEn    (~sp_we       ),
		   .WE           (sp_we        ),
		   .Reset        (`LO_VAL        ),
		   // ----- Outputs -----
		   .Q            (dout_stack_w_cz        ));
	end
	
   endgenerate
   
   /*----------------------------------------------------------------------
    Sequential Logic
    ----------------------------------------------------------------------*/
   always @(posedge clk or negedge rst_n)
     if (rst_n == 1'b0)
       begin
	  pc <= #1  {{PROM_AW-1{1'b0}},1'b1};
	  //pc <= #1  {PROM_AW{1'b1}};
	  jump_address <= #1  {PROM_AW{1'b0}};
	  zero_flag <= #1  1'b0;
	  carry_flag <= #1  1'b0;
    	  br_enb <= #1  1'b0;
    	  ret_reg <= #1  1'b0;
    	  dout_alu_reg <= #1  8'b0;
    	  intr_ack <= #1  1'b0;
	  stack_ptr <= #1 'd0;
       end
     else
       begin
	  pc <= #1  pc_nxt;
	  jump_address <= #1  jump_address_nxt;
	  zero_flag <= #1  zero_flag_nxt;
	  carry_flag <= #1  carry_flag_nxt;
    	  br_enb <= #1  br_enb_nxt;
    	  ret_reg <= #1  ret_cycle_type;
    	  dout_alu_reg <= #1  dout_alu;
    	  intr_ack <= #1  intr_ack_nxt;
	  stack_ptr <= #1 stack_ptr_nxt;
       end
   
endmodule 
