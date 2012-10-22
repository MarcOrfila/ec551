////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.76xd
//  \   \         Application: netgen
//  /   /         Filename: topmodule_synthesis.v
// /___/   /\     Timestamp: Mon Oct 22 17:07:44 2012
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
  mode, writein, readin, clk, reset_n, flag_reset, read_flag_reset, full, empty, flag, readflag, A, Bopcode, display, displayctl
);
  input mode;
  input writein;
  input readin;
  input clk;
  input reset_n;
  input flag_reset;
  input read_flag_reset;
  output full;
  output empty;
  output flag;
  output readflag;
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
  wire writein_IBUF_7;
  wire readin_IBUF_8;
  wire clk_BUFGP_9;
  wire reset_n_IBUF_10;
  wire flag_reset_IBUF_11;
  wire read_flag_reset_IBUF_12;
  wire \writedebouncer/clean_18 ;
  wire \readdebouncer/clean_19 ;
  wire \clkdiv1/clk_300hz_BUFG_20 ;
  wire full_OBUF_30;
  wire empty_OBUF_31;
  wire \lifo2/flag_32 ;
  wire \lifo2/readflag_33 ;
  wire display_7_OBUF_37;
  wire display_6_OBUF_38;
  wire display_5_OBUF_39;
  wire display_4_OBUF_40;
  wire display_3_OBUF_41;
  wire display_2_OBUF_42;
  wire display_1_OBUF_43;
  wire N0;
  wire display_0_OBUF_45;
  wire mode_inv;
  wire \clkdiv1/GND_2_o_GND_2_o_equal_5_o ;
  wire \clkdiv1/clk_300hz_INV_5_o ;
  wire \decoder1/Mram_opcodeout ;
  wire \decoder1/Mram_opcodeout1 ;
  wire \clkdiv1/Mcount_counter_300hz_val ;
  wire \alu1/Mmux_f42_107 ;
  wire \alu1/Mmux_f13_108 ;
  wire \alu1/Mmux_f12_109 ;
  wire \alu1/Mmux_f11_110 ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<3> ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<2> ;
  wire \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<2> ;
  wire \alu1/Madd_n0033[3:0]_lut<2> ;
  wire \alu1/Madd_n0033[3:0]_lut<1> ;
  wire \alu1/Madd_n0033[3:0]_lut<0> ;
  wire \readdebouncer/Mcount_countpushed7 ;
  wire \readdebouncer/Mcount_countpushed6 ;
  wire \readdebouncer/Mcount_countpushed5 ;
  wire \readdebouncer/Mcount_countpushed4 ;
  wire \readdebouncer/Mcount_countpushed3 ;
  wire \readdebouncer/Mcount_countpushed2 ;
  wire \readdebouncer/Mcount_countpushed1 ;
  wire \readdebouncer/Mcount_countpushed ;
  wire \readdebouncer/_n0063_inv_144 ;
  wire \readdebouncer/Mcount_countstill7 ;
  wire \readdebouncer/Mcount_countstill6 ;
  wire \readdebouncer/Mcount_countstill5 ;
  wire \readdebouncer/Mcount_countstill4 ;
  wire \readdebouncer/Mcount_countstill3 ;
  wire \readdebouncer/Mcount_countstill2 ;
  wire \readdebouncer/Mcount_countstill1 ;
  wire \readdebouncer/Mcount_countstill ;
  wire \readdebouncer/noisy_inv ;
  wire \readdebouncer/_n0066_inv_169 ;
  wire \readdebouncer/_n0066_170 ;
  wire \readdebouncer/pushed_171 ;
  wire \readdebouncer/still_172 ;
  wire \writedebouncer/Mcount_countpushed7 ;
  wire \writedebouncer/Mcount_countpushed6 ;
  wire \writedebouncer/Mcount_countpushed5 ;
  wire \writedebouncer/Mcount_countpushed4 ;
  wire \writedebouncer/Mcount_countpushed3 ;
  wire \writedebouncer/Mcount_countpushed2 ;
  wire \writedebouncer/Mcount_countpushed1 ;
  wire \writedebouncer/Mcount_countpushed ;
  wire \writedebouncer/_n0063_inv_212 ;
  wire \writedebouncer/Mcount_countstill7 ;
  wire \writedebouncer/Mcount_countstill6 ;
  wire \writedebouncer/Mcount_countstill5 ;
  wire \writedebouncer/Mcount_countstill4 ;
  wire \writedebouncer/Mcount_countstill3 ;
  wire \writedebouncer/Mcount_countstill2 ;
  wire \writedebouncer/Mcount_countstill1 ;
  wire \writedebouncer/Mcount_countstill ;
  wire \writedebouncer/noisy_inv ;
  wire \writedebouncer/_n0066_inv_237 ;
  wire \writedebouncer/_n0066_238 ;
  wire \writedebouncer/pushed_239 ;
  wire \writedebouncer/still_240 ;
  wire \lifo2/mux2411 ;
  wire \lifo2/mux1811 ;
  wire \lifo2/mux1211 ;
  wire \lifo2/mux1011 ;
  wire \lifo2/_n0121_inv11 ;
  wire \lifo2/_n0121_inv1_262 ;
  wire \lifo2/mux1101 ;
  wire \lifo2/_n0121_inv ;
  wire \lifo2/flag_PWR_7_o_MUX_136_o ;
  wire \lifo2/opcodelifo[0][2]_opcodedata[2]_mux_19_OUT<0> ;
  wire \lifo2/opcodelifo[0][2]_opcodedata[2]_mux_19_OUT<1> ;
  wire \lifo2/opcodelifo[0][2]_opcodedata[2]_mux_19_OUT<2> ;
  wire \lifo2/opcodelifo[1][2]_opcodedata[2]_mux_18_OUT<0> ;
  wire \lifo2/opcodelifo[1][2]_opcodedata[2]_mux_18_OUT<1> ;
  wire \lifo2/opcodelifo[1][2]_opcodedata[2]_mux_18_OUT<2> ;
  wire \lifo2/opcodelifo[2][2]_opcodedata[2]_mux_17_OUT<0> ;
  wire \lifo2/opcodelifo[2][2]_opcodedata[2]_mux_17_OUT<1> ;
  wire \lifo2/opcodelifo[2][2]_opcodedata[2]_mux_17_OUT<2> ;
  wire \lifo2/opcodelifo[3][2]_opcodedata[2]_mux_16_OUT<0> ;
  wire \lifo2/opcodelifo[3][2]_opcodedata[2]_mux_16_OUT<1> ;
  wire \lifo2/opcodelifo[3][2]_opcodedata[2]_mux_16_OUT<2> ;
  wire \lifo2/opcodelifo[4][2]_opcodedata[2]_mux_15_OUT<0> ;
  wire \lifo2/opcodelifo[4][2]_opcodedata[2]_mux_15_OUT<1> ;
  wire \lifo2/opcodelifo[4][2]_opcodedata[2]_mux_15_OUT<2> ;
  wire \lifo2/opcodelifo[5][2]_opcodedata[2]_mux_14_OUT<0> ;
  wire \lifo2/opcodelifo[5][2]_opcodedata[2]_mux_14_OUT<1> ;
  wire \lifo2/opcodelifo[5][2]_opcodedata[2]_mux_14_OUT<2> ;
  wire \lifo2/lifo[0][5]_data[5]_mux_12_OUT<0> ;
  wire \lifo2/lifo[0][5]_data[5]_mux_12_OUT<1> ;
  wire \lifo2/lifo[0][5]_data[5]_mux_12_OUT<2> ;
  wire \lifo2/lifo[0][5]_data[5]_mux_12_OUT<3> ;
  wire \lifo2/lifo[0][5]_data[5]_mux_12_OUT<4> ;
  wire \lifo2/lifo[0][5]_data[5]_mux_12_OUT<5> ;
  wire \lifo2/lifo[1][5]_data[5]_mux_11_OUT<0> ;
  wire \lifo2/lifo[1][5]_data[5]_mux_11_OUT<1> ;
  wire \lifo2/lifo[1][5]_data[5]_mux_11_OUT<2> ;
  wire \lifo2/lifo[1][5]_data[5]_mux_11_OUT<3> ;
  wire \lifo2/lifo[1][5]_data[5]_mux_11_OUT<4> ;
  wire \lifo2/lifo[1][5]_data[5]_mux_11_OUT<5> ;
  wire \lifo2/lifo[2][5]_data[5]_mux_10_OUT<0> ;
  wire \lifo2/lifo[2][5]_data[5]_mux_10_OUT<1> ;
  wire \lifo2/lifo[2][5]_data[5]_mux_10_OUT<2> ;
  wire \lifo2/lifo[2][5]_data[5]_mux_10_OUT<3> ;
  wire \lifo2/lifo[2][5]_data[5]_mux_10_OUT<4> ;
  wire \lifo2/lifo[2][5]_data[5]_mux_10_OUT<5> ;
  wire \lifo2/lifo[3][5]_data[5]_mux_9_OUT<0> ;
  wire \lifo2/lifo[3][5]_data[5]_mux_9_OUT<1> ;
  wire \lifo2/lifo[3][5]_data[5]_mux_9_OUT<2> ;
  wire \lifo2/lifo[3][5]_data[5]_mux_9_OUT<3> ;
  wire \lifo2/lifo[3][5]_data[5]_mux_9_OUT<4> ;
  wire \lifo2/lifo[3][5]_data[5]_mux_9_OUT<5> ;
  wire \lifo2/lifo[4][5]_data[5]_mux_8_OUT<0> ;
  wire \lifo2/lifo[4][5]_data[5]_mux_8_OUT<1> ;
  wire \lifo2/lifo[4][5]_data[5]_mux_8_OUT<2> ;
  wire \lifo2/lifo[4][5]_data[5]_mux_8_OUT<3> ;
  wire \lifo2/lifo[4][5]_data[5]_mux_8_OUT<4> ;
  wire \lifo2/lifo[4][5]_data[5]_mux_8_OUT<5> ;
  wire \lifo2/lifo[5][5]_data[5]_mux_7_OUT<0> ;
  wire \lifo2/lifo[5][5]_data[5]_mux_7_OUT<1> ;
  wire \lifo2/lifo[5][5]_data[5]_mux_7_OUT<2> ;
  wire \lifo2/lifo[5][5]_data[5]_mux_7_OUT<3> ;
  wire \lifo2/lifo[5][5]_data[5]_mux_7_OUT<4> ;
  wire \lifo2/lifo[5][5]_data[5]_mux_7_OUT<5> ;
  wire \LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>1 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT41_385 ;
  wire \LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_386 ;
  wire \LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT3 ;
  wire \LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT2 ;
  wire \LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT1 ;
  wire \LED/Mcount_counter1 ;
  wire \LED/Mcount_counter ;
  wire \LED/reset_n_inv ;
  wire \LED/result[5]_PWR_10_o_div_22/n0183<5>_393 ;
  wire \LED/counter[1]_PWR_10_o_wide_mux_10_OUT<0> ;
  wire \LED/counter[1]_PWR_10_o_wide_mux_10_OUT<1> ;
  wire \LED/counter[1]_PWR_10_o_wide_mux_10_OUT<2> ;
  wire \LED/counter[1]_PWR_10_o_wide_mux_10_OUT<3> ;
  wire \LED/opcodesel[2]_PWR_10_o_equal_8_o ;
  wire \clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>1_410 ;
  wire \clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>2_411 ;
  wire \alu1/Mmux_f3 ;
  wire \alu1/Mmux_f31_413 ;
  wire \alu1/Mmux_f32_414 ;
  wire \alu1/Mmux_f33_415 ;
  wire \alu1/Mmux_f34_416 ;
  wire \alu1/Mmux_f4 ;
  wire \alu1/Mmux_f41_418 ;
  wire \alu1/Mmux_f2 ;
  wire \alu1/Mmux_f23 ;
  wire \alu1/Mmux_f6 ;
  wire \alu1/Mmux_f61_422 ;
  wire \alu1/Mmux_f62_423 ;
  wire N01;
  wire \alu1/Mmux_f1 ;
  wire \alu1/Mmux_f14 ;
  wire \alu1/Mmux_f15_427 ;
  wire \alu1/Mmux_f17 ;
  wire N2;
  wire N6;
  wire N10;
  wire N14;
  wire \lifo2/mux6111 ;
  wire \lifo2/mux61111_434 ;
  wire \lifo2/mux601 ;
  wire \lifo2/mux6011_436 ;
  wire \lifo2/mux581 ;
  wire \lifo2/mux5811_438 ;
  wire \lifo2/mux571 ;
  wire \lifo2/mux5711_440 ;
  wire \lifo2/mux561 ;
  wire \lifo2/mux5611_442 ;
  wire \lifo2/mux551 ;
  wire \lifo2/mux5511_444 ;
  wire \lifo2/mux541 ;
  wire \lifo2/mux5411_446 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT8 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT81_448 ;
  wire N18;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT6 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT61_451 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT4 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT42_453 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT43_454 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT44_455 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT2 ;
  wire \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT21_457 ;
  wire N20;
  wire \clkdiv1/Mcount_counter_300hz_cy<1>_rt_488 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<2>_rt_489 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<3>_rt_490 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<4>_rt_491 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<5>_rt_492 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<6>_rt_493 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<7>_rt_494 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<8>_rt_495 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<9>_rt_496 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<10>_rt_497 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<11>_rt_498 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<12>_rt_499 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<13>_rt_500 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<14>_rt_501 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<15>_rt_502 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<16>_rt_503 ;
  wire \clkdiv1/Mcount_counter_300hz_xor<17>_rt_504 ;
  wire \readdebouncer/pushed_rstpot_505 ;
  wire \readdebouncer/still_rstpot_506 ;
  wire \readdebouncer/clean_rstpot_507 ;
  wire \writedebouncer/pushed_rstpot_508 ;
  wire \writedebouncer/still_rstpot_509 ;
  wire \writedebouncer/clean_rstpot_510 ;
  wire \lifo2/readflag_rstpot_511 ;
  wire \lifo2/flag_rstpot_512 ;
  wire N22;
  wire N36;
  wire N37;
  wire N39;
  wire N40;
  wire N42;
  wire N43;
  wire N45;
  wire N46;
  wire N48;
  wire N49;
  wire N51;
  wire N52;
  wire N54;
  wire N56;
  wire N57;
  wire N59;
  wire N60;
  wire N62;
  wire N63;
  wire N65;
  wire N66;
  wire N68;
  wire N69;
  wire N71;
  wire N72;
  wire N89;
  wire N101;
  wire N113;
  wire N115;
  wire N117;
  wire N131;
  wire N132;
  wire N133;
  wire N139;
  wire N140;
  wire N141;
  wire N143;
  wire N144;
  wire N161;
  wire N181;
  wire \lifo2/pointer_2_1_554 ;
  wire \lifo2/_n0146_inv1_cepot_555 ;
  wire \lifo2/opcodedata_out_0_dpot_556 ;
  wire \lifo2/opcodedata_out_1_dpot_557 ;
  wire \lifo2/opcodedata_out_2_dpot_558 ;
  wire \lifo2/data_out_0_dpot_559 ;
  wire \lifo2/data_out_1_dpot_560 ;
  wire \lifo2/data_out_2_dpot_561 ;
  wire \lifo2/data_out_3_dpot_562 ;
  wire \lifo2/data_out_4_dpot_563 ;
  wire \lifo2/data_out_5_dpot_564 ;
  wire \lifo2/pointer_0_1_565 ;
  wire \lifo2/pointer_1_1_566 ;
  wire \lifo2/pointer_0_2_567 ;
  wire B_0_1_568;
  wire opcodein_2_1_569;
  wire \clkdiv1/clk_300hz_570 ;
  wire N189;
  wire N190;
  wire N191;
  wire N192;
  wire N193;
  wire [2 : 0] B;
  wire [2 : 0] opcodein;
  wire [5 : 0] \lifo2/data_out ;
  wire [2 : 0] \lifo2/opcodedata_out ;
  wire [3 : 1] \LED/ctl ;
  wire [17 : 0] \clkdiv1/counter_300hz ;
  wire [17 : 0] Result;
  wire [0 : 0] \clkdiv1/Mcount_counter_300hz_lut ;
  wire [16 : 0] \clkdiv1/Mcount_counter_300hz_cy ;
  wire [1 : 0] \alu1/Msub_GND_5_o_GND_5_o_sub_2_OUT_cy ;
  wire [7 : 0] \readdebouncer/Mcount_countpushed_lut ;
  wire [6 : 0] \readdebouncer/Mcount_countpushed_cy ;
  wire [7 : 0] \readdebouncer/Mcount_countstill_lut ;
  wire [6 : 0] \readdebouncer/Mcount_countstill_cy ;
  wire [7 : 0] \readdebouncer/countstill ;
  wire [7 : 0] \readdebouncer/countpushed ;
  wire [7 : 0] \writedebouncer/Mcount_countpushed_lut ;
  wire [6 : 0] \writedebouncer/Mcount_countpushed_cy ;
  wire [7 : 0] \writedebouncer/Mcount_countstill_lut ;
  wire [6 : 0] \writedebouncer/Mcount_countstill_cy ;
  wire [7 : 0] \writedebouncer/countstill ;
  wire [7 : 0] \writedebouncer/countpushed ;
  wire [1 : 0] \lifo2/Mcount_pointer_lut ;
  wire [2 : 0] \lifo2/pointer ;
  wire [2 : 0] \lifo2/Result ;
  wire [2 : 2] \lifo2/GND_7_o_X_6_o_wide_mux_27_OUT ;
  wire [5 : 5] \lifo2/GND_7_o_X_6_o_wide_mux_25_OUT ;
  wire [17 : 0] \lifo2/opcodelifo_5 ;
  wire [35 : 0] \lifo2/lifo_5 ;
  wire [3 : 3] \LED/_n0057 ;
  wire [3 : 0] \LED/currentdigit ;
  wire [1 : 0] \LED/counter ;
  wire [3 : 1] \LED/absresult ;
  wire [17 : 17] \clkdiv1/GND_2_o_GND_2_o_equal_5_o_0 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(display_0_OBUF_45)
  );
  FDCE   opcodein_0 (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_0_IBUF_5),
    .Q(opcodein[0])
  );
  FDCE   opcodein_1 (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_1_IBUF_4),
    .Q(opcodein[1])
  );
  FDCE   opcodein_2 (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_2_IBUF_3),
    .Q(opcodein[2])
  );
  FDCE   B_0 (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_0_IBUF_5),
    .Q(B[0])
  );
  FDCE   B_1 (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_1_IBUF_4),
    .Q(B[1])
  );
  FDCE   B_2 (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_2_IBUF_3),
    .Q(B[2])
  );
  FDRE   \clkdiv1/clk_300hz  (
    .C(clk_BUFGP_9),
    .CE(\clkdiv1/GND_2_o_GND_2_o_equal_5_o ),
    .D(\clkdiv1/clk_300hz_INV_5_o ),
    .R(\LED/reset_n_inv ),
    .Q(\clkdiv1/clk_300hz_570 )
  );
  FDR   \clkdiv1/counter_300hz_2  (
    .C(clk_BUFGP_9),
    .D(Result[2]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [2])
  );
  FDR   \clkdiv1/counter_300hz_0  (
    .C(clk_BUFGP_9),
    .D(Result[0]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [0])
  );
  FDR   \clkdiv1/counter_300hz_1  (
    .C(clk_BUFGP_9),
    .D(Result[1]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [1])
  );
  FDR   \clkdiv1/counter_300hz_5  (
    .C(clk_BUFGP_9),
    .D(Result[5]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [5])
  );
  FDR   \clkdiv1/counter_300hz_3  (
    .C(clk_BUFGP_9),
    .D(Result[3]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [3])
  );
  FDR   \clkdiv1/counter_300hz_4  (
    .C(clk_BUFGP_9),
    .D(Result[4]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [4])
  );
  FDR   \clkdiv1/counter_300hz_8  (
    .C(clk_BUFGP_9),
    .D(Result[8]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [8])
  );
  FDR   \clkdiv1/counter_300hz_6  (
    .C(clk_BUFGP_9),
    .D(Result[6]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [6])
  );
  FDR   \clkdiv1/counter_300hz_7  (
    .C(clk_BUFGP_9),
    .D(Result[7]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [7])
  );
  FDR   \clkdiv1/counter_300hz_11  (
    .C(clk_BUFGP_9),
    .D(Result[11]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [11])
  );
  FDR   \clkdiv1/counter_300hz_9  (
    .C(clk_BUFGP_9),
    .D(Result[9]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [9])
  );
  FDR   \clkdiv1/counter_300hz_10  (
    .C(clk_BUFGP_9),
    .D(Result[10]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [10])
  );
  FDR   \clkdiv1/counter_300hz_14  (
    .C(clk_BUFGP_9),
    .D(Result[14]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [14])
  );
  FDR   \clkdiv1/counter_300hz_12  (
    .C(clk_BUFGP_9),
    .D(Result[12]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [12])
  );
  FDR   \clkdiv1/counter_300hz_13  (
    .C(clk_BUFGP_9),
    .D(Result[13]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [13])
  );
  FDR   \clkdiv1/counter_300hz_17  (
    .C(clk_BUFGP_9),
    .D(Result[17]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [17])
  );
  FDR   \clkdiv1/counter_300hz_15  (
    .C(clk_BUFGP_9),
    .D(Result[15]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [15])
  );
  FDR   \clkdiv1/counter_300hz_16  (
    .C(clk_BUFGP_9),
    .D(Result[16]),
    .R(\clkdiv1/Mcount_counter_300hz_val ),
    .Q(\clkdiv1/counter_300hz [16])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<0>  (
    .CI(N0),
    .DI(display_0_OBUF_45),
    .S(\clkdiv1/Mcount_counter_300hz_lut [0]),
    .O(\clkdiv1/Mcount_counter_300hz_cy [0])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<0>  (
    .CI(N0),
    .LI(\clkdiv1/Mcount_counter_300hz_lut [0]),
    .O(Result[0])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<1>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [0]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_488 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [1])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<1>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [0]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_488 ),
    .O(Result[1])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<2>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [1]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_489 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [2])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<2>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [1]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_489 ),
    .O(Result[2])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<3>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [2]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_490 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [3])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<3>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [2]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_490 ),
    .O(Result[3])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<4>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [3]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_491 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [4])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<4>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [3]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_491 ),
    .O(Result[4])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<5>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [4]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_492 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [5])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<5>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [4]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_492 ),
    .O(Result[5])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<6>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [5]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_493 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [6])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<6>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [5]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_493 ),
    .O(Result[6])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<7>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [6]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_494 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [7])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<7>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [6]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_494 ),
    .O(Result[7])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<8>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [7]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_495 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [8])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<8>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [7]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_495 ),
    .O(Result[8])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<9>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [8]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_496 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [9])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<9>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [8]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_496 ),
    .O(Result[9])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<10>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [9]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_497 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [10])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<10>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [9]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_497 ),
    .O(Result[10])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<11>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [10]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_498 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [11])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<11>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [10]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_498 ),
    .O(Result[11])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<12>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [11]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_499 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [12])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<12>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [11]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_499 ),
    .O(Result[12])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<13>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [12]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_500 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [13])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<13>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [12]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_500 ),
    .O(Result[13])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<14>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [13]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_501 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [14])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<14>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [13]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_501 ),
    .O(Result[14])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<15>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [14]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_502 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [15])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<15>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [14]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_502 ),
    .O(Result[15])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<16>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [15]),
    .DI(N0),
    .S(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_503 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [16])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<16>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [15]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_503 ),
    .O(Result[16])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<17>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [16]),
    .LI(\clkdiv1/Mcount_counter_300hz_xor<17>_rt_504 ),
    .O(Result[17])
  );
  FDCE   \readdebouncer/countstill_7  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0066_inv_169 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill7 ),
    .Q(\readdebouncer/countstill [7])
  );
  FDCE   \readdebouncer/countstill_6  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0066_inv_169 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill6 ),
    .Q(\readdebouncer/countstill [6])
  );
  FDCE   \readdebouncer/countstill_5  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0066_inv_169 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill5 ),
    .Q(\readdebouncer/countstill [5])
  );
  FDCE   \readdebouncer/countstill_4  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0066_inv_169 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill4 ),
    .Q(\readdebouncer/countstill [4])
  );
  FDCE   \readdebouncer/countstill_3  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0066_inv_169 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill3 ),
    .Q(\readdebouncer/countstill [3])
  );
  FDCE   \readdebouncer/countstill_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0066_inv_169 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill2 ),
    .Q(\readdebouncer/countstill [2])
  );
  FDCE   \readdebouncer/countstill_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0066_inv_169 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill1 ),
    .Q(\readdebouncer/countstill [1])
  );
  FDCE   \readdebouncer/countstill_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0066_inv_169 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill ),
    .Q(\readdebouncer/countstill [0])
  );
  FDCE   \readdebouncer/countpushed_7  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0063_inv_144 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed7 ),
    .Q(\readdebouncer/countpushed [7])
  );
  FDCE   \readdebouncer/countpushed_6  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0063_inv_144 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed6 ),
    .Q(\readdebouncer/countpushed [6])
  );
  FDCE   \readdebouncer/countpushed_5  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0063_inv_144 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed5 ),
    .Q(\readdebouncer/countpushed [5])
  );
  FDCE   \readdebouncer/countpushed_4  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0063_inv_144 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed4 ),
    .Q(\readdebouncer/countpushed [4])
  );
  FDCE   \readdebouncer/countpushed_3  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0063_inv_144 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed3 ),
    .Q(\readdebouncer/countpushed [3])
  );
  FDCE   \readdebouncer/countpushed_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0063_inv_144 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed2 ),
    .Q(\readdebouncer/countpushed [2])
  );
  FDCE   \readdebouncer/countpushed_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0063_inv_144 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed1 ),
    .Q(\readdebouncer/countpushed [1])
  );
  FDCE   \readdebouncer/countpushed_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\readdebouncer/_n0063_inv_144 ),
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
    .DI(N0),
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
    .DI(N0),
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
    .DI(N0),
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
    .DI(N0),
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
    .DI(N0),
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
    .DI(N0),
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
    .DI(N0),
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
    .I2(N0),
    .O(\readdebouncer/Mcount_countstill_lut [7])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<6>  (
    .CI(\readdebouncer/Mcount_countstill_cy [5]),
    .LI(\readdebouncer/Mcount_countstill_lut [6]),
    .O(\readdebouncer/Mcount_countstill6 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<6>  (
    .CI(\readdebouncer/Mcount_countstill_cy [5]),
    .DI(N0),
    .S(\readdebouncer/Mcount_countstill_lut [6]),
    .O(\readdebouncer/Mcount_countstill_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<6>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [6]),
    .I2(N0),
    .O(\readdebouncer/Mcount_countstill_lut [6])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<5>  (
    .CI(\readdebouncer/Mcount_countstill_cy [4]),
    .LI(\readdebouncer/Mcount_countstill_lut [5]),
    .O(\readdebouncer/Mcount_countstill5 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<5>  (
    .CI(\readdebouncer/Mcount_countstill_cy [4]),
    .DI(N0),
    .S(\readdebouncer/Mcount_countstill_lut [5]),
    .O(\readdebouncer/Mcount_countstill_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<5>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [5]),
    .I2(N0),
    .O(\readdebouncer/Mcount_countstill_lut [5])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<4>  (
    .CI(\readdebouncer/Mcount_countstill_cy [3]),
    .LI(\readdebouncer/Mcount_countstill_lut [4]),
    .O(\readdebouncer/Mcount_countstill4 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<4>  (
    .CI(\readdebouncer/Mcount_countstill_cy [3]),
    .DI(N0),
    .S(\readdebouncer/Mcount_countstill_lut [4]),
    .O(\readdebouncer/Mcount_countstill_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<4>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [4]),
    .I2(N0),
    .O(\readdebouncer/Mcount_countstill_lut [4])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<3>  (
    .CI(\readdebouncer/Mcount_countstill_cy [2]),
    .LI(\readdebouncer/Mcount_countstill_lut [3]),
    .O(\readdebouncer/Mcount_countstill3 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<3>  (
    .CI(\readdebouncer/Mcount_countstill_cy [2]),
    .DI(N0),
    .S(\readdebouncer/Mcount_countstill_lut [3]),
    .O(\readdebouncer/Mcount_countstill_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<3>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [3]),
    .I2(N0),
    .O(\readdebouncer/Mcount_countstill_lut [3])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<2>  (
    .CI(\readdebouncer/Mcount_countstill_cy [1]),
    .LI(\readdebouncer/Mcount_countstill_lut [2]),
    .O(\readdebouncer/Mcount_countstill2 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<2>  (
    .CI(\readdebouncer/Mcount_countstill_cy [1]),
    .DI(N0),
    .S(\readdebouncer/Mcount_countstill_lut [2]),
    .O(\readdebouncer/Mcount_countstill_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<2>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [2]),
    .I2(N0),
    .O(\readdebouncer/Mcount_countstill_lut [2])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<1>  (
    .CI(\readdebouncer/Mcount_countstill_cy [0]),
    .LI(\readdebouncer/Mcount_countstill_lut [1]),
    .O(\readdebouncer/Mcount_countstill1 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<1>  (
    .CI(\readdebouncer/Mcount_countstill_cy [0]),
    .DI(N0),
    .S(\readdebouncer/Mcount_countstill_lut [1]),
    .O(\readdebouncer/Mcount_countstill_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<1>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [1]),
    .I2(N0),
    .O(\readdebouncer/Mcount_countstill_lut [1])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<0>  (
    .CI(\readdebouncer/noisy_inv ),
    .LI(\readdebouncer/Mcount_countstill_lut [0]),
    .O(\readdebouncer/Mcount_countstill )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<0>  (
    .CI(\readdebouncer/noisy_inv ),
    .DI(N0),
    .S(\readdebouncer/Mcount_countstill_lut [0]),
    .O(\readdebouncer/Mcount_countstill_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<0>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [0]),
    .I2(N0),
    .O(\readdebouncer/Mcount_countstill_lut [0])
  );
  FDCE   \writedebouncer/countstill_7  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0066_inv_237 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countstill7 ),
    .Q(\writedebouncer/countstill [7])
  );
  FDCE   \writedebouncer/countstill_6  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0066_inv_237 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countstill6 ),
    .Q(\writedebouncer/countstill [6])
  );
  FDCE   \writedebouncer/countstill_5  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0066_inv_237 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countstill5 ),
    .Q(\writedebouncer/countstill [5])
  );
  FDCE   \writedebouncer/countstill_4  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0066_inv_237 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countstill4 ),
    .Q(\writedebouncer/countstill [4])
  );
  FDCE   \writedebouncer/countstill_3  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0066_inv_237 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countstill3 ),
    .Q(\writedebouncer/countstill [3])
  );
  FDCE   \writedebouncer/countstill_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0066_inv_237 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countstill2 ),
    .Q(\writedebouncer/countstill [2])
  );
  FDCE   \writedebouncer/countstill_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0066_inv_237 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countstill1 ),
    .Q(\writedebouncer/countstill [1])
  );
  FDCE   \writedebouncer/countstill_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0066_inv_237 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countstill ),
    .Q(\writedebouncer/countstill [0])
  );
  FDCE   \writedebouncer/countpushed_7  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0063_inv_212 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countpushed7 ),
    .Q(\writedebouncer/countpushed [7])
  );
  FDCE   \writedebouncer/countpushed_6  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0063_inv_212 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countpushed6 ),
    .Q(\writedebouncer/countpushed [6])
  );
  FDCE   \writedebouncer/countpushed_5  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0063_inv_212 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countpushed5 ),
    .Q(\writedebouncer/countpushed [5])
  );
  FDCE   \writedebouncer/countpushed_4  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0063_inv_212 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countpushed4 ),
    .Q(\writedebouncer/countpushed [4])
  );
  FDCE   \writedebouncer/countpushed_3  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0063_inv_212 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countpushed3 ),
    .Q(\writedebouncer/countpushed [3])
  );
  FDCE   \writedebouncer/countpushed_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0063_inv_212 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countpushed2 ),
    .Q(\writedebouncer/countpushed [2])
  );
  FDCE   \writedebouncer/countpushed_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0063_inv_212 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countpushed1 ),
    .Q(\writedebouncer/countpushed [1])
  );
  FDCE   \writedebouncer/countpushed_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\writedebouncer/_n0063_inv_212 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/Mcount_countpushed ),
    .Q(\writedebouncer/countpushed [0])
  );
  XORCY   \writedebouncer/Mcount_countpushed_xor<7>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [6]),
    .LI(\writedebouncer/Mcount_countpushed_lut [7]),
    .O(\writedebouncer/Mcount_countpushed7 )
  );
  XORCY   \writedebouncer/Mcount_countpushed_xor<6>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [5]),
    .LI(\writedebouncer/Mcount_countpushed_lut [6]),
    .O(\writedebouncer/Mcount_countpushed6 )
  );
  MUXCY   \writedebouncer/Mcount_countpushed_cy<6>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [5]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countpushed_lut [6]),
    .O(\writedebouncer/Mcount_countpushed_cy [6])
  );
  XORCY   \writedebouncer/Mcount_countpushed_xor<5>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [4]),
    .LI(\writedebouncer/Mcount_countpushed_lut [5]),
    .O(\writedebouncer/Mcount_countpushed5 )
  );
  MUXCY   \writedebouncer/Mcount_countpushed_cy<5>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [4]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countpushed_lut [5]),
    .O(\writedebouncer/Mcount_countpushed_cy [5])
  );
  XORCY   \writedebouncer/Mcount_countpushed_xor<4>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [3]),
    .LI(\writedebouncer/Mcount_countpushed_lut [4]),
    .O(\writedebouncer/Mcount_countpushed4 )
  );
  MUXCY   \writedebouncer/Mcount_countpushed_cy<4>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [3]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countpushed_lut [4]),
    .O(\writedebouncer/Mcount_countpushed_cy [4])
  );
  XORCY   \writedebouncer/Mcount_countpushed_xor<3>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [2]),
    .LI(\writedebouncer/Mcount_countpushed_lut [3]),
    .O(\writedebouncer/Mcount_countpushed3 )
  );
  MUXCY   \writedebouncer/Mcount_countpushed_cy<3>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [2]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countpushed_lut [3]),
    .O(\writedebouncer/Mcount_countpushed_cy [3])
  );
  XORCY   \writedebouncer/Mcount_countpushed_xor<2>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [1]),
    .LI(\writedebouncer/Mcount_countpushed_lut [2]),
    .O(\writedebouncer/Mcount_countpushed2 )
  );
  MUXCY   \writedebouncer/Mcount_countpushed_cy<2>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [1]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countpushed_lut [2]),
    .O(\writedebouncer/Mcount_countpushed_cy [2])
  );
  XORCY   \writedebouncer/Mcount_countpushed_xor<1>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [0]),
    .LI(\writedebouncer/Mcount_countpushed_lut [1]),
    .O(\writedebouncer/Mcount_countpushed1 )
  );
  MUXCY   \writedebouncer/Mcount_countpushed_cy<1>  (
    .CI(\writedebouncer/Mcount_countpushed_cy [0]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countpushed_lut [1]),
    .O(\writedebouncer/Mcount_countpushed_cy [1])
  );
  XORCY   \writedebouncer/Mcount_countpushed_xor<0>  (
    .CI(writein_IBUF_7),
    .LI(\writedebouncer/Mcount_countpushed_lut [0]),
    .O(\writedebouncer/Mcount_countpushed )
  );
  MUXCY   \writedebouncer/Mcount_countpushed_cy<0>  (
    .CI(writein_IBUF_7),
    .DI(N0),
    .S(\writedebouncer/Mcount_countpushed_lut [0]),
    .O(\writedebouncer/Mcount_countpushed_cy [0])
  );
  XORCY   \writedebouncer/Mcount_countstill_xor<7>  (
    .CI(\writedebouncer/Mcount_countstill_cy [6]),
    .LI(\writedebouncer/Mcount_countstill_lut [7]),
    .O(\writedebouncer/Mcount_countstill7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \writedebouncer/Mcount_countstill_lut<7>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countstill [7]),
    .I2(N0),
    .O(\writedebouncer/Mcount_countstill_lut [7])
  );
  XORCY   \writedebouncer/Mcount_countstill_xor<6>  (
    .CI(\writedebouncer/Mcount_countstill_cy [5]),
    .LI(\writedebouncer/Mcount_countstill_lut [6]),
    .O(\writedebouncer/Mcount_countstill6 )
  );
  MUXCY   \writedebouncer/Mcount_countstill_cy<6>  (
    .CI(\writedebouncer/Mcount_countstill_cy [5]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countstill_lut [6]),
    .O(\writedebouncer/Mcount_countstill_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \writedebouncer/Mcount_countstill_lut<6>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countstill [6]),
    .I2(N0),
    .O(\writedebouncer/Mcount_countstill_lut [6])
  );
  XORCY   \writedebouncer/Mcount_countstill_xor<5>  (
    .CI(\writedebouncer/Mcount_countstill_cy [4]),
    .LI(\writedebouncer/Mcount_countstill_lut [5]),
    .O(\writedebouncer/Mcount_countstill5 )
  );
  MUXCY   \writedebouncer/Mcount_countstill_cy<5>  (
    .CI(\writedebouncer/Mcount_countstill_cy [4]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countstill_lut [5]),
    .O(\writedebouncer/Mcount_countstill_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \writedebouncer/Mcount_countstill_lut<5>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countstill [5]),
    .I2(N0),
    .O(\writedebouncer/Mcount_countstill_lut [5])
  );
  XORCY   \writedebouncer/Mcount_countstill_xor<4>  (
    .CI(\writedebouncer/Mcount_countstill_cy [3]),
    .LI(\writedebouncer/Mcount_countstill_lut [4]),
    .O(\writedebouncer/Mcount_countstill4 )
  );
  MUXCY   \writedebouncer/Mcount_countstill_cy<4>  (
    .CI(\writedebouncer/Mcount_countstill_cy [3]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countstill_lut [4]),
    .O(\writedebouncer/Mcount_countstill_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \writedebouncer/Mcount_countstill_lut<4>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countstill [4]),
    .I2(N0),
    .O(\writedebouncer/Mcount_countstill_lut [4])
  );
  XORCY   \writedebouncer/Mcount_countstill_xor<3>  (
    .CI(\writedebouncer/Mcount_countstill_cy [2]),
    .LI(\writedebouncer/Mcount_countstill_lut [3]),
    .O(\writedebouncer/Mcount_countstill3 )
  );
  MUXCY   \writedebouncer/Mcount_countstill_cy<3>  (
    .CI(\writedebouncer/Mcount_countstill_cy [2]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countstill_lut [3]),
    .O(\writedebouncer/Mcount_countstill_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \writedebouncer/Mcount_countstill_lut<3>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countstill [3]),
    .I2(N0),
    .O(\writedebouncer/Mcount_countstill_lut [3])
  );
  XORCY   \writedebouncer/Mcount_countstill_xor<2>  (
    .CI(\writedebouncer/Mcount_countstill_cy [1]),
    .LI(\writedebouncer/Mcount_countstill_lut [2]),
    .O(\writedebouncer/Mcount_countstill2 )
  );
  MUXCY   \writedebouncer/Mcount_countstill_cy<2>  (
    .CI(\writedebouncer/Mcount_countstill_cy [1]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countstill_lut [2]),
    .O(\writedebouncer/Mcount_countstill_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \writedebouncer/Mcount_countstill_lut<2>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countstill [2]),
    .I2(N0),
    .O(\writedebouncer/Mcount_countstill_lut [2])
  );
  XORCY   \writedebouncer/Mcount_countstill_xor<1>  (
    .CI(\writedebouncer/Mcount_countstill_cy [0]),
    .LI(\writedebouncer/Mcount_countstill_lut [1]),
    .O(\writedebouncer/Mcount_countstill1 )
  );
  MUXCY   \writedebouncer/Mcount_countstill_cy<1>  (
    .CI(\writedebouncer/Mcount_countstill_cy [0]),
    .DI(N0),
    .S(\writedebouncer/Mcount_countstill_lut [1]),
    .O(\writedebouncer/Mcount_countstill_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \writedebouncer/Mcount_countstill_lut<1>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countstill [1]),
    .I2(N0),
    .O(\writedebouncer/Mcount_countstill_lut [1])
  );
  XORCY   \writedebouncer/Mcount_countstill_xor<0>  (
    .CI(\writedebouncer/noisy_inv ),
    .LI(\writedebouncer/Mcount_countstill_lut [0]),
    .O(\writedebouncer/Mcount_countstill )
  );
  MUXCY   \writedebouncer/Mcount_countstill_cy<0>  (
    .CI(\writedebouncer/noisy_inv ),
    .DI(N0),
    .S(\writedebouncer/Mcount_countstill_lut [0]),
    .O(\writedebouncer/Mcount_countstill_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \writedebouncer/Mcount_countstill_lut<0>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countstill [0]),
    .I2(N0),
    .O(\writedebouncer/Mcount_countstill_lut [0])
  );
  FDCE   \lifo2/pointer_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0121_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/Result [2]),
    .Q(\lifo2/pointer [2])
  );
  FDCE   \lifo2/pointer_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0121_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/Result [1]),
    .Q(\lifo2/pointer [1])
  );
  FDCE   \lifo2/pointer_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0121_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/Result [0]),
    .Q(\lifo2/pointer [0])
  );
  FDE   \lifo2/opcodedata_out_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0146_inv1_cepot_555 ),
    .D(\lifo2/opcodedata_out_2_dpot_558 ),
    .Q(\lifo2/opcodedata_out [2])
  );
  FDE   \lifo2/opcodedata_out_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0146_inv1_cepot_555 ),
    .D(\lifo2/opcodedata_out_1_dpot_557 ),
    .Q(\lifo2/opcodedata_out [1])
  );
  FDE   \lifo2/opcodedata_out_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0146_inv1_cepot_555 ),
    .D(\lifo2/opcodedata_out_0_dpot_556 ),
    .Q(\lifo2/opcodedata_out [0])
  );
  FDCE   \lifo2/data_out_5  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0146_inv1_cepot_555 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/data_out_5_dpot_564 ),
    .Q(\lifo2/data_out [5])
  );
  FDCE   \lifo2/data_out_4  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0146_inv1_cepot_555 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/data_out_4_dpot_563 ),
    .Q(\lifo2/data_out [4])
  );
  FDCE   \lifo2/data_out_3  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0146_inv1_cepot_555 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/data_out_3_dpot_562 ),
    .Q(\lifo2/data_out [3])
  );
  FDCE   \lifo2/data_out_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0146_inv1_cepot_555 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/data_out_2_dpot_561 ),
    .Q(\lifo2/data_out [2])
  );
  FDCE   \lifo2/data_out_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0146_inv1_cepot_555 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/data_out_1_dpot_560 ),
    .Q(\lifo2/data_out [1])
  );
  FDCE   \lifo2/data_out_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0146_inv1_cepot_555 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/data_out_0_dpot_559 ),
    .Q(\lifo2/data_out [0])
  );
  FDCE   \lifo2/opcodelifo_5_17  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[0][2]_opcodedata[2]_mux_19_OUT<2> ),
    .Q(\lifo2/opcodelifo_5 [17])
  );
  FDCE   \lifo2/opcodelifo_5_16  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[0][2]_opcodedata[2]_mux_19_OUT<1> ),
    .Q(\lifo2/opcodelifo_5 [16])
  );
  FDCE   \lifo2/opcodelifo_5_15  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[0][2]_opcodedata[2]_mux_19_OUT<0> ),
    .Q(\lifo2/opcodelifo_5 [15])
  );
  FDCE   \lifo2/opcodelifo_5_14  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[1][2]_opcodedata[2]_mux_18_OUT<2> ),
    .Q(\lifo2/opcodelifo_5 [14])
  );
  FDCE   \lifo2/opcodelifo_5_13  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[1][2]_opcodedata[2]_mux_18_OUT<1> ),
    .Q(\lifo2/opcodelifo_5 [13])
  );
  FDCE   \lifo2/opcodelifo_5_12  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[1][2]_opcodedata[2]_mux_18_OUT<0> ),
    .Q(\lifo2/opcodelifo_5 [12])
  );
  FDCE   \lifo2/opcodelifo_5_11  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[2][2]_opcodedata[2]_mux_17_OUT<2> ),
    .Q(\lifo2/opcodelifo_5 [11])
  );
  FDCE   \lifo2/opcodelifo_5_10  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[2][2]_opcodedata[2]_mux_17_OUT<1> ),
    .Q(\lifo2/opcodelifo_5 [10])
  );
  FDCE   \lifo2/opcodelifo_5_9  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[2][2]_opcodedata[2]_mux_17_OUT<0> ),
    .Q(\lifo2/opcodelifo_5 [9])
  );
  FDCE   \lifo2/opcodelifo_5_8  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[3][2]_opcodedata[2]_mux_16_OUT<2> ),
    .Q(\lifo2/opcodelifo_5 [8])
  );
  FDCE   \lifo2/opcodelifo_5_7  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[3][2]_opcodedata[2]_mux_16_OUT<1> ),
    .Q(\lifo2/opcodelifo_5 [7])
  );
  FDCE   \lifo2/opcodelifo_5_6  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[3][2]_opcodedata[2]_mux_16_OUT<0> ),
    .Q(\lifo2/opcodelifo_5 [6])
  );
  FDCE   \lifo2/opcodelifo_5_5  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[4][2]_opcodedata[2]_mux_15_OUT<2> ),
    .Q(\lifo2/opcodelifo_5 [5])
  );
  FDCE   \lifo2/opcodelifo_5_4  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[4][2]_opcodedata[2]_mux_15_OUT<1> ),
    .Q(\lifo2/opcodelifo_5 [4])
  );
  FDCE   \lifo2/opcodelifo_5_3  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[4][2]_opcodedata[2]_mux_15_OUT<0> ),
    .Q(\lifo2/opcodelifo_5 [3])
  );
  FDCE   \lifo2/opcodelifo_5_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[5][2]_opcodedata[2]_mux_14_OUT<2> ),
    .Q(\lifo2/opcodelifo_5 [2])
  );
  FDCE   \lifo2/opcodelifo_5_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[5][2]_opcodedata[2]_mux_14_OUT<1> ),
    .Q(\lifo2/opcodelifo_5 [1])
  );
  FDCE   \lifo2/opcodelifo_5_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/opcodelifo[5][2]_opcodedata[2]_mux_14_OUT<0> ),
    .Q(\lifo2/opcodelifo_5 [0])
  );
  FDCE   \lifo2/lifo_5_35  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<5> ),
    .Q(\lifo2/lifo_5 [35])
  );
  FDCE   \lifo2/lifo_5_34  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<4> ),
    .Q(\lifo2/lifo_5 [34])
  );
  FDCE   \lifo2/lifo_5_33  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<3> ),
    .Q(\lifo2/lifo_5 [33])
  );
  FDCE   \lifo2/lifo_5_32  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<2> ),
    .Q(\lifo2/lifo_5 [32])
  );
  FDCE   \lifo2/lifo_5_31  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<1> ),
    .Q(\lifo2/lifo_5 [31])
  );
  FDCE   \lifo2/lifo_5_30  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<0> ),
    .Q(\lifo2/lifo_5 [30])
  );
  FDCE   \lifo2/lifo_5_29  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<5> ),
    .Q(\lifo2/lifo_5 [29])
  );
  FDCE   \lifo2/lifo_5_28  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<4> ),
    .Q(\lifo2/lifo_5 [28])
  );
  FDCE   \lifo2/lifo_5_27  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<3> ),
    .Q(\lifo2/lifo_5 [27])
  );
  FDCE   \lifo2/lifo_5_26  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<2> ),
    .Q(\lifo2/lifo_5 [26])
  );
  FDCE   \lifo2/lifo_5_25  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<1> ),
    .Q(\lifo2/lifo_5 [25])
  );
  FDCE   \lifo2/lifo_5_24  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<0> ),
    .Q(\lifo2/lifo_5 [24])
  );
  FDCE   \lifo2/lifo_5_23  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<5> ),
    .Q(\lifo2/lifo_5 [23])
  );
  FDCE   \lifo2/lifo_5_22  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<4> ),
    .Q(\lifo2/lifo_5 [22])
  );
  FDCE   \lifo2/lifo_5_21  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<3> ),
    .Q(\lifo2/lifo_5 [21])
  );
  FDCE   \lifo2/lifo_5_20  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<2> ),
    .Q(\lifo2/lifo_5 [20])
  );
  FDCE   \lifo2/lifo_5_19  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<1> ),
    .Q(\lifo2/lifo_5 [19])
  );
  FDCE   \lifo2/lifo_5_18  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<0> ),
    .Q(\lifo2/lifo_5 [18])
  );
  FDCE   \lifo2/lifo_5_17  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<5> ),
    .Q(\lifo2/lifo_5 [17])
  );
  FDCE   \lifo2/lifo_5_16  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<4> ),
    .Q(\lifo2/lifo_5 [16])
  );
  FDCE   \lifo2/lifo_5_15  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<3> ),
    .Q(\lifo2/lifo_5 [15])
  );
  FDCE   \lifo2/lifo_5_14  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<2> ),
    .Q(\lifo2/lifo_5 [14])
  );
  FDCE   \lifo2/lifo_5_13  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<1> ),
    .Q(\lifo2/lifo_5 [13])
  );
  FDCE   \lifo2/lifo_5_12  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<0> ),
    .Q(\lifo2/lifo_5 [12])
  );
  FDCE   \lifo2/lifo_5_11  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<5> ),
    .Q(\lifo2/lifo_5 [11])
  );
  FDCE   \lifo2/lifo_5_10  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<4> ),
    .Q(\lifo2/lifo_5 [10])
  );
  FDCE   \lifo2/lifo_5_9  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<3> ),
    .Q(\lifo2/lifo_5 [9])
  );
  FDCE   \lifo2/lifo_5_8  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<2> ),
    .Q(\lifo2/lifo_5 [8])
  );
  FDCE   \lifo2/lifo_5_7  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<1> ),
    .Q(\lifo2/lifo_5 [7])
  );
  FDCE   \lifo2/lifo_5_6  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<0> ),
    .Q(\lifo2/lifo_5 [6])
  );
  FDCE   \lifo2/lifo_5_5  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<5> ),
    .Q(\lifo2/lifo_5 [5])
  );
  FDCE   \lifo2/lifo_5_4  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<4> ),
    .Q(\lifo2/lifo_5 [4])
  );
  FDCE   \lifo2/lifo_5_3  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<3> ),
    .Q(\lifo2/lifo_5 [3])
  );
  FDCE   \lifo2/lifo_5_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<2> ),
    .Q(\lifo2/lifo_5 [2])
  );
  FDCE   \lifo2/lifo_5_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<1> ),
    .Q(\lifo2/lifo_5 [1])
  );
  FDCE   \lifo2/lifo_5_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<0> ),
    .Q(\lifo2/lifo_5 [0])
  );
  FDC   \LED/counter_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\LED/Mcount_counter1 ),
    .Q(\LED/counter [1])
  );
  FDC   \LED/counter_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\LED/Mcount_counter ),
    .Q(\LED/counter [0])
  );
  FDE   \LED/currentdigit_3  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(reset_n_IBUF_10),
    .D(\LED/counter[1]_PWR_10_o_wide_mux_10_OUT<3> ),
    .Q(\LED/currentdigit [3])
  );
  FDE   \LED/currentdigit_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(reset_n_IBUF_10),
    .D(\LED/counter[1]_PWR_10_o_wide_mux_10_OUT<2> ),
    .Q(\LED/currentdigit [2])
  );
  FDE   \LED/currentdigit_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(reset_n_IBUF_10),
    .D(\LED/counter[1]_PWR_10_o_wide_mux_10_OUT<1> ),
    .Q(\LED/currentdigit [1])
  );
  FDE   \LED/currentdigit_0  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(reset_n_IBUF_10),
    .D(\LED/counter[1]_PWR_10_o_wide_mux_10_OUT<0> ),
    .Q(\LED/currentdigit [0])
  );
  FDE   \LED/ctl_3  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(reset_n_IBUF_10),
    .D(\LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT3 ),
    .Q(\LED/ctl [3])
  );
  FDE   \LED/ctl_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(reset_n_IBUF_10),
    .D(\LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT2 ),
    .Q(\LED/ctl [2])
  );
  FDE   \LED/ctl_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(reset_n_IBUF_10),
    .D(\LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT1 ),
    .Q(\LED/ctl [1])
  );
  LUT3 #(
    .INIT ( 8'h5C ))
  \decoder1/Mram_opcodeout12  (
    .I0(opcodein[1]),
    .I1(opcodein[0]),
    .I2(opcodein[2]),
    .O(\decoder1/Mram_opcodeout )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \decoder1/Mram_opcodeout111  (
    .I0(opcodein_2_1_569),
    .I1(opcodein[1]),
    .I2(opcodein[0]),
    .O(\decoder1/Mram_opcodeout1 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \alu1/Msub_GND_5_o_GND_5_o_sub_2_OUT_cy<0>11  (
    .I0(A_0_IBUF_2),
    .I1(B[0]),
    .O(\alu1/Msub_GND_5_o_GND_5_o_sub_2_OUT_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alu1/Madd_n0033[3:0]_lut<2>1  (
    .I0(A_2_IBUF_0),
    .I1(B[2]),
    .O(\alu1/Madd_n0033[3:0]_lut<2> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alu1/Madd_n0033[3:0]_lut<1>1  (
    .I0(A_1_IBUF_1),
    .I1(B[1]),
    .O(\alu1/Madd_n0033[3:0]_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alu1/Madd_n0033[3:0]_lut<0>1  (
    .I0(A_0_IBUF_2),
    .I1(B[0]),
    .O(\alu1/Madd_n0033[3:0]_lut<0> )
  );
  LUT4 #(
    .INIT ( 16'h9A56 ))
  \lifo2/Mcount_pointer_xor<1>11  (
    .I0(\lifo2/Mcount_pointer_lut [1]),
    .I1(\lifo2/Mcount_pointer_lut [0]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .O(\lifo2/Result [1])
  );
  LUT6 #(
    .INIT ( 64'h00000000DFFF0000 ))
  \lifo2/flag_PWR_7_o_MUX_136_o1  (
    .I0(reset_n_IBUF_10),
    .I1(\lifo2/pointer_0_1_565 ),
    .I2(\lifo2/pointer_2_1_554 ),
    .I3(\lifo2/pointer_1_1_566 ),
    .I4(\writedebouncer/clean_18 ),
    .I5(\lifo2/flag_32 ),
    .O(\lifo2/flag_PWR_7_o_MUX_136_o )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \lifo2/mux24111  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .O(\lifo2/mux2411 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \lifo2/mux18111  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [0]),
    .O(\lifo2/mux1811 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \lifo2/mux12111  (
    .I0(\lifo2/pointer [0]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .O(\lifo2/mux1211 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \lifo2/mux10111  (
    .I0(\lifo2/pointer [1]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [0]),
    .O(\lifo2/mux1011 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \lifo2/_n0121_inv111  (
    .I0(\lifo2/pointer [0]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .O(\lifo2/_n0121_inv11 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \lifo2/_n0121_inv1  (
    .I0(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .I1(\lifo2/_n0121_inv1_262 ),
    .O(\lifo2/_n0121_inv )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \lifo2/mux11011  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .O(\lifo2/mux1101 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \lifo2/Mmux_full11  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(reset_n_IBUF_10),
    .O(full_OBUF_30)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \lifo2/Mcount_pointer_xor<0>11  (
    .I0(\lifo2/Mcount_pointer_lut [0]),
    .I1(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .O(\lifo2/Result [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA5556AAAA ))
  \LED/Mmux_absresult41  (
    .I0(\lifo2/data_out [3]),
    .I1(\lifo2/data_out [2]),
    .I2(\lifo2/data_out [1]),
    .I3(\lifo2/data_out [0]),
    .I4(\lifo2/data_out [5]),
    .I5(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>1 ),
    .O(\LED/absresult [3])
  );
  LUT4 #(
    .INIT ( 16'h4918 ))
  \LED/Mram_segments41  (
    .I0(\LED/currentdigit [3]),
    .I1(\LED/currentdigit [1]),
    .I2(\LED/currentdigit [2]),
    .I3(\LED/currentdigit [0]),
    .O(display_4_OBUF_40)
  );
  LUT5 #(
    .INIT ( 32'hAAAA56AA ))
  \LED/Mmux_absresult31  (
    .I0(\lifo2/data_out [2]),
    .I1(\lifo2/data_out [1]),
    .I2(\lifo2/data_out [0]),
    .I3(\lifo2/data_out [5]),
    .I4(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>1 ),
    .O(\LED/absresult [2])
  );
  LUT4 #(
    .INIT ( 16'h0921 ))
  \LED/Mram_segments111  (
    .I0(\LED/currentdigit [1]),
    .I1(\LED/currentdigit [2]),
    .I2(\LED/currentdigit [3]),
    .I3(\LED/currentdigit [0]),
    .O(display_1_OBUF_43)
  );
  LUT4 #(
    .INIT ( 16'h5F42 ))
  \LED/Mram_segments31  (
    .I0(\LED/currentdigit [2]),
    .I1(\LED/currentdigit [1]),
    .I2(\LED/currentdigit [3]),
    .I3(\LED/currentdigit [0]),
    .O(display_3_OBUF_41)
  );
  LUT4 #(
    .INIT ( 16'hA8AC ))
  \LED/Mram_segments51  (
    .I0(\LED/currentdigit [3]),
    .I1(\LED/currentdigit [1]),
    .I2(\LED/currentdigit [2]),
    .I3(\LED/currentdigit [0]),
    .O(display_5_OBUF_39)
  );
  LUT4 #(
    .INIT ( 16'h22B2 ))
  \LED/Mram_segments21  (
    .I0(\LED/currentdigit [1]),
    .I1(\LED/currentdigit [2]),
    .I2(\LED/currentdigit [0]),
    .I3(\LED/currentdigit [3]),
    .O(display_2_OBUF_42)
  );
  LUT4 #(
    .INIT ( 16'hCAE8 ))
  \LED/Mram_segments61  (
    .I0(\LED/currentdigit [2]),
    .I1(\LED/currentdigit [3]),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/currentdigit [0]),
    .O(display_6_OBUF_38)
  );
  LUT4 #(
    .INIT ( 16'h0918 ))
  \LED/Mram_segments71  (
    .I0(\LED/currentdigit [3]),
    .I1(\LED/currentdigit [1]),
    .I2(\LED/currentdigit [2]),
    .I3(\LED/currentdigit [0]),
    .O(display_7_OBUF_37)
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>11  (
    .I0(\lifo2/opcodedata_out [0]),
    .I1(\lifo2/opcodedata_out [1]),
    .I2(\lifo2/opcodedata_out [2]),
    .O(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \LED/Mcount_counter_xor<1>11  (
    .I0(\LED/counter [0]),
    .I1(\LED/counter [1]),
    .O(\LED/Mcount_counter1 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \LED/Mcount_counter_xor<0>11  (
    .I0(\LED/counter [0]),
    .I1(\LED/counter [1]),
    .O(\LED/Mcount_counter )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT31  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .O(\LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT3 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT21  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .O(\LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT2 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT111  (
    .I0(\LED/counter [0]),
    .I1(\LED/counter [1]),
    .O(\LED/Mram_counter[1]_PWR_10_o_wide_mux_9_OUT1 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \LED/opcodesel[2]_PWR_10_o_equal_8_o<2>1  (
    .I0(\lifo2/opcodedata_out [1]),
    .I1(\lifo2/opcodedata_out [0]),
    .I2(\lifo2/opcodedata_out [2]),
    .O(\LED/opcodesel[2]_PWR_10_o_equal_8_o )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>1  (
    .I0(\clkdiv1/counter_300hz [7]),
    .I1(\clkdiv1/counter_300hz [6]),
    .I2(\clkdiv1/counter_300hz [11]),
    .I3(\clkdiv1/counter_300hz [8]),
    .I4(\clkdiv1/counter_300hz [17]),
    .I5(\clkdiv1/counter_300hz [14]),
    .O(\clkdiv1/GND_2_o_GND_2_o_equal_5_o_0 [17])
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>2  (
    .I0(\clkdiv1/counter_300hz [0]),
    .I1(\clkdiv1/counter_300hz [1]),
    .I2(\clkdiv1/counter_300hz [2]),
    .I3(\clkdiv1/counter_300hz [3]),
    .I4(\clkdiv1/counter_300hz [5]),
    .I5(\clkdiv1/counter_300hz [4]),
    .O(\clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>1_410 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>3  (
    .I0(\clkdiv1/counter_300hz [10]),
    .I1(\clkdiv1/counter_300hz [9]),
    .I2(\clkdiv1/counter_300hz [12]),
    .I3(\clkdiv1/counter_300hz [13]),
    .I4(\clkdiv1/counter_300hz [15]),
    .I5(\clkdiv1/counter_300hz [16]),
    .O(\clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>2_411 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>4  (
    .I0(\clkdiv1/GND_2_o_GND_2_o_equal_5_o_0 [17]),
    .I1(\clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>1_410 ),
    .I2(\clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>2_411 ),
    .O(\clkdiv1/GND_2_o_GND_2_o_equal_5_o )
  );
  LUT6 #(
    .INIT ( 64'h00CCF0AA000000AA ))
  \alu1/Mmux_f31  (
    .I0(A_2_IBUF_0),
    .I1(A_1_IBUF_1),
    .I2(A_0_IBUF_2),
    .I3(B[1]),
    .I4(B[0]),
    .I5(\decoder1/Mram_opcodeout ),
    .O(\alu1/Mmux_f3 )
  );
  LUT6 #(
    .INIT ( 64'h04F4040400F00000 ))
  \alu1/Mmux_f33  (
    .I0(B[2]),
    .I1(opcodein[2]),
    .I2(\decoder1/Mram_opcodeout1 ),
    .I3(\decoder1/Mram_opcodeout ),
    .I4(\alu1/Mmux_f31_413 ),
    .I5(\alu1/Mmux_f3 ),
    .O(\alu1/Mmux_f32_414 )
  );
  LUT6 #(
    .INIT ( 64'hF05A3C5A00000000 ))
  \alu1/Mmux_f35  (
    .I0(A_1_IBUF_1),
    .I1(A_0_IBUF_2),
    .I2(\alu1/Madd_n0033[3:0]_lut<2> ),
    .I3(\alu1/Madd_n0033[3:0]_lut<1> ),
    .I4(\alu1/Madd_n0033[3:0]_lut<0> ),
    .I5(\alu1/Mmux_f13_108 ),
    .O(\alu1/Mmux_f34_416 )
  );
  LUT6 #(
    .INIT ( 64'h00CC00F000AA0000 ))
  \alu1/Mmux_f41  (
    .I0(A_1_IBUF_1),
    .I1(A_0_IBUF_2),
    .I2(A_2_IBUF_0),
    .I3(B[2]),
    .I4(B[1]),
    .I5(B[0]),
    .O(\alu1/Mmux_f4 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \alu1/Mmux_f24  (
    .I0(B[2]),
    .I1(B[1]),
    .I2(opcodein[2]),
    .O(\alu1/Mmux_f23 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \alu1/Mmux_f61  (
    .I0(B[1]),
    .I1(B[0]),
    .O(\alu1/Mmux_f6 )
  );
  LUT6 #(
    .INIT ( 64'h20002000A8882000 ))
  \alu1/Mmux_f62  (
    .I0(A_2_IBUF_0),
    .I1(B[2]),
    .I2(\alu1/Mmux_f6 ),
    .I3(\alu1/Mmux_f11_110 ),
    .I4(\alu1/Mmux_f12_109 ),
    .I5(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .O(\alu1/Mmux_f61_422 )
  );
  LUT6 #(
    .INIT ( 64'h00A000C000000000 ))
  \alu1/Mmux_f63  (
    .I0(A_0_IBUF_2),
    .I1(A_1_IBUF_1),
    .I2(B[2]),
    .I3(B[1]),
    .I4(B[0]),
    .I5(\alu1/Mmux_f11_110 ),
    .O(\alu1/Mmux_f62_423 )
  );
  LUT6 #(
    .INIT ( 64'h00F0C0FC80F8E0FE ))
  \alu1/Mmux_f11  (
    .I0(A_0_IBUF_2),
    .I1(A_1_IBUF_1),
    .I2(A_2_IBUF_0),
    .I3(B[2]),
    .I4(B[1]),
    .I5(B[0]),
    .O(\alu1/Mmux_f1 )
  );
  LUT6 #(
    .INIT ( 64'h00CC0000AAF00000 ))
  \alu1/Mmux_f15  (
    .I0(A_2_IBUF_0),
    .I1(A_1_IBUF_1),
    .I2(A_0_IBUF_2),
    .I3(B[1]),
    .I4(opcodein[2]),
    .I5(B[0]),
    .O(\alu1/Mmux_f17 )
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
    .INIT ( 64'h22220222FFFFFFFF ))
  \readdebouncer/_n0063_inv  (
    .I0(\readdebouncer/still_172 ),
    .I1(\readdebouncer/pushed_171 ),
    .I2(\readdebouncer/countpushed [4]),
    .I3(\readdebouncer/countpushed [7]),
    .I4(N2),
    .I5(readin_IBUF_8),
    .O(\readdebouncer/_n0063_inv_144 )
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
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \readdebouncer/_n0066_inv  (
    .I0(\readdebouncer/countstill [7]),
    .I1(N6),
    .I2(\readdebouncer/countstill [3]),
    .I3(\readdebouncer/countstill [0]),
    .I4(\readdebouncer/countstill [6]),
    .I5(\readdebouncer/countstill [4]),
    .O(\readdebouncer/_n0066_inv_169 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \readdebouncer/_n0066  (
    .I0(\readdebouncer/countstill [3]),
    .I1(\readdebouncer/countstill [0]),
    .I2(\readdebouncer/countstill [6]),
    .I3(N6),
    .I4(\readdebouncer/countstill [7]),
    .I5(\readdebouncer/countstill [4]),
    .O(\readdebouncer/_n0066_170 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \writedebouncer/_n0084_inv_SW0  (
    .I0(\writedebouncer/countpushed [2]),
    .I1(\writedebouncer/countpushed [1]),
    .I2(\writedebouncer/countpushed [6]),
    .I3(\writedebouncer/countpushed [5]),
    .I4(\writedebouncer/countpushed [3]),
    .I5(\writedebouncer/countpushed [0]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h22220222FFFFFFFF ))
  \writedebouncer/_n0063_inv  (
    .I0(\writedebouncer/still_240 ),
    .I1(\writedebouncer/pushed_239 ),
    .I2(\writedebouncer/countpushed [4]),
    .I3(\writedebouncer/countpushed [7]),
    .I4(N10),
    .I5(writein_IBUF_7),
    .O(\writedebouncer/_n0063_inv_212 )
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \writedebouncer/_n0066_inv_SW0  (
    .I0(\writedebouncer/countstill [2]),
    .I1(\writedebouncer/countstill [1]),
    .I2(\writedebouncer/countstill [5]),
    .I3(writein_IBUF_7),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \writedebouncer/_n0066_inv  (
    .I0(\writedebouncer/countstill [7]),
    .I1(N14),
    .I2(\writedebouncer/countstill [3]),
    .I3(\writedebouncer/countstill [0]),
    .I4(\writedebouncer/countstill [6]),
    .I5(\writedebouncer/countstill [4]),
    .O(\writedebouncer/_n0066_inv_237 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \writedebouncer/_n0066  (
    .I0(\writedebouncer/countstill [3]),
    .I1(\writedebouncer/countstill [0]),
    .I2(\writedebouncer/countstill [6]),
    .I3(N14),
    .I4(\writedebouncer/countstill [7]),
    .I5(\writedebouncer/countstill [4]),
    .O(\writedebouncer/_n0066_238 )
  );
  LUT5 #(
    .INIT ( 32'hAAF0AACC ))
  \lifo2/mux61111  (
    .I0(\lifo2/opcodelifo_5 [4]),
    .I1(\lifo2/opcodelifo_5 [16]),
    .I2(\lifo2/opcodelifo_5 [10]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux6111 )
  );
  LUT5 #(
    .INIT ( 32'hF0AACCF0 ))
  \lifo2/mux61112  (
    .I0(\lifo2/opcodelifo_5 [13]),
    .I1(\lifo2/opcodelifo_5 [7]),
    .I2(\lifo2/opcodelifo_5 [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux61111_434 )
  );
  LUT5 #(
    .INIT ( 32'hAAF0AACC ))
  \lifo2/mux6011  (
    .I0(\lifo2/opcodelifo_5 [3]),
    .I1(\lifo2/opcodelifo_5 [15]),
    .I2(\lifo2/opcodelifo_5 [9]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux601 )
  );
  LUT5 #(
    .INIT ( 32'hF0AACCF0 ))
  \lifo2/mux6012  (
    .I0(\lifo2/opcodelifo_5 [12]),
    .I1(\lifo2/opcodelifo_5 [6]),
    .I2(\lifo2/opcodelifo_5 [0]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux6011_436 )
  );
  LUT5 #(
    .INIT ( 32'hAAF0AACC ))
  \lifo2/mux5811  (
    .I0(\lifo2/lifo_5 [10]),
    .I1(\lifo2/lifo_5 [34]),
    .I2(\lifo2/lifo_5 [22]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux581 )
  );
  LUT5 #(
    .INIT ( 32'hF0CCAAF0 ))
  \lifo2/mux5812  (
    .I0(\lifo2/lifo_5 [16]),
    .I1(\lifo2/lifo_5 [28]),
    .I2(\lifo2/lifo_5 [4]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux5811_438 )
  );
  LUT5 #(
    .INIT ( 32'hAAF0AACC ))
  \lifo2/mux5711  (
    .I0(\lifo2/lifo_5 [9]),
    .I1(\lifo2/lifo_5 [33]),
    .I2(\lifo2/lifo_5 [21]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux571 )
  );
  LUT5 #(
    .INIT ( 32'hF0CCAAF0 ))
  \lifo2/mux5712  (
    .I0(\lifo2/lifo_5 [15]),
    .I1(\lifo2/lifo_5 [27]),
    .I2(\lifo2/lifo_5 [3]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux5711_440 )
  );
  LUT5 #(
    .INIT ( 32'hAAF0AACC ))
  \lifo2/mux5611  (
    .I0(\lifo2/lifo_5 [8]),
    .I1(\lifo2/lifo_5 [32]),
    .I2(\lifo2/lifo_5 [20]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux561 )
  );
  LUT5 #(
    .INIT ( 32'hF0CCAAF0 ))
  \lifo2/mux5612  (
    .I0(\lifo2/lifo_5 [14]),
    .I1(\lifo2/lifo_5 [26]),
    .I2(\lifo2/lifo_5 [2]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux5611_442 )
  );
  LUT5 #(
    .INIT ( 32'hAAF0AACC ))
  \lifo2/mux5511  (
    .I0(\lifo2/lifo_5 [7]),
    .I1(\lifo2/lifo_5 [31]),
    .I2(\lifo2/lifo_5 [19]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux551 )
  );
  LUT5 #(
    .INIT ( 32'hF0CCAAF0 ))
  \lifo2/mux5512  (
    .I0(\lifo2/lifo_5 [13]),
    .I1(\lifo2/lifo_5 [25]),
    .I2(\lifo2/lifo_5 [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux5511_444 )
  );
  LUT5 #(
    .INIT ( 32'hF0CCF0AA ))
  \lifo2/mux5411  (
    .I0(\lifo2/lifo_5 [30]),
    .I1(\lifo2/lifo_5 [18]),
    .I2(\lifo2/lifo_5 [6]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux541 )
  );
  LUT5 #(
    .INIT ( 32'hF0CCAAF0 ))
  \lifo2/mux5412  (
    .I0(\lifo2/lifo_5 [12]),
    .I1(\lifo2/lifo_5 [24]),
    .I2(\lifo2/lifo_5 [0]),
    .I3(\lifo2/pointer [2]),
    .I4(\lifo2/pointer [1]),
    .O(\lifo2/mux5411_446 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000220322 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT81  (
    .I0(\LED/counter [0]),
    .I1(\LED/_n0057 [3]),
    .I2(\LED/absresult [1]),
    .I3(\LED/absresult [3]),
    .I4(\LED/absresult [2]),
    .I5(\LED/result[5]_PWR_10_o_div_22/n0183<5>_393 ),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT8 )
  );
  LUT6 #(
    .INIT ( 64'h96965A5A12008402 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT82  (
    .I0(\LED/_n0057 [3]),
    .I1(\LED/absresult [1]),
    .I2(\LED/absresult [3]),
    .I3(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_386 ),
    .I4(\LED/absresult [2]),
    .I5(\LED/result[5]_PWR_10_o_div_22/n0183<5>_393 ),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT81_448 )
  );
  LUT6 #(
    .INIT ( 64'h8B8F8B8B8A8F8A8A ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT83  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .I2(\LED/opcodesel[2]_PWR_10_o_equal_8_o ),
    .I3(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_386 ),
    .I4(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT8 ),
    .I5(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT81_448 ),
    .O(\LED/counter[1]_PWR_10_o_wide_mux_10_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \LED/result[5]_PWR_10_o_div_22/n0183<5>_SW0  (
    .I0(\lifo2/data_out [4]),
    .I1(\lifo2/data_out [5]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'h0000555500000001 ))
  \LED/result[5]_PWR_10_o_div_22/n0183<5>  (
    .I0(\lifo2/data_out [3]),
    .I1(\lifo2/data_out [2]),
    .I2(\lifo2/data_out [0]),
    .I3(\lifo2/data_out [1]),
    .I4(N18),
    .I5(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>1 ),
    .O(\LED/result[5]_PWR_10_o_div_22/n0183<5>_393 )
  );
  LUT5 #(
    .INIT ( 32'h8DD88888 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT61  (
    .I0(\LED/counter [0]),
    .I1(\LED/_n0057 [3]),
    .I2(\LED/absresult [1]),
    .I3(\LED/absresult [2]),
    .I4(\LED/result[5]_PWR_10_o_div_22/n0183<5>_393 ),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'h000015CDDC510000 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT62  (
    .I0(\LED/counter [0]),
    .I1(\LED/_n0057 [3]),
    .I2(\LED/absresult [1]),
    .I3(\LED/absresult [3]),
    .I4(\LED/absresult [2]),
    .I5(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_386 ),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT61_451 )
  );
  LUT5 #(
    .INIT ( 32'h11011100 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT63  (
    .I0(\LED/counter [1]),
    .I1(\LED/opcodesel[2]_PWR_10_o_equal_8_o ),
    .I2(\LED/result[5]_PWR_10_o_div_22/n0183<5>_393 ),
    .I3(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT6 ),
    .I4(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT61_451 ),
    .O(\LED/counter[1]_PWR_10_o_wide_mux_10_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF05FFFF5A15 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT41  (
    .I0(\LED/_n0057 [3]),
    .I1(\LED/absresult [1]),
    .I2(\LED/absresult [3]),
    .I3(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_386 ),
    .I4(\LED/result[5]_PWR_10_o_div_22/n0183<5>_393 ),
    .I5(\LED/absresult [2]),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT4 )
  );
  LUT6 #(
    .INIT ( 64'h000000008888A808 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT43  (
    .I0(\LED/absresult [1]),
    .I1(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT42_453 ),
    .I2(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_386 ),
    .I3(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT41_385 ),
    .I4(\LED/absresult [2]),
    .I5(\LED/result[5]_PWR_10_o_div_22/n0183<5>_393 ),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT43_454 )
  );
  LUT6 #(
    .INIT ( 64'h3333010033330010 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT44  (
    .I0(\LED/counter [0]),
    .I1(\LED/absresult [1]),
    .I2(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_386 ),
    .I3(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT41_385 ),
    .I4(\LED/result[5]_PWR_10_o_div_22/n0183<5>_393 ),
    .I5(\LED/absresult [2]),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT44_455 )
  );
  LUT6 #(
    .INIT ( 64'h8F8F8F8F8F8F8E8A ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT45  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .I2(\LED/opcodesel[2]_PWR_10_o_equal_8_o ),
    .I3(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT4 ),
    .I4(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT44_455 ),
    .I5(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT43_454 ),
    .O(\LED/counter[1]_PWR_10_o_wide_mux_10_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_SW0  (
    .I0(\lifo2/data_out [1]),
    .I1(\lifo2/data_out [0]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h88AA88AA56AA55AA ))
  \LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>  (
    .I0(\lifo2/data_out [4]),
    .I1(\lifo2/data_out [3]),
    .I2(\lifo2/data_out [2]),
    .I3(\lifo2/data_out [5]),
    .I4(N20),
    .I5(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>1 ),
    .O(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_386 )
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
  IBUF   writein_IBUF (
    .I(writein),
    .O(writein_IBUF_7)
  );
  IBUF   readin_IBUF (
    .I(readin),
    .O(readin_IBUF_8)
  );
  IBUF   reset_n_IBUF (
    .I(reset_n),
    .O(reset_n_IBUF_10)
  );
  IBUF   flag_reset_IBUF (
    .I(flag_reset),
    .O(flag_reset_IBUF_11)
  );
  IBUF   read_flag_reset_IBUF (
    .I(read_flag_reset),
    .O(read_flag_reset_IBUF_12)
  );
  OBUF   display_7_OBUF (
    .I(display_7_OBUF_37),
    .O(display[7])
  );
  OBUF   display_6_OBUF (
    .I(display_6_OBUF_38),
    .O(display[6])
  );
  OBUF   display_5_OBUF (
    .I(display_5_OBUF_39),
    .O(display[5])
  );
  OBUF   display_4_OBUF (
    .I(display_4_OBUF_40),
    .O(display[4])
  );
  OBUF   display_3_OBUF (
    .I(display_3_OBUF_41),
    .O(display[3])
  );
  OBUF   display_2_OBUF (
    .I(display_2_OBUF_42),
    .O(display[2])
  );
  OBUF   display_1_OBUF (
    .I(display_1_OBUF_43),
    .O(display[1])
  );
  OBUF   display_0_OBUF (
    .I(display_0_OBUF_45),
    .O(display[0])
  );
  OBUF   displayctl_3_OBUF (
    .I(\LED/ctl [3]),
    .O(displayctl[3])
  );
  OBUF   displayctl_2_OBUF (
    .I(\LED/ctl [2]),
    .O(displayctl[2])
  );
  OBUF   displayctl_1_OBUF (
    .I(\LED/ctl [1]),
    .O(displayctl[1])
  );
  OBUF   displayctl_0_OBUF (
    .I(display_0_OBUF_45),
    .O(displayctl[0])
  );
  OBUF   full_OBUF (
    .I(full_OBUF_30),
    .O(full)
  );
  OBUF   empty_OBUF (
    .I(empty_OBUF_31),
    .O(empty)
  );
  OBUF   flag_OBUF (
    .I(\lifo2/flag_32 ),
    .O(flag)
  );
  OBUF   readflag_OBUF (
    .I(\lifo2/readflag_33 ),
    .O(readflag)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<1>_rt  (
    .I0(\clkdiv1/counter_300hz [1]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_488 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<2>_rt  (
    .I0(\clkdiv1/counter_300hz [2]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_489 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<3>_rt  (
    .I0(\clkdiv1/counter_300hz [3]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_490 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<4>_rt  (
    .I0(\clkdiv1/counter_300hz [4]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_491 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<5>_rt  (
    .I0(\clkdiv1/counter_300hz [5]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_492 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<6>_rt  (
    .I0(\clkdiv1/counter_300hz [6]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_493 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<7>_rt  (
    .I0(\clkdiv1/counter_300hz [7]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_494 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<8>_rt  (
    .I0(\clkdiv1/counter_300hz [8]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_495 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<9>_rt  (
    .I0(\clkdiv1/counter_300hz [9]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_496 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<10>_rt  (
    .I0(\clkdiv1/counter_300hz [10]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_497 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<11>_rt  (
    .I0(\clkdiv1/counter_300hz [11]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_498 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<12>_rt  (
    .I0(\clkdiv1/counter_300hz [12]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_499 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<13>_rt  (
    .I0(\clkdiv1/counter_300hz [13]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_500 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<14>_rt  (
    .I0(\clkdiv1/counter_300hz [14]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_501 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<15>_rt  (
    .I0(\clkdiv1/counter_300hz [15]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_502 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<16>_rt  (
    .I0(\clkdiv1/counter_300hz [16]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_503 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_xor<17>_rt  (
    .I0(\clkdiv1/counter_300hz [17]),
    .O(\clkdiv1/Mcount_counter_300hz_xor<17>_rt_504 )
  );
  FDC   \readdebouncer/pushed  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/pushed_rstpot_505 ),
    .Q(\readdebouncer/pushed_171 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/still_rstpot  (
    .I0(\readdebouncer/_n0066_170 ),
    .I1(\readdebouncer/still_172 ),
    .I2(display_0_OBUF_45),
    .O(\readdebouncer/still_rstpot_506 )
  );
  FDC   \readdebouncer/still  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/still_rstpot_506 ),
    .Q(\readdebouncer/still_172 )
  );
  FDC   \readdebouncer/clean  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/clean_rstpot_507 ),
    .Q(\readdebouncer/clean_19 )
  );
  FDC   \writedebouncer/pushed  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/pushed_rstpot_508 ),
    .Q(\writedebouncer/pushed_239 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \writedebouncer/still_rstpot  (
    .I0(\writedebouncer/_n0066_238 ),
    .I1(\writedebouncer/still_240 ),
    .I2(display_0_OBUF_45),
    .O(\writedebouncer/still_rstpot_509 )
  );
  FDC   \writedebouncer/still  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/still_rstpot_509 ),
    .Q(\writedebouncer/still_240 )
  );
  FDC   \writedebouncer/clean  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\writedebouncer/clean_rstpot_510 ),
    .Q(\writedebouncer/clean_18 )
  );
  FDC   \lifo2/readflag  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/readflag_rstpot_511 ),
    .Q(\lifo2/readflag_33 )
  );
  FDC   \lifo2/flag  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/flag_rstpot_512 ),
    .Q(\lifo2/flag_32 )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux2611  (
    .I0(\lifo2/lifo_5 [26]),
    .I1(\lifo2/mux2411 ),
    .I2(\alu1/Mmux_f34_416 ),
    .I3(\alu1/Mmux_f33_415 ),
    .I4(\alu1/Mmux_f32_414 ),
    .O(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux2011  (
    .I0(\lifo2/lifo_5 [20]),
    .I1(\lifo2/mux1811 ),
    .I2(\alu1/Mmux_f34_416 ),
    .I3(\alu1/Mmux_f33_415 ),
    .I4(\alu1/Mmux_f32_414 ),
    .O(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux1411  (
    .I0(\lifo2/lifo_5 [14]),
    .I1(\lifo2/mux1211 ),
    .I2(\alu1/Mmux_f34_416 ),
    .I3(\alu1/Mmux_f33_415 ),
    .I4(\alu1/Mmux_f32_414 ),
    .O(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux811  (
    .I0(\lifo2/lifo_5 [8]),
    .I1(\lifo2/mux1011 ),
    .I2(\alu1/Mmux_f34_416 ),
    .I3(\alu1/Mmux_f33_415 ),
    .I4(\alu1/Mmux_f32_414 ),
    .O(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux3211  (
    .I0(\lifo2/lifo_5 [32]),
    .I1(\lifo2/_n0121_inv11 ),
    .I2(\alu1/Mmux_f34_416 ),
    .I3(\alu1/Mmux_f33_415 ),
    .I4(\alu1/Mmux_f32_414 ),
    .O(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux2111  (
    .I0(\lifo2/lifo_5 [2]),
    .I1(\lifo2/mux1101 ),
    .I2(\alu1/Mmux_f34_416 ),
    .I3(\alu1/Mmux_f33_415 ),
    .I4(\alu1/Mmux_f32_414 ),
    .O(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \alu1/Mmux_f111  (
    .I0(opcodein[0]),
    .I1(opcodein[1]),
    .I2(opcodein[2]),
    .O(\alu1/Mmux_f11_110 )
  );
  LUT6 #(
    .INIT ( 64'h96663CCC5AAAF000 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<2>11  (
    .I0(A_1_IBUF_1),
    .I1(A_2_IBUF_0),
    .I2(A_0_IBUF_2),
    .I3(B[2]),
    .I4(B[1]),
    .I5(B[0]),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<2> )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \alu1/Mmux_f12  (
    .I0(A_0_IBUF_2),
    .I1(B[2]),
    .I2(B[1]),
    .I3(B[0]),
    .O(\alu1/Mmux_f14 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF7FFF008000 ))
  \lifo2/mux2911  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N37),
    .I4(\alu1/Mmux_f61_422 ),
    .I5(N36),
    .O(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF7FFF008000 ))
  \lifo2/mux2311  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N40),
    .I4(\alu1/Mmux_f61_422 ),
    .I5(N39),
    .O(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF7FFF008000 ))
  \lifo2/mux1711  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N43),
    .I4(\alu1/Mmux_f61_422 ),
    .I5(N42),
    .O(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF7FFF008000 ))
  \lifo2/mux11111  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N46),
    .I4(\alu1/Mmux_f61_422 ),
    .I5(N45),
    .O(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF7FFF008000 ))
  \lifo2/mux3511  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N49),
    .I4(\alu1/Mmux_f61_422 ),
    .I5(N48),
    .O(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF7FFF008000 ))
  \lifo2/mux5111  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N52),
    .I4(\alu1/Mmux_f61_422 ),
    .I5(N51),
    .O(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h00000000F4FD0000 ))
  \alu1/Mmux_f421  (
    .I0(A_2_IBUF_0),
    .I1(B[2]),
    .I2(opcodein[2]),
    .I3(\alu1/Msub_GND_5_o_GND_5_o_sub_2_OUT_cy [1]),
    .I4(\decoder1/Mram_opcodeout1 ),
    .I5(\decoder1/Mram_opcodeout ),
    .O(\alu1/Mmux_f42_107 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alu1/Mmux_f14_SW0_SW0  (
    .I0(B[0]),
    .I1(A_0_IBUF_2),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'h8C0104CD880000CC ))
  \alu1/Mmux_f14_SW0  (
    .I0(opcodein[0]),
    .I1(opcodein[1]),
    .I2(B[2]),
    .I3(opcodein[2]),
    .I4(N54),
    .I5(\alu1/Mmux_f17 ),
    .O(N22)
  );
  LUT4 #(
    .INIT ( 16'h8CEF ))
  \alu1/Msub_GND_5_o_GND_5_o_sub_2_OUT_cy<1>11  (
    .I0(A_0_IBUF_2),
    .I1(A_1_IBUF_1),
    .I2(B_0_1_568),
    .I3(B[1]),
    .O(\alu1/Msub_GND_5_o_GND_5_o_sub_2_OUT_cy [1])
  );
  LUT6 #(
    .INIT ( 64'hEEEEE0EE00000000 ))
  \LED/_n0057<3>1  (
    .I0(\lifo2/data_out [4]),
    .I1(\lifo2/data_out [3]),
    .I2(\lifo2/opcodedata_out [2]),
    .I3(\lifo2/opcodedata_out [1]),
    .I4(\lifo2/opcodedata_out [0]),
    .I5(\lifo2/data_out [5]),
    .O(\LED/_n0057 [3])
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00FFB74800 ))
  \lifo2/mux2811  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N57),
    .I4(N56),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00FFB74800 ))
  \lifo2/mux2211  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N60),
    .I4(N59),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00FFB74800 ))
  \lifo2/mux1611  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N63),
    .I4(N62),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00FFB74800 ))
  \lifo2/mux1012  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N66),
    .I4(N65),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00FFB74800 ))
  \lifo2/mux3411  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N69),
    .I4(N68),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00FFB74800 ))
  \lifo2/mux4111  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> ),
    .I1(\alu1/Mmux_f12_109 ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> ),
    .I3(N72),
    .I4(N71),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hBE3CAA00 ))
  \alu1/Mmux_f43_SW0  (
    .I0(\alu1/Mmux_f4 ),
    .I1(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<2> ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<3> ),
    .I3(\alu1/Mmux_f11_110 ),
    .I4(\alu1/Mmux_f12_109 ),
    .O(N101)
  );
  LUT6 #(
    .INIT ( 64'hAAFFAAFFAAFFAAC0 ))
  \lifo2/mux2711  (
    .I0(\lifo2/lifo_5 [27]),
    .I1(\alu1/Mmux_f13_108 ),
    .I2(\alu1/Mmux_f41_418 ),
    .I3(\lifo2/mux2411 ),
    .I4(N101),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAAFFAAFFAAC0 ))
  \lifo2/mux21111  (
    .I0(\lifo2/lifo_5 [21]),
    .I1(\alu1/Mmux_f13_108 ),
    .I2(\alu1/Mmux_f41_418 ),
    .I3(\lifo2/mux1811 ),
    .I4(N101),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAAFFAAFFAAC0 ))
  \lifo2/mux1511  (
    .I0(\lifo2/lifo_5 [15]),
    .I1(\alu1/Mmux_f13_108 ),
    .I2(\alu1/Mmux_f41_418 ),
    .I3(\lifo2/mux1211 ),
    .I4(N101),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAAFFAAFFAAC0 ))
  \lifo2/mux911  (
    .I0(\lifo2/lifo_5 [9]),
    .I1(\alu1/Mmux_f13_108 ),
    .I2(\alu1/Mmux_f41_418 ),
    .I3(\lifo2/mux1011 ),
    .I4(N101),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAAFFAAFFAAC0 ))
  \lifo2/mux3311  (
    .I0(\lifo2/lifo_5 [33]),
    .I1(\alu1/Mmux_f13_108 ),
    .I2(\alu1/Mmux_f41_418 ),
    .I3(\lifo2/_n0121_inv11 ),
    .I4(N101),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAAFFAAFFAAC0 ))
  \lifo2/mux3111  (
    .I0(\lifo2/lifo_5 [3]),
    .I1(\alu1/Mmux_f13_108 ),
    .I2(\alu1/Mmux_f41_418 ),
    .I3(\lifo2/mux1101 ),
    .I4(N101),
    .I5(\alu1/Mmux_f42_107 ),
    .O(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hAAAEAAAEAAAEAAA2 ))
  \alu1/Mmux_f64_SW0  (
    .I0(\lifo2/lifo_5 [29]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\alu1/Mmux_f62_423 ),
    .I5(\alu1/Mmux_f42_107 ),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'hAABAAABAAABAAA8A ))
  \alu1/Mmux_f64_SW2  (
    .I0(\lifo2/lifo_5 [23]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\alu1/Mmux_f62_423 ),
    .I5(\alu1/Mmux_f42_107 ),
    .O(N39)
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEAAAEAAA2AA ))
  \alu1/Mmux_f64_SW4  (
    .I0(\lifo2/lifo_5 [17]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [1]),
    .I4(\alu1/Mmux_f62_423 ),
    .I5(\alu1/Mmux_f42_107 ),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'hAABAAABAAABAAA8A ))
  \alu1/Mmux_f64_SW6  (
    .I0(\lifo2/lifo_5 [11]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [1]),
    .I4(\alu1/Mmux_f62_423 ),
    .I5(\alu1/Mmux_f42_107 ),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'hAAABAAABAAABAAA8 ))
  \alu1/Mmux_f64_SW8  (
    .I0(\lifo2/lifo_5 [35]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [1]),
    .I4(\alu1/Mmux_f62_423 ),
    .I5(\alu1/Mmux_f42_107 ),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'hAEAAAEAAAEAAA2AA ))
  \alu1/Mmux_f64_SW10  (
    .I0(\lifo2/lifo_5 [5]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\alu1/Mmux_f62_423 ),
    .I5(\alu1/Mmux_f42_107 ),
    .O(N51)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \LED/Mmux_absresult41_SW0  (
    .I0(\lifo2/data_out [1]),
    .I1(\lifo2/data_out [0]),
    .O(N113)
  );
  LUT6 #(
    .INIT ( 64'h5555A595AAAA5A6A ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT411  (
    .I0(\lifo2/data_out [3]),
    .I1(\lifo2/data_out [2]),
    .I2(\lifo2/data_out [5]),
    .I3(N113),
    .I4(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>1 ),
    .I5(\LED/_n0057 [3]),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT41_385 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \LED/Mmux_absresult41_SW1  (
    .I0(\lifo2/data_out [2]),
    .I1(\lifo2/data_out [1]),
    .I2(\lifo2/data_out [0]),
    .O(N115)
  );
  LUT6 #(
    .INIT ( 64'h0A0A0A0655555599 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT42  (
    .I0(\lifo2/data_out [3]),
    .I1(\lifo2/data_out [5]),
    .I2(\LED/counter [0]),
    .I3(N115),
    .I4(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>1 ),
    .I5(\LED/_n0057 [3]),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT42_453 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAABAFFFBAF ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT24_SW0  (
    .I0(\LED/opcodesel[2]_PWR_10_o_equal_8_o ),
    .I1(\LED/absresult [1]),
    .I2(\LED/result[5]_PWR_10_o_div_22/Madd_a[5]_GND_10_o_add_11_OUT[5:0]_lut<4>_386 ),
    .I3(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT41_385 ),
    .I4(\LED/absresult [2]),
    .I5(\LED/result[5]_PWR_10_o_div_22/n0183<5>_393 ),
    .O(N117)
  );
  LUT6 #(
    .INIT ( 64'h3E0E32023E3E3232 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT24  (
    .I0(\lifo2/data_out [0]),
    .I1(\LED/counter [1]),
    .I2(\LED/counter [0]),
    .I3(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT21_457 ),
    .I4(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT2 ),
    .I5(N117),
    .O(\LED/counter[1]_PWR_10_o_wide_mux_10_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hF03C5A3CF0C3A5C3 ))
  \lifo2/Mcount_pointer_xor<2>11  (
    .I0(\lifo2/pointer [0]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/Mcount_pointer_lut [1]),
    .I4(\lifo2/Mcount_pointer_lut [0]),
    .I5(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .O(\lifo2/Result [2])
  );
  LUT5 #(
    .INIT ( 32'hF0F0FFD0 ))
  \lifo2/readflag_rstpot  (
    .I0(read_flag_reset_IBUF_12),
    .I1(flag_reset_IBUF_11),
    .I2(\lifo2/readflag_33 ),
    .I3(\lifo2/_n0121_inv1_262 ),
    .I4(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .O(\lifo2/readflag_rstpot_511 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0200AAAA ))
  \lifo2/flag_rstpot  (
    .I0(\lifo2/flag_32 ),
    .I1(\lifo2/readflag_33 ),
    .I2(empty_OBUF_31),
    .I3(\readdebouncer/clean_19 ),
    .I4(flag_reset_IBUF_11),
    .I5(\lifo2/flag_PWR_7_o_MUX_136_o ),
    .O(\lifo2/flag_rstpot_512 )
  );
  LUT6 #(
    .INIT ( 64'h00F0000000CCAA00 ))
  \alu1/Mmux_f5_SW0  (
    .I0(A_0_IBUF_2),
    .I1(A_2_IBUF_0),
    .I2(A_1_IBUF_1),
    .I3(B[2]),
    .I4(B[1]),
    .I5(B[0]),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT22  (
    .I0(\lifo2/opcodedata_out [1]),
    .I1(\lifo2/opcodedata_out [0]),
    .I2(\lifo2/opcodedata_out [2]),
    .I3(\lifo2/data_out [1]),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT21_457 )
  );
  LUT6 #(
    .INIT ( 64'hE040A000C0000000 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<2>11  (
    .I0(A_2_IBUF_0),
    .I1(A_1_IBUF_1),
    .I2(A_0_IBUF_2),
    .I3(B[2]),
    .I4(B[1]),
    .I5(B[0]),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<2> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \alu1/Mmux_f131  (
    .I0(opcodein[0]),
    .I1(opcodein[1]),
    .I2(opcodein[2]),
    .O(\alu1/Mmux_f13_108 )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \alu1/Mmux_f121  (
    .I0(opcodein[1]),
    .I1(opcodein[0]),
    .I2(opcodein[2]),
    .O(\alu1/Mmux_f12_109 )
  );
  LUT6 #(
    .INIT ( 64'h2202200020002000 ))
  \LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT21  (
    .I0(\lifo2/opcodedata_out [1]),
    .I1(\lifo2/opcodedata_out [0]),
    .I2(\lifo2/opcodedata_out [2]),
    .I3(\lifo2/data_out [2]),
    .I4(\lifo2/data_out [5]),
    .I5(reset_n_IBUF_10),
    .O(\LED/Mmux_counter[1]_PWR_10_o_wide_mux_10_OUT2 )
  );
  LUT5 #(
    .INIT ( 32'h48C0C0C0 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4>1  (
    .I0(A_1_IBUF_1),
    .I1(A_2_IBUF_0),
    .I2(B[2]),
    .I3(B[1]),
    .I4(B[0]),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<4> )
  );
  LUT5 #(
    .INIT ( 32'hE2C06AC0 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<3>1  (
    .I0(A_2_IBUF_0),
    .I1(A_1_IBUF_1),
    .I2(B[2]),
    .I3(B[1]),
    .I4(B[0]),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<3> )
  );
  LUT6 #(
    .INIT ( 64'h5959595951595959 ))
  \lifo2/Mcount_pointer_lut<1>1  (
    .I0(\lifo2/pointer [1]),
    .I1(\writedebouncer/clean_18 ),
    .I2(\lifo2/flag_32 ),
    .I3(\lifo2/pointer [2]),
    .I4(reset_n_IBUF_10),
    .I5(\lifo2/pointer [0]),
    .O(\lifo2/Mcount_pointer_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hA2A6A6A6A6A6A6A6 ))
  \lifo2/Mcount_pointer_lut<0>1  (
    .I0(\lifo2/pointer [0]),
    .I1(\writedebouncer/clean_18 ),
    .I2(\lifo2/flag_32 ),
    .I3(\lifo2/pointer [1]),
    .I4(\lifo2/pointer [2]),
    .I5(reset_n_IBUF_10),
    .O(\lifo2/Mcount_pointer_lut [0])
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \lifo2/Mmux_empty11  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(reset_n_IBUF_10),
    .O(empty_OBUF_31)
  );
  LUT6 #(
    .INIT ( 64'h00A000A000A00080 ))
  \lifo2/_n0121_inv12  (
    .I0(reset_n_IBUF_10),
    .I1(\lifo2/pointer_1_1_566 ),
    .I2(\readdebouncer/clean_19 ),
    .I3(\lifo2/readflag_33 ),
    .I4(\lifo2/pointer_0_2_567 ),
    .I5(\lifo2/pointer [2]),
    .O(\lifo2/_n0121_inv1_262 )
  );
  LUT6 #(
    .INIT ( 64'hEFFF1000FFFF0000 ))
  \LED/Mmux_absresult21  (
    .I0(\lifo2/opcodedata_out [2]),
    .I1(\lifo2/opcodedata_out [0]),
    .I2(\lifo2/opcodedata_out [1]),
    .I3(\lifo2/data_out [0]),
    .I4(\lifo2/data_out [1]),
    .I5(\lifo2/data_out [5]),
    .O(\LED/absresult [1])
  );
  LUT4 #(
    .INIT ( 16'hAA8A ))
  \alu1/Mmux_f17_SW3_SW0  (
    .I0(\lifo2/lifo_5 [6]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [0]),
    .O(N131)
  );
  LUT6 #(
    .INIT ( 64'hAAAEAAA2AAA2AAA2 ))
  \alu1/Mmux_f17_SW3_SW1  (
    .I0(\lifo2/lifo_5 [6]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [0]),
    .I4(B[0]),
    .I5(A_0_IBUF_2),
    .O(N132)
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \alu1/Mmux_f17_SW3_SW2  (
    .I0(\lifo2/pointer [1]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/lifo_5 [6]),
    .O(N133)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0F0F0EE44 ))
  \lifo2/mux6112  (
    .I0(\alu1/Mmux_f12_109 ),
    .I1(N131),
    .I2(N133),
    .I3(N132),
    .I4(\alu1/Mmux_f15_427 ),
    .I5(N22),
    .O(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \alu1/Mmux_f17_SW5_SW0  (
    .I0(\lifo2/lifo_5 [0]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/pointer [1]),
    .O(N139)
  );
  LUT6 #(
    .INIT ( 64'hAEAAA2AAA2AAA2AA ))
  \alu1/Mmux_f17_SW5_SW1  (
    .I0(\lifo2/lifo_5 [0]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [0]),
    .I4(B[0]),
    .I5(A_0_IBUF_2),
    .O(N140)
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \alu1/Mmux_f17_SW5_SW2  (
    .I0(\lifo2/pointer [1]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/lifo_5 [0]),
    .O(N141)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0F0F0EE44 ))
  \lifo2/mux1102  (
    .I0(\alu1/Mmux_f12_109 ),
    .I1(N139),
    .I2(N141),
    .I3(N140),
    .I4(\alu1/Mmux_f15_427 ),
    .I5(N22),
    .O(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFFFD77D ))
  \alu1/Mmux_f25_SW0_SW0  (
    .I0(A_1_IBUF_1),
    .I1(opcodein[0]),
    .I2(opcodein[1]),
    .I3(opcodein[2]),
    .I4(B[0]),
    .O(N143)
  );
  LUT5 #(
    .INIT ( 32'hC33CD77D ))
  \alu1/Mmux_f25_SW0_SW1  (
    .I0(A_1_IBUF_1),
    .I1(opcodein[0]),
    .I2(opcodein[1]),
    .I3(opcodein[2]),
    .I4(B[0]),
    .O(N144)
  );
  LUT6 #(
    .INIT ( 64'h0C3F00000A5F0000 ))
  \alu1/Mmux_f25_SW0  (
    .I0(A_2_IBUF_0),
    .I1(A_0_IBUF_2),
    .I2(N144),
    .I3(N143),
    .I4(\alu1/Mmux_f23 ),
    .I5(\decoder1/Mram_opcodeout ),
    .O(N89)
  );
  LUT6 #(
    .INIT ( 64'h7FFF800000000000 ))
  \alu1/Mmux_f34  (
    .I0(A_0_IBUF_2),
    .I1(A_1_IBUF_1),
    .I2(B[1]),
    .I3(B[0]),
    .I4(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_lut<2> ),
    .I5(\alu1/Mmux_f12_109 ),
    .O(\alu1/Mmux_f33_415 )
  );
  LUT6 #(
    .INIT ( 64'hAAAEAAA2AAA2AAA2 ))
  \alu1/Mmux_f5_SW1_SW0  (
    .I0(\lifo2/lifo_5 [28]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [1]),
    .I4(\alu1/Mmux_f11_110 ),
    .I5(N01),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'hAAAEAAA2AAA2AAA2 ))
  \alu1/Mmux_f5_SW2_SW0  (
    .I0(\lifo2/lifo_5 [22]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [0]),
    .I4(\alu1/Mmux_f11_110 ),
    .I5(N01),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'hAEAAA2AAA2AAA2AA ))
  \alu1/Mmux_f5_SW3_SW0  (
    .I0(\lifo2/lifo_5 [16]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [1]),
    .I4(\alu1/Mmux_f11_110 ),
    .I5(N01),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hAAAEAAA2AAA2AAA2 ))
  \alu1/Mmux_f5_SW4_SW0  (
    .I0(\lifo2/lifo_5 [10]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [0]),
    .I4(\alu1/Mmux_f11_110 ),
    .I5(N01),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hAAABAAA8AAA8AAA8 ))
  \alu1/Mmux_f5_SW5_SW0  (
    .I0(\lifo2/lifo_5 [34]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\alu1/Mmux_f11_110 ),
    .I5(N01),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'hAEAAA2AAA2AAA2AA ))
  \alu1/Mmux_f5_SW6_SW0  (
    .I0(\lifo2/lifo_5 [4]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [0]),
    .I4(\alu1/Mmux_f11_110 ),
    .I5(N01),
    .O(N71)
  );
  LUT4 #(
    .INIT ( 16'hD555 ))
  \clkdiv1/Mcount_counter_300hz_val1  (
    .I0(reset_n_IBUF_10),
    .I1(\clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>1_410 ),
    .I2(\clkdiv1/GND_2_o_GND_2_o_equal_5_o<17>2_411 ),
    .I3(\clkdiv1/GND_2_o_GND_2_o_equal_5_o_0 [17]),
    .O(\clkdiv1/Mcount_counter_300hz_val )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux2511  (
    .I0(\lifo2/lifo_5 [25]),
    .I1(\lifo2/mux2411 ),
    .I2(N89),
    .I3(N161),
    .I4(\alu1/Mmux_f2 ),
    .O(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux1911  (
    .I0(\lifo2/lifo_5 [19]),
    .I1(\lifo2/mux1811 ),
    .I2(N89),
    .I3(N161),
    .I4(\alu1/Mmux_f2 ),
    .O(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux1311  (
    .I0(\lifo2/lifo_5 [13]),
    .I1(\lifo2/mux1211 ),
    .I2(N89),
    .I3(N161),
    .I4(\alu1/Mmux_f2 ),
    .O(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux711  (
    .I0(\lifo2/lifo_5 [7]),
    .I1(\lifo2/mux1011 ),
    .I2(N89),
    .I3(N161),
    .I4(\alu1/Mmux_f2 ),
    .O(\lifo2/lifo[4][5]_data[5]_mux_8_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux31111  (
    .I0(\lifo2/lifo_5 [31]),
    .I1(\lifo2/_n0121_inv11 ),
    .I2(N89),
    .I3(N161),
    .I4(\alu1/Mmux_f2 ),
    .O(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBB8 ))
  \lifo2/mux1111  (
    .I0(\lifo2/lifo_5 [1]),
    .I1(\lifo2/mux1101 ),
    .I2(N89),
    .I3(N161),
    .I4(\alu1/Mmux_f2 ),
    .O(\lifo2/lifo[5][5]_data[5]_mux_7_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFEBC6CA0963C0000 ))
  \alu1/Mmux_f22_SW0  (
    .I0(A_0_IBUF_2),
    .I1(A_1_IBUF_1),
    .I2(B[1]),
    .I3(B[0]),
    .I4(\alu1/Mmux_f13_108 ),
    .I5(\alu1/Mmux_f12_109 ),
    .O(N161)
  );
  LUT6 #(
    .INIT ( 64'h0828080808080808 ))
  \readdebouncer/pushed_rstpot  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/pushed_171 ),
    .I2(\readdebouncer/still_172 ),
    .I3(N2),
    .I4(\readdebouncer/countpushed [4]),
    .I5(\readdebouncer/countpushed [7]),
    .O(\readdebouncer/pushed_rstpot_505 )
  );
  LUT6 #(
    .INIT ( 64'h0828080808080808 ))
  \writedebouncer/pushed_rstpot  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/pushed_239 ),
    .I2(\writedebouncer/still_240 ),
    .I3(N10),
    .I4(\writedebouncer/countpushed [4]),
    .I5(\writedebouncer/countpushed [7]),
    .O(\writedebouncer/pushed_rstpot_508 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \readdebouncer/clean_rstpot  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/pushed_171 ),
    .I2(\readdebouncer/still_172 ),
    .I3(\readdebouncer/clean_19 ),
    .O(\readdebouncer/clean_rstpot_507 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \writedebouncer/clean_rstpot  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/pushed_239 ),
    .I2(\writedebouncer/still_240 ),
    .I3(\writedebouncer/clean_18 ),
    .O(\writedebouncer/clean_rstpot_510 )
  );
  LUT6 #(
    .INIT ( 64'hFEEEECCCC8888000 ))
  \alu1/Mmux_f42  (
    .I0(B[1]),
    .I1(B[2]),
    .I2(A_0_IBUF_2),
    .I3(B[0]),
    .I4(A_1_IBUF_1),
    .I5(A_2_IBUF_0),
    .O(\alu1/Mmux_f41_418 )
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \alu1/Mmux_f64_SW1  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/lifo_5 [29]),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \alu1/Mmux_f64_SW3  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/lifo_5 [23]),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \alu1/Mmux_f64_SW5  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/lifo_5 [17]),
    .O(N43)
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \alu1/Mmux_f64_SW7  (
    .I0(\lifo2/pointer [1]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/lifo_5 [11]),
    .O(N46)
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \alu1/Mmux_f64_SW9  (
    .I0(\lifo2/pointer [0]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/lifo_5 [35]),
    .O(N49)
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \alu1/Mmux_f64_SW11  (
    .I0(\lifo2/pointer [1]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/lifo_5 [5]),
    .O(N52)
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \alu1/Mmux_f5_SW1_SW1  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/lifo_5 [28]),
    .O(N57)
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \alu1/Mmux_f5_SW2_SW1  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/lifo_5 [22]),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \alu1/Mmux_f5_SW3_SW1  (
    .I0(\lifo2/pointer [2]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/lifo_5 [16]),
    .O(N63)
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \alu1/Mmux_f5_SW4_SW1  (
    .I0(\lifo2/pointer [1]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/lifo_5 [10]),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \alu1/Mmux_f5_SW5_SW1  (
    .I0(\lifo2/pointer [0]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/lifo_5 [34]),
    .O(N69)
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \alu1/Mmux_f5_SW6_SW1  (
    .I0(\lifo2/pointer [1]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/lifo_5 [4]),
    .O(N72)
  );
  LUT5 #(
    .INIT ( 32'hAABAAA8A ))
  \lifo2/mux5011  (
    .I0(\lifo2/opcodelifo_5 [14]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/pointer [1]),
    .I4(opcodein[2]),
    .O(\lifo2/opcodelifo[1][2]_opcodedata[2]_mux_18_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hAABAAA8A ))
  \lifo2/mux4711  (
    .I0(\lifo2/opcodelifo_5 [11]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [0]),
    .I4(opcodein[2]),
    .O(\lifo2/opcodelifo[2][2]_opcodedata[2]_mux_17_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hAAEAAA2A ))
  \lifo2/mux4411  (
    .I0(\lifo2/opcodelifo_5 [8]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(opcodein[2]),
    .O(\lifo2/opcodelifo[3][2]_opcodedata[2]_mux_16_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hAABAAA8A ))
  \lifo2/mux41111  (
    .I0(\lifo2/opcodelifo_5 [5]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [0]),
    .I4(opcodein[2]),
    .O(\lifo2/opcodelifo[4][2]_opcodedata[2]_mux_15_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hAAABAAA8 ))
  \lifo2/mux5311  (
    .I0(\lifo2/opcodelifo_5 [17]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(opcodein[2]),
    .O(\lifo2/opcodelifo[0][2]_opcodedata[2]_mux_19_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hAAEAAA2A ))
  \lifo2/mux3811  (
    .I0(\lifo2/opcodelifo_5 [2]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/pointer [1]),
    .I4(opcodein[2]),
    .O(\lifo2/opcodelifo[5][2]_opcodedata[2]_mux_14_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hAABAAA8A ))
  \lifo2/mux4911  (
    .I0(\lifo2/opcodelifo_5 [13]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/pointer [1]),
    .I4(\decoder1/Mram_opcodeout1 ),
    .O(\lifo2/opcodelifo[1][2]_opcodedata[2]_mux_18_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAABAAA8A ))
  \lifo2/mux4811  (
    .I0(\lifo2/opcodelifo_5 [12]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/pointer [1]),
    .I4(\decoder1/Mram_opcodeout ),
    .O(\lifo2/opcodelifo[1][2]_opcodedata[2]_mux_18_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hAABAAA8A ))
  \lifo2/mux4611  (
    .I0(\lifo2/opcodelifo_5 [10]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [0]),
    .I4(\decoder1/Mram_opcodeout1 ),
    .O(\lifo2/opcodelifo[2][2]_opcodedata[2]_mux_17_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAABAAA8A ))
  \lifo2/mux4511  (
    .I0(\lifo2/opcodelifo_5 [9]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [0]),
    .I4(\decoder1/Mram_opcodeout ),
    .O(\lifo2/opcodelifo[2][2]_opcodedata[2]_mux_17_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hAAEAAA2A ))
  \lifo2/mux4311  (
    .I0(\lifo2/opcodelifo_5 [7]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\decoder1/Mram_opcodeout1 ),
    .O(\lifo2/opcodelifo[3][2]_opcodedata[2]_mux_16_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAAEAAA2A ))
  \lifo2/mux4211  (
    .I0(\lifo2/opcodelifo_5 [6]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\decoder1/Mram_opcodeout ),
    .O(\lifo2/opcodelifo[3][2]_opcodedata[2]_mux_16_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hAABAAA8A ))
  \lifo2/mux4011  (
    .I0(\lifo2/opcodelifo_5 [4]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [0]),
    .I4(\decoder1/Mram_opcodeout1 ),
    .O(\lifo2/opcodelifo[4][2]_opcodedata[2]_mux_15_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAABAAA8A ))
  \lifo2/mux3911  (
    .I0(\lifo2/opcodelifo_5 [3]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [2]),
    .I3(\lifo2/pointer [0]),
    .I4(\decoder1/Mram_opcodeout ),
    .O(\lifo2/opcodelifo[4][2]_opcodedata[2]_mux_15_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hAAABAAA8 ))
  \lifo2/mux5211  (
    .I0(\lifo2/opcodelifo_5 [16]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\decoder1/Mram_opcodeout1 ),
    .O(\lifo2/opcodelifo[0][2]_opcodedata[2]_mux_19_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAAABAAA8 ))
  \lifo2/mux51111  (
    .I0(\lifo2/opcodelifo_5 [15]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(\decoder1/Mram_opcodeout ),
    .O(\lifo2/opcodelifo[0][2]_opcodedata[2]_mux_19_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hAAEAAA2A ))
  \lifo2/mux3711  (
    .I0(\lifo2/opcodelifo_5 [1]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/pointer [1]),
    .I4(\decoder1/Mram_opcodeout1 ),
    .O(\lifo2/opcodelifo[5][2]_opcodedata[2]_mux_14_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAAEAAA2A ))
  \lifo2/mux3611  (
    .I0(\lifo2/opcodelifo_5 [0]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/pointer [1]),
    .I4(\decoder1/Mram_opcodeout ),
    .O(\lifo2/opcodelifo[5][2]_opcodedata[2]_mux_14_OUT<0> )
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
  \writedebouncer/Mcount_countpushed_lut<0>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countpushed [0]),
    .O(\writedebouncer/Mcount_countpushed_lut [0])
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
  \writedebouncer/Mcount_countpushed_lut<1>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countpushed [1]),
    .O(\writedebouncer/Mcount_countpushed_lut [1])
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
  \writedebouncer/Mcount_countpushed_lut<2>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countpushed [2]),
    .O(\writedebouncer/Mcount_countpushed_lut [2])
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
  \writedebouncer/Mcount_countpushed_lut<3>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countpushed [3]),
    .O(\writedebouncer/Mcount_countpushed_lut [3])
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
  \writedebouncer/Mcount_countpushed_lut<4>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countpushed [4]),
    .O(\writedebouncer/Mcount_countpushed_lut [4])
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
  \writedebouncer/Mcount_countpushed_lut<5>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countpushed [5]),
    .O(\writedebouncer/Mcount_countpushed_lut [5])
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
  \writedebouncer/Mcount_countpushed_lut<6>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countpushed [6]),
    .O(\writedebouncer/Mcount_countpushed_lut [6])
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
  \writedebouncer/Mcount_countpushed_lut<7>  (
    .I0(writein_IBUF_7),
    .I1(\writedebouncer/countpushed [7]),
    .O(\writedebouncer/Mcount_countpushed_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hAABAAABAAABAAA8A ))
  \lifo2/mux2412  (
    .I0(\lifo2/lifo_5 [24]),
    .I1(\lifo2/pointer [1]),
    .I2(\lifo2/pointer [0]),
    .I3(\lifo2/pointer [2]),
    .I4(N22),
    .I5(N181),
    .O(\lifo2/lifo[1][5]_data[5]_mux_11_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hAABAAABAAABAAA8A ))
  \lifo2/mux1812  (
    .I0(\lifo2/lifo_5 [18]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(N22),
    .I5(N181),
    .O(\lifo2/lifo[2][5]_data[5]_mux_10_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hAAEAAAEAAAEAAA2A ))
  \lifo2/mux1212  (
    .I0(\lifo2/lifo_5 [12]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(N22),
    .I5(N181),
    .O(\lifo2/lifo[3][5]_data[5]_mux_9_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAABAAABAAA8 ))
  \lifo2/mux3011  (
    .I0(\lifo2/lifo_5 [30]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer [2]),
    .I4(N22),
    .I5(N181),
    .O(\lifo2/lifo[0][5]_data[5]_mux_12_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hA8A0008080000000 ))
  \alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3>11  (
    .I0(B[2]),
    .I1(A_2_IBUF_0),
    .I2(A_1_IBUF_1),
    .I3(B[0]),
    .I4(A_0_IBUF_2),
    .I5(B[1]),
    .O(\alu1/Mmult_a[2]_b[2]_MuLt_2_OUT_Madd1_cy<3> )
  );
  LUT5 #(
    .INIT ( 32'h30102000 ))
  \alu1/Mmux_f13  (
    .I0(opcodein[0]),
    .I1(opcodein[1]),
    .I2(opcodein[2]),
    .I3(\alu1/Mmux_f14 ),
    .I4(\alu1/Mmux_f1 ),
    .O(\alu1/Mmux_f15_427 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00200000 ))
  \lifo2/mux2412_SW1  (
    .I0(A_0_IBUF_2),
    .I1(opcodein[1]),
    .I2(opcodein[0]),
    .I3(opcodein[2]),
    .I4(B[0]),
    .I5(\alu1/Mmux_f15_427 ),
    .O(N181)
  );
  LUT6 #(
    .INIT ( 64'hC3C3693CC3C3C369 ))
  \alu1/Mmux_f32  (
    .I0(A_1_IBUF_1),
    .I1(A_2_IBUF_0),
    .I2(B[2]),
    .I3(B[1]),
    .I4(opcodein[2]),
    .I5(\alu1/Msub_GND_5_o_GND_5_o_sub_2_OUT_cy [0]),
    .O(\alu1/Mmux_f31_413 )
  );
  FDCE   \lifo2/pointer_2_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0121_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/Result [2]),
    .Q(\lifo2/pointer_2_1_554 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAEAAAFFFFFFFF ))
  \lifo2/_n0146_inv1_cepot  (
    .I0(\lifo2/flag_32 ),
    .I1(reset_n_IBUF_10),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/pointer_2_1_554 ),
    .I4(\lifo2/pointer [0]),
    .I5(\writedebouncer/clean_18 ),
    .O(\lifo2/_n0146_inv1_cepot_555 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo2/opcodedata_out_2_dpot  (
    .I0(\lifo2/_n0121_inv1_262 ),
    .I1(\lifo2/opcodedata_out [2]),
    .I2(\lifo2/GND_7_o_X_6_o_wide_mux_27_OUT [2]),
    .O(\lifo2/opcodedata_out_2_dpot_558 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lifo2/data_out_5_dpot  (
    .I0(\lifo2/_n0121_inv1_262 ),
    .I1(\lifo2/data_out [5]),
    .I2(\lifo2/GND_7_o_X_6_o_wide_mux_25_OUT [5]),
    .O(\lifo2/data_out_5_dpot_564 )
  );
  FDCE   \lifo2/pointer_0_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0121_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/Result [0]),
    .Q(\lifo2/pointer_0_1_565 )
  );
  LUT5 #(
    .INIT ( 32'hF3C0AAAA ))
  \lifo2/data_out_0_dpot  (
    .I0(\lifo2/data_out [0]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/mux541 ),
    .I3(\lifo2/mux5411_446 ),
    .I4(\lifo2/_n0121_inv1_262 ),
    .O(\lifo2/data_out_0_dpot_559 )
  );
  LUT5 #(
    .INIT ( 32'hF3C0AAAA ))
  \lifo2/data_out_1_dpot  (
    .I0(\lifo2/data_out [1]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/mux551 ),
    .I3(\lifo2/mux5511_444 ),
    .I4(\lifo2/_n0121_inv1_262 ),
    .O(\lifo2/data_out_1_dpot_560 )
  );
  LUT5 #(
    .INIT ( 32'hF3C0AAAA ))
  \lifo2/data_out_2_dpot  (
    .I0(\lifo2/data_out [2]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/mux561 ),
    .I3(\lifo2/mux5611_442 ),
    .I4(\lifo2/_n0121_inv1_262 ),
    .O(\lifo2/data_out_2_dpot_561 )
  );
  LUT5 #(
    .INIT ( 32'hF3C0AAAA ))
  \lifo2/data_out_3_dpot  (
    .I0(\lifo2/data_out [3]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/mux571 ),
    .I3(\lifo2/mux5711_440 ),
    .I4(\lifo2/_n0121_inv1_262 ),
    .O(\lifo2/data_out_3_dpot_562 )
  );
  LUT5 #(
    .INIT ( 32'hF3C0AAAA ))
  \lifo2/data_out_4_dpot  (
    .I0(\lifo2/data_out [4]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/mux581 ),
    .I3(\lifo2/mux5811_438 ),
    .I4(\lifo2/_n0121_inv1_262 ),
    .O(\lifo2/data_out_4_dpot_563 )
  );
  LUT5 #(
    .INIT ( 32'hF3C0AAAA ))
  \lifo2/opcodedata_out_0_dpot  (
    .I0(\lifo2/opcodedata_out [0]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/mux601 ),
    .I3(\lifo2/mux6011_436 ),
    .I4(\lifo2/_n0121_inv1_262 ),
    .O(\lifo2/opcodedata_out_0_dpot_556 )
  );
  LUT5 #(
    .INIT ( 32'hF3C0AAAA ))
  \lifo2/opcodedata_out_1_dpot  (
    .I0(\lifo2/opcodedata_out [1]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/mux6111 ),
    .I3(\lifo2/mux61111_434 ),
    .I4(\lifo2/_n0121_inv1_262 ),
    .O(\lifo2/opcodedata_out_1_dpot_557 )
  );
  FDCE   \lifo2/pointer_1_1  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0121_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/Result [1]),
    .Q(\lifo2/pointer_1_1_566 )
  );
  FDCE   \lifo2/pointer_0_2  (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(\lifo2/_n0121_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo2/Result [0]),
    .Q(\lifo2/pointer_0_2_567 )
  );
  FDCE   B_0_1 (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_0_IBUF_5),
    .Q(B_0_1_568)
  );
  FDCE   opcodein_2_1 (
    .C(\clkdiv1/clk_300hz_BUFG_20 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_2_IBUF_3),
    .Q(opcodein_2_1_569)
  );
  BUFG   \clkdiv1/clk_300hz_BUFG  (
    .O(\clkdiv1/clk_300hz_BUFG_20 ),
    .I(\clkdiv1/clk_300hz_570 )
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
  INV   \clkdiv1/clk_300hz_INV_5_o1_INV_0  (
    .I(\clkdiv1/clk_300hz_570 ),
    .O(\clkdiv1/clk_300hz_INV_5_o )
  );
  INV   \readdebouncer/noisy_inv1_INV_0  (
    .I(readin_IBUF_8),
    .O(\readdebouncer/noisy_inv )
  );
  INV   \writedebouncer/noisy_inv1_INV_0  (
    .I(writein_IBUF_7),
    .O(\writedebouncer/noisy_inv )
  );
  MUXF7   \lifo2/mux5913  (
    .I0(N189),
    .I1(N190),
    .S(\lifo2/pointer [2]),
    .O(\lifo2/GND_7_o_X_6_o_wide_mux_25_OUT [5])
  );
  LUT6 #(
    .INIT ( 64'hFD75EC64B931A820 ))
  \lifo2/mux5913_F  (
    .I0(\lifo2/pointer [1]),
    .I1(\lifo2/pointer [0]),
    .I2(\lifo2/lifo_5 [29]),
    .I3(\lifo2/lifo_5 [23]),
    .I4(\lifo2/lifo_5 [5]),
    .I5(\lifo2/lifo_5 [35]),
    .O(N189)
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \lifo2/mux5913_G  (
    .I0(\lifo2/pointer [0]),
    .I1(\lifo2/lifo_5 [5]),
    .I2(\lifo2/pointer [1]),
    .I3(\lifo2/lifo_5 [17]),
    .I4(\lifo2/lifo_5 [11]),
    .O(N190)
  );
  MUXF7   \lifo2/mux6213  (
    .I0(N191),
    .I1(N192),
    .S(\lifo2/pointer [1]),
    .O(\lifo2/GND_7_o_X_6_o_wide_mux_27_OUT [2])
  );
  LUT6 #(
    .INIT ( 64'hFD75EC64B931A820 ))
  \lifo2/mux6213_F  (
    .I0(\lifo2/pointer [0]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/opcodelifo_5 [17]),
    .I3(\lifo2/opcodelifo_5 [5]),
    .I4(\lifo2/opcodelifo_5 [2]),
    .I5(\lifo2/opcodelifo_5 [8]),
    .O(N191)
  );
  LUT6 #(
    .INIT ( 64'hFD75EC64B931A820 ))
  \lifo2/mux6213_G  (
    .I0(\lifo2/pointer [0]),
    .I1(\lifo2/pointer [2]),
    .I2(\lifo2/opcodelifo_5 [11]),
    .I3(\lifo2/opcodelifo_5 [5]),
    .I4(\lifo2/opcodelifo_5 [14]),
    .I5(\lifo2/opcodelifo_5 [2]),
    .O(N192)
  );
  MUXF7   \alu1/Mmux_f21  (
    .I0(N193),
    .I1(N0),
    .S(\decoder1/Mram_opcodeout ),
    .O(\alu1/Mmux_f2 )
  );
  LUT6 #(
    .INIT ( 64'h8A88202220228A88 ))
  \alu1/Mmux_f21_F  (
    .I0(\decoder1/Mram_opcodeout1 ),
    .I1(opcodein[2]),
    .I2(A_0_IBUF_2),
    .I3(B[0]),
    .I4(A_1_IBUF_1),
    .I5(B[1]),
    .O(N193)
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

