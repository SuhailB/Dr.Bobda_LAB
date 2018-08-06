// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2013 by Lattice Semiconductor Corporation
// --------------------------------------------------------------------
//
// Permission:
//
//   Lattice Semiconductor grants permission to use this code for use
//   in synthesis for any Lattice programmable logic product.  Other
//   use of this code, including the selling or duplication of any
//   portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL or Verilog source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Lattice Semiconductor provides no warranty
//   regarding the use or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A
//
//                     TEL: 1-800-Lattice (USA and Canada)
//                          408-826-6000 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
//
// --------------------------------------------------------------------
//
// colorbar_gen.v -- MIPI DSI TX Bridge Reference Design
// 
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| APPS_LHQ          :| 07/16/13  :| Initial Release
//------------------------------------------------------------------------------------------------------------------------------------------




module colorbar_gen #(
    parameter h_active      = 'd1920     ,
    parameter h_total       = 'd2200     ,
    parameter v_active      = 'd1080     ,
    parameter v_total       = 'd1125     ,
    parameter H_FRONT_PORCH =   'd88     ,
    parameter H_SYNCH       =   'd44     ,
    parameter H_BACK_PORCH  =  'd148     ,
    parameter V_FRONT_PORCH =    'd4     ,
    parameter V_SYNCH       =    'd5     ,
    parameter mode          =     0         //0 = colorbar, 1 = walking 1's
)
( 
    input                     rstn       , 
    input                     m148_5_clk , 
    output         reg        fv         , 
    output         reg        lv         , 
    output  [23:0]            data       ,
    output         reg        vsync      ,
    output         reg        hsync      
); 
 
    reg [11:0] pixcnt; 
    reg [11:0] linecnt;
    reg [11:0] color_cntr;	

    always @(posedge m148_5_clk or negedge rstn) begin 
       if (!rstn) begin 
       	  pixcnt    <= 12'd0; 
       	  
       	  linecnt   <= 12'd0;
       	  
       	  lv        <= 1'b0;  
       	  fv        <= 1'b0;                                  
           
          hsync     <= 0;
          vsync     <= 0;         
       end                                   
       else begin 
          pixcnt    <= (pixcnt<h_total-1) ? pixcnt+1 : 0;  
                    
          linecnt   <= (linecnt==v_total-1 && pixcnt ==h_total-1)  ? 0         :  
                       (linecnt< v_total-1 && pixcnt ==h_total-1)  ? linecnt+1 : linecnt; 
       	            
       	  lv        <= (pixcnt>12'd0)   & (pixcnt<=h_active) & (linecnt<v_active); 
       	  fv        <= (linecnt>=12'd0) & (linecnt<v_active);
       	            
       	  hsync     <= (pixcnt>h_active+H_FRONT_PORCH)   & (pixcnt<=h_active+H_FRONT_PORCH+H_SYNCH); 
          vsync     <= (linecnt>=v_active+V_FRONT_PORCH) & (linecnt<v_active+V_FRONT_PORCH+V_SYNCH);       	   
       end 
    end   
    
	always @(posedge m148_5_clk or negedge rstn)
	    if(!rstn)
	         color_cntr <= 0;
	    else
	         color_cntr <= lv ? color_cntr+1 : 0;
generate
    if (mode==1)	                 	         
        assign data = color_cntr;
    else 
        assign data = color_cntr<160 ? {8'hFF, 8'h00, 8'h00} :
             color_cntr<320 ? {8'h00, 8'hFF, 8'h00} : {8'h00, 8'h00, 8'hFF} ;	          
endgenerate   	      
endmodule                  