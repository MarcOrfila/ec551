////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.76xd
//  \   \         Application: netgen
//  /   /         Filename: lifo2_synthesis.v
// /___/   /\     Timestamp: Sat Oct 20 12:40:05 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim lifo2.ngc lifo2_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: lifo2.ngc
// Output file	: /home/hpw/Documents/EC551/LAB2/lab2/netgen/synthesis/lifo2_synthesis.v
// # of Modules	: 1
// Design Name	: lifo2
// Xilinx        : /share/Study/Xilinx/13.3/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module lifo2 (
  clk, reset_n, push, pop, full, empty, resultin, opcodeselin, resultout, opcodeselout
);
  input clk;
  input reset_n;
  input push;
  input pop;
  output full;
  output empty;
  input [5 : 0] resultin;
  input [2 : 0] opcodeselin;
  output [5 : 0] resultout;
  output [2 : 0] opcodeselout;
  wire resultin_5_IBUF_0;
  wire resultin_4_IBUF_1;
  wire resultin_3_IBUF_2;
  wire resultin_2_IBUF_3;
  wire resultin_1_IBUF_4;
  wire resultin_0_IBUF_5;
  wire opcodeselin_2_IBUF_6;
  wire opcodeselin_1_IBUF_7;
  wire opcodeselin_0_IBUF_8;
  wire clk_BUFGP_9;
  wire reset_n_IBUF_10;
  wire push_IBUF_11;
  wire pop_IBUF_12;
  wire resultout_5_25;
  wire resultout_4_26;
  wire resultout_3_27;
  wire resultout_2_28;
  wire resultout_1_29;
  wire resultout_0_30;
  wire opcodeselout_2_31;
  wire opcodeselout_1_32;
  wire opcodeselout_0_33;
  wire full_OBUF_34;
  wire \top[2]_PWR_3_o_Mux_22_o ;
  wire \top[2]_GND_1_o_Mux_23_o ;
  wire \top[2]_GND_1_o_Mux_25_o ;
  wire \top[2]_GND_1_o_Mux_21_o ;
  wire empty_OBUF_39;
  wire N0;
  wire N1;
  wire reset_n_inv;
  wire next_top_0_43;
  wire next_top_1_44;
  wire next_top_2_45;
  wire \Mmux_top[2]_GND_1_o_Mux_21_o12 ;
  wire N01;
  wire N2;
  wire [5 : 0] _n0063;
  wire [2 : 0] _n0064;
  wire [2 : 0] top;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  LDC   next_top_2 (
    .CLR(reset_n_inv),
    .D(\top[2]_GND_1_o_Mux_21_o ),
    .G(\top[2]_PWR_3_o_Mux_22_o ),
    .Q(next_top_2_45)
  );
  LDC   next_top_1 (
    .CLR(reset_n_inv),
    .D(\top[2]_GND_1_o_Mux_23_o ),
    .G(\top[2]_PWR_3_o_Mux_22_o ),
    .Q(next_top_1_44)
  );
  LDC   next_top_0 (
    .CLR(reset_n_inv),
    .D(\top[2]_GND_1_o_Mux_25_o ),
    .G(\top[2]_PWR_3_o_Mux_22_o ),
    .Q(next_top_0_43)
  );
  FDC   top_0 (
    .C(clk_BUFGP_9),
    .CLR(reset_n_inv),
    .D(next_top_0_43),
    .Q(top[0])
  );
  FDC   top_1 (
    .C(clk_BUFGP_9),
    .CLR(reset_n_inv),
    .D(next_top_1_44),
    .Q(top[1])
  );
  FDC   top_2 (
    .C(clk_BUFGP_9),
    .CLR(reset_n_inv),
    .D(next_top_2_45),
    .Q(top[2])
  );
  FDCE   resultout_0 (
    .C(clk_BUFGP_9),
    .CE(pop_IBUF_12),
    .CLR(reset_n_inv),
    .D(_n0063[0]),
    .Q(resultout_0_30)
  );
  FDCE   resultout_1 (
    .C(clk_BUFGP_9),
    .CE(pop_IBUF_12),
    .CLR(reset_n_inv),
    .D(_n0063[1]),
    .Q(resultout_1_29)
  );
  FDCE   resultout_2 (
    .C(clk_BUFGP_9),
    .CE(pop_IBUF_12),
    .CLR(reset_n_inv),
    .D(_n0063[2]),
    .Q(resultout_2_28)
  );
  FDCE   resultout_3 (
    .C(clk_BUFGP_9),
    .CE(pop_IBUF_12),
    .CLR(reset_n_inv),
    .D(_n0063[3]),
    .Q(resultout_3_27)
  );
  FDCE   resultout_4 (
    .C(clk_BUFGP_9),
    .CE(pop_IBUF_12),
    .CLR(reset_n_inv),
    .D(_n0063[4]),
    .Q(resultout_4_26)
  );
  FDCE   resultout_5 (
    .C(clk_BUFGP_9),
    .CE(pop_IBUF_12),
    .CLR(reset_n_inv),
    .D(_n0063[5]),
    .Q(resultout_5_25)
  );
  FDCE   opcodeselout_0 (
    .C(clk_BUFGP_9),
    .CE(pop_IBUF_12),
    .CLR(reset_n_inv),
    .D(_n0064[0]),
    .Q(opcodeselout_0_33)
  );
  FDCE   opcodeselout_1 (
    .C(clk_BUFGP_9),
    .CE(pop_IBUF_12),
    .CLR(reset_n_inv),
    .D(_n0064[1]),
    .Q(opcodeselout_1_32)
  );
  FDCE   opcodeselout_2 (
    .C(clk_BUFGP_9),
    .CE(pop_IBUF_12),
    .CLR(reset_n_inv),
    .D(_n0064[2]),
    .Q(opcodeselout_2_31)
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Fmem1 (
    .A0(top[0]),
    .A1(top[1]),
    .A2(top[2]),
    .A3(N1),
    .D(resultin_0_IBUF_5),
    .WCLK(clk_BUFGP_9),
    .WE(push_IBUF_11),
    .O(_n0063[0])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Fmem2 (
    .A0(top[0]),
    .A1(top[1]),
    .A2(top[2]),
    .A3(N1),
    .D(resultin_1_IBUF_4),
    .WCLK(clk_BUFGP_9),
    .WE(push_IBUF_11),
    .O(_n0063[1])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Fmem3 (
    .A0(top[0]),
    .A1(top[1]),
    .A2(top[2]),
    .A3(N1),
    .D(resultin_2_IBUF_3),
    .WCLK(clk_BUFGP_9),
    .WE(push_IBUF_11),
    .O(_n0063[2])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Fmem4 (
    .A0(top[0]),
    .A1(top[1]),
    .A2(top[2]),
    .A3(N1),
    .D(resultin_3_IBUF_2),
    .WCLK(clk_BUFGP_9),
    .WE(push_IBUF_11),
    .O(_n0063[3])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Fmem5 (
    .A0(top[0]),
    .A1(top[1]),
    .A2(top[2]),
    .A3(N1),
    .D(resultin_4_IBUF_1),
    .WCLK(clk_BUFGP_9),
    .WE(push_IBUF_11),
    .O(_n0063[4])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Fmem6 (
    .A0(top[0]),
    .A1(top[1]),
    .A2(top[2]),
    .A3(N1),
    .D(resultin_5_IBUF_0),
    .WCLK(clk_BUFGP_9),
    .WE(push_IBUF_11),
    .O(_n0063[5])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Opmem1 (
    .A0(top[0]),
    .A1(top[1]),
    .A2(top[2]),
    .A3(N1),
    .D(opcodeselin_0_IBUF_8),
    .WCLK(clk_BUFGP_9),
    .WE(N0),
    .O(_n0064[0])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Opmem2 (
    .A0(top[0]),
    .A1(top[1]),
    .A2(top[2]),
    .A3(N1),
    .D(opcodeselin_1_IBUF_7),
    .WCLK(clk_BUFGP_9),
    .WE(N0),
    .O(_n0064[1])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Opmem3 (
    .A0(top[0]),
    .A1(top[1]),
    .A2(top[2]),
    .A3(N1),
    .D(opcodeselin_2_IBUF_6),
    .WCLK(clk_BUFGP_9),
    .WE(N0),
    .O(_n0064[2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \Mmux_top[2]_GND_1_o_Mux_21_o1221  (
    .I0(top[2]),
    .I1(top[1]),
    .I2(top[0]),
    .O(full_OBUF_34)
  );
  LUT5 #(
    .INIT ( 32'hF2666668 ))
  \Mmux_top[2]_PWR_3_o_Mux_22_o11  (
    .I0(pop_IBUF_12),
    .I1(push_IBUF_11),
    .I2(top[0]),
    .I3(top[1]),
    .I4(top[2]),
    .O(\top[2]_PWR_3_o_Mux_22_o )
  );
  LUT5 #(
    .INIT ( 32'h7E407E7E ))
  \Mmux_top[2]_GND_1_o_Mux_21_o121  (
    .I0(top[0]),
    .I1(top[1]),
    .I2(top[2]),
    .I3(pop_IBUF_12),
    .I4(push_IBUF_11),
    .O(\Mmux_top[2]_GND_1_o_Mux_21_o12 )
  );
  LUT4 #(
    .INIT ( 16'h1557 ))
  \Mmux_top[2]_GND_1_o_Mux_25_o11  (
    .I0(next_top_0_43),
    .I1(top[1]),
    .I2(top[2]),
    .I3(top[0]),
    .O(\top[2]_GND_1_o_Mux_25_o )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \empty<2>1  (
    .I0(top[2]),
    .I1(top[0]),
    .I2(top[1]),
    .O(empty_OBUF_39)
  );
  LUT4 #(
    .INIT ( 16'hEAEB ))
  \Mmux_top[2]_GND_1_o_Mux_21_o1_SW0  (
    .I0(pop_IBUF_12),
    .I1(top[2]),
    .I2(top[1]),
    .I3(top[0]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h88848884DAAE8884 ))
  \Mmux_top[2]_GND_1_o_Mux_21_o1  (
    .I0(next_top_2_45),
    .I1(\Mmux_top[2]_GND_1_o_Mux_21_o12 ),
    .I2(next_top_1_44),
    .I3(next_top_0_43),
    .I4(push_IBUF_11),
    .I5(N01),
    .O(\top[2]_GND_1_o_Mux_21_o )
  );
  LUT3 #(
    .INIT ( 8'h89 ))
  \Mmux_top[2]_GND_1_o_Mux_23_o1_SW0  (
    .I0(top[2]),
    .I1(top[1]),
    .I2(top[0]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h999999F900000060 ))
  \Mmux_top[2]_GND_1_o_Mux_23_o1  (
    .I0(next_top_1_44),
    .I1(next_top_0_43),
    .I2(push_IBUF_11),
    .I3(pop_IBUF_12),
    .I4(N2),
    .I5(\Mmux_top[2]_GND_1_o_Mux_21_o12 ),
    .O(\top[2]_GND_1_o_Mux_23_o )
  );
  IBUF   resultin_5_IBUF (
    .I(resultin[5]),
    .O(resultin_5_IBUF_0)
  );
  IBUF   resultin_4_IBUF (
    .I(resultin[4]),
    .O(resultin_4_IBUF_1)
  );
  IBUF   resultin_3_IBUF (
    .I(resultin[3]),
    .O(resultin_3_IBUF_2)
  );
  IBUF   resultin_2_IBUF (
    .I(resultin[2]),
    .O(resultin_2_IBUF_3)
  );
  IBUF   resultin_1_IBUF (
    .I(resultin[1]),
    .O(resultin_1_IBUF_4)
  );
  IBUF   resultin_0_IBUF (
    .I(resultin[0]),
    .O(resultin_0_IBUF_5)
  );
  IBUF   opcodeselin_2_IBUF (
    .I(opcodeselin[2]),
    .O(opcodeselin_2_IBUF_6)
  );
  IBUF   opcodeselin_1_IBUF (
    .I(opcodeselin[1]),
    .O(opcodeselin_1_IBUF_7)
  );
  IBUF   opcodeselin_0_IBUF (
    .I(opcodeselin[0]),
    .O(opcodeselin_0_IBUF_8)
  );
  IBUF   reset_n_IBUF (
    .I(reset_n),
    .O(reset_n_IBUF_10)
  );
  IBUF   push_IBUF (
    .I(push),
    .O(push_IBUF_11)
  );
  IBUF   pop_IBUF (
    .I(pop),
    .O(pop_IBUF_12)
  );
  OBUF   resultout_5_OBUF (
    .I(resultout_5_25),
    .O(resultout[5])
  );
  OBUF   resultout_4_OBUF (
    .I(resultout_4_26),
    .O(resultout[4])
  );
  OBUF   resultout_3_OBUF (
    .I(resultout_3_27),
    .O(resultout[3])
  );
  OBUF   resultout_2_OBUF (
    .I(resultout_2_28),
    .O(resultout[2])
  );
  OBUF   resultout_1_OBUF (
    .I(resultout_1_29),
    .O(resultout[1])
  );
  OBUF   resultout_0_OBUF (
    .I(resultout_0_30),
    .O(resultout[0])
  );
  OBUF   opcodeselout_2_OBUF (
    .I(opcodeselout_2_31),
    .O(opcodeselout[2])
  );
  OBUF   opcodeselout_1_OBUF (
    .I(opcodeselout_1_32),
    .O(opcodeselout[1])
  );
  OBUF   opcodeselout_0_OBUF (
    .I(opcodeselout_0_33),
    .O(opcodeselout[0])
  );
  OBUF   full_OBUF (
    .I(full_OBUF_34),
    .O(full)
  );
  OBUF   empty_OBUF (
    .I(empty_OBUF_39),
    .O(empty)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_9)
  );
  INV   reset_n_inv1_INV_0 (
    .I(reset_n_IBUF_10),
    .O(reset_n_inv)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

