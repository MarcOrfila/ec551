////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.76xd
//  \   \         Application: netgen
//  /   /         Filename: topmodule_synthesis.v
// /___/   /\     Timestamp: Sat Oct 20 14:05:46 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim topmodule.ngc topmodule_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: topmodule.ngc
// Output file	: /home/hpw/Documents/EC551/LAB2/lab2/netgen/synthesis/topmodule_synthesis.v
// # of Modules	: 1
// Design Name	: topmodule
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

module topmodule (
  mode, executein, readin, clk, reset_n, full, empty, A, Bopcode, display, displayctl
);
  input mode;
  input executein;
  input readin;
  input clk;
  input reset_n;
  output full;
  output empty;
  input [2 : 0] A;
  input [2 : 0] Bopcode;
  output [7 : 0] display;
  output [3 : 0] displayctl;
  wire A_2_IBUF_0;
  wire A_1_IBUF_1;
  wire A_0_IBUF_2;
  wire Bopcode_2_IBUF_3;
  wire Bopcode_1_IBUF_4;
  wire Bopcode_0_IBUF_5;
  wire mode_IBUF_6;
  wire executein_IBUF_7;
  wire readin_IBUF_8;
  wire clk_BUFGP_9;
  wire reset_n_IBUF_10;
  wire \executedebouncer/clean_25 ;
  wire \readdebouncer/clean_26 ;
  wire \clkdiv1/clk_300hz_BUFG_27 ;
  wire \lifo1/empty_37 ;
  wire \lifo1/full_38 ;
  wire displayctl_2_OBUF_39;
  wire displayctl_1_OBUF_40;
  wire displayctl_0_OBUF_41;
  wire display_7_OBUF_42;
  wire display_6_OBUF_43;
  wire display_5_OBUF_44;
  wire display_4_OBUF_45;
  wire display_3_OBUF_46;
  wire display_2_OBUF_47;
  wire display_1_OBUF_48;
  wire displayctl_3_OBUF_49;
  wire display_0_OBUF_50;
  wire mode_inv;
  wire \decoder1/Mram_opcodeout ;
  wire \decoder1/Mram_opcodeout1 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_109 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_110 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_111 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<4> ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<3> ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<3> ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<2> ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<2> ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<1> ;
  wire \alu1/Madd_n0036[3:0]_lut<2> ;
  wire \alu1/Madd_n0036[3:0]_lut<1> ;
  wire \alu1/Madd_n0036[3:0]_lut<0> ;
  wire \alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<0> ;
  wire \alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<1> ;
  wire \alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<2> ;
  wire \alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<3> ;
  wire \alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<4> ;
  wire \alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<5> ;
  wire \readdebouncer/Mcount_countpushed7 ;
  wire \readdebouncer/Mcount_countpushed6 ;
  wire \readdebouncer/Mcount_countpushed5 ;
  wire \readdebouncer/Mcount_countpushed4 ;
  wire \readdebouncer/Mcount_countpushed3 ;
  wire \readdebouncer/Mcount_countpushed2 ;
  wire \readdebouncer/Mcount_countpushed1 ;
  wire \readdebouncer/Mcount_countpushed ;
  wire \readdebouncer/_n0063_inv_154 ;
  wire \readdebouncer/Mcount_countstill7 ;
  wire \readdebouncer/Mcount_countstill6 ;
  wire \readdebouncer/Mcount_countstill5 ;
  wire \readdebouncer/Mcount_countstill4 ;
  wire \readdebouncer/Mcount_countstill3 ;
  wire \readdebouncer/Mcount_countstill2 ;
  wire \readdebouncer/Mcount_countstill1 ;
  wire \readdebouncer/Mcount_countstill ;
  wire \readdebouncer/noisy_inv ;
  wire \readdebouncer/_n0066_inv_179 ;
  wire \readdebouncer/pushed_180 ;
  wire \readdebouncer/still_181 ;
  wire \executedebouncer/Mcount_countpushed7 ;
  wire \executedebouncer/Mcount_countpushed6 ;
  wire \executedebouncer/Mcount_countpushed5 ;
  wire \executedebouncer/Mcount_countpushed4 ;
  wire \executedebouncer/Mcount_countpushed3 ;
  wire \executedebouncer/Mcount_countpushed2 ;
  wire \executedebouncer/Mcount_countpushed1 ;
  wire \executedebouncer/Mcount_countpushed ;
  wire \executedebouncer/_n0063_inv_221 ;
  wire \executedebouncer/Mcount_countstill7 ;
  wire \executedebouncer/Mcount_countstill6 ;
  wire \executedebouncer/Mcount_countstill5 ;
  wire \executedebouncer/Mcount_countstill4 ;
  wire \executedebouncer/Mcount_countstill3 ;
  wire \executedebouncer/Mcount_countstill2 ;
  wire \executedebouncer/Mcount_countstill1 ;
  wire \executedebouncer/Mcount_countstill ;
  wire \executedebouncer/noisy_inv ;
  wire \executedebouncer/_n0066_inv_246 ;
  wire \executedebouncer/pushed_247 ;
  wire \executedebouncer/still_248 ;
  wire \lifo1/GND_7_o_GND_7_o_equal_14_o ;
  wire \lifo1/GND_7_o_GND_7_o_equal_13_o ;
  wire \lifo1/writing_reading_AND_12_o ;
  wire \lifo1/reading ;
  wire \lifo1/writing ;
  wire \lifo1/use_mem_read_279 ;
  wire \LED/Mmux_currentdigit<0>2212 ;
  wire \LED/Mmux_currentdigit<0>214 ;
  wire \LED/Mram_segments41_309 ;
  wire \LED/Mcount_counter1 ;
  wire \LED/Mcount_counter ;
  wire \LED/reset_n_inv ;
  wire \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ;
  wire \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT3 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT32 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33_322 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT4 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41_324 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43_325 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT2 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21_327 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22_328 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23_329 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT6 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61_331 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62_332 ;
  wire N01;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14_334 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15_335 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16_336 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17_337 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT18 ;
  wire N2;
  wire N6;
  wire N10;
  wire N14;
  wire \LED/Mmux_currentdigit<0>26_343 ;
  wire \LED/Mmux_currentdigit<0>261_344 ;
  wire \LED/Mmux_currentdigit<0>262_345 ;
  wire \LED/Mmux_currentdigit<0>2 ;
  wire \LED/Mmux_currentdigit<0>21_347 ;
  wire \LED/Mmux_currentdigit<0>22 ;
  wire \LED/Mmux_currentdigit<0>23_349 ;
  wire \LED/Mmux_currentdigit<0>24_350 ;
  wire N18;
  wire \LED/Mmux_currentdigit<0>222_352 ;
  wire \LED/Mmux_currentdigit<0>223_353 ;
  wire \LED/Mmux_currentdigit<0>224_354 ;
  wire \LED/Mmux_currentdigit<0>225_355 ;
  wire \LED/Mmux_currentdigit<0>228_356 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<1>_rt_382 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<2>_rt_383 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<3>_rt_384 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<4>_rt_385 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<5>_rt_386 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<6>_rt_387 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<7>_rt_388 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<8>_rt_389 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<9>_rt_390 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<10>_rt_391 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<11>_rt_392 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<12>_rt_393 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<13>_rt_394 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<14>_rt_395 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<15>_rt_396 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<16>_rt_397 ;
  wire \clkdiv1/Mcount_counter_300hz_xor<17>_rt_398 ;
  wire \readdebouncer/pushed_rstpot_399 ;
  wire \readdebouncer/still_rstpot_400 ;
  wire \readdebouncer/clean_rstpot_401 ;
  wire \executedebouncer/pushed_rstpot_402 ;
  wire \executedebouncer/still_rstpot_403 ;
  wire \executedebouncer/clean_rstpot_404 ;
  wire \lifo1/use_mem_read_rstpot_405 ;
  wire \clkdiv1/counter_300hz_0_rstpot_406 ;
  wire N20;
  wire N22;
  wire \clkdiv1/clk_300hz_rstpot1_409 ;
  wire N24;
  wire N26;
  wire N28;
  wire \clkdiv1/counter_300hz_2_rstpot_413 ;
  wire \clkdiv1/counter_300hz_1_rstpot_414 ;
  wire \clkdiv1/counter_300hz_5_rstpot_415 ;
  wire \clkdiv1/counter_300hz_3_rstpot_416 ;
  wire \clkdiv1/counter_300hz_4_rstpot_417 ;
  wire \clkdiv1/counter_300hz_8_rstpot_418 ;
  wire \clkdiv1/counter_300hz_6_rstpot_419 ;
  wire \clkdiv1/counter_300hz_7_rstpot_420 ;
  wire \clkdiv1/counter_300hz_11_rstpot_421 ;
  wire \clkdiv1/counter_300hz_9_rstpot_422 ;
  wire \clkdiv1/counter_300hz_10_rstpot_423 ;
  wire \clkdiv1/counter_300hz_14_rstpot_424 ;
  wire \clkdiv1/counter_300hz_12_rstpot_425 ;
  wire \clkdiv1/counter_300hz_13_rstpot_426 ;
  wire \clkdiv1/counter_300hz_17_rstpot_427 ;
  wire \clkdiv1/counter_300hz_15_rstpot_428 ;
  wire \clkdiv1/counter_300hz_16_rstpot_429 ;
  wire \executedebouncer/clean_1_430 ;
  wire \clkdiv1/clk_300hz_431 ;
  wire [5 : 0] \alu1/f ;
  wire [2 : 0] \alu1/opcodesel ;
  wire [2 : 0] B;
  wire [2 : 0] opcodein;
  wire [5 : 0] resultLIFOLED;
  wire [2 : 0] opcodeselLIFOLED;
  wire [17 : 0] \clkdiv1/counter_300hz ;
  wire [17 : 0] Result;
  wire [0 : 0] \clkdiv1/Mcount_counter_300hz_lut ;
  wire [16 : 0] \clkdiv1/Mcount_counter_300hz_cy ;
  wire [1 : 0] \alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy ;
  wire [1 : 1] \alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_lut ;
  wire [7 : 0] \readdebouncer/Mcount_countpushed_lut ;
  wire [6 : 0] \readdebouncer/Mcount_countpushed_cy ;
  wire [7 : 0] \readdebouncer/Mcount_countstill_lut ;
  wire [6 : 0] \readdebouncer/Mcount_countstill_cy ;
  wire [7 : 0] \readdebouncer/countstill ;
  wire [7 : 0] \readdebouncer/countpushed ;
  wire [7 : 0] \executedebouncer/Mcount_countpushed_lut ;
  wire [6 : 0] \executedebouncer/Mcount_countpushed_cy ;
  wire [7 : 0] \executedebouncer/Mcount_countstill_lut ;
  wire [6 : 0] \executedebouncer/Mcount_countstill_cy ;
  wire [7 : 0] \executedebouncer/countstill ;
  wire [7 : 0] \executedebouncer/countpushed ;
  wire [2 : 0] \lifo1/count ;
  wire [2 : 0] \lifo1/n0046 ;
  wire [2 : 0] \lifo1/next_count ;
  wire [2 : 0] \lifo1/Omem_rd ;
  wire [5 : 0] \lifo1/Rmem_rd ;
  wire [2 : 0] \lifo1/_n0069 ;
  wire [5 : 0] \lifo1/_n0068 ;
  wire [2 : 0] \lifo1/opcodeseltos_shadow ;
  wire [5 : 0] \lifo1/resulttos_shadow ;
  wire [1 : 0] \LED/currentdigit ;
  wire [1 : 0] \LED/counter ;
  wire [17 : 17] \clkdiv1/GND_3_o_GND_3_o_equal_5_o ;
  GND   XST_GND (
    .G(displayctl_3_OBUF_49)
  );
  VCC   XST_VCC (
    .P(display_0_OBUF_50)
  );
  FDCE   opcodein_0 (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_0_IBUF_5),
    .Q(opcodein[0])
  );
  FDCE   opcodein_1 (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_1_IBUF_4),
    .Q(opcodein[1])
  );
  FDCE   opcodein_2 (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_2_IBUF_3),
    .Q(opcodein[2])
  );
  FDCE   B_0 (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_0_IBUF_5),
    .Q(B[0])
  );
  FDCE   B_1 (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_1_IBUF_4),
    .Q(B[1])
  );
  FDCE   B_2 (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_2_IBUF_3),
    .Q(B[2])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<0>  (
    .CI(displayctl_3_OBUF_49),
    .DI(display_0_OBUF_50),
    .S(\clkdiv1/Mcount_counter_300hz_lut [0]),
    .O(\clkdiv1/Mcount_counter_300hz_cy [0])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<0>  (
    .CI(displayctl_3_OBUF_49),
    .LI(\clkdiv1/Mcount_counter_300hz_lut [0]),
    .O(Result[0])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<1>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [0]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_382 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [1])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<1>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [0]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_382 ),
    .O(Result[1])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<2>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [1]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_383 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [2])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<2>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [1]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_383 ),
    .O(Result[2])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<3>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [2]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_384 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [3])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<3>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [2]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_384 ),
    .O(Result[3])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<4>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [3]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_385 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [4])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<4>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [3]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_385 ),
    .O(Result[4])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<5>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [4]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_386 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [5])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<5>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [4]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_386 ),
    .O(Result[5])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<6>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [5]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_387 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [6])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<6>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [5]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_387 ),
    .O(Result[6])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<7>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [6]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_388 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [7])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<7>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [6]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_388 ),
    .O(Result[7])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<8>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [7]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_389 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [8])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<8>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [7]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_389 ),
    .O(Result[8])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<9>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [8]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_390 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [9])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<9>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [8]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_390 ),
    .O(Result[9])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<10>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [9]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_391 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [10])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<10>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [9]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_391 ),
    .O(Result[10])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<11>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [10]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_392 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [11])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<11>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [10]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_392 ),
    .O(Result[11])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<12>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [11]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_393 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [12])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<12>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [11]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_393 ),
    .O(Result[12])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<13>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [12]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_394 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [13])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<13>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [12]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_394 ),
    .O(Result[13])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<14>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [13]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_395 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [14])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<14>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [13]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_395 ),
    .O(Result[14])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<15>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [14]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_396 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [15])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<15>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [14]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_396 ),
    .O(Result[15])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<16>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [15]),
    .DI(displayctl_3_OBUF_49),
    .S(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_397 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [16])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<16>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [15]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_397 ),
    .O(Result[16])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<17>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [16]),
    .LI(\clkdiv1/Mcount_counter_300hz_xor<17>_rt_398 ),
    .O(Result[17])
  );
  FD   \alu1/f_5  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<5> ),
    .Q(\alu1/f [5])
  );
  FD   \alu1/f_4  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<4> ),
    .Q(\alu1/f [4])
  );
  FD   \alu1/f_3  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<3> ),
    .Q(\alu1/f [3])
  );
  FD   \alu1/f_2  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<2> ),
    .Q(\alu1/f [2])
  );
  FD   \alu1/f_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<1> ),
    .Q(\alu1/f [1])
  );
  FD   \alu1/f_0  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<0> ),
    .Q(\alu1/f [0])
  );
  FD   \alu1/opcodesel_2  (
    .C(\executedebouncer/clean_25 ),
    .D(opcodein[2]),
    .Q(\alu1/opcodesel [2])
  );
  FD   \alu1/opcodesel_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\decoder1/Mram_opcodeout1 ),
    .Q(\alu1/opcodesel [1])
  );
  FD   \alu1/opcodesel_0  (
    .C(\executedebouncer/clean_25 ),
    .D(\decoder1/Mram_opcodeout ),
    .Q(\alu1/opcodesel [0])
  );
  FDCE   \readdebouncer/countstill_7  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0066_inv_179 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill7 ),
    .Q(\readdebouncer/countstill [7])
  );
  FDCE   \readdebouncer/countstill_6  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0066_inv_179 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill6 ),
    .Q(\readdebouncer/countstill [6])
  );
  FDCE   \readdebouncer/countstill_5  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0066_inv_179 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill5 ),
    .Q(\readdebouncer/countstill [5])
  );
  FDCE   \readdebouncer/countstill_4  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0066_inv_179 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill4 ),
    .Q(\readdebouncer/countstill [4])
  );
  FDCE   \readdebouncer/countstill_3  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0066_inv_179 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill3 ),
    .Q(\readdebouncer/countstill [3])
  );
  FDCE   \readdebouncer/countstill_2  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0066_inv_179 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill2 ),
    .Q(\readdebouncer/countstill [2])
  );
  FDCE   \readdebouncer/countstill_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0066_inv_179 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill1 ),
    .Q(\readdebouncer/countstill [1])
  );
  FDCE   \readdebouncer/countstill_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0066_inv_179 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill ),
    .Q(\readdebouncer/countstill [0])
  );
  FDCE   \readdebouncer/countpushed_7  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0063_inv_154 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed7 ),
    .Q(\readdebouncer/countpushed [7])
  );
  FDCE   \readdebouncer/countpushed_6  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0063_inv_154 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed6 ),
    .Q(\readdebouncer/countpushed [6])
  );
  FDCE   \readdebouncer/countpushed_5  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0063_inv_154 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed5 ),
    .Q(\readdebouncer/countpushed [5])
  );
  FDCE   \readdebouncer/countpushed_4  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0063_inv_154 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed4 ),
    .Q(\readdebouncer/countpushed [4])
  );
  FDCE   \readdebouncer/countpushed_3  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0063_inv_154 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed3 ),
    .Q(\readdebouncer/countpushed [3])
  );
  FDCE   \readdebouncer/countpushed_2  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0063_inv_154 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed2 ),
    .Q(\readdebouncer/countpushed [2])
  );
  FDCE   \readdebouncer/countpushed_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0063_inv_154 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed1 ),
    .Q(\readdebouncer/countpushed [1])
  );
  FDCE   \readdebouncer/countpushed_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\readdebouncer/_n0063_inv_154 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed ),
    .Q(\readdebouncer/countpushed [0])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<7>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [6]),
    .LI(\readdebouncer/Mcount_countpushed_lut [7]),
    .O(\readdebouncer/Mcount_countpushed7 )
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<6>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [5]),
    .LI(\readdebouncer/Mcount_countpushed_lut [6]),
    .O(\readdebouncer/Mcount_countpushed6 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<6>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [5]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countpushed_lut [6]),
    .O(\readdebouncer/Mcount_countpushed_cy [6])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<5>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [4]),
    .LI(\readdebouncer/Mcount_countpushed_lut [5]),
    .O(\readdebouncer/Mcount_countpushed5 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<5>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [4]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countpushed_lut [5]),
    .O(\readdebouncer/Mcount_countpushed_cy [5])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<4>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [3]),
    .LI(\readdebouncer/Mcount_countpushed_lut [4]),
    .O(\readdebouncer/Mcount_countpushed4 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<4>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [3]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countpushed_lut [4]),
    .O(\readdebouncer/Mcount_countpushed_cy [4])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<3>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [2]),
    .LI(\readdebouncer/Mcount_countpushed_lut [3]),
    .O(\readdebouncer/Mcount_countpushed3 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<3>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [2]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countpushed_lut [3]),
    .O(\readdebouncer/Mcount_countpushed_cy [3])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<2>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [1]),
    .LI(\readdebouncer/Mcount_countpushed_lut [2]),
    .O(\readdebouncer/Mcount_countpushed2 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<2>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [1]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countpushed_lut [2]),
    .O(\readdebouncer/Mcount_countpushed_cy [2])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<1>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [0]),
    .LI(\readdebouncer/Mcount_countpushed_lut [1]),
    .O(\readdebouncer/Mcount_countpushed1 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<1>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [0]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countpushed_lut [1]),
    .O(\readdebouncer/Mcount_countpushed_cy [1])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<0>  (
    .CI(readin_IBUF_8),
    .LI(\readdebouncer/Mcount_countpushed_lut [0]),
    .O(\readdebouncer/Mcount_countpushed )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<0>  (
    .CI(readin_IBUF_8),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countpushed_lut [0]),
    .O(\readdebouncer/Mcount_countpushed_cy [0])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<7>  (
    .CI(\readdebouncer/Mcount_countstill_cy [6]),
    .LI(\readdebouncer/Mcount_countstill_lut [7]),
    .O(\readdebouncer/Mcount_countstill7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<7>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [7]),
    .I2(displayctl_3_OBUF_49),
    .O(\readdebouncer/Mcount_countstill_lut [7])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<6>  (
    .CI(\readdebouncer/Mcount_countstill_cy [5]),
    .LI(\readdebouncer/Mcount_countstill_lut [6]),
    .O(\readdebouncer/Mcount_countstill6 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<6>  (
    .CI(\readdebouncer/Mcount_countstill_cy [5]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countstill_lut [6]),
    .O(\readdebouncer/Mcount_countstill_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<6>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [6]),
    .I2(displayctl_3_OBUF_49),
    .O(\readdebouncer/Mcount_countstill_lut [6])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<5>  (
    .CI(\readdebouncer/Mcount_countstill_cy [4]),
    .LI(\readdebouncer/Mcount_countstill_lut [5]),
    .O(\readdebouncer/Mcount_countstill5 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<5>  (
    .CI(\readdebouncer/Mcount_countstill_cy [4]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countstill_lut [5]),
    .O(\readdebouncer/Mcount_countstill_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<5>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [5]),
    .I2(displayctl_3_OBUF_49),
    .O(\readdebouncer/Mcount_countstill_lut [5])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<4>  (
    .CI(\readdebouncer/Mcount_countstill_cy [3]),
    .LI(\readdebouncer/Mcount_countstill_lut [4]),
    .O(\readdebouncer/Mcount_countstill4 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<4>  (
    .CI(\readdebouncer/Mcount_countstill_cy [3]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countstill_lut [4]),
    .O(\readdebouncer/Mcount_countstill_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<4>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [4]),
    .I2(displayctl_3_OBUF_49),
    .O(\readdebouncer/Mcount_countstill_lut [4])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<3>  (
    .CI(\readdebouncer/Mcount_countstill_cy [2]),
    .LI(\readdebouncer/Mcount_countstill_lut [3]),
    .O(\readdebouncer/Mcount_countstill3 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<3>  (
    .CI(\readdebouncer/Mcount_countstill_cy [2]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countstill_lut [3]),
    .O(\readdebouncer/Mcount_countstill_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<3>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [3]),
    .I2(displayctl_3_OBUF_49),
    .O(\readdebouncer/Mcount_countstill_lut [3])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<2>  (
    .CI(\readdebouncer/Mcount_countstill_cy [1]),
    .LI(\readdebouncer/Mcount_countstill_lut [2]),
    .O(\readdebouncer/Mcount_countstill2 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<2>  (
    .CI(\readdebouncer/Mcount_countstill_cy [1]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countstill_lut [2]),
    .O(\readdebouncer/Mcount_countstill_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<2>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [2]),
    .I2(displayctl_3_OBUF_49),
    .O(\readdebouncer/Mcount_countstill_lut [2])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<1>  (
    .CI(\readdebouncer/Mcount_countstill_cy [0]),
    .LI(\readdebouncer/Mcount_countstill_lut [1]),
    .O(\readdebouncer/Mcount_countstill1 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<1>  (
    .CI(\readdebouncer/Mcount_countstill_cy [0]),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countstill_lut [1]),
    .O(\readdebouncer/Mcount_countstill_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<1>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [1]),
    .I2(displayctl_3_OBUF_49),
    .O(\readdebouncer/Mcount_countstill_lut [1])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<0>  (
    .CI(\readdebouncer/noisy_inv ),
    .LI(\readdebouncer/Mcount_countstill_lut [0]),
    .O(\readdebouncer/Mcount_countstill )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<0>  (
    .CI(\readdebouncer/noisy_inv ),
    .DI(displayctl_3_OBUF_49),
    .S(\readdebouncer/Mcount_countstill_lut [0]),
    .O(\readdebouncer/Mcount_countstill_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<0>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [0]),
    .I2(displayctl_3_OBUF_49),
    .O(\readdebouncer/Mcount_countstill_lut [0])
  );
  FDCE   \executedebouncer/countstill_7  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0066_inv_246 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill7 ),
    .Q(\executedebouncer/countstill [7])
  );
  FDCE   \executedebouncer/countstill_6  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0066_inv_246 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill6 ),
    .Q(\executedebouncer/countstill [6])
  );
  FDCE   \executedebouncer/countstill_5  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0066_inv_246 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill5 ),
    .Q(\executedebouncer/countstill [5])
  );
  FDCE   \executedebouncer/countstill_4  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0066_inv_246 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill4 ),
    .Q(\executedebouncer/countstill [4])
  );
  FDCE   \executedebouncer/countstill_3  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0066_inv_246 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill3 ),
    .Q(\executedebouncer/countstill [3])
  );
  FDCE   \executedebouncer/countstill_2  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0066_inv_246 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill2 ),
    .Q(\executedebouncer/countstill [2])
  );
  FDCE   \executedebouncer/countstill_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0066_inv_246 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill1 ),
    .Q(\executedebouncer/countstill [1])
  );
  FDCE   \executedebouncer/countstill_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0066_inv_246 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill ),
    .Q(\executedebouncer/countstill [0])
  );
  FDCE   \executedebouncer/countpushed_7  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0063_inv_221 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed7 ),
    .Q(\executedebouncer/countpushed [7])
  );
  FDCE   \executedebouncer/countpushed_6  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0063_inv_221 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed6 ),
    .Q(\executedebouncer/countpushed [6])
  );
  FDCE   \executedebouncer/countpushed_5  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0063_inv_221 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed5 ),
    .Q(\executedebouncer/countpushed [5])
  );
  FDCE   \executedebouncer/countpushed_4  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0063_inv_221 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed4 ),
    .Q(\executedebouncer/countpushed [4])
  );
  FDCE   \executedebouncer/countpushed_3  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0063_inv_221 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed3 ),
    .Q(\executedebouncer/countpushed [3])
  );
  FDCE   \executedebouncer/countpushed_2  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0063_inv_221 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed2 ),
    .Q(\executedebouncer/countpushed [2])
  );
  FDCE   \executedebouncer/countpushed_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0063_inv_221 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed1 ),
    .Q(\executedebouncer/countpushed [1])
  );
  FDCE   \executedebouncer/countpushed_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\executedebouncer/_n0063_inv_221 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed ),
    .Q(\executedebouncer/countpushed [0])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<7>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [6]),
    .LI(\executedebouncer/Mcount_countpushed_lut [7]),
    .O(\executedebouncer/Mcount_countpushed7 )
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<6>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [5]),
    .LI(\executedebouncer/Mcount_countpushed_lut [6]),
    .O(\executedebouncer/Mcount_countpushed6 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<6>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [5]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countpushed_lut [6]),
    .O(\executedebouncer/Mcount_countpushed_cy [6])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<5>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [4]),
    .LI(\executedebouncer/Mcount_countpushed_lut [5]),
    .O(\executedebouncer/Mcount_countpushed5 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<5>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [4]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countpushed_lut [5]),
    .O(\executedebouncer/Mcount_countpushed_cy [5])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<4>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [3]),
    .LI(\executedebouncer/Mcount_countpushed_lut [4]),
    .O(\executedebouncer/Mcount_countpushed4 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<4>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [3]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countpushed_lut [4]),
    .O(\executedebouncer/Mcount_countpushed_cy [4])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<3>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [2]),
    .LI(\executedebouncer/Mcount_countpushed_lut [3]),
    .O(\executedebouncer/Mcount_countpushed3 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<3>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [2]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countpushed_lut [3]),
    .O(\executedebouncer/Mcount_countpushed_cy [3])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<2>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [1]),
    .LI(\executedebouncer/Mcount_countpushed_lut [2]),
    .O(\executedebouncer/Mcount_countpushed2 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<2>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [1]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countpushed_lut [2]),
    .O(\executedebouncer/Mcount_countpushed_cy [2])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<1>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [0]),
    .LI(\executedebouncer/Mcount_countpushed_lut [1]),
    .O(\executedebouncer/Mcount_countpushed1 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<1>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [0]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countpushed_lut [1]),
    .O(\executedebouncer/Mcount_countpushed_cy [1])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<0>  (
    .CI(executein_IBUF_7),
    .LI(\executedebouncer/Mcount_countpushed_lut [0]),
    .O(\executedebouncer/Mcount_countpushed )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<0>  (
    .CI(executein_IBUF_7),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countpushed_lut [0]),
    .O(\executedebouncer/Mcount_countpushed_cy [0])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<7>  (
    .CI(\executedebouncer/Mcount_countstill_cy [6]),
    .LI(\executedebouncer/Mcount_countstill_lut [7]),
    .O(\executedebouncer/Mcount_countstill7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<7>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [7]),
    .I2(displayctl_3_OBUF_49),
    .O(\executedebouncer/Mcount_countstill_lut [7])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<6>  (
    .CI(\executedebouncer/Mcount_countstill_cy [5]),
    .LI(\executedebouncer/Mcount_countstill_lut [6]),
    .O(\executedebouncer/Mcount_countstill6 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<6>  (
    .CI(\executedebouncer/Mcount_countstill_cy [5]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countstill_lut [6]),
    .O(\executedebouncer/Mcount_countstill_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<6>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [6]),
    .I2(displayctl_3_OBUF_49),
    .O(\executedebouncer/Mcount_countstill_lut [6])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<5>  (
    .CI(\executedebouncer/Mcount_countstill_cy [4]),
    .LI(\executedebouncer/Mcount_countstill_lut [5]),
    .O(\executedebouncer/Mcount_countstill5 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<5>  (
    .CI(\executedebouncer/Mcount_countstill_cy [4]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countstill_lut [5]),
    .O(\executedebouncer/Mcount_countstill_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<5>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [5]),
    .I2(displayctl_3_OBUF_49),
    .O(\executedebouncer/Mcount_countstill_lut [5])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<4>  (
    .CI(\executedebouncer/Mcount_countstill_cy [3]),
    .LI(\executedebouncer/Mcount_countstill_lut [4]),
    .O(\executedebouncer/Mcount_countstill4 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<4>  (
    .CI(\executedebouncer/Mcount_countstill_cy [3]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countstill_lut [4]),
    .O(\executedebouncer/Mcount_countstill_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<4>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [4]),
    .I2(displayctl_3_OBUF_49),
    .O(\executedebouncer/Mcount_countstill_lut [4])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<3>  (
    .CI(\executedebouncer/Mcount_countstill_cy [2]),
    .LI(\executedebouncer/Mcount_countstill_lut [3]),
    .O(\executedebouncer/Mcount_countstill3 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<3>  (
    .CI(\executedebouncer/Mcount_countstill_cy [2]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countstill_lut [3]),
    .O(\executedebouncer/Mcount_countstill_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<3>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [3]),
    .I2(displayctl_3_OBUF_49),
    .O(\executedebouncer/Mcount_countstill_lut [3])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<2>  (
    .CI(\executedebouncer/Mcount_countstill_cy [1]),
    .LI(\executedebouncer/Mcount_countstill_lut [2]),
    .O(\executedebouncer/Mcount_countstill2 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<2>  (
    .CI(\executedebouncer/Mcount_countstill_cy [1]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countstill_lut [2]),
    .O(\executedebouncer/Mcount_countstill_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<2>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [2]),
    .I2(displayctl_3_OBUF_49),
    .O(\executedebouncer/Mcount_countstill_lut [2])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<1>  (
    .CI(\executedebouncer/Mcount_countstill_cy [0]),
    .LI(\executedebouncer/Mcount_countstill_lut [1]),
    .O(\executedebouncer/Mcount_countstill1 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<1>  (
    .CI(\executedebouncer/Mcount_countstill_cy [0]),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countstill_lut [1]),
    .O(\executedebouncer/Mcount_countstill_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<1>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [1]),
    .I2(displayctl_3_OBUF_49),
    .O(\executedebouncer/Mcount_countstill_lut [1])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<0>  (
    .CI(\executedebouncer/noisy_inv ),
    .LI(\executedebouncer/Mcount_countstill_lut [0]),
    .O(\executedebouncer/Mcount_countstill )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<0>  (
    .CI(\executedebouncer/noisy_inv ),
    .DI(displayctl_3_OBUF_49),
    .S(\executedebouncer/Mcount_countstill_lut [0]),
    .O(\executedebouncer/Mcount_countstill_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<0>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [0]),
    .I2(displayctl_3_OBUF_49),
    .O(\executedebouncer/Mcount_countstill_lut [0])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  \lifo1/Mram_Omem3  (
    .A0(\lifo1/n0046 [0]),
    .A1(\lifo1/n0046 [1]),
    .A2(\lifo1/n0046 [2]),
    .A3(displayctl_3_OBUF_49),
    .D(opcodeselLIFOLED[2]),
    .WCLK(\clkdiv1/clk_300hz_BUFG_27 ),
    .WE(\lifo1/writing_reading_AND_12_o ),
    .O(\lifo1/_n0069 [2])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  \lifo1/Mram_Omem2  (
    .A0(\lifo1/n0046 [0]),
    .A1(\lifo1/n0046 [1]),
    .A2(\lifo1/n0046 [2]),
    .A3(displayctl_3_OBUF_49),
    .D(opcodeselLIFOLED[1]),
    .WCLK(\clkdiv1/clk_300hz_BUFG_27 ),
    .WE(\lifo1/writing_reading_AND_12_o ),
    .O(\lifo1/_n0069 [1])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  \lifo1/Mram_Omem1  (
    .A0(\lifo1/n0046 [0]),
    .A1(\lifo1/n0046 [1]),
    .A2(\lifo1/n0046 [2]),
    .A3(displayctl_3_OBUF_49),
    .D(opcodeselLIFOLED[0]),
    .WCLK(\clkdiv1/clk_300hz_BUFG_27 ),
    .WE(\lifo1/writing_reading_AND_12_o ),
    .O(\lifo1/_n0069 [0])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  \lifo1/Mram_Rmem6  (
    .A0(\lifo1/n0046 [0]),
    .A1(\lifo1/n0046 [1]),
    .A2(\lifo1/n0046 [2]),
    .A3(displayctl_3_OBUF_49),
    .D(resultLIFOLED[5]),
    .WCLK(\clkdiv1/clk_300hz_BUFG_27 ),
    .WE(\lifo1/writing_reading_AND_12_o ),
    .O(\lifo1/_n0068 [5])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  \lifo1/Mram_Rmem5  (
    .A0(\lifo1/n0046 [0]),
    .A1(\lifo1/n0046 [1]),
    .A2(\lifo1/n0046 [2]),
    .A3(displayctl_3_OBUF_49),
    .D(resultLIFOLED[4]),
    .WCLK(\clkdiv1/clk_300hz_BUFG_27 ),
    .WE(\lifo1/writing_reading_AND_12_o ),
    .O(\lifo1/_n0068 [4])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  \lifo1/Mram_Rmem4  (
    .A0(\lifo1/n0046 [0]),
    .A1(\lifo1/n0046 [1]),
    .A2(\lifo1/n0046 [2]),
    .A3(displayctl_3_OBUF_49),
    .D(resultLIFOLED[3]),
    .WCLK(\clkdiv1/clk_300hz_BUFG_27 ),
    .WE(\lifo1/writing_reading_AND_12_o ),
    .O(\lifo1/_n0068 [3])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  \lifo1/Mram_Rmem2  (
    .A0(\lifo1/n0046 [0]),
    .A1(\lifo1/n0046 [1]),
    .A2(\lifo1/n0046 [2]),
    .A3(displayctl_3_OBUF_49),
    .D(resultLIFOLED[1]),
    .WCLK(\clkdiv1/clk_300hz_BUFG_27 ),
    .WE(\lifo1/writing_reading_AND_12_o ),
    .O(\lifo1/_n0068 [1])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  \lifo1/Mram_Rmem1  (
    .A0(\lifo1/n0046 [0]),
    .A1(\lifo1/n0046 [1]),
    .A2(\lifo1/n0046 [2]),
    .A3(displayctl_3_OBUF_49),
    .D(resultLIFOLED[0]),
    .WCLK(\clkdiv1/clk_300hz_BUFG_27 ),
    .WE(\lifo1/writing_reading_AND_12_o ),
    .O(\lifo1/_n0068 [0])
  );
  RAM16X1S #(
    .INIT ( 16'h0000 ))
  \lifo1/Mram_Rmem3  (
    .A0(\lifo1/n0046 [0]),
    .A1(\lifo1/n0046 [1]),
    .A2(\lifo1/n0046 [2]),
    .A3(displayctl_3_OBUF_49),
    .D(resultLIFOLED[2]),
    .WCLK(\clkdiv1/clk_300hz_BUFG_27 ),
    .WE(\lifo1/writing_reading_AND_12_o ),
    .O(\lifo1/_n0068 [2])
  );
  FD   \lifo1/count_2  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .D(\lifo1/next_count [2]),
    .Q(\lifo1/count [2])
  );
  FD   \lifo1/count_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .D(\lifo1/next_count [1]),
    .Q(\lifo1/count [1])
  );
  FD   \lifo1/count_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .D(\lifo1/next_count [0]),
    .Q(\lifo1/count [0])
  );
  FDE   \lifo1/Omem_rd_2  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/reading ),
    .D(\lifo1/_n0069 [2]),
    .Q(\lifo1/Omem_rd [2])
  );
  FDE   \lifo1/Omem_rd_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/reading ),
    .D(\lifo1/_n0069 [1]),
    .Q(\lifo1/Omem_rd [1])
  );
  FDE   \lifo1/Omem_rd_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/reading ),
    .D(\lifo1/_n0069 [0]),
    .Q(\lifo1/Omem_rd [0])
  );
  FD   \lifo1/empty  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .D(\lifo1/GND_7_o_GND_7_o_equal_14_o ),
    .Q(\lifo1/empty_37 )
  );
  FDE   \lifo1/Rmem_rd_5  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/reading ),
    .D(\lifo1/_n0068 [5]),
    .Q(\lifo1/Rmem_rd [5])
  );
  FDE   \lifo1/Rmem_rd_4  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/reading ),
    .D(\lifo1/_n0068 [4]),
    .Q(\lifo1/Rmem_rd [4])
  );
  FDE   \lifo1/Rmem_rd_3  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/reading ),
    .D(\lifo1/_n0068 [3]),
    .Q(\lifo1/Rmem_rd [3])
  );
  FDE   \lifo1/Rmem_rd_2  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/reading ),
    .D(\lifo1/_n0068 [2]),
    .Q(\lifo1/Rmem_rd [2])
  );
  FDE   \lifo1/Rmem_rd_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/reading ),
    .D(\lifo1/_n0068 [1]),
    .Q(\lifo1/Rmem_rd [1])
  );
  FDE   \lifo1/Rmem_rd_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/reading ),
    .D(\lifo1/_n0068 [0]),
    .Q(\lifo1/Rmem_rd [0])
  );
  FD   \lifo1/full  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .D(\lifo1/GND_7_o_GND_7_o_equal_13_o ),
    .Q(\lifo1/full_38 )
  );
  FDE   \lifo1/opcodeseltos_shadow_2  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/writing ),
    .D(\alu1/opcodesel [2]),
    .Q(\lifo1/opcodeseltos_shadow [2])
  );
  FDE   \lifo1/opcodeseltos_shadow_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/writing ),
    .D(\alu1/opcodesel [1]),
    .Q(\lifo1/opcodeseltos_shadow [1])
  );
  FDE   \lifo1/opcodeseltos_shadow_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/writing ),
    .D(\alu1/opcodesel [0]),
    .Q(\lifo1/opcodeseltos_shadow [0])
  );
  FDE   \lifo1/resulttos_shadow_5  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/writing ),
    .D(\alu1/f [5]),
    .Q(\lifo1/resulttos_shadow [5])
  );
  FDE   \lifo1/resulttos_shadow_4  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/writing ),
    .D(\alu1/f [4]),
    .Q(\lifo1/resulttos_shadow [4])
  );
  FDE   \lifo1/resulttos_shadow_3  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/writing ),
    .D(\alu1/f [3]),
    .Q(\lifo1/resulttos_shadow [3])
  );
  FDE   \lifo1/resulttos_shadow_2  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/writing ),
    .D(\alu1/f [2]),
    .Q(\lifo1/resulttos_shadow [2])
  );
  FDE   \lifo1/resulttos_shadow_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/writing ),
    .D(\alu1/f [1]),
    .Q(\lifo1/resulttos_shadow [1])
  );
  FDE   \lifo1/resulttos_shadow_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CE(\lifo1/writing ),
    .D(\alu1/f [0]),
    .Q(\lifo1/resulttos_shadow [0])
  );
  FDC   \LED/counter_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\LED/Mcount_counter1 ),
    .Q(\LED/counter [1])
  );
  FDC   \LED/counter_0  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\LED/Mcount_counter ),
    .Q(\LED/counter [0])
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \decoder1/Mram_opcodeout12  (
    .I0(opcodein[2]),
    .I1(opcodein[0]),
    .I2(opcodein[1]),
    .O(\decoder1/Mram_opcodeout )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \decoder1/Mram_opcodeout111  (
    .I0(opcodein[2]),
    .I1(opcodein[0]),
    .I2(opcodein[1]),
    .O(\decoder1/Mram_opcodeout1 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy<0>11  (
    .I0(A_0_IBUF_2),
    .I1(B[0]),
    .O(\alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<1>1  (
    .I0(A_1_IBUF_1),
    .I1(B[0]),
    .I2(A_0_IBUF_2),
    .I3(B[1]),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alu1/Madd_n0036[3:0]_lut<2>1  (
    .I0(A_2_IBUF_0),
    .I1(B[2]),
    .O(\alu1/Madd_n0036[3:0]_lut<2> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alu1/Madd_n0036[3:0]_lut<1>1  (
    .I0(A_1_IBUF_1),
    .I1(B[1]),
    .O(\alu1/Madd_n0036[3:0]_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alu1/Madd_n0036[3:0]_lut<0>1  (
    .I0(A_0_IBUF_2),
    .I1(B[0]),
    .O(\alu1/Madd_n0036[3:0]_lut<0> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_lut<1>1  (
    .I0(A_1_IBUF_1),
    .I1(B[1]),
    .O(\alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_lut [1])
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \lifo1/Mmux_n004631  (
    .I0(\lifo1/count [2]),
    .I1(\lifo1/count [0]),
    .I2(\lifo1/count [1]),
    .I3(\executedebouncer/clean_25 ),
    .O(\lifo1/n0046 [2])
  );
  LUT4 #(
    .INIT ( 16'hBF00 ))
  \lifo1/writing1  (
    .I0(\readdebouncer/clean_26 ),
    .I1(\lifo1/count [2]),
    .I2(\lifo1/count [1]),
    .I3(\executedebouncer/clean_25 ),
    .O(\lifo1/writing )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \lifo1/reading1  (
    .I0(\readdebouncer/clean_26 ),
    .I1(\lifo1/count [0]),
    .I2(\lifo1/count [1]),
    .I3(\lifo1/count [2]),
    .O(\lifo1/reading )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo1/Mmux_opcodeseltos11  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/opcodeseltos_shadow [0]),
    .I2(\lifo1/Omem_rd [0]),
    .O(opcodeselLIFOLED[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo1/Mmux_opcodeseltos21  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/opcodeseltos_shadow [1]),
    .I2(\lifo1/Omem_rd [1]),
    .O(opcodeselLIFOLED[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo1/Mmux_opcodeseltos31  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/opcodeseltos_shadow [2]),
    .I2(\lifo1/Omem_rd [2]),
    .O(opcodeselLIFOLED[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo1/Mmux_resulttos11  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/resulttos_shadow [0]),
    .I2(\lifo1/Rmem_rd [0]),
    .O(resultLIFOLED[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo1/Mmux_resulttos21  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/resulttos_shadow [1]),
    .I2(\lifo1/Rmem_rd [1]),
    .O(resultLIFOLED[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo1/Mmux_resulttos31  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/resulttos_shadow [2]),
    .I2(\lifo1/Rmem_rd [2]),
    .O(resultLIFOLED[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo1/Mmux_resulttos41  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/resulttos_shadow [3]),
    .I2(\lifo1/Rmem_rd [3]),
    .O(resultLIFOLED[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo1/Mmux_resulttos51  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/resulttos_shadow [4]),
    .I2(\lifo1/Rmem_rd [4]),
    .O(resultLIFOLED[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo1/Mmux_resulttos61  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/resulttos_shadow [5]),
    .I2(\lifo1/Rmem_rd [5]),
    .O(resultLIFOLED[5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \LED/Mcount_counter_xor<1>11  (
    .I0(\LED/counter [0]),
    .I1(\LED/counter [1]),
    .O(\LED/Mcount_counter1 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \LED/Mmux_ctl11  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/counter [0]),
    .I2(\LED/counter [1]),
    .O(displayctl_0_OBUF_41)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \LED/Mmux_ctl21  (
    .I0(\LED/counter [0]),
    .I1(\LED/counter [1]),
    .I2(reset_n_IBUF_10),
    .O(displayctl_1_OBUF_40)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \LED/Mmux_ctl31  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .I2(reset_n_IBUF_10),
    .O(displayctl_2_OBUF_39)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \LED/Mcount_counter_xor<0>11  (
    .I0(\LED/counter [0]),
    .I1(\LED/counter [1]),
    .O(\LED/Mcount_counter )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1  (
    .I0(\clkdiv1/counter_300hz [7]),
    .I1(\clkdiv1/counter_300hz [6]),
    .I2(\clkdiv1/counter_300hz [11]),
    .I3(\clkdiv1/counter_300hz [8]),
    .I4(\clkdiv1/counter_300hz [17]),
    .I5(\clkdiv1/counter_300hz [14]),
    .O(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17])
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2  (
    .I0(\clkdiv1/counter_300hz [0]),
    .I1(\clkdiv1/counter_300hz [1]),
    .I2(\clkdiv1/counter_300hz [2]),
    .I3(\clkdiv1/counter_300hz [3]),
    .I4(\clkdiv1/counter_300hz [5]),
    .I5(\clkdiv1/counter_300hz [4]),
    .O(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>3  (
    .I0(\clkdiv1/counter_300hz [10]),
    .I1(\clkdiv1/counter_300hz [9]),
    .I2(\clkdiv1/counter_300hz [12]),
    .I3(\clkdiv1/counter_300hz [13]),
    .I4(\clkdiv1/counter_300hz [15]),
    .I5(\clkdiv1/counter_300hz [16]),
    .O(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 )
  );
  LUT6 #(
    .INIT ( 64'h8282228288882888 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_110 ),
    .I1(\alu1/Madd_n0036[3:0]_lut<2> ),
    .I2(\alu1/Madd_n0036[3:0]_lut<1> ),
    .I3(A_0_IBUF_2),
    .I4(\alu1/Madd_n0036[3:0]_lut<0> ),
    .I5(A_1_IBUF_1),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT32 )
  );
  LUT6 #(
    .INIT ( 64'h2B0B230328082000 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT34  (
    .I0(\decoder1/Mram_opcodeout ),
    .I1(B[0]),
    .I2(B[1]),
    .I3(A_0_IBUF_2),
    .I4(A_1_IBUF_1),
    .I5(A_2_IBUF_0),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33_322 )
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41  (
    .I0(B[0]),
    .I1(B[1]),
    .I2(A_2_IBUF_0),
    .I3(A_0_IBUF_2),
    .I4(A_1_IBUF_1),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT4 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFAAEAAAEAAAEA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_109 ),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT4 ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I3(B[2]),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_110 ),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41_324 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43_325 )
  );
  LUT6 #(
    .INIT ( 64'h0002020020222220 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21  (
    .I0(\decoder1/Mram_opcodeout1 ),
    .I1(\decoder1/Mram_opcodeout ),
    .I2(opcodein[2]),
    .I3(\alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy [0]),
    .I4(\alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_lut [1]),
    .I5(\alu1/Madd_n0036[3:0]_lut<1> ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT2 )
  );
  LUT6 #(
    .INIT ( 64'hAAA22A2288800800 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT24  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22_328 ),
    .I1(B[0]),
    .I2(\decoder1/Mram_opcodeout ),
    .I3(A_2_IBUF_0),
    .I4(A_0_IBUF_2),
    .I5(A_1_IBUF_1),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23_329 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF8 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT25  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<1> ),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_111 ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21_327 ),
    .I3(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23_329 ),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT2 ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h4040400000400000 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61  (
    .I0(B[1]),
    .I1(B[2]),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I3(B[0]),
    .I4(A_1_IBUF_1),
    .I5(A_0_IBUF_2),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'h7520202020202020 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62  (
    .I0(B[2]),
    .I1(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<4> ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_111 ),
    .I3(B[1]),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I5(B[0]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61_331 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF8FFF8FFF8 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT64  (
    .I0(A_2_IBUF_0),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61_331 ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_109 ),
    .I3(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT6 ),
    .I4(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<3> ),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62_332 ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF282828 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT5  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_111 ),
    .I1(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<3> ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<4> ),
    .I3(N01),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_109 ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h22B222B2B2BB22B2 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13  (
    .I0(A_2_IBUF_0),
    .I1(B[2]),
    .I2(A_1_IBUF_1),
    .I3(B[1]),
    .I4(A_0_IBUF_2),
    .I5(B[0]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15_335 )
  );
  LUT6 #(
    .INIT ( 64'h2A0A280822022000 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16_336 ),
    .I1(B[0]),
    .I2(B[1]),
    .I3(A_2_IBUF_0),
    .I4(A_0_IBUF_2),
    .I5(A_1_IBUF_1),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17_337 )
  );
  LUT6 #(
    .INIT ( 64'hFBBBBBBBEAAAAAAA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14_334 ),
    .I1(\decoder1/Mram_opcodeout ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15_335 ),
    .I3(\decoder1/Mram_opcodeout1 ),
    .I4(opcodein[2]),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT18 ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \readdebouncer/_n0084_inv_SW0  (
    .I0(\readdebouncer/countpushed [2]),
    .I1(\readdebouncer/countpushed [1]),
    .I2(\readdebouncer/countpushed [6]),
    .I3(\readdebouncer/countpushed [5]),
    .I4(\readdebouncer/countpushed [3]),
    .I5(\readdebouncer/countpushed [0]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h55FF5555557F5555 ))
  \readdebouncer/_n0063_inv  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [7]),
    .I2(\readdebouncer/countpushed [4]),
    .I3(\readdebouncer/pushed_180 ),
    .I4(\readdebouncer/still_181 ),
    .I5(N2),
    .O(\readdebouncer/_n0063_inv_154 )
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \readdebouncer/_n0066_inv_SW0  (
    .I0(\readdebouncer/countstill [2]),
    .I1(\readdebouncer/countstill [1]),
    .I2(\readdebouncer/countstill [5]),
    .I3(readin_IBUF_8),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFDFFFF ))
  \readdebouncer/_n0066_inv  (
    .I0(\readdebouncer/countstill [4]),
    .I1(\readdebouncer/countstill [6]),
    .I2(\readdebouncer/countstill [0]),
    .I3(\readdebouncer/countstill [3]),
    .I4(\readdebouncer/countstill [7]),
    .I5(N6),
    .O(\readdebouncer/_n0066_inv_179 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \executedebouncer/_n0084_inv_SW0  (
    .I0(\executedebouncer/countpushed [2]),
    .I1(\executedebouncer/countpushed [1]),
    .I2(\executedebouncer/countpushed [6]),
    .I3(\executedebouncer/countpushed [5]),
    .I4(\executedebouncer/countpushed [3]),
    .I5(\executedebouncer/countpushed [0]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h55FF5555557F5555 ))
  \executedebouncer/_n0063_inv  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [7]),
    .I2(\executedebouncer/countpushed [4]),
    .I3(\executedebouncer/pushed_247 ),
    .I4(\executedebouncer/still_248 ),
    .I5(N10),
    .O(\executedebouncer/_n0063_inv_221 )
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \executedebouncer/_n0066_inv_SW0  (
    .I0(\executedebouncer/countstill [2]),
    .I1(\executedebouncer/countstill [1]),
    .I2(\executedebouncer/countstill [5]),
    .I3(executein_IBUF_7),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFDFFFF ))
  \executedebouncer/_n0066_inv  (
    .I0(\executedebouncer/countstill [4]),
    .I1(\executedebouncer/countstill [6]),
    .I2(\executedebouncer/countstill [0]),
    .I3(\executedebouncer/countstill [3]),
    .I4(\executedebouncer/countstill [7]),
    .I5(N14),
    .O(\executedebouncer/_n0066_inv_246 )
  );
  LUT6 #(
    .INIT ( 64'hA888888820441108 ))
  \LED/Mmux_currentdigit<0>261  (
    .I0(resultLIFOLED[5]),
    .I1(resultLIFOLED[3]),
    .I2(resultLIFOLED[0]),
    .I3(resultLIFOLED[1]),
    .I4(resultLIFOLED[2]),
    .I5(\LED/counter [0]),
    .O(\LED/Mmux_currentdigit<0>26_343 )
  );
  LUT6 #(
    .INIT ( 64'h0020250546444464 ))
  \LED/Mmux_currentdigit<0>262  (
    .I0(resultLIFOLED[5]),
    .I1(\LED/counter [0]),
    .I2(resultLIFOLED[2]),
    .I3(resultLIFOLED[0]),
    .I4(resultLIFOLED[1]),
    .I5(resultLIFOLED[3]),
    .O(\LED/Mmux_currentdigit<0>261_344 )
  );
  LUT6 #(
    .INIT ( 64'hFFA8FF08AAA8AA08 ))
  \LED/Mmux_currentdigit<0>263  (
    .I0(\LED/Mmux_currentdigit<0>214 ),
    .I1(\LED/Mmux_currentdigit<0>261_344 ),
    .I2(resultLIFOLED[4]),
    .I3(\LED/counter [1]),
    .I4(\LED/Mmux_currentdigit<0>26_343 ),
    .I5(\LED/counter [0]),
    .O(\LED/Mmux_currentdigit<0>262_345 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \LED/Mmux_currentdigit<0>21  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .I2(\LED/Mmux_currentdigit<0>214 ),
    .I3(resultLIFOLED[2]),
    .I4(resultLIFOLED[5]),
    .O(\LED/Mmux_currentdigit<0>2 )
  );
  LUT5 #(
    .INIT ( 32'h22B2B2B2 ))
  \LED/Mmux_currentdigit<0>23  (
    .I0(resultLIFOLED[4]),
    .I1(resultLIFOLED[2]),
    .I2(resultLIFOLED[5]),
    .I3(resultLIFOLED[0]),
    .I4(resultLIFOLED[1]),
    .O(\LED/Mmux_currentdigit<0>21_347 )
  );
  LUT5 #(
    .INIT ( 32'h088E088C ))
  \LED/Mmux_currentdigit<0>24  (
    .I0(resultLIFOLED[2]),
    .I1(resultLIFOLED[1]),
    .I2(resultLIFOLED[5]),
    .I3(resultLIFOLED[4]),
    .I4(\LED/Mmux_currentdigit<0>214 ),
    .O(\LED/Mmux_currentdigit<0>22 )
  );
  LUT6 #(
    .INIT ( 64'hAAA8AA0808A80808 ))
  \LED/Mmux_currentdigit<0>25  (
    .I0(\LED/counter [0]),
    .I1(resultLIFOLED[1]),
    .I2(\LED/Mmux_currentdigit<0>214 ),
    .I3(resultLIFOLED[3]),
    .I4(\LED/Mmux_currentdigit<0>21_347 ),
    .I5(\LED/Mmux_currentdigit<0>22 ),
    .O(\LED/Mmux_currentdigit<0>23_349 )
  );
  LUT6 #(
    .INIT ( 64'h2A22222222222222 ))
  \LED/Mmux_currentdigit<0>26  (
    .I0(resultLIFOLED[0]),
    .I1(\LED/counter [0]),
    .I2(resultLIFOLED[4]),
    .I3(resultLIFOLED[3]),
    .I4(\LED/Mmux_currentdigit<0>214 ),
    .I5(resultLIFOLED[2]),
    .O(\LED/Mmux_currentdigit<0>24_350 )
  );
  LUT5 #(
    .INIT ( 32'hAAAA2220 ))
  \LED/Mmux_currentdigit<0>27  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/counter [1]),
    .I2(\LED/Mmux_currentdigit<0>24_350 ),
    .I3(\LED/Mmux_currentdigit<0>23_349 ),
    .I4(\LED/Mmux_currentdigit<0>2 ),
    .O(\LED/currentdigit [0])
  );
  LUT6 #(
    .INIT ( 64'h9D9DB9B9D69D9DB9 ))
  \LED/Mram_segments41_SW0  (
    .I0(resultLIFOLED[4]),
    .I1(resultLIFOLED[2]),
    .I2(resultLIFOLED[1]),
    .I3(resultLIFOLED[5]),
    .I4(resultLIFOLED[3]),
    .I5(resultLIFOLED[0]),
    .O(N18)
  );
  LUT5 #(
    .INIT ( 32'hFFEFFFFF ))
  \LED/Mram_segments41  (
    .I0(\LED/counter [1]),
    .I1(N18),
    .I2(\LED/Mmux_currentdigit<0>214 ),
    .I3(\LED/counter [0]),
    .I4(reset_n_IBUF_10),
    .O(\LED/Mram_segments41_309 )
  );
  LUT6 #(
    .INIT ( 64'h1B110B00B515B00B ))
  \LED/Mmux_currentdigit<0>222  (
    .I0(resultLIFOLED[4]),
    .I1(resultLIFOLED[2]),
    .I2(resultLIFOLED[1]),
    .I3(resultLIFOLED[3]),
    .I4(\LED/counter [0]),
    .I5(resultLIFOLED[0]),
    .O(\LED/Mmux_currentdigit<0>222_352 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA00008000 ))
  \LED/Mmux_currentdigit<0>223  (
    .I0(resultLIFOLED[5]),
    .I1(resultLIFOLED[0]),
    .I2(resultLIFOLED[1]),
    .I3(\LED/Mmux_currentdigit<0>2212 ),
    .I4(\LED/counter [0]),
    .I5(\LED/Mmux_currentdigit<0>222_352 ),
    .O(\LED/Mmux_currentdigit<0>223_353 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8080808A ))
  \LED/Mmux_currentdigit<0>224  (
    .I0(\LED/counter [0]),
    .I1(resultLIFOLED[3]),
    .I2(resultLIFOLED[4]),
    .I3(resultLIFOLED[2]),
    .I4(resultLIFOLED[1]),
    .I5(\LED/counter [1]),
    .O(\LED/Mmux_currentdigit<0>224_354 )
  );
  LUT5 #(
    .INIT ( 32'hB232F6BA ))
  \LED/Mmux_currentdigit<0>225  (
    .I0(resultLIFOLED[1]),
    .I1(resultLIFOLED[5]),
    .I2(\LED/counter [0]),
    .I3(resultLIFOLED[0]),
    .I4(resultLIFOLED[4]),
    .O(\LED/Mmux_currentdigit<0>225_355 )
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_0)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_1)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_2)
  );
  IBUF   Bopcode_2_IBUF (
    .I(Bopcode[2]),
    .O(Bopcode_2_IBUF_3)
  );
  IBUF   Bopcode_1_IBUF (
    .I(Bopcode[1]),
    .O(Bopcode_1_IBUF_4)
  );
  IBUF   Bopcode_0_IBUF (
    .I(Bopcode[0]),
    .O(Bopcode_0_IBUF_5)
  );
  IBUF   mode_IBUF (
    .I(mode),
    .O(mode_IBUF_6)
  );
  IBUF   executein_IBUF (
    .I(executein),
    .O(executein_IBUF_7)
  );
  IBUF   readin_IBUF (
    .I(readin),
    .O(readin_IBUF_8)
  );
  IBUF   reset_n_IBUF (
    .I(reset_n),
    .O(reset_n_IBUF_10)
  );
  OBUF   display_7_OBUF (
    .I(display_7_OBUF_42),
    .O(display[7])
  );
  OBUF   display_6_OBUF (
    .I(display_6_OBUF_43),
    .O(display[6])
  );
  OBUF   display_5_OBUF (
    .I(display_5_OBUF_44),
    .O(display[5])
  );
  OBUF   display_4_OBUF (
    .I(display_4_OBUF_45),
    .O(display[4])
  );
  OBUF   display_3_OBUF (
    .I(display_3_OBUF_46),
    .O(display[3])
  );
  OBUF   display_2_OBUF (
    .I(display_2_OBUF_47),
    .O(display[2])
  );
  OBUF   display_1_OBUF (
    .I(display_1_OBUF_48),
    .O(display[1])
  );
  OBUF   display_0_OBUF (
    .I(display_0_OBUF_50),
    .O(display[0])
  );
  OBUF   displayctl_3_OBUF (
    .I(displayctl_3_OBUF_49),
    .O(displayctl[3])
  );
  OBUF   displayctl_2_OBUF (
    .I(displayctl_2_OBUF_39),
    .O(displayctl[2])
  );
  OBUF   displayctl_1_OBUF (
    .I(displayctl_1_OBUF_40),
    .O(displayctl[1])
  );
  OBUF   displayctl_0_OBUF (
    .I(displayctl_0_OBUF_41),
    .O(displayctl[0])
  );
  OBUF   full_OBUF (
    .I(\lifo1/full_38 ),
    .O(full)
  );
  OBUF   empty_OBUF (
    .I(\lifo1/empty_37 ),
    .O(empty)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<1>_rt  (
    .I0(\clkdiv1/counter_300hz [1]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_382 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<2>_rt  (
    .I0(\clkdiv1/counter_300hz [2]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_383 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<3>_rt  (
    .I0(\clkdiv1/counter_300hz [3]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_384 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<4>_rt  (
    .I0(\clkdiv1/counter_300hz [4]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_385 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<5>_rt  (
    .I0(\clkdiv1/counter_300hz [5]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_386 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<6>_rt  (
    .I0(\clkdiv1/counter_300hz [6]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_387 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<7>_rt  (
    .I0(\clkdiv1/counter_300hz [7]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_388 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<8>_rt  (
    .I0(\clkdiv1/counter_300hz [8]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_389 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<9>_rt  (
    .I0(\clkdiv1/counter_300hz [9]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_390 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<10>_rt  (
    .I0(\clkdiv1/counter_300hz [10]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_391 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<11>_rt  (
    .I0(\clkdiv1/counter_300hz [11]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_392 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<12>_rt  (
    .I0(\clkdiv1/counter_300hz [12]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_393 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<13>_rt  (
    .I0(\clkdiv1/counter_300hz [13]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_394 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<14>_rt  (
    .I0(\clkdiv1/counter_300hz [14]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_395 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<15>_rt  (
    .I0(\clkdiv1/counter_300hz [15]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_396 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<16>_rt  (
    .I0(\clkdiv1/counter_300hz [16]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_397 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_xor<17>_rt  (
    .I0(\clkdiv1/counter_300hz [17]),
    .O(\clkdiv1/Mcount_counter_300hz_xor<17>_rt_398 )
  );
  FDC   \readdebouncer/pushed  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/pushed_rstpot_399 ),
    .Q(\readdebouncer/pushed_180 )
  );
  FDC   \readdebouncer/still  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/still_rstpot_400 ),
    .Q(\readdebouncer/still_181 )
  );
  FDC   \readdebouncer/clean  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/clean_rstpot_401 ),
    .Q(\readdebouncer/clean_26 )
  );
  FDC   \executedebouncer/pushed  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/pushed_rstpot_402 ),
    .Q(\executedebouncer/pushed_247 )
  );
  FDC   \executedebouncer/still  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/still_rstpot_403 ),
    .Q(\executedebouncer/still_248 )
  );
  FDC   \executedebouncer/clean  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/clean_rstpot_404 ),
    .Q(\executedebouncer/clean_25 )
  );
  FD   \lifo1/use_mem_read  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .D(\lifo1/use_mem_read_rstpot_405 ),
    .Q(\lifo1/use_mem_read_279 )
  );
  FD   \clkdiv1/counter_300hz_0  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_0_rstpot_406 ),
    .Q(\clkdiv1/counter_300hz [0])
  );
  LUT4 #(
    .INIT ( 16'h00A8 ))
  \lifo1/use_mem_read_rstpot  (
    .I0(reset_n_IBUF_10),
    .I1(\lifo1/use_mem_read_279 ),
    .I2(\lifo1/reading ),
    .I3(\lifo1/writing ),
    .O(\lifo1/use_mem_read_rstpot_405 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \readdebouncer/_n0066_SW0  (
    .I0(\readdebouncer/countstill [3]),
    .I1(\readdebouncer/countstill [0]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00000400 ))
  \readdebouncer/still_rstpot  (
    .I0(N6),
    .I1(\readdebouncer/countstill [7]),
    .I2(\readdebouncer/countstill [6]),
    .I3(\readdebouncer/countstill [4]),
    .I4(N20),
    .I5(\readdebouncer/still_181 ),
    .O(\readdebouncer/still_rstpot_400 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \executedebouncer/_n0066_SW0  (
    .I0(\executedebouncer/countstill [3]),
    .I1(\executedebouncer/countstill [0]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00000400 ))
  \executedebouncer/still_rstpot  (
    .I0(N14),
    .I1(\executedebouncer/countstill [7]),
    .I2(\executedebouncer/countstill [6]),
    .I3(\executedebouncer/countstill [4]),
    .I4(N22),
    .I5(\executedebouncer/still_248 ),
    .O(\executedebouncer/still_rstpot_403 )
  );
  LUT6 #(
    .INIT ( 64'hA028822882288A20 ))
  \lifo1/Mmux_next_count11  (
    .I0(reset_n_IBUF_10),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo1/count [0]),
    .I3(\executedebouncer/clean_25 ),
    .I4(\lifo1/count [1]),
    .I5(\lifo1/count [2]),
    .O(\lifo1/next_count [0])
  );
  LUT6 #(
    .INIT ( 64'h88888880A8888888 ))
  \lifo1/Mmux_next_count31  (
    .I0(reset_n_IBUF_10),
    .I1(\lifo1/count [2]),
    .I2(\lifo1/count [0]),
    .I3(\executedebouncer/clean_25 ),
    .I4(\lifo1/count [1]),
    .I5(\readdebouncer/clean_26 ),
    .O(\lifo1/next_count [2])
  );
  LUT6 #(
    .INIT ( 64'h88828880A8882888 ))
  \lifo1/Mmux_next_count21  (
    .I0(reset_n_IBUF_10),
    .I1(\lifo1/count [1]),
    .I2(\executedebouncer/clean_25 ),
    .I3(\lifo1/count [0]),
    .I4(\lifo1/count [2]),
    .I5(\readdebouncer/clean_26 ),
    .O(\lifo1/next_count [1])
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_0_rstpot  (
    .I0(Result[0]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_0_rstpot_406 )
  );
  LUT6 #(
    .INIT ( 64'h2020202028202020 ))
  \readdebouncer/pushed_rstpot  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/still_181 ),
    .I2(\readdebouncer/pushed_180 ),
    .I3(\readdebouncer/countpushed [7]),
    .I4(\readdebouncer/countpushed [4]),
    .I5(N2),
    .O(\readdebouncer/pushed_rstpot_399 )
  );
  LUT6 #(
    .INIT ( 64'h2020202028202020 ))
  \executedebouncer/pushed_rstpot  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/still_248 ),
    .I2(\executedebouncer/pushed_247 ),
    .I3(\executedebouncer/countpushed [7]),
    .I4(\executedebouncer/countpushed [4]),
    .I5(N10),
    .O(\executedebouncer/pushed_rstpot_402 )
  );
  LUT5 #(
    .INIT ( 32'hECEE1111 ))
  \lifo1/Mmux_n004621  (
    .I0(\executedebouncer/clean_1_430 ),
    .I1(\lifo1/count [0]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo1/count [2]),
    .I4(\lifo1/count [1]),
    .O(\lifo1/n0046 [1])
  );
  LUT5 #(
    .INIT ( 32'h93999999 ))
  \lifo1/Mmux_n004611  (
    .I0(\executedebouncer/clean_1_430 ),
    .I1(\lifo1/count [0]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo1/count [2]),
    .I4(\lifo1/count [1]),
    .O(\lifo1/n0046 [0])
  );
  LUT5 #(
    .INIT ( 32'h013F0000 ))
  \lifo1/writing_reading_AND_12_o1  (
    .I0(\lifo1/count [0]),
    .I1(\lifo1/count [1]),
    .I2(\lifo1/count [2]),
    .I3(\readdebouncer/clean_26 ),
    .I4(\executedebouncer/clean_25 ),
    .O(\lifo1/writing_reading_AND_12_o )
  );
  FD   \clkdiv1/clk_300hz  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/clk_300hz_rstpot1_409 ),
    .Q(\clkdiv1/clk_300hz_431 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \readdebouncer/clean_rstpot  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/pushed_180 ),
    .I2(\readdebouncer/still_181 ),
    .I3(\readdebouncer/clean_26 ),
    .O(\readdebouncer/clean_rstpot_401 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \executedebouncer/clean_rstpot  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/pushed_247 ),
    .I2(\executedebouncer/still_248 ),
    .I3(\executedebouncer/clean_25 ),
    .O(\executedebouncer/clean_rstpot_404 )
  );
  LUT6 #(
    .INIT ( 64'h01010001FFFFFFFF ))
  \lifo1/GND_7_o_GND_7_o_equal_14_o<2>1  (
    .I0(\executedebouncer/clean_25 ),
    .I1(\lifo1/count [2]),
    .I2(\lifo1/count [1]),
    .I3(\lifo1/count [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(reset_n_IBUF_10),
    .O(\lifo1/GND_7_o_GND_7_o_equal_14_o )
  );
  LUT6 #(
    .INIT ( 64'h0080800008800080 ))
  \lifo1/GND_7_o_GND_7_o_equal_13_o<2>1  (
    .I0(\lifo1/count [2]),
    .I1(reset_n_IBUF_10),
    .I2(\lifo1/count [1]),
    .I3(\lifo1/count [0]),
    .I4(\executedebouncer/clean_25 ),
    .I5(\readdebouncer/clean_26 ),
    .O(\lifo1/GND_7_o_GND_7_o_equal_13_o )
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \clkdiv1/clk_300hz_rstpot1  (
    .I0(reset_n_IBUF_10),
    .I1(\clkdiv1/clk_300hz_431 ),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/clk_300hz_rstpot1_409 )
  );
  LUT6 #(
    .INIT ( 64'h0141000001410410 ))
  \LED/Mmux_currentdigit<0>228  (
    .I0(resultLIFOLED[5]),
    .I1(resultLIFOLED[3]),
    .I2(resultLIFOLED[4]),
    .I3(resultLIFOLED[2]),
    .I4(resultLIFOLED[1]),
    .I5(\LED/counter [0]),
    .O(\LED/Mmux_currentdigit<0>228_356 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAABAAAAA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT36_SW0  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT32 ),
    .I1(B[2]),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33_322 ),
    .I3(\decoder1/Mram_opcodeout1 ),
    .I4(opcodein[2]),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT3 ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88882888 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT36  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_111 ),
    .I1(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<2> ),
    .I2(A_1_IBUF_1),
    .I3(B[0]),
    .I4(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<1> ),
    .I5(N24),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hEEFEEEEE ))
  \LED/Mmux_currentdigit<0>229_SW0  (
    .I0(\LED/Mmux_currentdigit<0>228_356 ),
    .I1(\LED/Mmux_currentdigit<0>224_354 ),
    .I2(resultLIFOLED[2]),
    .I3(resultLIFOLED[3]),
    .I4(\LED/Mmux_currentdigit<0>225_355 ),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hAAAA888088808880 ))
  \LED/Mmux_currentdigit<0>229  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/Mmux_currentdigit<0>214 ),
    .I2(\LED/Mmux_currentdigit<0>223_353 ),
    .I3(N26),
    .I4(\LED/counter [1]),
    .I5(\LED/counter [0]),
    .O(\LED/currentdigit [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/Mcount_countpushed_lut<0>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [0]),
    .O(\readdebouncer/Mcount_countpushed_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<0>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [0]),
    .O(\executedebouncer/Mcount_countpushed_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/Mcount_countpushed_lut<1>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [1]),
    .O(\readdebouncer/Mcount_countpushed_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<1>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [1]),
    .O(\executedebouncer/Mcount_countpushed_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/Mcount_countpushed_lut<2>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [2]),
    .O(\readdebouncer/Mcount_countpushed_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<2>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [2]),
    .O(\executedebouncer/Mcount_countpushed_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/Mcount_countpushed_lut<3>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [3]),
    .O(\readdebouncer/Mcount_countpushed_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<3>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [3]),
    .O(\executedebouncer/Mcount_countpushed_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/Mcount_countpushed_lut<4>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [4]),
    .O(\readdebouncer/Mcount_countpushed_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<4>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [4]),
    .O(\executedebouncer/Mcount_countpushed_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/Mcount_countpushed_lut<5>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [5]),
    .O(\readdebouncer/Mcount_countpushed_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<5>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [5]),
    .O(\executedebouncer/Mcount_countpushed_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/Mcount_countpushed_lut<6>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [6]),
    .O(\readdebouncer/Mcount_countpushed_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<6>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [6]),
    .O(\executedebouncer/Mcount_countpushed_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/Mcount_countpushed_lut<7>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [7]),
    .O(\readdebouncer/Mcount_countpushed_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<7>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [7]),
    .O(\executedebouncer/Mcount_countpushed_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h4642060244400400 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT5_SW0  (
    .I0(B[2]),
    .I1(B[1]),
    .I2(B[0]),
    .I3(A_2_IBUF_0),
    .I4(A_1_IBUF_1),
    .I5(A_0_IBUF_2),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h4444444404004404 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT421  (
    .I0(\decoder1/Mram_opcodeout ),
    .I1(\decoder1/Mram_opcodeout1 ),
    .I2(\alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy [1]),
    .I3(B[2]),
    .I4(A_2_IBUF_0),
    .I5(opcodein[2]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_109 )
  );
  LUT5 #(
    .INIT ( 32'h00020200 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23  (
    .I0(opcodein[2]),
    .I1(B[2]),
    .I2(B[1]),
    .I3(opcodein[0]),
    .I4(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22_328 )
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14  (
    .I0(opcodein[2]),
    .I1(B[2]),
    .I2(opcodein[0]),
    .I3(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16_336 )
  );
  LUT6 #(
    .INIT ( 64'h8777788878887888 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<2>11  (
    .I0(A_0_IBUF_2),
    .I1(B[2]),
    .I2(A_2_IBUF_0),
    .I3(B[0]),
    .I4(A_1_IBUF_1),
    .I5(B[1]),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<2> )
  );
  LUT5 #(
    .INIT ( 32'h08646464 ))
  \LED/Mram_segments111  (
    .I0(\LED/currentdigit [1]),
    .I1(\LED/Mram_segments41_309 ),
    .I2(\LED/currentdigit [0]),
    .I3(reset_n_IBUF_10),
    .I4(\LED/Mmux_currentdigit<0>262_345 ),
    .O(display_1_OBUF_48)
  );
  LUT5 #(
    .INIT ( 32'hFF778007 ))
  \LED/Mram_segments31  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/Mmux_currentdigit<0>262_345 ),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/Mram_segments41_309 ),
    .I4(\LED/currentdigit [0]),
    .O(display_3_OBUF_46)
  );
  LUT5 #(
    .INIT ( 32'h8088F088 ))
  \LED/Mram_segments51  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/Mmux_currentdigit<0>262_345 ),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/Mram_segments41_309 ),
    .I4(\LED/currentdigit [0]),
    .O(display_5_OBUF_44)
  );
  LUT5 #(
    .INIT ( 32'h88E8E8E8 ))
  \LED/Mram_segments21  (
    .I0(\LED/currentdigit [1]),
    .I1(\LED/Mram_segments41_309 ),
    .I2(\LED/currentdigit [0]),
    .I3(reset_n_IBUF_10),
    .I4(\LED/Mmux_currentdigit<0>262_345 ),
    .O(display_2_OBUF_47)
  );
  LUT5 #(
    .INIT ( 32'hDD141414 ))
  \LED/Mram_segments61  (
    .I0(\LED/Mram_segments41_309 ),
    .I1(\LED/currentdigit [1]),
    .I2(\LED/currentdigit [0]),
    .I3(reset_n_IBUF_10),
    .I4(\LED/Mmux_currentdigit<0>262_345 ),
    .O(display_6_OBUF_43)
  );
  LUT6 #(
    .INIT ( 64'h8090100010008090 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT31  (
    .I0(opcodein[2]),
    .I1(opcodein[0]),
    .I2(opcodein[1]),
    .I3(\alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy [1]),
    .I4(A_2_IBUF_0),
    .I5(B[2]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT3 )
  );
  LUT6 #(
    .INIT ( 64'hE8EAE8E860626060 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12  (
    .I0(A_0_IBUF_2),
    .I1(B[0]),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_110 ),
    .I3(B[1]),
    .I4(N28),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_111 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14_334 )
  );
  LUT6 #(
    .INIT ( 64'h8888A00080008000 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<2>11  (
    .I0(A_0_IBUF_2),
    .I1(B[2]),
    .I2(A_1_IBUF_1),
    .I3(B[1]),
    .I4(A_2_IBUF_0),
    .I5(B[0]),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<2> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT131  (
    .I0(opcodein[0]),
    .I1(opcodein[2]),
    .I2(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_110 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT121  (
    .I0(opcodein[0]),
    .I1(opcodein[2]),
    .I2(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_111 )
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<4>1  (
    .I0(A_2_IBUF_0),
    .I1(B[2]),
    .I2(B[1]),
    .I3(B[0]),
    .I4(A_1_IBUF_1),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<4> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF82141482 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16  (
    .I0(opcodein[2]),
    .I1(opcodein[0]),
    .I2(opcodein[1]),
    .I3(A_0_IBUF_2),
    .I4(B[0]),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17_337 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT18 )
  );
  LUT6 #(
    .INIT ( 64'hDFDF8ADFFFFFFFFF ))
  \LED/Mmux_currentdigit<0>2141  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/Omem_rd [0]),
    .I2(\lifo1/Omem_rd [2]),
    .I3(\lifo1/opcodeseltos_shadow [2]),
    .I4(\lifo1/opcodeseltos_shadow [0]),
    .I5(opcodeselLIFOLED[1]),
    .O(\LED/Mmux_currentdigit<0>214 )
  );
  LUT5 #(
    .INIT ( 32'h95008015 ))
  \LED/Mram_segments71  (
    .I0(\LED/currentdigit [1]),
    .I1(reset_n_IBUF_10),
    .I2(\LED/Mmux_currentdigit<0>262_345 ),
    .I3(\LED/Mram_segments41_309 ),
    .I4(\LED/currentdigit [0]),
    .O(display_7_OBUF_42)
  );
  LUT5 #(
    .INIT ( 32'h87708007 ))
  \LED/Mram_segments42  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/Mmux_currentdigit<0>262_345 ),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/Mram_segments41_309 ),
    .I4(\LED/currentdigit [0]),
    .O(display_4_OBUF_45)
  );
  LUT4 #(
    .INIT ( 16'h8AEF ))
  \alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy<1>11  (
    .I0(A_1_IBUF_1),
    .I1(A_0_IBUF_2),
    .I2(B[0]),
    .I3(B[1]),
    .O(\alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy [1])
  );
  LUT5 #(
    .INIT ( 32'h82282828 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_110 ),
    .I1(A_1_IBUF_1),
    .I2(B[1]),
    .I3(A_0_IBUF_2),
    .I4(B[0]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21_327 )
  );
  LUT5 #(
    .INIT ( 32'hD8887888 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<3>1  (
    .I0(A_1_IBUF_1),
    .I1(B[2]),
    .I2(A_2_IBUF_0),
    .I3(B[1]),
    .I4(B[0]),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<3> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT111  (
    .I0(opcodein[0]),
    .I1(opcodein[1]),
    .I2(opcodein[2]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_SW0  (
    .I0(opcodein[2]),
    .I1(B[2]),
    .I2(opcodein[0]),
    .I3(opcodein[1]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'hEEE8E888E888E888 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42  (
    .I0(A_2_IBUF_0),
    .I1(B[2]),
    .I2(A_1_IBUF_1),
    .I3(B[1]),
    .I4(A_0_IBUF_2),
    .I5(B[0]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41_324 )
  );
  LUT6 #(
    .INIT ( 64'h082008755D200820 ))
  \LED/Mmux_currentdigit<0>22121  (
    .I0(\lifo1/use_mem_read_279 ),
    .I1(\lifo1/Rmem_rd [2]),
    .I2(\lifo1/Rmem_rd [4]),
    .I3(resultLIFOLED[3]),
    .I4(\lifo1/resulttos_shadow [2]),
    .I5(\lifo1/resulttos_shadow [4]),
    .O(\LED/Mmux_currentdigit<0>2212 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAEAAAEAAAA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT44  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43_325 ),
    .I1(opcodein[0]),
    .I2(opcodein[2]),
    .I3(opcodein[1]),
    .I4(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<2> ),
    .I5(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<3> ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0880808080808080 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT63  (
    .I0(A_2_IBUF_0),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_111 ),
    .I2(B[2]),
    .I3(B[1]),
    .I4(B[0]),
    .I5(A_1_IBUF_1),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62_332 )
  );
  LUT6 #(
    .INIT ( 64'hA888800000800000 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<3>11  (
    .I0(B[2]),
    .I1(A_1_IBUF_1),
    .I2(A_2_IBUF_0),
    .I3(B[0]),
    .I4(B[1]),
    .I5(A_0_IBUF_2),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<3> )
  );
  FD   \clkdiv1/counter_300hz_2  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_2_rstpot_413 ),
    .Q(\clkdiv1/counter_300hz [2])
  );
  FD   \clkdiv1/counter_300hz_1  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_1_rstpot_414 ),
    .Q(\clkdiv1/counter_300hz [1])
  );
  FD   \clkdiv1/counter_300hz_5  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_5_rstpot_415 ),
    .Q(\clkdiv1/counter_300hz [5])
  );
  FD   \clkdiv1/counter_300hz_3  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_3_rstpot_416 ),
    .Q(\clkdiv1/counter_300hz [3])
  );
  FD   \clkdiv1/counter_300hz_4  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_4_rstpot_417 ),
    .Q(\clkdiv1/counter_300hz [4])
  );
  FD   \clkdiv1/counter_300hz_8  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_8_rstpot_418 ),
    .Q(\clkdiv1/counter_300hz [8])
  );
  FD   \clkdiv1/counter_300hz_6  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_6_rstpot_419 ),
    .Q(\clkdiv1/counter_300hz [6])
  );
  FD   \clkdiv1/counter_300hz_7  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_7_rstpot_420 ),
    .Q(\clkdiv1/counter_300hz [7])
  );
  FD   \clkdiv1/counter_300hz_11  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_11_rstpot_421 ),
    .Q(\clkdiv1/counter_300hz [11])
  );
  FD   \clkdiv1/counter_300hz_9  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_9_rstpot_422 ),
    .Q(\clkdiv1/counter_300hz [9])
  );
  FD   \clkdiv1/counter_300hz_10  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_10_rstpot_423 ),
    .Q(\clkdiv1/counter_300hz [10])
  );
  FD   \clkdiv1/counter_300hz_14  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_14_rstpot_424 ),
    .Q(\clkdiv1/counter_300hz [14])
  );
  FD   \clkdiv1/counter_300hz_12  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_12_rstpot_425 ),
    .Q(\clkdiv1/counter_300hz [12])
  );
  FD   \clkdiv1/counter_300hz_13  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_13_rstpot_426 ),
    .Q(\clkdiv1/counter_300hz [13])
  );
  FD   \clkdiv1/counter_300hz_17  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_17_rstpot_427 ),
    .Q(\clkdiv1/counter_300hz [17])
  );
  FD   \clkdiv1/counter_300hz_15  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_15_rstpot_428 ),
    .Q(\clkdiv1/counter_300hz [15])
  );
  FD   \clkdiv1/counter_300hz_16  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_16_rstpot_429 ),
    .Q(\clkdiv1/counter_300hz [16])
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_1_rstpot  (
    .I0(Result[1]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_1_rstpot_414 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_2_rstpot  (
    .I0(Result[2]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_2_rstpot_413 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_3_rstpot  (
    .I0(Result[3]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_3_rstpot_416 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_4_rstpot  (
    .I0(Result[4]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_4_rstpot_417 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_5_rstpot  (
    .I0(Result[5]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_5_rstpot_415 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_6_rstpot  (
    .I0(Result[6]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_6_rstpot_419 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_7_rstpot  (
    .I0(Result[7]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_7_rstpot_420 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_8_rstpot  (
    .I0(Result[8]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_8_rstpot_418 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_9_rstpot  (
    .I0(Result[9]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_9_rstpot_422 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_10_rstpot  (
    .I0(Result[10]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_10_rstpot_423 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_11_rstpot  (
    .I0(Result[11]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_11_rstpot_421 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_12_rstpot  (
    .I0(Result[12]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_12_rstpot_425 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_13_rstpot  (
    .I0(Result[13]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_13_rstpot_426 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_14_rstpot  (
    .I0(Result[14]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_14_rstpot_424 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_15_rstpot  (
    .I0(Result[15]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_15_rstpot_428 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_16_rstpot  (
    .I0(Result[16]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_16_rstpot_429 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_17_rstpot  (
    .I0(Result[17]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_318 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_319 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_17_rstpot_427 )
  );
  FDC   \executedebouncer/clean_1  (
    .C(\clkdiv1/clk_300hz_BUFG_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/clean_rstpot_404 ),
    .Q(\executedebouncer/clean_1_430 )
  );
  BUFG   \clkdiv1/clk_300hz_BUFG  (
    .O(\clkdiv1/clk_300hz_BUFG_27 ),
    .I(\clkdiv1/clk_300hz_431 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_9)
  );
  INV   \clkdiv1/Mcount_counter_300hz_lut<0>_INV_0  (
    .I(\clkdiv1/counter_300hz [0]),
    .O(\clkdiv1/Mcount_counter_300hz_lut [0])
  );
  INV   mode_inv1_INV_0 (
    .I(mode_IBUF_6),
    .O(mode_inv)
  );
  INV   \clkdiv1/reset_n_inv1_INV_0  (
    .I(reset_n_IBUF_10),
    .O(\LED/reset_n_inv )
  );
  INV   \readdebouncer/noisy_inv1_INV_0  (
    .I(readin_IBUF_8),
    .O(\readdebouncer/noisy_inv )
  );
  INV   \executedebouncer/noisy_inv1_INV_0  (
    .I(executein_IBUF_7),
    .O(\executedebouncer/noisy_inv )
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

