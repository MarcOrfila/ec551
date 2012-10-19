////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.76xd
//  \   \         Application: netgen
//  /   /         Filename: topmodule_synthesis.v
// /___/   /\     Timestamp: Fri Oct 19 11:17:13 2012
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
  mode, executein, readin, clk, reset_n, A, Bopcode, display, displayctl
);
  input mode;
  input executein;
  input readin;
  input clk;
  input reset_n;
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
  wire clk_BUFGP_8;
  wire reset_n_IBUF_9;
  wire \executedebouncer/clean_24 ;
  wire \clkdiv1/clk_300hz_25 ;
  wire displayctl_2_OBUF_26;
  wire displayctl_1_OBUF_27;
  wire displayctl_0_OBUF_28;
  wire display_7_OBUF_29;
  wire display_6_OBUF_30;
  wire display_5_OBUF_31;
  wire display_4_OBUF_32;
  wire display_3_OBUF_33;
  wire display_2_OBUF_34;
  wire display_1_OBUF_35;
  wire displayctl_3_OBUF_36;
  wire display_0_OBUF_37;
  wire mode_inv;
  wire \clkdiv1/GND_3_o_GND_3_o_equal_5_o ;
  wire \clkdiv1/clk_300hz_INV_7_o ;
  wire \decoder1/Mram_opcodeout ;
  wire \decoder1/Mram_opcodeout1 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_98 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_99 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_100 ;
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
  wire \executedebouncer/Mcount_countpushed25 ;
  wire \executedebouncer/Mcount_countpushed24 ;
  wire \executedebouncer/Mcount_countpushed23 ;
  wire \executedebouncer/Mcount_countpushed22 ;
  wire \executedebouncer/Mcount_countpushed21 ;
  wire \executedebouncer/Mcount_countpushed20 ;
  wire \executedebouncer/Mcount_countpushed19 ;
  wire \executedebouncer/Mcount_countpushed18 ;
  wire \executedebouncer/Mcount_countpushed17 ;
  wire \executedebouncer/Mcount_countpushed16 ;
  wire \executedebouncer/Mcount_countpushed15 ;
  wire \executedebouncer/Mcount_countpushed14 ;
  wire \executedebouncer/Mcount_countpushed13 ;
  wire \executedebouncer/Mcount_countpushed12 ;
  wire \executedebouncer/Mcount_countpushed11 ;
  wire \executedebouncer/Mcount_countpushed10 ;
  wire \executedebouncer/Mcount_countpushed9 ;
  wire \executedebouncer/Mcount_countpushed8 ;
  wire \executedebouncer/Mcount_countpushed7 ;
  wire \executedebouncer/Mcount_countpushed6 ;
  wire \executedebouncer/Mcount_countpushed5 ;
  wire \executedebouncer/Mcount_countpushed4 ;
  wire \executedebouncer/Mcount_countpushed3 ;
  wire \executedebouncer/Mcount_countpushed2 ;
  wire \executedebouncer/Mcount_countpushed1 ;
  wire \executedebouncer/Mcount_countpushed ;
  wire \executedebouncer/_n0063_inv ;
  wire \executedebouncer/Mcount_countstill25 ;
  wire \executedebouncer/Mcount_countstill24 ;
  wire \executedebouncer/Mcount_countstill23 ;
  wire \executedebouncer/Mcount_countstill22 ;
  wire \executedebouncer/Mcount_countstill21 ;
  wire \executedebouncer/Mcount_countstill20 ;
  wire \executedebouncer/Mcount_countstill19 ;
  wire \executedebouncer/Mcount_countstill18 ;
  wire \executedebouncer/Mcount_countstill17 ;
  wire \executedebouncer/Mcount_countstill16 ;
  wire \executedebouncer/Mcount_countstill15 ;
  wire \executedebouncer/Mcount_countstill14 ;
  wire \executedebouncer/Mcount_countstill13 ;
  wire \executedebouncer/Mcount_countstill12 ;
  wire \executedebouncer/Mcount_countstill11 ;
  wire \executedebouncer/Mcount_countstill10 ;
  wire \executedebouncer/Mcount_countstill9 ;
  wire \executedebouncer/Mcount_countstill8 ;
  wire \executedebouncer/Mcount_countstill7 ;
  wire \executedebouncer/Mcount_countstill6 ;
  wire \executedebouncer/Mcount_countstill5 ;
  wire \executedebouncer/Mcount_countstill4 ;
  wire \executedebouncer/Mcount_countstill3 ;
  wire \executedebouncer/Mcount_countstill2 ;
  wire \executedebouncer/Mcount_countstill1 ;
  wire \executedebouncer/Mcount_countstill ;
  wire \executedebouncer/noisy_inv ;
  wire \executedebouncer/_n0066_inv ;
  wire \executedebouncer/pushed_277 ;
  wire \executedebouncer/still_278 ;
  wire \LED/Mmux_currentdigit<0>2212 ;
  wire \LED/Mmux_currentdigit<0>214 ;
  wire \LED/Mram_segments41_333 ;
  wire \LED/Mcount_counter1 ;
  wire \LED/Mcount_counter ;
  wire \LED/reset_n_inv ;
  wire \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ;
  wire \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT3 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT32 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33_346 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT4 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41_348 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43_349 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT2 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21_351 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22_352 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23_353 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT6 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61_355 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62_356 ;
  wire N01;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14_358 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15_359 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16_360 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17_361 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT18 ;
  wire \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_364 ;
  wire \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_365 ;
  wire \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_366 ;
  wire \executedebouncer/_n00661_367 ;
  wire \executedebouncer/_n00662_368 ;
  wire \executedebouncer/_n00663_369 ;
  wire \executedebouncer/_n00664_370 ;
  wire \executedebouncer/_n00665_371 ;
  wire \LED/Mmux_currentdigit<0>26_372 ;
  wire \LED/Mmux_currentdigit<0>261_373 ;
  wire \LED/Mmux_currentdigit<0>262_374 ;
  wire \LED/Mmux_currentdigit<0>2 ;
  wire \LED/Mmux_currentdigit<0>21_376 ;
  wire \LED/Mmux_currentdigit<0>22 ;
  wire \LED/Mmux_currentdigit<0>23_378 ;
  wire \LED/Mmux_currentdigit<0>24_379 ;
  wire N2;
  wire \LED/Mmux_currentdigit<0>222_381 ;
  wire \LED/Mmux_currentdigit<0>223_382 ;
  wire \LED/Mmux_currentdigit<0>224_383 ;
  wire \LED/Mmux_currentdigit<0>225_384 ;
  wire \LED/Mmux_currentdigit<0>228_385 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<1>_rt_408 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<2>_rt_409 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<3>_rt_410 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<4>_rt_411 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<5>_rt_412 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<6>_rt_413 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<7>_rt_414 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<8>_rt_415 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<9>_rt_416 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<10>_rt_417 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<11>_rt_418 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<12>_rt_419 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<13>_rt_420 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<14>_rt_421 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<15>_rt_422 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<16>_rt_423 ;
  wire \clkdiv1/Mcount_counter_300hz_xor<17>_rt_424 ;
  wire \executedebouncer/pushed_rstpot_425 ;
  wire \executedebouncer/still_rstpot_426 ;
  wire \executedebouncer/clean_rstpot_427 ;
  wire \executedebouncer/countstill_11_rstpot_428 ;
  wire \executedebouncer/countstill_10_rstpot_429 ;
  wire \executedebouncer/countstill_9_rstpot_430 ;
  wire \executedebouncer/countstill_8_rstpot_431 ;
  wire \executedebouncer/countstill_7_rstpot_432 ;
  wire \executedebouncer/countstill_6_rstpot_433 ;
  wire \executedebouncer/countstill_5_rstpot_434 ;
  wire \executedebouncer/countstill_4_rstpot_435 ;
  wire \executedebouncer/countstill_3_rstpot_436 ;
  wire \executedebouncer/countstill_2_rstpot_437 ;
  wire \executedebouncer/countstill_1_rstpot_438 ;
  wire \executedebouncer/countstill_0_rstpot_439 ;
  wire \executedebouncer/countstill_12_rstpot_440 ;
  wire \executedebouncer/countstill_13_rstpot_441 ;
  wire \executedebouncer/countstill_14_rstpot_442 ;
  wire \executedebouncer/countstill_15_rstpot_443 ;
  wire \executedebouncer/countstill_16_rstpot_444 ;
  wire \executedebouncer/countstill_17_rstpot_445 ;
  wire \executedebouncer/countstill_18_rstpot_446 ;
  wire N4;
  wire N6;
  wire N8;
  wire N9;
  wire N11;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire \executedebouncer/_n0066_inv1_456 ;
  wire \clkdiv1/counter_300hz_1_rstpot_457 ;
  wire \clkdiv1/counter_300hz_0_rstpot_458 ;
  wire \clkdiv1/counter_300hz_4_rstpot_459 ;
  wire \clkdiv1/counter_300hz_2_rstpot_460 ;
  wire \clkdiv1/counter_300hz_3_rstpot_461 ;
  wire \clkdiv1/counter_300hz_5_rstpot_462 ;
  wire \clkdiv1/counter_300hz_6_rstpot_463 ;
  wire \clkdiv1/counter_300hz_9_rstpot_464 ;
  wire \clkdiv1/counter_300hz_7_rstpot_465 ;
  wire \clkdiv1/counter_300hz_8_rstpot_466 ;
  wire \clkdiv1/counter_300hz_12_rstpot_467 ;
  wire \clkdiv1/counter_300hz_10_rstpot_468 ;
  wire \clkdiv1/counter_300hz_11_rstpot_469 ;
  wire \clkdiv1/counter_300hz_15_rstpot_470 ;
  wire \clkdiv1/counter_300hz_13_rstpot_471 ;
  wire \clkdiv1/counter_300hz_14_rstpot_472 ;
  wire \clkdiv1/counter_300hz_16_rstpot_473 ;
  wire \clkdiv1/counter_300hz_17_rstpot_474 ;
  wire [5 : 0] \alu1/f ;
  wire [2 : 0] \alu1/opcodesel ;
  wire [2 : 0] B;
  wire [2 : 0] opcodein;
  wire [17 : 0] \clkdiv1/counter_300hz ;
  wire [17 : 0] Result;
  wire [0 : 0] \clkdiv1/Mcount_counter_300hz_lut ;
  wire [16 : 0] \clkdiv1/Mcount_counter_300hz_cy ;
  wire [1 : 0] \alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy ;
  wire [1 : 1] \alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_lut ;
  wire [25 : 0] \executedebouncer/Mcount_countpushed_lut ;
  wire [24 : 0] \executedebouncer/Mcount_countpushed_cy ;
  wire [25 : 0] \executedebouncer/Mcount_countstill_lut ;
  wire [24 : 0] \executedebouncer/Mcount_countstill_cy ;
  wire [25 : 0] \executedebouncer/countstill ;
  wire [25 : 0] \executedebouncer/countpushed ;
  wire [1 : 0] \LED/currentdigit ;
  wire [1 : 0] \LED/counter ;
  wire [17 : 17] \clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 ;
  wire [25 : 25] \executedebouncer/GND_2_o_GND_2_o_equal_4_o ;
  GND   XST_GND (
    .G(displayctl_3_OBUF_36)
  );
  VCC   XST_VCC (
    .P(display_0_OBUF_37)
  );
  FDCE   B_0 (
    .C(\clkdiv1/clk_300hz_25 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_0_IBUF_5),
    .Q(B[0])
  );
  FDCE   B_1 (
    .C(\clkdiv1/clk_300hz_25 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_1_IBUF_4),
    .Q(B[1])
  );
  FDCE   B_2 (
    .C(\clkdiv1/clk_300hz_25 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_2_IBUF_3),
    .Q(B[2])
  );
  FDCE   opcodein_0 (
    .C(\clkdiv1/clk_300hz_25 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_0_IBUF_5),
    .Q(opcodein[0])
  );
  FDCE   opcodein_1 (
    .C(\clkdiv1/clk_300hz_25 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_1_IBUF_4),
    .Q(opcodein[1])
  );
  FDCE   opcodein_2 (
    .C(\clkdiv1/clk_300hz_25 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_2_IBUF_3),
    .Q(opcodein[2])
  );
  FDRE   \clkdiv1/clk_300hz  (
    .C(clk_BUFGP_8),
    .CE(\clkdiv1/GND_3_o_GND_3_o_equal_5_o ),
    .D(\clkdiv1/clk_300hz_INV_7_o ),
    .R(\LED/reset_n_inv ),
    .Q(\clkdiv1/clk_300hz_25 )
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<0>  (
    .CI(displayctl_3_OBUF_36),
    .DI(display_0_OBUF_37),
    .S(\clkdiv1/Mcount_counter_300hz_lut [0]),
    .O(\clkdiv1/Mcount_counter_300hz_cy [0])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<0>  (
    .CI(displayctl_3_OBUF_36),
    .LI(\clkdiv1/Mcount_counter_300hz_lut [0]),
    .O(Result[0])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<1>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [0]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_408 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [1])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<1>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [0]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_408 ),
    .O(Result[1])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<2>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [1]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_409 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [2])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<2>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [1]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_409 ),
    .O(Result[2])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<3>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [2]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_410 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [3])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<3>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [2]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_410 ),
    .O(Result[3])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<4>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [3]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_411 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [4])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<4>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [3]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_411 ),
    .O(Result[4])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<5>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [4]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_412 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [5])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<5>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [4]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_412 ),
    .O(Result[5])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<6>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [5]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_413 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [6])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<6>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [5]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_413 ),
    .O(Result[6])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<7>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [6]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_414 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [7])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<7>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [6]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_414 ),
    .O(Result[7])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<8>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [7]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_415 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [8])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<8>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [7]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_415 ),
    .O(Result[8])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<9>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [8]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_416 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [9])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<9>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [8]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_416 ),
    .O(Result[9])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<10>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [9]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_417 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [10])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<10>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [9]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_417 ),
    .O(Result[10])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<11>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [10]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_418 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [11])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<11>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [10]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_418 ),
    .O(Result[11])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<12>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [11]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_419 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [12])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<12>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [11]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_419 ),
    .O(Result[12])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<13>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [12]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_420 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [13])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<13>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [12]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_420 ),
    .O(Result[13])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<14>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [13]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_421 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [14])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<14>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [13]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_421 ),
    .O(Result[14])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<15>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [14]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_422 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [15])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<15>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [14]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_422 ),
    .O(Result[15])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<16>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [15]),
    .DI(displayctl_3_OBUF_36),
    .S(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_423 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [16])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<16>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [15]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_423 ),
    .O(Result[16])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<17>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [16]),
    .LI(\clkdiv1/Mcount_counter_300hz_xor<17>_rt_424 ),
    .O(Result[17])
  );
  FD   \alu1/f_5  (
    .C(\executedebouncer/clean_24 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<5> ),
    .Q(\alu1/f [5])
  );
  FD   \alu1/f_4  (
    .C(\executedebouncer/clean_24 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<4> ),
    .Q(\alu1/f [4])
  );
  FD   \alu1/f_3  (
    .C(\executedebouncer/clean_24 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<3> ),
    .Q(\alu1/f [3])
  );
  FD   \alu1/f_2  (
    .C(\executedebouncer/clean_24 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<2> ),
    .Q(\alu1/f [2])
  );
  FD   \alu1/f_1  (
    .C(\executedebouncer/clean_24 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<1> ),
    .Q(\alu1/f [1])
  );
  FD   \alu1/f_0  (
    .C(\executedebouncer/clean_24 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<0> ),
    .Q(\alu1/f [0])
  );
  FD   \alu1/opcodesel_2  (
    .C(\executedebouncer/clean_24 ),
    .D(opcodein[2]),
    .Q(\alu1/opcodesel [2])
  );
  FD   \alu1/opcodesel_1  (
    .C(\executedebouncer/clean_24 ),
    .D(\decoder1/Mram_opcodeout1 ),
    .Q(\alu1/opcodesel [1])
  );
  FD   \alu1/opcodesel_0  (
    .C(\executedebouncer/clean_24 ),
    .D(\decoder1/Mram_opcodeout ),
    .Q(\alu1/opcodesel [0])
  );
  FDCE   \executedebouncer/countstill_25  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill25 ),
    .Q(\executedebouncer/countstill [25])
  );
  FDCE   \executedebouncer/countstill_24  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill24 ),
    .Q(\executedebouncer/countstill [24])
  );
  FDCE   \executedebouncer/countstill_23  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill23 ),
    .Q(\executedebouncer/countstill [23])
  );
  FDCE   \executedebouncer/countstill_22  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill22 ),
    .Q(\executedebouncer/countstill [22])
  );
  FDCE   \executedebouncer/countstill_21  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill21 ),
    .Q(\executedebouncer/countstill [21])
  );
  FDCE   \executedebouncer/countstill_20  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill20 ),
    .Q(\executedebouncer/countstill [20])
  );
  FDCE   \executedebouncer/countstill_19  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill19 ),
    .Q(\executedebouncer/countstill [19])
  );
  FDCE   \executedebouncer/countpushed_25  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed25 ),
    .Q(\executedebouncer/countpushed [25])
  );
  FDCE   \executedebouncer/countpushed_24  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed24 ),
    .Q(\executedebouncer/countpushed [24])
  );
  FDCE   \executedebouncer/countpushed_23  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed23 ),
    .Q(\executedebouncer/countpushed [23])
  );
  FDCE   \executedebouncer/countpushed_22  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed22 ),
    .Q(\executedebouncer/countpushed [22])
  );
  FDCE   \executedebouncer/countpushed_21  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed21 ),
    .Q(\executedebouncer/countpushed [21])
  );
  FDCE   \executedebouncer/countpushed_20  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed20 ),
    .Q(\executedebouncer/countpushed [20])
  );
  FDCE   \executedebouncer/countpushed_19  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed19 ),
    .Q(\executedebouncer/countpushed [19])
  );
  FDCE   \executedebouncer/countpushed_18  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed18 ),
    .Q(\executedebouncer/countpushed [18])
  );
  FDCE   \executedebouncer/countpushed_17  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed17 ),
    .Q(\executedebouncer/countpushed [17])
  );
  FDCE   \executedebouncer/countpushed_16  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed16 ),
    .Q(\executedebouncer/countpushed [16])
  );
  FDCE   \executedebouncer/countpushed_15  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed15 ),
    .Q(\executedebouncer/countpushed [15])
  );
  FDCE   \executedebouncer/countpushed_14  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed14 ),
    .Q(\executedebouncer/countpushed [14])
  );
  FDCE   \executedebouncer/countpushed_13  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed13 ),
    .Q(\executedebouncer/countpushed [13])
  );
  FDCE   \executedebouncer/countpushed_12  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed12 ),
    .Q(\executedebouncer/countpushed [12])
  );
  FDCE   \executedebouncer/countpushed_11  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed11 ),
    .Q(\executedebouncer/countpushed [11])
  );
  FDCE   \executedebouncer/countpushed_10  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed10 ),
    .Q(\executedebouncer/countpushed [10])
  );
  FDCE   \executedebouncer/countpushed_9  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed9 ),
    .Q(\executedebouncer/countpushed [9])
  );
  FDCE   \executedebouncer/countpushed_8  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed8 ),
    .Q(\executedebouncer/countpushed [8])
  );
  FDCE   \executedebouncer/countpushed_7  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed7 ),
    .Q(\executedebouncer/countpushed [7])
  );
  FDCE   \executedebouncer/countpushed_6  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed6 ),
    .Q(\executedebouncer/countpushed [6])
  );
  FDCE   \executedebouncer/countpushed_5  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed5 ),
    .Q(\executedebouncer/countpushed [5])
  );
  FDCE   \executedebouncer/countpushed_4  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed4 ),
    .Q(\executedebouncer/countpushed [4])
  );
  FDCE   \executedebouncer/countpushed_3  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed3 ),
    .Q(\executedebouncer/countpushed [3])
  );
  FDCE   \executedebouncer/countpushed_2  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed2 ),
    .Q(\executedebouncer/countpushed [2])
  );
  FDCE   \executedebouncer/countpushed_1  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed1 ),
    .Q(\executedebouncer/countpushed [1])
  );
  FDCE   \executedebouncer/countpushed_0  (
    .C(clk_BUFGP_8),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed ),
    .Q(\executedebouncer/countpushed [0])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<25>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [24]),
    .LI(\executedebouncer/Mcount_countpushed_lut [25]),
    .O(\executedebouncer/Mcount_countpushed25 )
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<24>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [23]),
    .LI(\executedebouncer/Mcount_countpushed_lut [24]),
    .O(\executedebouncer/Mcount_countpushed24 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<24>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [23]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [24]),
    .O(\executedebouncer/Mcount_countpushed_cy [24])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<23>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [22]),
    .LI(\executedebouncer/Mcount_countpushed_lut [23]),
    .O(\executedebouncer/Mcount_countpushed23 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<23>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [22]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [23]),
    .O(\executedebouncer/Mcount_countpushed_cy [23])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<22>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [21]),
    .LI(\executedebouncer/Mcount_countpushed_lut [22]),
    .O(\executedebouncer/Mcount_countpushed22 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<22>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [21]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [22]),
    .O(\executedebouncer/Mcount_countpushed_cy [22])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<21>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [20]),
    .LI(\executedebouncer/Mcount_countpushed_lut [21]),
    .O(\executedebouncer/Mcount_countpushed21 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<21>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [20]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [21]),
    .O(\executedebouncer/Mcount_countpushed_cy [21])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<20>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [19]),
    .LI(\executedebouncer/Mcount_countpushed_lut [20]),
    .O(\executedebouncer/Mcount_countpushed20 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<20>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [19]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [20]),
    .O(\executedebouncer/Mcount_countpushed_cy [20])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<19>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [18]),
    .LI(\executedebouncer/Mcount_countpushed_lut [19]),
    .O(\executedebouncer/Mcount_countpushed19 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<19>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [18]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [19]),
    .O(\executedebouncer/Mcount_countpushed_cy [19])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<18>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [17]),
    .LI(\executedebouncer/Mcount_countpushed_lut [18]),
    .O(\executedebouncer/Mcount_countpushed18 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<18>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [17]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [18]),
    .O(\executedebouncer/Mcount_countpushed_cy [18])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<17>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [16]),
    .LI(\executedebouncer/Mcount_countpushed_lut [17]),
    .O(\executedebouncer/Mcount_countpushed17 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<17>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [16]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [17]),
    .O(\executedebouncer/Mcount_countpushed_cy [17])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<16>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [15]),
    .LI(\executedebouncer/Mcount_countpushed_lut [16]),
    .O(\executedebouncer/Mcount_countpushed16 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<16>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [15]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [16]),
    .O(\executedebouncer/Mcount_countpushed_cy [16])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<15>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [14]),
    .LI(\executedebouncer/Mcount_countpushed_lut [15]),
    .O(\executedebouncer/Mcount_countpushed15 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<15>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [14]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [15]),
    .O(\executedebouncer/Mcount_countpushed_cy [15])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<14>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [13]),
    .LI(\executedebouncer/Mcount_countpushed_lut [14]),
    .O(\executedebouncer/Mcount_countpushed14 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<14>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [13]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [14]),
    .O(\executedebouncer/Mcount_countpushed_cy [14])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<13>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [12]),
    .LI(\executedebouncer/Mcount_countpushed_lut [13]),
    .O(\executedebouncer/Mcount_countpushed13 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<13>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [12]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [13]),
    .O(\executedebouncer/Mcount_countpushed_cy [13])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<12>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [11]),
    .LI(\executedebouncer/Mcount_countpushed_lut [12]),
    .O(\executedebouncer/Mcount_countpushed12 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<12>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [11]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [12]),
    .O(\executedebouncer/Mcount_countpushed_cy [12])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<11>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [10]),
    .LI(\executedebouncer/Mcount_countpushed_lut [11]),
    .O(\executedebouncer/Mcount_countpushed11 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<11>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [10]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [11]),
    .O(\executedebouncer/Mcount_countpushed_cy [11])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<10>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [9]),
    .LI(\executedebouncer/Mcount_countpushed_lut [10]),
    .O(\executedebouncer/Mcount_countpushed10 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<10>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [9]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [10]),
    .O(\executedebouncer/Mcount_countpushed_cy [10])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<9>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [8]),
    .LI(\executedebouncer/Mcount_countpushed_lut [9]),
    .O(\executedebouncer/Mcount_countpushed9 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<9>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [8]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [9]),
    .O(\executedebouncer/Mcount_countpushed_cy [9])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<8>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [7]),
    .LI(\executedebouncer/Mcount_countpushed_lut [8]),
    .O(\executedebouncer/Mcount_countpushed8 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<8>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [7]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [8]),
    .O(\executedebouncer/Mcount_countpushed_cy [8])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<7>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [6]),
    .LI(\executedebouncer/Mcount_countpushed_lut [7]),
    .O(\executedebouncer/Mcount_countpushed7 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<7>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [6]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [7]),
    .O(\executedebouncer/Mcount_countpushed_cy [7])
  );
  XORCY   \executedebouncer/Mcount_countpushed_xor<6>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [5]),
    .LI(\executedebouncer/Mcount_countpushed_lut [6]),
    .O(\executedebouncer/Mcount_countpushed6 )
  );
  MUXCY   \executedebouncer/Mcount_countpushed_cy<6>  (
    .CI(\executedebouncer/Mcount_countpushed_cy [5]),
    .DI(displayctl_3_OBUF_36),
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
    .DI(displayctl_3_OBUF_36),
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
    .DI(displayctl_3_OBUF_36),
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
    .DI(displayctl_3_OBUF_36),
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
    .DI(displayctl_3_OBUF_36),
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
    .DI(displayctl_3_OBUF_36),
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
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countpushed_lut [0]),
    .O(\executedebouncer/Mcount_countpushed_cy [0])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<25>  (
    .CI(\executedebouncer/Mcount_countstill_cy [24]),
    .LI(\executedebouncer/Mcount_countstill_lut [25]),
    .O(\executedebouncer/Mcount_countstill25 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<25>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [25]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [25])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<24>  (
    .CI(\executedebouncer/Mcount_countstill_cy [23]),
    .LI(\executedebouncer/Mcount_countstill_lut [24]),
    .O(\executedebouncer/Mcount_countstill24 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<24>  (
    .CI(\executedebouncer/Mcount_countstill_cy [23]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [24]),
    .O(\executedebouncer/Mcount_countstill_cy [24])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<24>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [24]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [24])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<23>  (
    .CI(\executedebouncer/Mcount_countstill_cy [22]),
    .LI(\executedebouncer/Mcount_countstill_lut [23]),
    .O(\executedebouncer/Mcount_countstill23 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<23>  (
    .CI(\executedebouncer/Mcount_countstill_cy [22]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [23]),
    .O(\executedebouncer/Mcount_countstill_cy [23])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<23>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [23]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [23])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<22>  (
    .CI(\executedebouncer/Mcount_countstill_cy [21]),
    .LI(\executedebouncer/Mcount_countstill_lut [22]),
    .O(\executedebouncer/Mcount_countstill22 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<22>  (
    .CI(\executedebouncer/Mcount_countstill_cy [21]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [22]),
    .O(\executedebouncer/Mcount_countstill_cy [22])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<22>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [22]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [22])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<21>  (
    .CI(\executedebouncer/Mcount_countstill_cy [20]),
    .LI(\executedebouncer/Mcount_countstill_lut [21]),
    .O(\executedebouncer/Mcount_countstill21 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<21>  (
    .CI(\executedebouncer/Mcount_countstill_cy [20]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [21]),
    .O(\executedebouncer/Mcount_countstill_cy [21])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<21>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [21]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [21])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<20>  (
    .CI(\executedebouncer/Mcount_countstill_cy [19]),
    .LI(\executedebouncer/Mcount_countstill_lut [20]),
    .O(\executedebouncer/Mcount_countstill20 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<20>  (
    .CI(\executedebouncer/Mcount_countstill_cy [19]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [20]),
    .O(\executedebouncer/Mcount_countstill_cy [20])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<20>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [20]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [20])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<19>  (
    .CI(\executedebouncer/Mcount_countstill_cy [18]),
    .LI(\executedebouncer/Mcount_countstill_lut [19]),
    .O(\executedebouncer/Mcount_countstill19 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<19>  (
    .CI(\executedebouncer/Mcount_countstill_cy [18]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [19]),
    .O(\executedebouncer/Mcount_countstill_cy [19])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<19>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [19]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [19])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<18>  (
    .CI(\executedebouncer/Mcount_countstill_cy [17]),
    .LI(\executedebouncer/Mcount_countstill_lut [18]),
    .O(\executedebouncer/Mcount_countstill18 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<18>  (
    .CI(\executedebouncer/Mcount_countstill_cy [17]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [18]),
    .O(\executedebouncer/Mcount_countstill_cy [18])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<18>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [18]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [18])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<17>  (
    .CI(\executedebouncer/Mcount_countstill_cy [16]),
    .LI(\executedebouncer/Mcount_countstill_lut [17]),
    .O(\executedebouncer/Mcount_countstill17 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<17>  (
    .CI(\executedebouncer/Mcount_countstill_cy [16]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [17]),
    .O(\executedebouncer/Mcount_countstill_cy [17])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<17>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [17]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [17])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<16>  (
    .CI(\executedebouncer/Mcount_countstill_cy [15]),
    .LI(\executedebouncer/Mcount_countstill_lut [16]),
    .O(\executedebouncer/Mcount_countstill16 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<16>  (
    .CI(\executedebouncer/Mcount_countstill_cy [15]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [16]),
    .O(\executedebouncer/Mcount_countstill_cy [16])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<16>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [16]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [16])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<15>  (
    .CI(\executedebouncer/Mcount_countstill_cy [14]),
    .LI(\executedebouncer/Mcount_countstill_lut [15]),
    .O(\executedebouncer/Mcount_countstill15 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<15>  (
    .CI(\executedebouncer/Mcount_countstill_cy [14]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [15]),
    .O(\executedebouncer/Mcount_countstill_cy [15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<15>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [15]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [15])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<14>  (
    .CI(\executedebouncer/Mcount_countstill_cy [13]),
    .LI(\executedebouncer/Mcount_countstill_lut [14]),
    .O(\executedebouncer/Mcount_countstill14 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<14>  (
    .CI(\executedebouncer/Mcount_countstill_cy [13]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [14]),
    .O(\executedebouncer/Mcount_countstill_cy [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<14>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [14]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [14])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<13>  (
    .CI(\executedebouncer/Mcount_countstill_cy [12]),
    .LI(\executedebouncer/Mcount_countstill_lut [13]),
    .O(\executedebouncer/Mcount_countstill13 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<13>  (
    .CI(\executedebouncer/Mcount_countstill_cy [12]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [13]),
    .O(\executedebouncer/Mcount_countstill_cy [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<13>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [13]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [13])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<12>  (
    .CI(\executedebouncer/Mcount_countstill_cy [11]),
    .LI(\executedebouncer/Mcount_countstill_lut [12]),
    .O(\executedebouncer/Mcount_countstill12 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<12>  (
    .CI(\executedebouncer/Mcount_countstill_cy [11]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [12]),
    .O(\executedebouncer/Mcount_countstill_cy [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<12>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [12]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [12])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<11>  (
    .CI(\executedebouncer/Mcount_countstill_cy [10]),
    .LI(\executedebouncer/Mcount_countstill_lut [11]),
    .O(\executedebouncer/Mcount_countstill11 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<11>  (
    .CI(\executedebouncer/Mcount_countstill_cy [10]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [11]),
    .O(\executedebouncer/Mcount_countstill_cy [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<11>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [11]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [11])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<10>  (
    .CI(\executedebouncer/Mcount_countstill_cy [9]),
    .LI(\executedebouncer/Mcount_countstill_lut [10]),
    .O(\executedebouncer/Mcount_countstill10 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<10>  (
    .CI(\executedebouncer/Mcount_countstill_cy [9]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [10]),
    .O(\executedebouncer/Mcount_countstill_cy [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<10>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [10]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [10])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<9>  (
    .CI(\executedebouncer/Mcount_countstill_cy [8]),
    .LI(\executedebouncer/Mcount_countstill_lut [9]),
    .O(\executedebouncer/Mcount_countstill9 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<9>  (
    .CI(\executedebouncer/Mcount_countstill_cy [8]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [9]),
    .O(\executedebouncer/Mcount_countstill_cy [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<9>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [9]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [9])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<8>  (
    .CI(\executedebouncer/Mcount_countstill_cy [7]),
    .LI(\executedebouncer/Mcount_countstill_lut [8]),
    .O(\executedebouncer/Mcount_countstill8 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<8>  (
    .CI(\executedebouncer/Mcount_countstill_cy [7]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [8]),
    .O(\executedebouncer/Mcount_countstill_cy [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<8>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [8]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [8])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<7>  (
    .CI(\executedebouncer/Mcount_countstill_cy [6]),
    .LI(\executedebouncer/Mcount_countstill_lut [7]),
    .O(\executedebouncer/Mcount_countstill7 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<7>  (
    .CI(\executedebouncer/Mcount_countstill_cy [6]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [7]),
    .O(\executedebouncer/Mcount_countstill_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<7>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [7]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [7])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<6>  (
    .CI(\executedebouncer/Mcount_countstill_cy [5]),
    .LI(\executedebouncer/Mcount_countstill_lut [6]),
    .O(\executedebouncer/Mcount_countstill6 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<6>  (
    .CI(\executedebouncer/Mcount_countstill_cy [5]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [6]),
    .O(\executedebouncer/Mcount_countstill_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<6>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [6]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [6])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<5>  (
    .CI(\executedebouncer/Mcount_countstill_cy [4]),
    .LI(\executedebouncer/Mcount_countstill_lut [5]),
    .O(\executedebouncer/Mcount_countstill5 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<5>  (
    .CI(\executedebouncer/Mcount_countstill_cy [4]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [5]),
    .O(\executedebouncer/Mcount_countstill_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<5>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [5]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [5])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<4>  (
    .CI(\executedebouncer/Mcount_countstill_cy [3]),
    .LI(\executedebouncer/Mcount_countstill_lut [4]),
    .O(\executedebouncer/Mcount_countstill4 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<4>  (
    .CI(\executedebouncer/Mcount_countstill_cy [3]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [4]),
    .O(\executedebouncer/Mcount_countstill_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<4>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [4]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [4])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<3>  (
    .CI(\executedebouncer/Mcount_countstill_cy [2]),
    .LI(\executedebouncer/Mcount_countstill_lut [3]),
    .O(\executedebouncer/Mcount_countstill3 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<3>  (
    .CI(\executedebouncer/Mcount_countstill_cy [2]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [3]),
    .O(\executedebouncer/Mcount_countstill_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<3>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [3]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [3])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<2>  (
    .CI(\executedebouncer/Mcount_countstill_cy [1]),
    .LI(\executedebouncer/Mcount_countstill_lut [2]),
    .O(\executedebouncer/Mcount_countstill2 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<2>  (
    .CI(\executedebouncer/Mcount_countstill_cy [1]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [2]),
    .O(\executedebouncer/Mcount_countstill_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<2>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [2]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [2])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<1>  (
    .CI(\executedebouncer/Mcount_countstill_cy [0]),
    .LI(\executedebouncer/Mcount_countstill_lut [1]),
    .O(\executedebouncer/Mcount_countstill1 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<1>  (
    .CI(\executedebouncer/Mcount_countstill_cy [0]),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [1]),
    .O(\executedebouncer/Mcount_countstill_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<1>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [1]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [1])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<0>  (
    .CI(\executedebouncer/noisy_inv ),
    .LI(\executedebouncer/Mcount_countstill_lut [0]),
    .O(\executedebouncer/Mcount_countstill )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<0>  (
    .CI(\executedebouncer/noisy_inv ),
    .DI(displayctl_3_OBUF_36),
    .S(\executedebouncer/Mcount_countstill_lut [0]),
    .O(\executedebouncer/Mcount_countstill_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<0>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [0]),
    .I2(displayctl_3_OBUF_36),
    .O(\executedebouncer/Mcount_countstill_lut [0])
  );
  FDC   \LED/counter_1  (
    .C(\clkdiv1/clk_300hz_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\LED/Mcount_counter1 ),
    .Q(\LED/counter [1])
  );
  FDC   \LED/counter_0  (
    .C(\clkdiv1/clk_300hz_25 ),
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
  LUT3 #(
    .INIT ( 8'h24 ))
  \LED/Mmux_currentdigit<0>22121  (
    .I0(\alu1/f [2]),
    .I1(\alu1/f [4]),
    .I2(\alu1/f [3]),
    .O(\LED/Mmux_currentdigit<0>2212 )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \LED/Mmux_currentdigit<0>2141  (
    .I0(\alu1/opcodesel [0]),
    .I1(\alu1/opcodesel [2]),
    .I2(\alu1/opcodesel [1]),
    .O(\LED/Mmux_currentdigit<0>214 )
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
    .I0(reset_n_IBUF_9),
    .I1(\LED/counter [0]),
    .I2(\LED/counter [1]),
    .O(displayctl_0_OBUF_28)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \LED/Mmux_ctl21  (
    .I0(\LED/counter [0]),
    .I1(\LED/counter [1]),
    .I2(reset_n_IBUF_9),
    .O(displayctl_1_OBUF_27)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \LED/Mmux_ctl31  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .I2(reset_n_IBUF_9),
    .O(displayctl_2_OBUF_26)
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
    .O(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17])
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
    .O(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 )
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
    .O(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>4  (
    .I0(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .I1(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .O(\clkdiv1/GND_3_o_GND_3_o_equal_5_o )
  );
  LUT6 #(
    .INIT ( 64'h8282228288882888 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_99 ),
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33_346 )
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
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_98 ),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT4 ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I3(B[2]),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_99 ),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41_348 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43_349 )
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
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22_352 ),
    .I1(B[0]),
    .I2(\decoder1/Mram_opcodeout ),
    .I3(A_2_IBUF_0),
    .I4(A_0_IBUF_2),
    .I5(A_1_IBUF_1),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23_353 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF8 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT25  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<1> ),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_100 ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21_351 ),
    .I3(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23_353 ),
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
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_100 ),
    .I3(B[1]),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I5(B[0]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61_355 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF8FFF8FFF8 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT64  (
    .I0(A_2_IBUF_0),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61_355 ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_98 ),
    .I3(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT6 ),
    .I4(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<3> ),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62_356 ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF282828 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT5  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_100 ),
    .I1(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<3> ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<4> ),
    .I3(N01),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_98 ),
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15_359 )
  );
  LUT6 #(
    .INIT ( 64'h2A0A280822022000 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16_360 ),
    .I1(B[0]),
    .I2(B[1]),
    .I3(A_2_IBUF_0),
    .I4(A_0_IBUF_2),
    .I5(A_1_IBUF_1),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17_361 )
  );
  LUT6 #(
    .INIT ( 64'hFBBBBBBBEAAAAAAA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14_358 ),
    .I1(\decoder1/Mram_opcodeout ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15_359 ),
    .I3(\decoder1/Mram_opcodeout1 ),
    .I4(opcodein[2]),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT18 ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>1  (
    .I0(\executedebouncer/countpushed [20]),
    .I1(\executedebouncer/countpushed [19]),
    .I2(\executedebouncer/countpushed [22]),
    .I3(\executedebouncer/countpushed [21]),
    .I4(\executedebouncer/countpushed [25]),
    .I5(\executedebouncer/countpushed [23]),
    .O(\executedebouncer/GND_2_o_GND_2_o_equal_4_o [25])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>2  (
    .I0(\executedebouncer/countpushed [12]),
    .I1(\executedebouncer/countpushed [6]),
    .I2(\executedebouncer/countpushed [14]),
    .I3(\executedebouncer/countpushed [13]),
    .I4(\executedebouncer/countpushed [17]),
    .I5(\executedebouncer/countpushed [15]),
    .O(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_364 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>3  (
    .I0(\executedebouncer/countpushed [1]),
    .I1(\executedebouncer/countpushed [0]),
    .I2(\executedebouncer/countpushed [3]),
    .I3(\executedebouncer/countpushed [2]),
    .I4(\executedebouncer/countpushed [5]),
    .I5(\executedebouncer/countpushed [4]),
    .O(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_365 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>4  (
    .I0(\executedebouncer/countpushed [8]),
    .I1(\executedebouncer/countpushed [7]),
    .I2(\executedebouncer/countpushed [9]),
    .I3(\executedebouncer/countpushed [10]),
    .I4(\executedebouncer/countpushed [11]),
    .I5(\executedebouncer/countpushed [16]),
    .O(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_366 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \executedebouncer/_n00661  (
    .I0(\executedebouncer/countstill [8]),
    .I1(\executedebouncer/countstill [6]),
    .I2(\executedebouncer/countstill [9]),
    .I3(\executedebouncer/countstill [10]),
    .I4(\executedebouncer/countstill [11]),
    .I5(\executedebouncer/countstill [16]),
    .O(\executedebouncer/_n00661_367 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \executedebouncer/_n00662  (
    .I0(\executedebouncer/countstill [24]),
    .I1(\executedebouncer/countstill [18]),
    .I2(\executedebouncer/_n00661_367 ),
    .O(\executedebouncer/_n00662_368 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \executedebouncer/_n00663  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [22]),
    .I2(\executedebouncer/countstill [23]),
    .I3(\executedebouncer/countstill [21]),
    .I4(\executedebouncer/countstill [25]),
    .O(\executedebouncer/_n00663_369 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \executedebouncer/_n00664  (
    .I0(\executedebouncer/countstill [12]),
    .I1(\executedebouncer/countstill [7]),
    .I2(\executedebouncer/countstill [14]),
    .I3(\executedebouncer/countstill [13]),
    .I4(\executedebouncer/countstill [17]),
    .I5(\executedebouncer/countstill [15]),
    .O(\executedebouncer/_n00664_370 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \executedebouncer/_n00665  (
    .I0(\executedebouncer/countstill [1]),
    .I1(\executedebouncer/countstill [0]),
    .I2(\executedebouncer/countstill [2]),
    .I3(\executedebouncer/countstill [3]),
    .I4(\executedebouncer/countstill [4]),
    .I5(\executedebouncer/countstill [5]),
    .O(\executedebouncer/_n00665_371 )
  );
  LUT6 #(
    .INIT ( 64'hA888888820441108 ))
  \LED/Mmux_currentdigit<0>261  (
    .I0(\alu1/f [5]),
    .I1(\alu1/f [3]),
    .I2(\alu1/f [0]),
    .I3(\alu1/f [1]),
    .I4(\alu1/f [2]),
    .I5(\LED/counter [0]),
    .O(\LED/Mmux_currentdigit<0>26_372 )
  );
  LUT6 #(
    .INIT ( 64'h0026432240220362 ))
  \LED/Mmux_currentdigit<0>262  (
    .I0(\LED/counter [0]),
    .I1(\alu1/f [5]),
    .I2(\alu1/f [2]),
    .I3(\alu1/f [3]),
    .I4(\alu1/f [1]),
    .I5(\alu1/f [0]),
    .O(\LED/Mmux_currentdigit<0>261_373 )
  );
  LUT6 #(
    .INIT ( 64'hFFA8FF08AAA8AA08 ))
  \LED/Mmux_currentdigit<0>263  (
    .I0(\LED/Mmux_currentdigit<0>214 ),
    .I1(\LED/Mmux_currentdigit<0>261_373 ),
    .I2(\alu1/f [4]),
    .I3(\LED/counter [1]),
    .I4(\LED/Mmux_currentdigit<0>26_372 ),
    .I5(\LED/counter [0]),
    .O(\LED/Mmux_currentdigit<0>262_374 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \LED/Mmux_currentdigit<0>21  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .I2(\LED/Mmux_currentdigit<0>214 ),
    .I3(\alu1/f [2]),
    .I4(\alu1/f [5]),
    .O(\LED/Mmux_currentdigit<0>2 )
  );
  LUT5 #(
    .INIT ( 32'h22B2B2B2 ))
  \LED/Mmux_currentdigit<0>23  (
    .I0(\alu1/f [4]),
    .I1(\alu1/f [2]),
    .I2(\alu1/f [5]),
    .I3(\alu1/f [0]),
    .I4(\alu1/f [1]),
    .O(\LED/Mmux_currentdigit<0>21_376 )
  );
  LUT5 #(
    .INIT ( 32'h088E088C ))
  \LED/Mmux_currentdigit<0>24  (
    .I0(\alu1/f [2]),
    .I1(\alu1/f [1]),
    .I2(\alu1/f [5]),
    .I3(\alu1/f [4]),
    .I4(\LED/Mmux_currentdigit<0>214 ),
    .O(\LED/Mmux_currentdigit<0>22 )
  );
  LUT6 #(
    .INIT ( 64'hAAA8AA0808A80808 ))
  \LED/Mmux_currentdigit<0>25  (
    .I0(\LED/counter [0]),
    .I1(\alu1/f [1]),
    .I2(\LED/Mmux_currentdigit<0>214 ),
    .I3(\alu1/f [3]),
    .I4(\LED/Mmux_currentdigit<0>21_376 ),
    .I5(\LED/Mmux_currentdigit<0>22 ),
    .O(\LED/Mmux_currentdigit<0>23_378 )
  );
  LUT6 #(
    .INIT ( 64'h2A22222222222222 ))
  \LED/Mmux_currentdigit<0>26  (
    .I0(\alu1/f [0]),
    .I1(\LED/counter [0]),
    .I2(\alu1/f [4]),
    .I3(\alu1/f [3]),
    .I4(\LED/Mmux_currentdigit<0>214 ),
    .I5(\alu1/f [2]),
    .O(\LED/Mmux_currentdigit<0>24_379 )
  );
  LUT5 #(
    .INIT ( 32'hAAAA2220 ))
  \LED/Mmux_currentdigit<0>27  (
    .I0(reset_n_IBUF_9),
    .I1(\LED/counter [1]),
    .I2(\LED/Mmux_currentdigit<0>24_379 ),
    .I3(\LED/Mmux_currentdigit<0>23_378 ),
    .I4(\LED/Mmux_currentdigit<0>2 ),
    .O(\LED/currentdigit [0])
  );
  LUT6 #(
    .INIT ( 64'h99BBD99BDD996DD9 ))
  \LED/Mram_segments41_SW0  (
    .I0(\alu1/f [4]),
    .I1(\alu1/f [2]),
    .I2(\alu1/f [5]),
    .I3(\alu1/f [3]),
    .I4(\alu1/f [0]),
    .I5(\alu1/f [1]),
    .O(N2)
  );
  LUT5 #(
    .INIT ( 32'hFFEFFFFF ))
  \LED/Mram_segments41  (
    .I0(\LED/counter [1]),
    .I1(N2),
    .I2(\LED/Mmux_currentdigit<0>214 ),
    .I3(\LED/counter [0]),
    .I4(reset_n_IBUF_9),
    .O(\LED/Mram_segments41_333 )
  );
  LUT6 #(
    .INIT ( 64'h1B110B00B515B00B ))
  \LED/Mmux_currentdigit<0>222  (
    .I0(\alu1/f [4]),
    .I1(\alu1/f [2]),
    .I2(\alu1/f [1]),
    .I3(\alu1/f [3]),
    .I4(\LED/counter [0]),
    .I5(\alu1/f [0]),
    .O(\LED/Mmux_currentdigit<0>222_381 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA20000000 ))
  \LED/Mmux_currentdigit<0>223  (
    .I0(\alu1/f [5]),
    .I1(\LED/counter [0]),
    .I2(\alu1/f [0]),
    .I3(\alu1/f [1]),
    .I4(\LED/Mmux_currentdigit<0>2212 ),
    .I5(\LED/Mmux_currentdigit<0>222_381 ),
    .O(\LED/Mmux_currentdigit<0>223_382 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8080808A ))
  \LED/Mmux_currentdigit<0>224  (
    .I0(\LED/counter [0]),
    .I1(\alu1/f [3]),
    .I2(\alu1/f [4]),
    .I3(\alu1/f [2]),
    .I4(\alu1/f [1]),
    .I5(\LED/counter [1]),
    .O(\LED/Mmux_currentdigit<0>224_383 )
  );
  LUT5 #(
    .INIT ( 32'hB232F6BA ))
  \LED/Mmux_currentdigit<0>225  (
    .I0(\alu1/f [1]),
    .I1(\alu1/f [5]),
    .I2(\LED/counter [0]),
    .I3(\alu1/f [0]),
    .I4(\alu1/f [4]),
    .O(\LED/Mmux_currentdigit<0>225_384 )
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
  IBUF   reset_n_IBUF (
    .I(reset_n),
    .O(reset_n_IBUF_9)
  );
  OBUF   display_7_OBUF (
    .I(display_7_OBUF_29),
    .O(display[7])
  );
  OBUF   display_6_OBUF (
    .I(display_6_OBUF_30),
    .O(display[6])
  );
  OBUF   display_5_OBUF (
    .I(display_5_OBUF_31),
    .O(display[5])
  );
  OBUF   display_4_OBUF (
    .I(display_4_OBUF_32),
    .O(display[4])
  );
  OBUF   display_3_OBUF (
    .I(display_3_OBUF_33),
    .O(display[3])
  );
  OBUF   display_2_OBUF (
    .I(display_2_OBUF_34),
    .O(display[2])
  );
  OBUF   display_1_OBUF (
    .I(display_1_OBUF_35),
    .O(display[1])
  );
  OBUF   display_0_OBUF (
    .I(display_0_OBUF_37),
    .O(display[0])
  );
  OBUF   displayctl_3_OBUF (
    .I(displayctl_3_OBUF_36),
    .O(displayctl[3])
  );
  OBUF   displayctl_2_OBUF (
    .I(displayctl_2_OBUF_26),
    .O(displayctl[2])
  );
  OBUF   displayctl_1_OBUF (
    .I(displayctl_1_OBUF_27),
    .O(displayctl[1])
  );
  OBUF   displayctl_0_OBUF (
    .I(displayctl_0_OBUF_28),
    .O(displayctl[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<1>_rt  (
    .I0(\clkdiv1/counter_300hz [1]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_408 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<2>_rt  (
    .I0(\clkdiv1/counter_300hz [2]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_409 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<3>_rt  (
    .I0(\clkdiv1/counter_300hz [3]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_410 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<4>_rt  (
    .I0(\clkdiv1/counter_300hz [4]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_411 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<5>_rt  (
    .I0(\clkdiv1/counter_300hz [5]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_412 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<6>_rt  (
    .I0(\clkdiv1/counter_300hz [6]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_413 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<7>_rt  (
    .I0(\clkdiv1/counter_300hz [7]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_414 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<8>_rt  (
    .I0(\clkdiv1/counter_300hz [8]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_415 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<9>_rt  (
    .I0(\clkdiv1/counter_300hz [9]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_416 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<10>_rt  (
    .I0(\clkdiv1/counter_300hz [10]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_417 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<11>_rt  (
    .I0(\clkdiv1/counter_300hz [11]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_418 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<12>_rt  (
    .I0(\clkdiv1/counter_300hz [12]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_419 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<13>_rt  (
    .I0(\clkdiv1/counter_300hz [13]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_420 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<14>_rt  (
    .I0(\clkdiv1/counter_300hz [14]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_421 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<15>_rt  (
    .I0(\clkdiv1/counter_300hz [15]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_422 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<16>_rt  (
    .I0(\clkdiv1/counter_300hz [16]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_423 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_xor<17>_rt  (
    .I0(\clkdiv1/counter_300hz [17]),
    .O(\clkdiv1/Mcount_counter_300hz_xor<17>_rt_424 )
  );
  FDC   \executedebouncer/pushed  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/pushed_rstpot_425 ),
    .Q(\executedebouncer/pushed_277 )
  );
  FDC   \executedebouncer/still  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/still_rstpot_426 ),
    .Q(\executedebouncer/still_278 )
  );
  FDC   \executedebouncer/clean  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/clean_rstpot_427 ),
    .Q(\executedebouncer/clean_24 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_11_rstpot  (
    .I0(\executedebouncer/countstill [11]),
    .I1(\executedebouncer/Mcount_countstill11 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_11_rstpot_428 )
  );
  FDC   \executedebouncer/countstill_11  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_11_rstpot_428 ),
    .Q(\executedebouncer/countstill [11])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_10_rstpot  (
    .I0(\executedebouncer/countstill [10]),
    .I1(\executedebouncer/Mcount_countstill10 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_10_rstpot_429 )
  );
  FDC   \executedebouncer/countstill_10  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_10_rstpot_429 ),
    .Q(\executedebouncer/countstill [10])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_9_rstpot  (
    .I0(\executedebouncer/countstill [9]),
    .I1(\executedebouncer/Mcount_countstill9 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_9_rstpot_430 )
  );
  FDC   \executedebouncer/countstill_9  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_9_rstpot_430 ),
    .Q(\executedebouncer/countstill [9])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_8_rstpot  (
    .I0(\executedebouncer/countstill [8]),
    .I1(\executedebouncer/Mcount_countstill8 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_8_rstpot_431 )
  );
  FDC   \executedebouncer/countstill_8  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_8_rstpot_431 ),
    .Q(\executedebouncer/countstill [8])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_7_rstpot  (
    .I0(\executedebouncer/countstill [7]),
    .I1(\executedebouncer/Mcount_countstill7 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_7_rstpot_432 )
  );
  FDC   \executedebouncer/countstill_7  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_7_rstpot_432 ),
    .Q(\executedebouncer/countstill [7])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_6_rstpot  (
    .I0(\executedebouncer/countstill [6]),
    .I1(\executedebouncer/Mcount_countstill6 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_6_rstpot_433 )
  );
  FDC   \executedebouncer/countstill_6  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_6_rstpot_433 ),
    .Q(\executedebouncer/countstill [6])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_5_rstpot  (
    .I0(\executedebouncer/countstill [5]),
    .I1(\executedebouncer/Mcount_countstill5 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_5_rstpot_434 )
  );
  FDC   \executedebouncer/countstill_5  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_5_rstpot_434 ),
    .Q(\executedebouncer/countstill [5])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_4_rstpot  (
    .I0(\executedebouncer/countstill [4]),
    .I1(\executedebouncer/Mcount_countstill4 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_4_rstpot_435 )
  );
  FDC   \executedebouncer/countstill_4  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_4_rstpot_435 ),
    .Q(\executedebouncer/countstill [4])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_3_rstpot  (
    .I0(\executedebouncer/countstill [3]),
    .I1(\executedebouncer/Mcount_countstill3 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_3_rstpot_436 )
  );
  FDC   \executedebouncer/countstill_3  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_3_rstpot_436 ),
    .Q(\executedebouncer/countstill [3])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_2_rstpot  (
    .I0(\executedebouncer/countstill [2]),
    .I1(\executedebouncer/Mcount_countstill2 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_2_rstpot_437 )
  );
  FDC   \executedebouncer/countstill_2  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_2_rstpot_437 ),
    .Q(\executedebouncer/countstill [2])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_1_rstpot  (
    .I0(\executedebouncer/countstill [1]),
    .I1(\executedebouncer/Mcount_countstill1 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_1_rstpot_438 )
  );
  FDC   \executedebouncer/countstill_1  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_1_rstpot_438 ),
    .Q(\executedebouncer/countstill [1])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_0_rstpot  (
    .I0(\executedebouncer/countstill [0]),
    .I1(\executedebouncer/Mcount_countstill ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_0_rstpot_439 )
  );
  FDC   \executedebouncer/countstill_0  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_0_rstpot_439 ),
    .Q(\executedebouncer/countstill [0])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_12_rstpot  (
    .I0(\executedebouncer/countstill [12]),
    .I1(\executedebouncer/Mcount_countstill12 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_12_rstpot_440 )
  );
  FDC   \executedebouncer/countstill_12  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_12_rstpot_440 ),
    .Q(\executedebouncer/countstill [12])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_13_rstpot  (
    .I0(\executedebouncer/countstill [13]),
    .I1(\executedebouncer/Mcount_countstill13 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_13_rstpot_441 )
  );
  FDC   \executedebouncer/countstill_13  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_13_rstpot_441 ),
    .Q(\executedebouncer/countstill [13])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_14_rstpot  (
    .I0(\executedebouncer/countstill [14]),
    .I1(\executedebouncer/Mcount_countstill14 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_14_rstpot_442 )
  );
  FDC   \executedebouncer/countstill_14  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_14_rstpot_442 ),
    .Q(\executedebouncer/countstill [14])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_15_rstpot  (
    .I0(\executedebouncer/countstill [15]),
    .I1(\executedebouncer/Mcount_countstill15 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_15_rstpot_443 )
  );
  FDC   \executedebouncer/countstill_15  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_15_rstpot_443 ),
    .Q(\executedebouncer/countstill [15])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_16_rstpot  (
    .I0(\executedebouncer/countstill [16]),
    .I1(\executedebouncer/Mcount_countstill16 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_16_rstpot_444 )
  );
  FDC   \executedebouncer/countstill_16  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_16_rstpot_444 ),
    .Q(\executedebouncer/countstill [16])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_17_rstpot  (
    .I0(\executedebouncer/countstill [17]),
    .I1(\executedebouncer/Mcount_countstill17 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_17_rstpot_445 )
  );
  FDC   \executedebouncer/countstill_17  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_17_rstpot_445 ),
    .Q(\executedebouncer/countstill [17])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_18_rstpot  (
    .I0(\executedebouncer/countstill [18]),
    .I1(\executedebouncer/Mcount_countstill18 ),
    .I2(\executedebouncer/_n0066_inv1_456 ),
    .O(\executedebouncer/countstill_18_rstpot_446 )
  );
  FDC   \executedebouncer/countstill_18  (
    .C(clk_BUFGP_8),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_18_rstpot_446 ),
    .Q(\executedebouncer/countstill [18])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/_n00666_SW0  (
    .I0(\executedebouncer/countstill [20]),
    .I1(\executedebouncer/countstill [19]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAAAAAAAAAA ))
  \executedebouncer/still_rstpot  (
    .I0(\executedebouncer/still_278 ),
    .I1(N4),
    .I2(\executedebouncer/_n00663_369 ),
    .I3(\executedebouncer/_n00664_370 ),
    .I4(\executedebouncer/_n00665_371 ),
    .I5(\executedebouncer/_n00662_368 ),
    .O(\executedebouncer/still_rstpot_426 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \executedebouncer/_n00662_SW0  (
    .I0(\executedebouncer/countstill [19]),
    .I1(\executedebouncer/countstill [20]),
    .I2(\executedebouncer/countstill [18]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hEFFFFFFFFFFFFFFF ))
  \executedebouncer/_n0066_inv1  (
    .I0(\executedebouncer/countstill [24]),
    .I1(N6),
    .I2(\executedebouncer/_n00663_369 ),
    .I3(\executedebouncer/_n00664_370 ),
    .I4(\executedebouncer/_n00665_371 ),
    .I5(\executedebouncer/_n00661_367 ),
    .O(\executedebouncer/_n0066_inv )
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW0  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/pushed_277 ),
    .I2(\executedebouncer/still_278 ),
    .O(N8)
  );
  LUT5 #(
    .INIT ( 32'hAA02AAAA ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW1  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [18]),
    .I2(\executedebouncer/countpushed [24]),
    .I3(\executedebouncer/pushed_277 ),
    .I4(\executedebouncer/still_278 ),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'h3555555555555555 ))
  \executedebouncer/_n0063_inv1  (
    .I0(N8),
    .I1(N9),
    .I2(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_366 ),
    .I3(\executedebouncer/GND_2_o_GND_2_o_equal_4_o [25]),
    .I4(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_364 ),
    .I5(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_365 ),
    .O(\executedebouncer/_n0063_inv )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW2  (
    .I0(\executedebouncer/still_278 ),
    .I1(\executedebouncer/pushed_277 ),
    .I2(executein_IBUF_7),
    .O(N11)
  );
  LUT5 #(
    .INIT ( 32'hAAFDFFFF ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW3  (
    .I0(\executedebouncer/still_278 ),
    .I1(\executedebouncer/countpushed [18]),
    .I2(\executedebouncer/countpushed [24]),
    .I3(\executedebouncer/pushed_277 ),
    .I4(executein_IBUF_7),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'h15555555D5555555 ))
  \executedebouncer/pushed_rstpot  (
    .I0(N11),
    .I1(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_365 ),
    .I2(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_364 ),
    .I3(\executedebouncer/GND_2_o_GND_2_o_equal_4_o [25]),
    .I4(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_366 ),
    .I5(N12),
    .O(\executedebouncer/pushed_rstpot_425 )
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
  \executedebouncer/Mcount_countpushed_lut<1>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [1]),
    .O(\executedebouncer/Mcount_countpushed_lut [1])
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \executedebouncer/clean_rstpot  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/pushed_277 ),
    .I2(\executedebouncer/still_278 ),
    .I3(\executedebouncer/clean_24 ),
    .O(\executedebouncer/clean_rstpot_427 )
  );
  LUT6 #(
    .INIT ( 64'h0141000001410410 ))
  \LED/Mmux_currentdigit<0>228  (
    .I0(\alu1/f [5]),
    .I1(\alu1/f [3]),
    .I2(\alu1/f [4]),
    .I3(\alu1/f [2]),
    .I4(\alu1/f [1]),
    .I5(\LED/counter [0]),
    .O(\LED/Mmux_currentdigit<0>228_385 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAABAAAAA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT36_SW0  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT32 ),
    .I1(B[2]),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33_346 ),
    .I3(\decoder1/Mram_opcodeout1 ),
    .I4(opcodein[2]),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT3 ),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88882888 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT36  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_100 ),
    .I1(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<2> ),
    .I2(A_1_IBUF_1),
    .I3(B[0]),
    .I4(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<1> ),
    .I5(N14),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hEEFEEEEE ))
  \LED/Mmux_currentdigit<0>229_SW0  (
    .I0(\LED/Mmux_currentdigit<0>228_385 ),
    .I1(\LED/Mmux_currentdigit<0>224_383 ),
    .I2(\alu1/f [2]),
    .I3(\alu1/f [3]),
    .I4(\LED/Mmux_currentdigit<0>225_384 ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hAAAA888088808880 ))
  \LED/Mmux_currentdigit<0>229  (
    .I0(reset_n_IBUF_9),
    .I1(\LED/Mmux_currentdigit<0>214 ),
    .I2(\LED/Mmux_currentdigit<0>223_382 ),
    .I3(N16),
    .I4(\LED/counter [1]),
    .I5(\LED/counter [0]),
    .O(\LED/currentdigit [1])
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
  \executedebouncer/Mcount_countpushed_lut<3>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [3]),
    .O(\executedebouncer/Mcount_countpushed_lut [3])
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
  \executedebouncer/Mcount_countpushed_lut<5>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [5]),
    .O(\executedebouncer/Mcount_countpushed_lut [5])
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
  \executedebouncer/Mcount_countpushed_lut<7>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [7]),
    .O(\executedebouncer/Mcount_countpushed_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<8>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [8]),
    .O(\executedebouncer/Mcount_countpushed_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<9>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [9]),
    .O(\executedebouncer/Mcount_countpushed_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<10>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [10]),
    .O(\executedebouncer/Mcount_countpushed_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<11>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [11]),
    .O(\executedebouncer/Mcount_countpushed_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<12>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [12]),
    .O(\executedebouncer/Mcount_countpushed_lut [12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<13>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [13]),
    .O(\executedebouncer/Mcount_countpushed_lut [13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<14>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [14]),
    .O(\executedebouncer/Mcount_countpushed_lut [14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<15>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [15]),
    .O(\executedebouncer/Mcount_countpushed_lut [15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<16>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [16]),
    .O(\executedebouncer/Mcount_countpushed_lut [16])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<17>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [17]),
    .O(\executedebouncer/Mcount_countpushed_lut [17])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<18>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [18]),
    .O(\executedebouncer/Mcount_countpushed_lut [18])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<19>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [19]),
    .O(\executedebouncer/Mcount_countpushed_lut [19])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<20>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [20]),
    .O(\executedebouncer/Mcount_countpushed_lut [20])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<21>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [21]),
    .O(\executedebouncer/Mcount_countpushed_lut [21])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<22>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [22]),
    .O(\executedebouncer/Mcount_countpushed_lut [22])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<23>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [23]),
    .O(\executedebouncer/Mcount_countpushed_lut [23])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<24>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [24]),
    .O(\executedebouncer/Mcount_countpushed_lut [24])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/Mcount_countpushed_lut<25>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [25]),
    .O(\executedebouncer/Mcount_countpushed_lut [25])
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_98 )
  );
  LUT5 #(
    .INIT ( 32'h00020200 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23  (
    .I0(opcodein[2]),
    .I1(B[2]),
    .I2(B[1]),
    .I3(opcodein[0]),
    .I4(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22_352 )
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14  (
    .I0(opcodein[2]),
    .I1(B[2]),
    .I2(opcodein[0]),
    .I3(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16_360 )
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
    .I1(\LED/Mram_segments41_333 ),
    .I2(\LED/currentdigit [0]),
    .I3(reset_n_IBUF_9),
    .I4(\LED/Mmux_currentdigit<0>262_374 ),
    .O(display_1_OBUF_35)
  );
  LUT5 #(
    .INIT ( 32'hFF778007 ))
  \LED/Mram_segments31  (
    .I0(reset_n_IBUF_9),
    .I1(\LED/Mmux_currentdigit<0>262_374 ),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/Mram_segments41_333 ),
    .I4(\LED/currentdigit [0]),
    .O(display_3_OBUF_33)
  );
  LUT5 #(
    .INIT ( 32'h8088F088 ))
  \LED/Mram_segments51  (
    .I0(reset_n_IBUF_9),
    .I1(\LED/Mmux_currentdigit<0>262_374 ),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/Mram_segments41_333 ),
    .I4(\LED/currentdigit [0]),
    .O(display_5_OBUF_31)
  );
  LUT5 #(
    .INIT ( 32'h88E8E8E8 ))
  \LED/Mram_segments21  (
    .I0(\LED/currentdigit [1]),
    .I1(\LED/Mram_segments41_333 ),
    .I2(\LED/currentdigit [0]),
    .I3(reset_n_IBUF_9),
    .I4(\LED/Mmux_currentdigit<0>262_374 ),
    .O(display_2_OBUF_34)
  );
  LUT5 #(
    .INIT ( 32'hDD141414 ))
  \LED/Mram_segments61  (
    .I0(\LED/Mram_segments41_333 ),
    .I1(\LED/currentdigit [1]),
    .I2(\LED/currentdigit [0]),
    .I3(reset_n_IBUF_9),
    .I4(\LED/Mmux_currentdigit<0>262_374 ),
    .O(display_6_OBUF_30)
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
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_99 ),
    .I3(B[1]),
    .I4(N18),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_100 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14_358 )
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_99 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT121  (
    .I0(opcodein[0]),
    .I1(opcodein[2]),
    .I2(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_100 )
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
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17_361 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT18 )
  );
  LUT5 #(
    .INIT ( 32'h95008015 ))
  \LED/Mram_segments71  (
    .I0(\LED/currentdigit [1]),
    .I1(reset_n_IBUF_9),
    .I2(\LED/Mmux_currentdigit<0>262_374 ),
    .I3(\LED/Mram_segments41_333 ),
    .I4(\LED/currentdigit [0]),
    .O(display_7_OBUF_29)
  );
  LUT5 #(
    .INIT ( 32'h87708007 ))
  \LED/Mram_segments42  (
    .I0(reset_n_IBUF_9),
    .I1(\LED/Mmux_currentdigit<0>262_374 ),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/Mram_segments41_333 ),
    .I4(\LED/currentdigit [0]),
    .O(display_4_OBUF_32)
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
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_99 ),
    .I1(A_1_IBUF_1),
    .I2(B[1]),
    .I3(A_0_IBUF_2),
    .I4(B[0]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21_351 )
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
    .O(N18)
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41_348 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAEAAAEAAAA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT44  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43_349 ),
    .I1(opcodein[0]),
    .I2(opcodein[2]),
    .I3(opcodein[1]),
    .I4(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<2> ),
    .I5(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<3> ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h2888888800000000 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT63  (
    .I0(A_2_IBUF_0),
    .I1(B[2]),
    .I2(B[1]),
    .I3(B[0]),
    .I4(A_1_IBUF_1),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_100 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62_356 )
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
  LUT6 #(
    .INIT ( 64'hEFFFFFFFFFFFFFFF ))
  \executedebouncer/_n0066_inv1_1  (
    .I0(\executedebouncer/countstill [24]),
    .I1(N6),
    .I2(\executedebouncer/_n00663_369 ),
    .I3(\executedebouncer/_n00664_370 ),
    .I4(\executedebouncer/_n00665_371 ),
    .I5(\executedebouncer/_n00661_367 ),
    .O(\executedebouncer/_n0066_inv1_456 )
  );
  FD   \clkdiv1/counter_300hz_1  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_1_rstpot_457 ),
    .Q(\clkdiv1/counter_300hz [1])
  );
  FD   \clkdiv1/counter_300hz_0  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_0_rstpot_458 ),
    .Q(\clkdiv1/counter_300hz [0])
  );
  FD   \clkdiv1/counter_300hz_4  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_4_rstpot_459 ),
    .Q(\clkdiv1/counter_300hz [4])
  );
  FD   \clkdiv1/counter_300hz_2  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_2_rstpot_460 ),
    .Q(\clkdiv1/counter_300hz [2])
  );
  FD   \clkdiv1/counter_300hz_3  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_3_rstpot_461 ),
    .Q(\clkdiv1/counter_300hz [3])
  );
  FD   \clkdiv1/counter_300hz_5  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_5_rstpot_462 ),
    .Q(\clkdiv1/counter_300hz [5])
  );
  FD   \clkdiv1/counter_300hz_6  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_6_rstpot_463 ),
    .Q(\clkdiv1/counter_300hz [6])
  );
  FD   \clkdiv1/counter_300hz_9  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_9_rstpot_464 ),
    .Q(\clkdiv1/counter_300hz [9])
  );
  FD   \clkdiv1/counter_300hz_7  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_7_rstpot_465 ),
    .Q(\clkdiv1/counter_300hz [7])
  );
  FD   \clkdiv1/counter_300hz_8  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_8_rstpot_466 ),
    .Q(\clkdiv1/counter_300hz [8])
  );
  FD   \clkdiv1/counter_300hz_12  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_12_rstpot_467 ),
    .Q(\clkdiv1/counter_300hz [12])
  );
  FD   \clkdiv1/counter_300hz_10  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_10_rstpot_468 ),
    .Q(\clkdiv1/counter_300hz [10])
  );
  FD   \clkdiv1/counter_300hz_11  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_11_rstpot_469 ),
    .Q(\clkdiv1/counter_300hz [11])
  );
  FD   \clkdiv1/counter_300hz_15  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_15_rstpot_470 ),
    .Q(\clkdiv1/counter_300hz [15])
  );
  FD   \clkdiv1/counter_300hz_13  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_13_rstpot_471 ),
    .Q(\clkdiv1/counter_300hz [13])
  );
  FD   \clkdiv1/counter_300hz_14  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_14_rstpot_472 ),
    .Q(\clkdiv1/counter_300hz [14])
  );
  FD   \clkdiv1/counter_300hz_16  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_16_rstpot_473 ),
    .Q(\clkdiv1/counter_300hz [16])
  );
  FD   \clkdiv1/counter_300hz_17  (
    .C(clk_BUFGP_8),
    .D(\clkdiv1/counter_300hz_17_rstpot_474 ),
    .Q(\clkdiv1/counter_300hz [17])
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_1_rstpot  (
    .I0(Result[1]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_1_rstpot_457 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_0_rstpot  (
    .I0(Result[0]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_0_rstpot_458 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_2_rstpot  (
    .I0(Result[2]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_2_rstpot_460 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_3_rstpot  (
    .I0(Result[3]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_3_rstpot_461 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_4_rstpot  (
    .I0(Result[4]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_4_rstpot_459 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_5_rstpot  (
    .I0(Result[5]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_5_rstpot_462 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_6_rstpot  (
    .I0(Result[6]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_6_rstpot_463 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_7_rstpot  (
    .I0(Result[7]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_7_rstpot_465 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_8_rstpot  (
    .I0(Result[8]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_8_rstpot_466 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_9_rstpot  (
    .I0(Result[9]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_9_rstpot_464 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_10_rstpot  (
    .I0(Result[10]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_10_rstpot_468 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_11_rstpot  (
    .I0(Result[11]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_11_rstpot_469 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_12_rstpot  (
    .I0(Result[12]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_12_rstpot_467 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_13_rstpot  (
    .I0(Result[13]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_13_rstpot_471 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_14_rstpot  (
    .I0(Result[14]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_14_rstpot_472 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_15_rstpot  (
    .I0(Result[15]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_15_rstpot_470 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_16_rstpot  (
    .I0(Result[16]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_16_rstpot_473 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_17_rstpot  (
    .I0(Result[17]),
    .I1(reset_n_IBUF_9),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_342 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_343 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o_0 [17]),
    .O(\clkdiv1/counter_300hz_17_rstpot_474 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_8)
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
    .I(reset_n_IBUF_9),
    .O(\LED/reset_n_inv )
  );
  INV   \clkdiv1/clk_300hz_INV_7_o1_INV_0  (
    .I(\clkdiv1/clk_300hz_25 ),
    .O(\clkdiv1/clk_300hz_INV_7_o )
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

