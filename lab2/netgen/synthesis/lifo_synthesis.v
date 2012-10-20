////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.76xd
//  \   \         Application: netgen
//  /   /         Filename: lifo_synthesis.v
// /___/   /\     Timestamp: Sat Oct 20 13:32:16 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim lifo.ngc lifo_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: lifo.ngc
// Output file	: /home/hpw/Documents/EC551/LAB2/lab2/netgen/synthesis/lifo_synthesis.v
// # of Modules	: 1
// Design Name	: lifo
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

module lifo (
  clk, reset_n, push, pop, empty, full, resultin, opcodeselin, resulttos, opcodeseltos
);
  input clk;
  input reset_n;
  input push;
  input pop;
  output empty;
  output full;
  input [5 : 0] resultin;
  input [2 : 0] opcodeselin;
  output [5 : 0] resulttos;
  output [2 : 0] opcodeseltos;
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
  wire full_OBUF_31;
  wire empty_OBUF_32;
  wire use_Rmem_rd_42;
  wire reading;
  wire resulttos_5_OBUF_44;
  wire resulttos_4_OBUF_45;
  wire resulttos_3_OBUF_46;
  wire resulttos_2_OBUF_47;
  wire resulttos_1_OBUF_48;
  wire resulttos_0_OBUF_49;
  wire opcodeseltos_2_OBUF_50;
  wire opcodeseltos_1_OBUF_51;
  wire opcodeseltos_0_OBUF_52;
  wire writing_reading_AND_3_o;
  wire GND_1_o_GND_1_o_equal_13_o;
  wire GND_1_o_GND_1_o_equal_14_o;
  wire N1;
  wire use_Rmem_rd_glue_set_90;
  wire resulttos_shadow_0_rstpot_91;
  wire resulttos_shadow_1_rstpot_92;
  wire resulttos_shadow_2_rstpot_93;
  wire resulttos_shadow_3_rstpot_94;
  wire resulttos_shadow_4_rstpot_95;
  wire resulttos_shadow_5_rstpot_96;
  wire opcodeseltos_shadow_0_rstpot_97;
  wire opcodeseltos_shadow_1_rstpot_98;
  wire opcodeseltos_shadow_2_rstpot_99;
  wire use_Rmem_rd_rstpot_100;
  wire count_1_1_101;
  wire count_2_1_102;
  wire [5 : 0] resulttos_shadow;
  wire [2 : 0] opcodeseltos_shadow;
  wire [5 : 0] _n0072;
  wire [2 : 0] _n0073;
  wire [5 : 0] Rmem_rd;
  wire [2 : 0] Omem_rd;
  wire [2 : 0] next_count;
  wire [2 : 0] n0050;
  wire [2 : 0] count;
  GND   XST_GND (
    .G(N1)
  );
  FD   empty_2 (
    .C(clk_BUFGP_9),
    .D(GND_1_o_GND_1_o_equal_14_o),
    .Q(empty_OBUF_32)
  );
  FD   full_3 (
    .C(clk_BUFGP_9),
    .D(GND_1_o_GND_1_o_equal_13_o),
    .Q(full_OBUF_31)
  );
  FDE   Omem_rd_0 (
    .C(clk_BUFGP_9),
    .CE(reading),
    .D(_n0073[0]),
    .Q(Omem_rd[0])
  );
  FDE   Omem_rd_1 (
    .C(clk_BUFGP_9),
    .CE(reading),
    .D(_n0073[1]),
    .Q(Omem_rd[1])
  );
  FDE   Omem_rd_2 (
    .C(clk_BUFGP_9),
    .CE(reading),
    .D(_n0073[2]),
    .Q(Omem_rd[2])
  );
  FDE   Rmem_rd_0 (
    .C(clk_BUFGP_9),
    .CE(reading),
    .D(_n0072[0]),
    .Q(Rmem_rd[0])
  );
  FDE   Rmem_rd_1 (
    .C(clk_BUFGP_9),
    .CE(reading),
    .D(_n0072[1]),
    .Q(Rmem_rd[1])
  );
  FDE   Rmem_rd_2 (
    .C(clk_BUFGP_9),
    .CE(reading),
    .D(_n0072[2]),
    .Q(Rmem_rd[2])
  );
  FDE   Rmem_rd_3 (
    .C(clk_BUFGP_9),
    .CE(reading),
    .D(_n0072[3]),
    .Q(Rmem_rd[3])
  );
  FDE   Rmem_rd_4 (
    .C(clk_BUFGP_9),
    .CE(reading),
    .D(_n0072[4]),
    .Q(Rmem_rd[4])
  );
  FDE   Rmem_rd_5 (
    .C(clk_BUFGP_9),
    .CE(reading),
    .D(_n0072[5]),
    .Q(Rmem_rd[5])
  );
  FD   count_0 (
    .C(clk_BUFGP_9),
    .D(next_count[0]),
    .Q(count[0])
  );
  FD   count_1 (
    .C(clk_BUFGP_9),
    .D(next_count[1]),
    .Q(count[1])
  );
  FD   count_2 (
    .C(clk_BUFGP_9),
    .D(next_count[2]),
    .Q(count[2])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Rmem3 (
    .A0(n0050[0]),
    .A1(n0050[1]),
    .A2(n0050[2]),
    .A3(N1),
    .D(resulttos_2_OBUF_47),
    .WCLK(clk_BUFGP_9),
    .WE(writing_reading_AND_3_o),
    .O(_n0072[2])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Rmem1 (
    .A0(n0050[0]),
    .A1(n0050[1]),
    .A2(n0050[2]),
    .A3(N1),
    .D(resulttos_0_OBUF_49),
    .WCLK(clk_BUFGP_9),
    .WE(writing_reading_AND_3_o),
    .O(_n0072[0])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Rmem2 (
    .A0(n0050[0]),
    .A1(n0050[1]),
    .A2(n0050[2]),
    .A3(N1),
    .D(resulttos_1_OBUF_48),
    .WCLK(clk_BUFGP_9),
    .WE(writing_reading_AND_3_o),
    .O(_n0072[1])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Rmem4 (
    .A0(n0050[0]),
    .A1(n0050[1]),
    .A2(n0050[2]),
    .A3(N1),
    .D(resulttos_3_OBUF_46),
    .WCLK(clk_BUFGP_9),
    .WE(writing_reading_AND_3_o),
    .O(_n0072[3])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Rmem5 (
    .A0(n0050[0]),
    .A1(n0050[1]),
    .A2(n0050[2]),
    .A3(N1),
    .D(resulttos_4_OBUF_45),
    .WCLK(clk_BUFGP_9),
    .WE(writing_reading_AND_3_o),
    .O(_n0072[4])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Rmem6 (
    .A0(n0050[0]),
    .A1(n0050[1]),
    .A2(n0050[2]),
    .A3(N1),
    .D(resulttos_5_OBUF_44),
    .WCLK(clk_BUFGP_9),
    .WE(writing_reading_AND_3_o),
    .O(_n0072[5])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Omem1 (
    .A0(n0050[0]),
    .A1(n0050[1]),
    .A2(n0050[2]),
    .A3(N1),
    .D(opcodeseltos_0_OBUF_52),
    .WCLK(clk_BUFGP_9),
    .WE(writing_reading_AND_3_o),
    .O(_n0073[0])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Omem2 (
    .A0(n0050[0]),
    .A1(n0050[1]),
    .A2(n0050[2]),
    .A3(N1),
    .D(opcodeseltos_1_OBUF_51),
    .WCLK(clk_BUFGP_9),
    .WE(writing_reading_AND_3_o),
    .O(_n0073[1])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  Mram_Omem3 (
    .A0(n0050[0]),
    .A1(n0050[1]),
    .A2(n0050[2]),
    .A3(N1),
    .D(opcodeseltos_2_OBUF_50),
    .WCLK(clk_BUFGP_9),
    .WE(writing_reading_AND_3_o),
    .O(_n0073[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_resulttos61 (
    .I0(use_Rmem_rd_42),
    .I1(resulttos_shadow[5]),
    .I2(Rmem_rd[5]),
    .O(resulttos_5_OBUF_44)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_resulttos51 (
    .I0(use_Rmem_rd_42),
    .I1(resulttos_shadow[4]),
    .I2(Rmem_rd[4]),
    .O(resulttos_4_OBUF_45)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_resulttos41 (
    .I0(use_Rmem_rd_42),
    .I1(resulttos_shadow[3]),
    .I2(Rmem_rd[3]),
    .O(resulttos_3_OBUF_46)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_resulttos31 (
    .I0(use_Rmem_rd_42),
    .I1(resulttos_shadow[2]),
    .I2(Rmem_rd[2]),
    .O(resulttos_2_OBUF_47)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_resulttos21 (
    .I0(use_Rmem_rd_42),
    .I1(resulttos_shadow[1]),
    .I2(Rmem_rd[1]),
    .O(resulttos_1_OBUF_48)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_resulttos11 (
    .I0(use_Rmem_rd_42),
    .I1(resulttos_shadow[0]),
    .I2(Rmem_rd[0]),
    .O(resulttos_0_OBUF_49)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_opcodeseltos31 (
    .I0(use_Rmem_rd_42),
    .I1(opcodeseltos_shadow[2]),
    .I2(Omem_rd[2]),
    .O(opcodeseltos_2_OBUF_50)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_opcodeseltos21 (
    .I0(use_Rmem_rd_42),
    .I1(opcodeseltos_shadow[1]),
    .I2(Omem_rd[1]),
    .O(opcodeseltos_1_OBUF_51)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_opcodeseltos11 (
    .I0(use_Rmem_rd_42),
    .I1(opcodeseltos_shadow[0]),
    .I2(Omem_rd[0]),
    .O(opcodeseltos_0_OBUF_52)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  reading1 (
    .I0(pop_IBUF_12),
    .I1(count[0]),
    .I2(count[1]),
    .I3(count[2]),
    .O(reading)
  );
  LUT4 #(
    .INIT ( 16'hFE01 ))
  Mmux_n005031 (
    .I0(push_IBUF_11),
    .I1(count_1_1_101),
    .I2(count[0]),
    .I3(count[2]),
    .O(n0050[2])
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
  OBUF   resulttos_5_OBUF (
    .I(resulttos_5_OBUF_44),
    .O(resulttos[5])
  );
  OBUF   resulttos_4_OBUF (
    .I(resulttos_4_OBUF_45),
    .O(resulttos[4])
  );
  OBUF   resulttos_3_OBUF (
    .I(resulttos_3_OBUF_46),
    .O(resulttos[3])
  );
  OBUF   resulttos_2_OBUF (
    .I(resulttos_2_OBUF_47),
    .O(resulttos[2])
  );
  OBUF   resulttos_1_OBUF (
    .I(resulttos_1_OBUF_48),
    .O(resulttos[1])
  );
  OBUF   resulttos_0_OBUF (
    .I(resulttos_0_OBUF_49),
    .O(resulttos[0])
  );
  OBUF   opcodeseltos_2_OBUF (
    .I(opcodeseltos_2_OBUF_50),
    .O(opcodeseltos[2])
  );
  OBUF   opcodeseltos_1_OBUF (
    .I(opcodeseltos_1_OBUF_51),
    .O(opcodeseltos[1])
  );
  OBUF   opcodeseltos_0_OBUF (
    .I(opcodeseltos_0_OBUF_52),
    .O(opcodeseltos[0])
  );
  OBUF   empty_OBUF (
    .I(empty_OBUF_32),
    .O(empty)
  );
  OBUF   full_OBUF (
    .I(full_OBUF_31),
    .O(full)
  );
  LUT6 #(
    .INIT ( 64'h828282A088282828 ))
  Mmux_next_count11 (
    .I0(reset_n_IBUF_10),
    .I1(count[0]),
    .I2(push_IBUF_11),
    .I3(count[2]),
    .I4(count[1]),
    .I5(pop_IBUF_12),
    .O(next_count[0])
  );
  LUT6 #(
    .INIT ( 64'h88828880A8882888 ))
  Mmux_next_count21 (
    .I0(reset_n_IBUF_10),
    .I1(count[1]),
    .I2(push_IBUF_11),
    .I3(count[0]),
    .I4(count[2]),
    .I5(pop_IBUF_12),
    .O(next_count[1])
  );
  LUT6 #(
    .INIT ( 64'h88888880A8888888 ))
  Mmux_next_count31 (
    .I0(reset_n_IBUF_10),
    .I1(count[2]),
    .I2(count[0]),
    .I3(push_IBUF_11),
    .I4(count[1]),
    .I5(pop_IBUF_12),
    .O(next_count[2])
  );
  LUT5 #(
    .INIT ( 32'hFF8C0033 ))
  Mmux_n005021 (
    .I0(pop_IBUF_12),
    .I1(push_IBUF_11),
    .I2(count_2_1_102),
    .I3(count[0]),
    .I4(count[1]),
    .O(n0050[1])
  );
  LUT5 #(
    .INIT ( 32'h8CCC7333 ))
  Mmux_n005011 (
    .I0(pop_IBUF_12),
    .I1(push_IBUF_11),
    .I2(count_2_1_102),
    .I3(count_1_1_101),
    .I4(count[0]),
    .O(n0050[0])
  );
  LUT5 #(
    .INIT ( 32'h0044444C ))
  writing_reading_AND_3_o1 (
    .I0(pop_IBUF_12),
    .I1(push_IBUF_11),
    .I2(count[0]),
    .I3(count[2]),
    .I4(count[1]),
    .O(writing_reading_AND_3_o)
  );
  LUT6 #(
    .INIT ( 64'h0080800008800080 ))
  \GND_1_o_GND_1_o_equal_13_o<2>1  (
    .I0(count[2]),
    .I1(reset_n_IBUF_10),
    .I2(count[1]),
    .I3(count[0]),
    .I4(push_IBUF_11),
    .I5(pop_IBUF_12),
    .O(GND_1_o_GND_1_o_equal_13_o)
  );
  LUT6 #(
    .INIT ( 64'h01010001FFFFFFFF ))
  \GND_1_o_GND_1_o_equal_14_o<2>1  (
    .I0(push_IBUF_11),
    .I1(count[2]),
    .I2(count[1]),
    .I3(count[0]),
    .I4(pop_IBUF_12),
    .I5(reset_n_IBUF_10),
    .O(GND_1_o_GND_1_o_equal_14_o)
  );
  LUT6 #(
    .INIT ( 64'h7555755544444440 ))
  use_Rmem_rd_glue_set (
    .I0(push_IBUF_11),
    .I1(pop_IBUF_12),
    .I2(count[1]),
    .I3(count[2]),
    .I4(count[0]),
    .I5(use_Rmem_rd_42),
    .O(use_Rmem_rd_glue_set_90)
  );
  FD   resulttos_shadow_0 (
    .C(clk_BUFGP_9),
    .D(resulttos_shadow_0_rstpot_91),
    .Q(resulttos_shadow[0])
  );
  FD   resulttos_shadow_1 (
    .C(clk_BUFGP_9),
    .D(resulttos_shadow_1_rstpot_92),
    .Q(resulttos_shadow[1])
  );
  FD   resulttos_shadow_2 (
    .C(clk_BUFGP_9),
    .D(resulttos_shadow_2_rstpot_93),
    .Q(resulttos_shadow[2])
  );
  FD   resulttos_shadow_3 (
    .C(clk_BUFGP_9),
    .D(resulttos_shadow_3_rstpot_94),
    .Q(resulttos_shadow[3])
  );
  FD   resulttos_shadow_4 (
    .C(clk_BUFGP_9),
    .D(resulttos_shadow_4_rstpot_95),
    .Q(resulttos_shadow[4])
  );
  FD   resulttos_shadow_5 (
    .C(clk_BUFGP_9),
    .D(resulttos_shadow_5_rstpot_96),
    .Q(resulttos_shadow[5])
  );
  FD   opcodeseltos_shadow_0 (
    .C(clk_BUFGP_9),
    .D(opcodeseltos_shadow_0_rstpot_97),
    .Q(opcodeseltos_shadow[0])
  );
  FD   opcodeseltos_shadow_1 (
    .C(clk_BUFGP_9),
    .D(opcodeseltos_shadow_1_rstpot_98),
    .Q(opcodeseltos_shadow[1])
  );
  FD   opcodeseltos_shadow_2 (
    .C(clk_BUFGP_9),
    .D(opcodeseltos_shadow_2_rstpot_99),
    .Q(opcodeseltos_shadow[2])
  );
  LUT6 #(
    .INIT ( 64'hDDDDFDDD88880888 ))
  resulttos_shadow_0_rstpot (
    .I0(push_IBUF_11),
    .I1(resultin_0_IBUF_5),
    .I2(count[1]),
    .I3(count[2]),
    .I4(pop_IBUF_12),
    .I5(resulttos_shadow[0]),
    .O(resulttos_shadow_0_rstpot_91)
  );
  LUT6 #(
    .INIT ( 64'hDDDDFDDD88880888 ))
  resulttos_shadow_1_rstpot (
    .I0(push_IBUF_11),
    .I1(resultin_1_IBUF_4),
    .I2(count[1]),
    .I3(count[2]),
    .I4(pop_IBUF_12),
    .I5(resulttos_shadow[1]),
    .O(resulttos_shadow_1_rstpot_92)
  );
  LUT6 #(
    .INIT ( 64'hDDDDFDDD88880888 ))
  resulttos_shadow_2_rstpot (
    .I0(push_IBUF_11),
    .I1(resultin_2_IBUF_3),
    .I2(count[1]),
    .I3(count[2]),
    .I4(pop_IBUF_12),
    .I5(resulttos_shadow[2]),
    .O(resulttos_shadow_2_rstpot_93)
  );
  LUT6 #(
    .INIT ( 64'hDDDDFDDD88880888 ))
  resulttos_shadow_3_rstpot (
    .I0(push_IBUF_11),
    .I1(resultin_3_IBUF_2),
    .I2(count[1]),
    .I3(count[2]),
    .I4(pop_IBUF_12),
    .I5(resulttos_shadow[3]),
    .O(resulttos_shadow_3_rstpot_94)
  );
  LUT6 #(
    .INIT ( 64'hDDDDFDDD88880888 ))
  resulttos_shadow_4_rstpot (
    .I0(push_IBUF_11),
    .I1(resultin_4_IBUF_1),
    .I2(count[1]),
    .I3(count[2]),
    .I4(pop_IBUF_12),
    .I5(resulttos_shadow[4]),
    .O(resulttos_shadow_4_rstpot_95)
  );
  LUT6 #(
    .INIT ( 64'hDDDDFDDD88880888 ))
  resulttos_shadow_5_rstpot (
    .I0(push_IBUF_11),
    .I1(resultin_5_IBUF_0),
    .I2(count[1]),
    .I3(count[2]),
    .I4(pop_IBUF_12),
    .I5(resulttos_shadow[5]),
    .O(resulttos_shadow_5_rstpot_96)
  );
  LUT6 #(
    .INIT ( 64'hDDDDFDDD88880888 ))
  opcodeseltos_shadow_0_rstpot (
    .I0(push_IBUF_11),
    .I1(opcodeselin_0_IBUF_8),
    .I2(count[1]),
    .I3(count[2]),
    .I4(pop_IBUF_12),
    .I5(opcodeseltos_shadow[0]),
    .O(opcodeseltos_shadow_0_rstpot_97)
  );
  LUT6 #(
    .INIT ( 64'hDDDDFDDD88880888 ))
  opcodeseltos_shadow_1_rstpot (
    .I0(push_IBUF_11),
    .I1(opcodeselin_1_IBUF_7),
    .I2(count[1]),
    .I3(count[2]),
    .I4(pop_IBUF_12),
    .I5(opcodeseltos_shadow[1]),
    .O(opcodeseltos_shadow_1_rstpot_98)
  );
  LUT6 #(
    .INIT ( 64'hDDDDFDDD88880888 ))
  opcodeseltos_shadow_2_rstpot (
    .I0(push_IBUF_11),
    .I1(opcodeselin_2_IBUF_6),
    .I2(count[1]),
    .I3(count[2]),
    .I4(pop_IBUF_12),
    .I5(opcodeseltos_shadow[2]),
    .O(opcodeseltos_shadow_2_rstpot_99)
  );
  FD   use_Rmem_rd (
    .C(clk_BUFGP_9),
    .D(use_Rmem_rd_rstpot_100),
    .Q(use_Rmem_rd_42)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  use_Rmem_rd_rstpot (
    .I0(use_Rmem_rd_glue_set_90),
    .I1(reset_n_IBUF_10),
    .O(use_Rmem_rd_rstpot_100)
  );
  FD   count_1_1 (
    .C(clk_BUFGP_9),
    .D(next_count[1]),
    .Q(count_1_1_101)
  );
  FD   count_2_1 (
    .C(clk_BUFGP_9),
    .D(next_count[2]),
    .Q(count_2_1_102)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_9)
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

