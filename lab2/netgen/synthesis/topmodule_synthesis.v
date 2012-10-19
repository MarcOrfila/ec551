////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.76xd
//  \   \         Application: netgen
//  /   /         Filename: topmodule_synthesis.v
// /___/   /\     Timestamp: Fri Oct 19 01:02:24 2012
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
  mode, executein, readin, clk, reset_n, A, Bopcode, display, displayctl, resulttbLIFOLED, opcodetbLIFOLED, opcodetbALULIFO, FtbALULIFO
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
  output [5 : 0] resulttbLIFOLED;
  output [2 : 0] opcodetbLIFOLED;
  output [2 : 0] opcodetbALULIFO;
  output [5 : 0] FtbALULIFO;
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
  wire \clkdiv1/clk_300hz_27 ;
  wire displayctl_2_OBUF_37;
  wire displayctl_1_OBUF_38;
  wire displayctl_0_OBUF_39;
  wire display_7_OBUF_40;
  wire display_6_OBUF_41;
  wire display_5_OBUF_42;
  wire display_4_OBUF_43;
  wire display_3_OBUF_44;
  wire display_2_OBUF_45;
  wire display_1_OBUF_46;
  wire displayctl_3_OBUF_47;
  wire display_0_OBUF_48;
  wire mode_inv;
  wire \decoder1/Mram_opcodeout ;
  wire \decoder1/Mram_opcodeout1 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_107 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_108 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_109 ;
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
  wire \readdebouncer/Mcount_countpushed25 ;
  wire \readdebouncer/Mcount_countpushed24 ;
  wire \readdebouncer/Mcount_countpushed23 ;
  wire \readdebouncer/Mcount_countpushed22 ;
  wire \readdebouncer/Mcount_countpushed21 ;
  wire \readdebouncer/Mcount_countpushed20 ;
  wire \readdebouncer/Mcount_countpushed19 ;
  wire \readdebouncer/Mcount_countpushed18 ;
  wire \readdebouncer/Mcount_countpushed17 ;
  wire \readdebouncer/Mcount_countpushed16 ;
  wire \readdebouncer/Mcount_countpushed15 ;
  wire \readdebouncer/Mcount_countpushed14 ;
  wire \readdebouncer/Mcount_countpushed13 ;
  wire \readdebouncer/Mcount_countpushed12 ;
  wire \readdebouncer/Mcount_countpushed11 ;
  wire \readdebouncer/Mcount_countpushed10 ;
  wire \readdebouncer/Mcount_countpushed9 ;
  wire \readdebouncer/Mcount_countpushed8 ;
  wire \readdebouncer/Mcount_countpushed7 ;
  wire \readdebouncer/Mcount_countpushed6 ;
  wire \readdebouncer/Mcount_countpushed5 ;
  wire \readdebouncer/Mcount_countpushed4 ;
  wire \readdebouncer/Mcount_countpushed3 ;
  wire \readdebouncer/Mcount_countpushed2 ;
  wire \readdebouncer/Mcount_countpushed1 ;
  wire \readdebouncer/Mcount_countpushed ;
  wire \readdebouncer/_n0063_inv ;
  wire \readdebouncer/Mcount_countstill25 ;
  wire \readdebouncer/Mcount_countstill24 ;
  wire \readdebouncer/Mcount_countstill23 ;
  wire \readdebouncer/Mcount_countstill22 ;
  wire \readdebouncer/Mcount_countstill21 ;
  wire \readdebouncer/Mcount_countstill20 ;
  wire \readdebouncer/Mcount_countstill19 ;
  wire \readdebouncer/Mcount_countstill18 ;
  wire \readdebouncer/Mcount_countstill17 ;
  wire \readdebouncer/Mcount_countstill16 ;
  wire \readdebouncer/Mcount_countstill15 ;
  wire \readdebouncer/Mcount_countstill14 ;
  wire \readdebouncer/Mcount_countstill13 ;
  wire \readdebouncer/Mcount_countstill12 ;
  wire \readdebouncer/Mcount_countstill11 ;
  wire \readdebouncer/Mcount_countstill10 ;
  wire \readdebouncer/Mcount_countstill9 ;
  wire \readdebouncer/Mcount_countstill8 ;
  wire \readdebouncer/Mcount_countstill7 ;
  wire \readdebouncer/Mcount_countstill6 ;
  wire \readdebouncer/Mcount_countstill5 ;
  wire \readdebouncer/Mcount_countstill4 ;
  wire \readdebouncer/Mcount_countstill3 ;
  wire \readdebouncer/Mcount_countstill2 ;
  wire \readdebouncer/Mcount_countstill1 ;
  wire \readdebouncer/Mcount_countstill ;
  wire \readdebouncer/noisy_inv ;
  wire \readdebouncer/_n0066_inv ;
  wire \readdebouncer/pushed_286 ;
  wire \readdebouncer/still_287 ;
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
  wire \executedebouncer/pushed_497 ;
  wire \executedebouncer/still_498 ;
  wire \lifo/_n0129_inv ;
  wire \lifo/_n0139_inv ;
  wire \lifo/top[2]_X_6_o_wide_mux_7_OUT<0> ;
  wire \lifo/top[2]_X_6_o_wide_mux_7_OUT<1> ;
  wire \lifo/top[2]_X_6_o_wide_mux_7_OUT<2> ;
  wire \lifo/top[2]_X_6_o_wide_mux_7_OUT<3> ;
  wire \lifo/top[2]_X_6_o_wide_mux_7_OUT<4> ;
  wire \lifo/top[2]_X_6_o_wide_mux_7_OUT<5> ;
  wire \lifo/top[2]_X_6_o_wide_mux_8_OUT<0> ;
  wire \lifo/top[2]_X_6_o_wide_mux_8_OUT<1> ;
  wire \lifo/top[2]_X_6_o_wide_mux_8_OUT<2> ;
  wire \lifo/_n0108 ;
  wire \LED/Mmux_currentdigit<0>2212 ;
  wire \LED/Mmux_currentdigit<0>214 ;
  wire \LED/Mram_segments41_616 ;
  wire \LED/Mcount_counter1 ;
  wire \LED/Mcount_counter ;
  wire \LED/reset_n_inv ;
  wire \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ;
  wire \clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT3 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT32 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33_629 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT4 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41_631 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43_632 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT2 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21_634 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22_635 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23_636 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT6 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61_638 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62_639 ;
  wire N01;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14_641 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15_642 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16_643 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17_644 ;
  wire \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT18 ;
  wire \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_647 ;
  wire \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_648 ;
  wire \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_649 ;
  wire \readdebouncer/_n00661_650 ;
  wire \readdebouncer/_n00662_651 ;
  wire \readdebouncer/_n00663_652 ;
  wire \readdebouncer/_n00664_653 ;
  wire \readdebouncer/_n00665_654 ;
  wire \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_656 ;
  wire \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_657 ;
  wire \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_658 ;
  wire \executedebouncer/_n00661_659 ;
  wire \executedebouncer/_n00662_660 ;
  wire \executedebouncer/_n00663_661 ;
  wire \executedebouncer/_n00664_662 ;
  wire \executedebouncer/_n00665_663 ;
  wire \lifo/mux621 ;
  wire \lifo/mux6111 ;
  wire \lifo/mux601 ;
  wire \lifo/mux591 ;
  wire \lifo/mux581 ;
  wire \lifo/mux571 ;
  wire \lifo/mux561 ;
  wire \lifo/mux551 ;
  wire \lifo/mux541 ;
  wire \LED/Mmux_currentdigit<0>26_673 ;
  wire \LED/Mmux_currentdigit<0>261_674 ;
  wire \LED/Mmux_currentdigit<0>262_675 ;
  wire \LED/Mmux_currentdigit<0>2 ;
  wire \LED/Mmux_currentdigit<0>21_677 ;
  wire \LED/Mmux_currentdigit<0>22 ;
  wire \LED/Mmux_currentdigit<0>23_679 ;
  wire \LED/Mmux_currentdigit<0>24_680 ;
  wire N2;
  wire \LED/Mmux_currentdigit<0>222_682 ;
  wire \LED/Mmux_currentdigit<0>223_683 ;
  wire \LED/Mmux_currentdigit<0>224_684 ;
  wire \LED/Mmux_currentdigit<0>225_685 ;
  wire \LED/Mmux_currentdigit<0>228_686 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<1>_rt_728 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<2>_rt_729 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<3>_rt_730 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<4>_rt_731 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<5>_rt_732 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<6>_rt_733 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<7>_rt_734 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<8>_rt_735 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<9>_rt_736 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<10>_rt_737 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<11>_rt_738 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<12>_rt_739 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<13>_rt_740 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<14>_rt_741 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<15>_rt_742 ;
  wire \clkdiv1/Mcount_counter_300hz_cy<16>_rt_743 ;
  wire \clkdiv1/Mcount_counter_300hz_xor<17>_rt_744 ;
  wire \readdebouncer/pushed_rstpot_745 ;
  wire \readdebouncer/still_rstpot_746 ;
  wire \readdebouncer/clean_rstpot_747 ;
  wire \executedebouncer/pushed_rstpot_748 ;
  wire \executedebouncer/still_rstpot_749 ;
  wire \executedebouncer/clean_rstpot_750 ;
  wire \clkdiv1/clk_300hz_rstpot1_751 ;
  wire \readdebouncer/countstill_11_rstpot_752 ;
  wire \readdebouncer/countstill_10_rstpot_753 ;
  wire \readdebouncer/countstill_9_rstpot_754 ;
  wire \readdebouncer/countstill_8_rstpot_755 ;
  wire \readdebouncer/countstill_7_rstpot_756 ;
  wire \readdebouncer/countstill_6_rstpot_757 ;
  wire \readdebouncer/countstill_5_rstpot_758 ;
  wire \readdebouncer/countstill_4_rstpot_759 ;
  wire \readdebouncer/countstill_3_rstpot_760 ;
  wire \readdebouncer/countstill_2_rstpot_761 ;
  wire \readdebouncer/countstill_1_rstpot_762 ;
  wire \readdebouncer/countstill_0_rstpot_763 ;
  wire \executedebouncer/countstill_11_rstpot_764 ;
  wire \executedebouncer/countstill_10_rstpot_765 ;
  wire \executedebouncer/countstill_9_rstpot_766 ;
  wire \executedebouncer/countstill_8_rstpot_767 ;
  wire \executedebouncer/countstill_7_rstpot_768 ;
  wire \executedebouncer/countstill_6_rstpot_769 ;
  wire \executedebouncer/countstill_5_rstpot_770 ;
  wire \executedebouncer/countstill_4_rstpot_771 ;
  wire \executedebouncer/countstill_3_rstpot_772 ;
  wire \executedebouncer/countstill_2_rstpot_773 ;
  wire \executedebouncer/countstill_1_rstpot_774 ;
  wire \executedebouncer/countstill_0_rstpot_775 ;
  wire \readdebouncer/countstill_12_rstpot_776 ;
  wire \executedebouncer/countstill_12_rstpot_777 ;
  wire \readdebouncer/countstill_13_rstpot_778 ;
  wire \executedebouncer/countstill_13_rstpot_779 ;
  wire \readdebouncer/countstill_14_rstpot_780 ;
  wire \executedebouncer/countstill_14_rstpot_781 ;
  wire \readdebouncer/countstill_15_rstpot_782 ;
  wire \executedebouncer/countstill_15_rstpot_783 ;
  wire \readdebouncer/countstill_16_rstpot_784 ;
  wire \executedebouncer/countstill_16_rstpot_785 ;
  wire \readdebouncer/countstill_17_rstpot_786 ;
  wire \executedebouncer/countstill_17_rstpot_787 ;
  wire \readdebouncer/countstill_18_rstpot_788 ;
  wire \executedebouncer/countstill_18_rstpot_789 ;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N13;
  wire N15;
  wire N16;
  wire N18;
  wire N19;
  wire N21;
  wire N22;
  wire N24;
  wire N26;
  wire N28;
  wire \readdebouncer/_n0066_inv1_805 ;
  wire \executedebouncer/_n0066_inv1_806 ;
  wire \lifo/top_0_1_807 ;
  wire \lifo/_n0120_inv1_rstpot_808 ;
  wire \lifo/Fmem_0_0_dpot_809 ;
  wire \lifo/Fmem_0_1_dpot_810 ;
  wire \lifo/Fmem_0_2_dpot_811 ;
  wire \lifo/Fmem_0_3_dpot_812 ;
  wire \lifo/Fmem_0_4_dpot_813 ;
  wire \lifo/Fmem_0_5_dpot_814 ;
  wire \lifo/Fmem_0_6_dpot_815 ;
  wire \lifo/Fmem_0_7_dpot_816 ;
  wire \lifo/Fmem_0_8_dpot_817 ;
  wire \lifo/Fmem_0_9_dpot_818 ;
  wire \lifo/Fmem_0_10_dpot_819 ;
  wire \lifo/Fmem_0_11_dpot_820 ;
  wire \lifo/Fmem_0_12_dpot_821 ;
  wire \lifo/Fmem_0_13_dpot_822 ;
  wire \lifo/Fmem_0_14_dpot_823 ;
  wire \lifo/Fmem_0_15_dpot_824 ;
  wire \lifo/Fmem_0_16_dpot_825 ;
  wire \lifo/Fmem_0_17_dpot_826 ;
  wire \lifo/Fmem_0_18_dpot_827 ;
  wire \lifo/Fmem_0_19_dpot_828 ;
  wire \lifo/Fmem_0_20_dpot_829 ;
  wire \lifo/Fmem_0_21_dpot_830 ;
  wire \lifo/Fmem_0_22_dpot_831 ;
  wire \lifo/Fmem_0_23_dpot_832 ;
  wire \lifo/Fmem_0_24_dpot_833 ;
  wire \lifo/Fmem_0_25_dpot_834 ;
  wire \lifo/Fmem_0_26_dpot_835 ;
  wire \lifo/Fmem_0_27_dpot_836 ;
  wire \lifo/Fmem_0_28_dpot_837 ;
  wire \lifo/Fmem_0_29_dpot_838 ;
  wire \lifo/Opmem_0_0_dpot_839 ;
  wire \lifo/Opmem_0_1_dpot_840 ;
  wire \lifo/Opmem_0_2_dpot_841 ;
  wire \lifo/Opmem_0_3_dpot_842 ;
  wire \lifo/Opmem_0_4_dpot_843 ;
  wire \lifo/Opmem_0_5_dpot_844 ;
  wire \lifo/Opmem_0_6_dpot_845 ;
  wire \lifo/Opmem_0_7_dpot_846 ;
  wire \lifo/Opmem_0_8_dpot_847 ;
  wire \lifo/Opmem_0_9_dpot_848 ;
  wire \lifo/Opmem_0_10_dpot_849 ;
  wire \lifo/Opmem_0_11_dpot_850 ;
  wire \lifo/Opmem_0_12_dpot_851 ;
  wire \lifo/Opmem_0_13_dpot_852 ;
  wire \lifo/Opmem_0_14_dpot_853 ;
  wire \clkdiv1/counter_300hz_2_rstpot_854 ;
  wire \clkdiv1/counter_300hz_0_rstpot_855 ;
  wire \clkdiv1/counter_300hz_1_rstpot_856 ;
  wire \clkdiv1/counter_300hz_5_rstpot_857 ;
  wire \clkdiv1/counter_300hz_3_rstpot_858 ;
  wire \clkdiv1/counter_300hz_4_rstpot_859 ;
  wire \clkdiv1/counter_300hz_8_rstpot_860 ;
  wire \clkdiv1/counter_300hz_6_rstpot_861 ;
  wire \clkdiv1/counter_300hz_7_rstpot_862 ;
  wire \clkdiv1/counter_300hz_11_rstpot_863 ;
  wire \clkdiv1/counter_300hz_9_rstpot_864 ;
  wire \clkdiv1/counter_300hz_10_rstpot_865 ;
  wire \clkdiv1/counter_300hz_14_rstpot_866 ;
  wire \clkdiv1/counter_300hz_12_rstpot_867 ;
  wire \clkdiv1/counter_300hz_13_rstpot_868 ;
  wire \clkdiv1/counter_300hz_17_rstpot_869 ;
  wire \clkdiv1/counter_300hz_15_rstpot_870 ;
  wire \clkdiv1/counter_300hz_16_rstpot_871 ;
  wire \alu1/opcodesel_2_1_872 ;
  wire \alu1/opcodesel_1_1_873 ;
  wire \alu1/opcodesel_0_1_874 ;
  wire \alu1/f_5_1_875 ;
  wire \alu1/f_4_1_876 ;
  wire \alu1/f_3_1_877 ;
  wire \alu1/f_2_1_878 ;
  wire \alu1/f_1_1_879 ;
  wire \alu1/f_0_1_880 ;
  wire [5 : 0] \alu1/f ;
  wire [2 : 0] \alu1/opcodesel ;
  wire [2 : 0] B;
  wire [2 : 0] opcodein;
  wire [5 : 0] \lifo/result ;
  wire [2 : 0] \lifo/opcodeselout ;
  wire [17 : 0] \clkdiv1/counter_300hz ;
  wire [17 : 0] Result;
  wire [0 : 0] \clkdiv1/Mcount_counter_300hz_lut ;
  wire [16 : 0] \clkdiv1/Mcount_counter_300hz_cy ;
  wire [1 : 0] \alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_cy ;
  wire [1 : 1] \alu1/Msub_GND_5_o_GND_5_o_sub_3_OUT_lut ;
  wire [25 : 0] \readdebouncer/Mcount_countpushed_lut ;
  wire [24 : 0] \readdebouncer/Mcount_countpushed_cy ;
  wire [25 : 0] \readdebouncer/Mcount_countstill_lut ;
  wire [24 : 0] \readdebouncer/Mcount_countstill_cy ;
  wire [25 : 0] \readdebouncer/countstill ;
  wire [25 : 0] \readdebouncer/countpushed ;
  wire [25 : 0] \executedebouncer/Mcount_countpushed_lut ;
  wire [24 : 0] \executedebouncer/Mcount_countpushed_cy ;
  wire [25 : 0] \executedebouncer/Mcount_countstill_lut ;
  wire [24 : 0] \executedebouncer/Mcount_countstill_cy ;
  wire [25 : 0] \executedebouncer/countstill ;
  wire [25 : 0] \executedebouncer/countpushed ;
  wire [2 : 0] \lifo/Result ;
  wire [29 : 0] \lifo/Fmem_0 ;
  wire [2 : 0] \lifo/top ;
  wire [14 : 0] \lifo/Opmem_0 ;
  wire [1 : 0] \LED/currentdigit ;
  wire [1 : 0] \LED/counter ;
  wire [17 : 17] \clkdiv1/GND_3_o_GND_3_o_equal_5_o ;
  wire [25 : 25] \readdebouncer/GND_2_o_GND_2_o_equal_4_o ;
  wire [25 : 25] \executedebouncer/GND_2_o_GND_2_o_equal_4_o ;
  GND   XST_GND (
    .G(displayctl_3_OBUF_47)
  );
  VCC   XST_VCC (
    .P(display_0_OBUF_48)
  );
  FDCE   opcodein_0 (
    .C(\clkdiv1/clk_300hz_27 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_0_IBUF_5),
    .Q(opcodein[0])
  );
  FDCE   opcodein_1 (
    .C(\clkdiv1/clk_300hz_27 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_1_IBUF_4),
    .Q(opcodein[1])
  );
  FDCE   opcodein_2 (
    .C(\clkdiv1/clk_300hz_27 ),
    .CE(mode_IBUF_6),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_2_IBUF_3),
    .Q(opcodein[2])
  );
  FDCE   B_0 (
    .C(\clkdiv1/clk_300hz_27 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_0_IBUF_5),
    .Q(B[0])
  );
  FDCE   B_1 (
    .C(\clkdiv1/clk_300hz_27 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_1_IBUF_4),
    .Q(B[1])
  );
  FDCE   B_2 (
    .C(\clkdiv1/clk_300hz_27 ),
    .CE(mode_inv),
    .CLR(\LED/reset_n_inv ),
    .D(Bopcode_2_IBUF_3),
    .Q(B[2])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<0>  (
    .CI(displayctl_3_OBUF_47),
    .DI(display_0_OBUF_48),
    .S(\clkdiv1/Mcount_counter_300hz_lut [0]),
    .O(\clkdiv1/Mcount_counter_300hz_cy [0])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<0>  (
    .CI(displayctl_3_OBUF_47),
    .LI(\clkdiv1/Mcount_counter_300hz_lut [0]),
    .O(Result[0])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<1>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [0]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_728 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [1])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<1>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [0]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_728 ),
    .O(Result[1])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<2>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [1]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_729 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [2])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<2>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [1]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_729 ),
    .O(Result[2])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<3>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [2]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_730 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [3])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<3>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [2]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_730 ),
    .O(Result[3])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<4>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [3]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_731 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [4])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<4>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [3]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_731 ),
    .O(Result[4])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<5>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [4]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_732 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [5])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<5>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [4]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_732 ),
    .O(Result[5])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<6>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [5]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_733 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [6])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<6>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [5]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_733 ),
    .O(Result[6])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<7>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [6]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_734 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [7])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<7>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [6]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_734 ),
    .O(Result[7])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<8>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [7]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_735 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [8])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<8>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [7]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_735 ),
    .O(Result[8])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<9>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [8]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_736 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [9])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<9>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [8]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_736 ),
    .O(Result[9])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<10>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [9]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_737 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [10])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<10>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [9]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_737 ),
    .O(Result[10])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<11>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [10]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_738 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [11])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<11>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [10]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_738 ),
    .O(Result[11])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<12>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [11]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_739 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [12])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<12>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [11]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_739 ),
    .O(Result[12])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<13>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [12]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_740 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [13])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<13>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [12]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_740 ),
    .O(Result[13])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<14>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [13]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_741 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [14])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<14>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [13]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_741 ),
    .O(Result[14])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<15>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [14]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_742 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [15])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<15>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [14]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_742 ),
    .O(Result[15])
  );
  MUXCY   \clkdiv1/Mcount_counter_300hz_cy<16>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [15]),
    .DI(displayctl_3_OBUF_47),
    .S(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_743 ),
    .O(\clkdiv1/Mcount_counter_300hz_cy [16])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<16>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [15]),
    .LI(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_743 ),
    .O(Result[16])
  );
  XORCY   \clkdiv1/Mcount_counter_300hz_xor<17>  (
    .CI(\clkdiv1/Mcount_counter_300hz_cy [16]),
    .LI(\clkdiv1/Mcount_counter_300hz_xor<17>_rt_744 ),
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
  FDCE   \readdebouncer/countstill_25  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill25 ),
    .Q(\readdebouncer/countstill [25])
  );
  FDCE   \readdebouncer/countstill_24  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill24 ),
    .Q(\readdebouncer/countstill [24])
  );
  FDCE   \readdebouncer/countstill_23  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill23 ),
    .Q(\readdebouncer/countstill [23])
  );
  FDCE   \readdebouncer/countstill_22  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill22 ),
    .Q(\readdebouncer/countstill [22])
  );
  FDCE   \readdebouncer/countstill_21  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill21 ),
    .Q(\readdebouncer/countstill [21])
  );
  FDCE   \readdebouncer/countstill_20  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill20 ),
    .Q(\readdebouncer/countstill [20])
  );
  FDCE   \readdebouncer/countstill_19  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countstill19 ),
    .Q(\readdebouncer/countstill [19])
  );
  FDCE   \readdebouncer/countpushed_25  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed25 ),
    .Q(\readdebouncer/countpushed [25])
  );
  FDCE   \readdebouncer/countpushed_24  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed24 ),
    .Q(\readdebouncer/countpushed [24])
  );
  FDCE   \readdebouncer/countpushed_23  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed23 ),
    .Q(\readdebouncer/countpushed [23])
  );
  FDCE   \readdebouncer/countpushed_22  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed22 ),
    .Q(\readdebouncer/countpushed [22])
  );
  FDCE   \readdebouncer/countpushed_21  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed21 ),
    .Q(\readdebouncer/countpushed [21])
  );
  FDCE   \readdebouncer/countpushed_20  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed20 ),
    .Q(\readdebouncer/countpushed [20])
  );
  FDCE   \readdebouncer/countpushed_19  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed19 ),
    .Q(\readdebouncer/countpushed [19])
  );
  FDCE   \readdebouncer/countpushed_18  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed18 ),
    .Q(\readdebouncer/countpushed [18])
  );
  FDCE   \readdebouncer/countpushed_17  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed17 ),
    .Q(\readdebouncer/countpushed [17])
  );
  FDCE   \readdebouncer/countpushed_16  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed16 ),
    .Q(\readdebouncer/countpushed [16])
  );
  FDCE   \readdebouncer/countpushed_15  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed15 ),
    .Q(\readdebouncer/countpushed [15])
  );
  FDCE   \readdebouncer/countpushed_14  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed14 ),
    .Q(\readdebouncer/countpushed [14])
  );
  FDCE   \readdebouncer/countpushed_13  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed13 ),
    .Q(\readdebouncer/countpushed [13])
  );
  FDCE   \readdebouncer/countpushed_12  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed12 ),
    .Q(\readdebouncer/countpushed [12])
  );
  FDCE   \readdebouncer/countpushed_11  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed11 ),
    .Q(\readdebouncer/countpushed [11])
  );
  FDCE   \readdebouncer/countpushed_10  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed10 ),
    .Q(\readdebouncer/countpushed [10])
  );
  FDCE   \readdebouncer/countpushed_9  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed9 ),
    .Q(\readdebouncer/countpushed [9])
  );
  FDCE   \readdebouncer/countpushed_8  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed8 ),
    .Q(\readdebouncer/countpushed [8])
  );
  FDCE   \readdebouncer/countpushed_7  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed7 ),
    .Q(\readdebouncer/countpushed [7])
  );
  FDCE   \readdebouncer/countpushed_6  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed6 ),
    .Q(\readdebouncer/countpushed [6])
  );
  FDCE   \readdebouncer/countpushed_5  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed5 ),
    .Q(\readdebouncer/countpushed [5])
  );
  FDCE   \readdebouncer/countpushed_4  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed4 ),
    .Q(\readdebouncer/countpushed [4])
  );
  FDCE   \readdebouncer/countpushed_3  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed3 ),
    .Q(\readdebouncer/countpushed [3])
  );
  FDCE   \readdebouncer/countpushed_2  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed2 ),
    .Q(\readdebouncer/countpushed [2])
  );
  FDCE   \readdebouncer/countpushed_1  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed1 ),
    .Q(\readdebouncer/countpushed [1])
  );
  FDCE   \readdebouncer/countpushed_0  (
    .C(clk_BUFGP_9),
    .CE(\readdebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/Mcount_countpushed ),
    .Q(\readdebouncer/countpushed [0])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<25>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [24]),
    .LI(\readdebouncer/Mcount_countpushed_lut [25]),
    .O(\readdebouncer/Mcount_countpushed25 )
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<24>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [23]),
    .LI(\readdebouncer/Mcount_countpushed_lut [24]),
    .O(\readdebouncer/Mcount_countpushed24 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<24>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [23]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [24]),
    .O(\readdebouncer/Mcount_countpushed_cy [24])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<23>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [22]),
    .LI(\readdebouncer/Mcount_countpushed_lut [23]),
    .O(\readdebouncer/Mcount_countpushed23 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<23>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [22]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [23]),
    .O(\readdebouncer/Mcount_countpushed_cy [23])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<22>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [21]),
    .LI(\readdebouncer/Mcount_countpushed_lut [22]),
    .O(\readdebouncer/Mcount_countpushed22 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<22>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [21]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [22]),
    .O(\readdebouncer/Mcount_countpushed_cy [22])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<21>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [20]),
    .LI(\readdebouncer/Mcount_countpushed_lut [21]),
    .O(\readdebouncer/Mcount_countpushed21 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<21>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [20]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [21]),
    .O(\readdebouncer/Mcount_countpushed_cy [21])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<20>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [19]),
    .LI(\readdebouncer/Mcount_countpushed_lut [20]),
    .O(\readdebouncer/Mcount_countpushed20 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<20>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [19]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [20]),
    .O(\readdebouncer/Mcount_countpushed_cy [20])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<19>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [18]),
    .LI(\readdebouncer/Mcount_countpushed_lut [19]),
    .O(\readdebouncer/Mcount_countpushed19 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<19>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [18]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [19]),
    .O(\readdebouncer/Mcount_countpushed_cy [19])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<18>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [17]),
    .LI(\readdebouncer/Mcount_countpushed_lut [18]),
    .O(\readdebouncer/Mcount_countpushed18 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<18>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [17]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [18]),
    .O(\readdebouncer/Mcount_countpushed_cy [18])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<17>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [16]),
    .LI(\readdebouncer/Mcount_countpushed_lut [17]),
    .O(\readdebouncer/Mcount_countpushed17 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<17>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [16]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [17]),
    .O(\readdebouncer/Mcount_countpushed_cy [17])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<16>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [15]),
    .LI(\readdebouncer/Mcount_countpushed_lut [16]),
    .O(\readdebouncer/Mcount_countpushed16 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<16>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [15]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [16]),
    .O(\readdebouncer/Mcount_countpushed_cy [16])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<15>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [14]),
    .LI(\readdebouncer/Mcount_countpushed_lut [15]),
    .O(\readdebouncer/Mcount_countpushed15 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<15>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [14]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [15]),
    .O(\readdebouncer/Mcount_countpushed_cy [15])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<14>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [13]),
    .LI(\readdebouncer/Mcount_countpushed_lut [14]),
    .O(\readdebouncer/Mcount_countpushed14 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<14>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [13]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [14]),
    .O(\readdebouncer/Mcount_countpushed_cy [14])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<13>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [12]),
    .LI(\readdebouncer/Mcount_countpushed_lut [13]),
    .O(\readdebouncer/Mcount_countpushed13 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<13>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [12]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [13]),
    .O(\readdebouncer/Mcount_countpushed_cy [13])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<12>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [11]),
    .LI(\readdebouncer/Mcount_countpushed_lut [12]),
    .O(\readdebouncer/Mcount_countpushed12 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<12>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [11]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [12]),
    .O(\readdebouncer/Mcount_countpushed_cy [12])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<11>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [10]),
    .LI(\readdebouncer/Mcount_countpushed_lut [11]),
    .O(\readdebouncer/Mcount_countpushed11 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<11>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [10]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [11]),
    .O(\readdebouncer/Mcount_countpushed_cy [11])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<10>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [9]),
    .LI(\readdebouncer/Mcount_countpushed_lut [10]),
    .O(\readdebouncer/Mcount_countpushed10 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<10>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [9]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [10]),
    .O(\readdebouncer/Mcount_countpushed_cy [10])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<9>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [8]),
    .LI(\readdebouncer/Mcount_countpushed_lut [9]),
    .O(\readdebouncer/Mcount_countpushed9 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<9>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [8]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [9]),
    .O(\readdebouncer/Mcount_countpushed_cy [9])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<8>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [7]),
    .LI(\readdebouncer/Mcount_countpushed_lut [8]),
    .O(\readdebouncer/Mcount_countpushed8 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<8>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [7]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [8]),
    .O(\readdebouncer/Mcount_countpushed_cy [8])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<7>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [6]),
    .LI(\readdebouncer/Mcount_countpushed_lut [7]),
    .O(\readdebouncer/Mcount_countpushed7 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<7>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [6]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [7]),
    .O(\readdebouncer/Mcount_countpushed_cy [7])
  );
  XORCY   \readdebouncer/Mcount_countpushed_xor<6>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [5]),
    .LI(\readdebouncer/Mcount_countpushed_lut [6]),
    .O(\readdebouncer/Mcount_countpushed6 )
  );
  MUXCY   \readdebouncer/Mcount_countpushed_cy<6>  (
    .CI(\readdebouncer/Mcount_countpushed_cy [5]),
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countpushed_lut [0]),
    .O(\readdebouncer/Mcount_countpushed_cy [0])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<25>  (
    .CI(\readdebouncer/Mcount_countstill_cy [24]),
    .LI(\readdebouncer/Mcount_countstill_lut [25]),
    .O(\readdebouncer/Mcount_countstill25 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<25>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [25]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [25])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<24>  (
    .CI(\readdebouncer/Mcount_countstill_cy [23]),
    .LI(\readdebouncer/Mcount_countstill_lut [24]),
    .O(\readdebouncer/Mcount_countstill24 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<24>  (
    .CI(\readdebouncer/Mcount_countstill_cy [23]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [24]),
    .O(\readdebouncer/Mcount_countstill_cy [24])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<24>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [24]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [24])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<23>  (
    .CI(\readdebouncer/Mcount_countstill_cy [22]),
    .LI(\readdebouncer/Mcount_countstill_lut [23]),
    .O(\readdebouncer/Mcount_countstill23 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<23>  (
    .CI(\readdebouncer/Mcount_countstill_cy [22]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [23]),
    .O(\readdebouncer/Mcount_countstill_cy [23])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<23>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [23]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [23])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<22>  (
    .CI(\readdebouncer/Mcount_countstill_cy [21]),
    .LI(\readdebouncer/Mcount_countstill_lut [22]),
    .O(\readdebouncer/Mcount_countstill22 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<22>  (
    .CI(\readdebouncer/Mcount_countstill_cy [21]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [22]),
    .O(\readdebouncer/Mcount_countstill_cy [22])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<22>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [22]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [22])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<21>  (
    .CI(\readdebouncer/Mcount_countstill_cy [20]),
    .LI(\readdebouncer/Mcount_countstill_lut [21]),
    .O(\readdebouncer/Mcount_countstill21 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<21>  (
    .CI(\readdebouncer/Mcount_countstill_cy [20]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [21]),
    .O(\readdebouncer/Mcount_countstill_cy [21])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<21>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [21]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [21])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<20>  (
    .CI(\readdebouncer/Mcount_countstill_cy [19]),
    .LI(\readdebouncer/Mcount_countstill_lut [20]),
    .O(\readdebouncer/Mcount_countstill20 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<20>  (
    .CI(\readdebouncer/Mcount_countstill_cy [19]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [20]),
    .O(\readdebouncer/Mcount_countstill_cy [20])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<20>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [20]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [20])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<19>  (
    .CI(\readdebouncer/Mcount_countstill_cy [18]),
    .LI(\readdebouncer/Mcount_countstill_lut [19]),
    .O(\readdebouncer/Mcount_countstill19 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<19>  (
    .CI(\readdebouncer/Mcount_countstill_cy [18]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [19]),
    .O(\readdebouncer/Mcount_countstill_cy [19])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<19>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [19]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [19])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<18>  (
    .CI(\readdebouncer/Mcount_countstill_cy [17]),
    .LI(\readdebouncer/Mcount_countstill_lut [18]),
    .O(\readdebouncer/Mcount_countstill18 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<18>  (
    .CI(\readdebouncer/Mcount_countstill_cy [17]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [18]),
    .O(\readdebouncer/Mcount_countstill_cy [18])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<18>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [18]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [18])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<17>  (
    .CI(\readdebouncer/Mcount_countstill_cy [16]),
    .LI(\readdebouncer/Mcount_countstill_lut [17]),
    .O(\readdebouncer/Mcount_countstill17 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<17>  (
    .CI(\readdebouncer/Mcount_countstill_cy [16]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [17]),
    .O(\readdebouncer/Mcount_countstill_cy [17])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<17>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [17]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [17])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<16>  (
    .CI(\readdebouncer/Mcount_countstill_cy [15]),
    .LI(\readdebouncer/Mcount_countstill_lut [16]),
    .O(\readdebouncer/Mcount_countstill16 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<16>  (
    .CI(\readdebouncer/Mcount_countstill_cy [15]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [16]),
    .O(\readdebouncer/Mcount_countstill_cy [16])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<16>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [16]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [16])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<15>  (
    .CI(\readdebouncer/Mcount_countstill_cy [14]),
    .LI(\readdebouncer/Mcount_countstill_lut [15]),
    .O(\readdebouncer/Mcount_countstill15 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<15>  (
    .CI(\readdebouncer/Mcount_countstill_cy [14]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [15]),
    .O(\readdebouncer/Mcount_countstill_cy [15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<15>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [15]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [15])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<14>  (
    .CI(\readdebouncer/Mcount_countstill_cy [13]),
    .LI(\readdebouncer/Mcount_countstill_lut [14]),
    .O(\readdebouncer/Mcount_countstill14 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<14>  (
    .CI(\readdebouncer/Mcount_countstill_cy [13]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [14]),
    .O(\readdebouncer/Mcount_countstill_cy [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<14>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [14]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [14])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<13>  (
    .CI(\readdebouncer/Mcount_countstill_cy [12]),
    .LI(\readdebouncer/Mcount_countstill_lut [13]),
    .O(\readdebouncer/Mcount_countstill13 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<13>  (
    .CI(\readdebouncer/Mcount_countstill_cy [12]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [13]),
    .O(\readdebouncer/Mcount_countstill_cy [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<13>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [13]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [13])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<12>  (
    .CI(\readdebouncer/Mcount_countstill_cy [11]),
    .LI(\readdebouncer/Mcount_countstill_lut [12]),
    .O(\readdebouncer/Mcount_countstill12 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<12>  (
    .CI(\readdebouncer/Mcount_countstill_cy [11]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [12]),
    .O(\readdebouncer/Mcount_countstill_cy [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<12>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [12]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [12])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<11>  (
    .CI(\readdebouncer/Mcount_countstill_cy [10]),
    .LI(\readdebouncer/Mcount_countstill_lut [11]),
    .O(\readdebouncer/Mcount_countstill11 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<11>  (
    .CI(\readdebouncer/Mcount_countstill_cy [10]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [11]),
    .O(\readdebouncer/Mcount_countstill_cy [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<11>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [11]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [11])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<10>  (
    .CI(\readdebouncer/Mcount_countstill_cy [9]),
    .LI(\readdebouncer/Mcount_countstill_lut [10]),
    .O(\readdebouncer/Mcount_countstill10 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<10>  (
    .CI(\readdebouncer/Mcount_countstill_cy [9]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [10]),
    .O(\readdebouncer/Mcount_countstill_cy [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<10>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [10]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [10])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<9>  (
    .CI(\readdebouncer/Mcount_countstill_cy [8]),
    .LI(\readdebouncer/Mcount_countstill_lut [9]),
    .O(\readdebouncer/Mcount_countstill9 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<9>  (
    .CI(\readdebouncer/Mcount_countstill_cy [8]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [9]),
    .O(\readdebouncer/Mcount_countstill_cy [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<9>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [9]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [9])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<8>  (
    .CI(\readdebouncer/Mcount_countstill_cy [7]),
    .LI(\readdebouncer/Mcount_countstill_lut [8]),
    .O(\readdebouncer/Mcount_countstill8 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<8>  (
    .CI(\readdebouncer/Mcount_countstill_cy [7]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [8]),
    .O(\readdebouncer/Mcount_countstill_cy [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<8>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [8]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [8])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<7>  (
    .CI(\readdebouncer/Mcount_countstill_cy [6]),
    .LI(\readdebouncer/Mcount_countstill_lut [7]),
    .O(\readdebouncer/Mcount_countstill7 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<7>  (
    .CI(\readdebouncer/Mcount_countstill_cy [6]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [7]),
    .O(\readdebouncer/Mcount_countstill_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<7>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [7]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [7])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<6>  (
    .CI(\readdebouncer/Mcount_countstill_cy [5]),
    .LI(\readdebouncer/Mcount_countstill_lut [6]),
    .O(\readdebouncer/Mcount_countstill6 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<6>  (
    .CI(\readdebouncer/Mcount_countstill_cy [5]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [6]),
    .O(\readdebouncer/Mcount_countstill_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<6>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [6]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [6])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<5>  (
    .CI(\readdebouncer/Mcount_countstill_cy [4]),
    .LI(\readdebouncer/Mcount_countstill_lut [5]),
    .O(\readdebouncer/Mcount_countstill5 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<5>  (
    .CI(\readdebouncer/Mcount_countstill_cy [4]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [5]),
    .O(\readdebouncer/Mcount_countstill_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<5>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [5]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [5])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<4>  (
    .CI(\readdebouncer/Mcount_countstill_cy [3]),
    .LI(\readdebouncer/Mcount_countstill_lut [4]),
    .O(\readdebouncer/Mcount_countstill4 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<4>  (
    .CI(\readdebouncer/Mcount_countstill_cy [3]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [4]),
    .O(\readdebouncer/Mcount_countstill_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<4>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [4]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [4])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<3>  (
    .CI(\readdebouncer/Mcount_countstill_cy [2]),
    .LI(\readdebouncer/Mcount_countstill_lut [3]),
    .O(\readdebouncer/Mcount_countstill3 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<3>  (
    .CI(\readdebouncer/Mcount_countstill_cy [2]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [3]),
    .O(\readdebouncer/Mcount_countstill_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<3>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [3]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [3])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<2>  (
    .CI(\readdebouncer/Mcount_countstill_cy [1]),
    .LI(\readdebouncer/Mcount_countstill_lut [2]),
    .O(\readdebouncer/Mcount_countstill2 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<2>  (
    .CI(\readdebouncer/Mcount_countstill_cy [1]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [2]),
    .O(\readdebouncer/Mcount_countstill_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<2>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [2]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [2])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<1>  (
    .CI(\readdebouncer/Mcount_countstill_cy [0]),
    .LI(\readdebouncer/Mcount_countstill_lut [1]),
    .O(\readdebouncer/Mcount_countstill1 )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<1>  (
    .CI(\readdebouncer/Mcount_countstill_cy [0]),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [1]),
    .O(\readdebouncer/Mcount_countstill_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<1>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [1]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [1])
  );
  XORCY   \readdebouncer/Mcount_countstill_xor<0>  (
    .CI(\readdebouncer/noisy_inv ),
    .LI(\readdebouncer/Mcount_countstill_lut [0]),
    .O(\readdebouncer/Mcount_countstill )
  );
  MUXCY   \readdebouncer/Mcount_countstill_cy<0>  (
    .CI(\readdebouncer/noisy_inv ),
    .DI(displayctl_3_OBUF_47),
    .S(\readdebouncer/Mcount_countstill_lut [0]),
    .O(\readdebouncer/Mcount_countstill_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \readdebouncer/Mcount_countstill_lut<0>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [0]),
    .I2(displayctl_3_OBUF_47),
    .O(\readdebouncer/Mcount_countstill_lut [0])
  );
  FDCE   \executedebouncer/countstill_25  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill25 ),
    .Q(\executedebouncer/countstill [25])
  );
  FDCE   \executedebouncer/countstill_24  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill24 ),
    .Q(\executedebouncer/countstill [24])
  );
  FDCE   \executedebouncer/countstill_23  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill23 ),
    .Q(\executedebouncer/countstill [23])
  );
  FDCE   \executedebouncer/countstill_22  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill22 ),
    .Q(\executedebouncer/countstill [22])
  );
  FDCE   \executedebouncer/countstill_21  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill21 ),
    .Q(\executedebouncer/countstill [21])
  );
  FDCE   \executedebouncer/countstill_20  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill20 ),
    .Q(\executedebouncer/countstill [20])
  );
  FDCE   \executedebouncer/countstill_19  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0066_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countstill19 ),
    .Q(\executedebouncer/countstill [19])
  );
  FDCE   \executedebouncer/countpushed_25  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed25 ),
    .Q(\executedebouncer/countpushed [25])
  );
  FDCE   \executedebouncer/countpushed_24  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed24 ),
    .Q(\executedebouncer/countpushed [24])
  );
  FDCE   \executedebouncer/countpushed_23  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed23 ),
    .Q(\executedebouncer/countpushed [23])
  );
  FDCE   \executedebouncer/countpushed_22  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed22 ),
    .Q(\executedebouncer/countpushed [22])
  );
  FDCE   \executedebouncer/countpushed_21  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed21 ),
    .Q(\executedebouncer/countpushed [21])
  );
  FDCE   \executedebouncer/countpushed_20  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed20 ),
    .Q(\executedebouncer/countpushed [20])
  );
  FDCE   \executedebouncer/countpushed_19  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed19 ),
    .Q(\executedebouncer/countpushed [19])
  );
  FDCE   \executedebouncer/countpushed_18  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed18 ),
    .Q(\executedebouncer/countpushed [18])
  );
  FDCE   \executedebouncer/countpushed_17  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed17 ),
    .Q(\executedebouncer/countpushed [17])
  );
  FDCE   \executedebouncer/countpushed_16  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed16 ),
    .Q(\executedebouncer/countpushed [16])
  );
  FDCE   \executedebouncer/countpushed_15  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed15 ),
    .Q(\executedebouncer/countpushed [15])
  );
  FDCE   \executedebouncer/countpushed_14  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed14 ),
    .Q(\executedebouncer/countpushed [14])
  );
  FDCE   \executedebouncer/countpushed_13  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed13 ),
    .Q(\executedebouncer/countpushed [13])
  );
  FDCE   \executedebouncer/countpushed_12  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed12 ),
    .Q(\executedebouncer/countpushed [12])
  );
  FDCE   \executedebouncer/countpushed_11  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed11 ),
    .Q(\executedebouncer/countpushed [11])
  );
  FDCE   \executedebouncer/countpushed_10  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed10 ),
    .Q(\executedebouncer/countpushed [10])
  );
  FDCE   \executedebouncer/countpushed_9  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed9 ),
    .Q(\executedebouncer/countpushed [9])
  );
  FDCE   \executedebouncer/countpushed_8  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed8 ),
    .Q(\executedebouncer/countpushed [8])
  );
  FDCE   \executedebouncer/countpushed_7  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed7 ),
    .Q(\executedebouncer/countpushed [7])
  );
  FDCE   \executedebouncer/countpushed_6  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed6 ),
    .Q(\executedebouncer/countpushed [6])
  );
  FDCE   \executedebouncer/countpushed_5  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed5 ),
    .Q(\executedebouncer/countpushed [5])
  );
  FDCE   \executedebouncer/countpushed_4  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed4 ),
    .Q(\executedebouncer/countpushed [4])
  );
  FDCE   \executedebouncer/countpushed_3  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed3 ),
    .Q(\executedebouncer/countpushed [3])
  );
  FDCE   \executedebouncer/countpushed_2  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed2 ),
    .Q(\executedebouncer/countpushed [2])
  );
  FDCE   \executedebouncer/countpushed_1  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/_n0063_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/Mcount_countpushed1 ),
    .Q(\executedebouncer/countpushed [1])
  );
  FDCE   \executedebouncer/countpushed_0  (
    .C(clk_BUFGP_9),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .DI(displayctl_3_OBUF_47),
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
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [25])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<24>  (
    .CI(\executedebouncer/Mcount_countstill_cy [23]),
    .LI(\executedebouncer/Mcount_countstill_lut [24]),
    .O(\executedebouncer/Mcount_countstill24 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<24>  (
    .CI(\executedebouncer/Mcount_countstill_cy [23]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [24]),
    .O(\executedebouncer/Mcount_countstill_cy [24])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<24>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [24]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [24])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<23>  (
    .CI(\executedebouncer/Mcount_countstill_cy [22]),
    .LI(\executedebouncer/Mcount_countstill_lut [23]),
    .O(\executedebouncer/Mcount_countstill23 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<23>  (
    .CI(\executedebouncer/Mcount_countstill_cy [22]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [23]),
    .O(\executedebouncer/Mcount_countstill_cy [23])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<23>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [23]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [23])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<22>  (
    .CI(\executedebouncer/Mcount_countstill_cy [21]),
    .LI(\executedebouncer/Mcount_countstill_lut [22]),
    .O(\executedebouncer/Mcount_countstill22 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<22>  (
    .CI(\executedebouncer/Mcount_countstill_cy [21]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [22]),
    .O(\executedebouncer/Mcount_countstill_cy [22])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<22>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [22]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [22])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<21>  (
    .CI(\executedebouncer/Mcount_countstill_cy [20]),
    .LI(\executedebouncer/Mcount_countstill_lut [21]),
    .O(\executedebouncer/Mcount_countstill21 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<21>  (
    .CI(\executedebouncer/Mcount_countstill_cy [20]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [21]),
    .O(\executedebouncer/Mcount_countstill_cy [21])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<21>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [21]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [21])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<20>  (
    .CI(\executedebouncer/Mcount_countstill_cy [19]),
    .LI(\executedebouncer/Mcount_countstill_lut [20]),
    .O(\executedebouncer/Mcount_countstill20 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<20>  (
    .CI(\executedebouncer/Mcount_countstill_cy [19]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [20]),
    .O(\executedebouncer/Mcount_countstill_cy [20])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<20>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [20]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [20])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<19>  (
    .CI(\executedebouncer/Mcount_countstill_cy [18]),
    .LI(\executedebouncer/Mcount_countstill_lut [19]),
    .O(\executedebouncer/Mcount_countstill19 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<19>  (
    .CI(\executedebouncer/Mcount_countstill_cy [18]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [19]),
    .O(\executedebouncer/Mcount_countstill_cy [19])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<19>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [19]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [19])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<18>  (
    .CI(\executedebouncer/Mcount_countstill_cy [17]),
    .LI(\executedebouncer/Mcount_countstill_lut [18]),
    .O(\executedebouncer/Mcount_countstill18 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<18>  (
    .CI(\executedebouncer/Mcount_countstill_cy [17]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [18]),
    .O(\executedebouncer/Mcount_countstill_cy [18])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<18>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [18]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [18])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<17>  (
    .CI(\executedebouncer/Mcount_countstill_cy [16]),
    .LI(\executedebouncer/Mcount_countstill_lut [17]),
    .O(\executedebouncer/Mcount_countstill17 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<17>  (
    .CI(\executedebouncer/Mcount_countstill_cy [16]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [17]),
    .O(\executedebouncer/Mcount_countstill_cy [17])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<17>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [17]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [17])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<16>  (
    .CI(\executedebouncer/Mcount_countstill_cy [15]),
    .LI(\executedebouncer/Mcount_countstill_lut [16]),
    .O(\executedebouncer/Mcount_countstill16 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<16>  (
    .CI(\executedebouncer/Mcount_countstill_cy [15]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [16]),
    .O(\executedebouncer/Mcount_countstill_cy [16])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<16>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [16]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [16])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<15>  (
    .CI(\executedebouncer/Mcount_countstill_cy [14]),
    .LI(\executedebouncer/Mcount_countstill_lut [15]),
    .O(\executedebouncer/Mcount_countstill15 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<15>  (
    .CI(\executedebouncer/Mcount_countstill_cy [14]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [15]),
    .O(\executedebouncer/Mcount_countstill_cy [15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<15>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [15]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [15])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<14>  (
    .CI(\executedebouncer/Mcount_countstill_cy [13]),
    .LI(\executedebouncer/Mcount_countstill_lut [14]),
    .O(\executedebouncer/Mcount_countstill14 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<14>  (
    .CI(\executedebouncer/Mcount_countstill_cy [13]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [14]),
    .O(\executedebouncer/Mcount_countstill_cy [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<14>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [14]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [14])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<13>  (
    .CI(\executedebouncer/Mcount_countstill_cy [12]),
    .LI(\executedebouncer/Mcount_countstill_lut [13]),
    .O(\executedebouncer/Mcount_countstill13 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<13>  (
    .CI(\executedebouncer/Mcount_countstill_cy [12]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [13]),
    .O(\executedebouncer/Mcount_countstill_cy [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<13>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [13]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [13])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<12>  (
    .CI(\executedebouncer/Mcount_countstill_cy [11]),
    .LI(\executedebouncer/Mcount_countstill_lut [12]),
    .O(\executedebouncer/Mcount_countstill12 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<12>  (
    .CI(\executedebouncer/Mcount_countstill_cy [11]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [12]),
    .O(\executedebouncer/Mcount_countstill_cy [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<12>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [12]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [12])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<11>  (
    .CI(\executedebouncer/Mcount_countstill_cy [10]),
    .LI(\executedebouncer/Mcount_countstill_lut [11]),
    .O(\executedebouncer/Mcount_countstill11 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<11>  (
    .CI(\executedebouncer/Mcount_countstill_cy [10]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [11]),
    .O(\executedebouncer/Mcount_countstill_cy [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<11>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [11]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [11])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<10>  (
    .CI(\executedebouncer/Mcount_countstill_cy [9]),
    .LI(\executedebouncer/Mcount_countstill_lut [10]),
    .O(\executedebouncer/Mcount_countstill10 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<10>  (
    .CI(\executedebouncer/Mcount_countstill_cy [9]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [10]),
    .O(\executedebouncer/Mcount_countstill_cy [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<10>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [10]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [10])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<9>  (
    .CI(\executedebouncer/Mcount_countstill_cy [8]),
    .LI(\executedebouncer/Mcount_countstill_lut [9]),
    .O(\executedebouncer/Mcount_countstill9 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<9>  (
    .CI(\executedebouncer/Mcount_countstill_cy [8]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [9]),
    .O(\executedebouncer/Mcount_countstill_cy [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<9>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [9]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [9])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<8>  (
    .CI(\executedebouncer/Mcount_countstill_cy [7]),
    .LI(\executedebouncer/Mcount_countstill_lut [8]),
    .O(\executedebouncer/Mcount_countstill8 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<8>  (
    .CI(\executedebouncer/Mcount_countstill_cy [7]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [8]),
    .O(\executedebouncer/Mcount_countstill_cy [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<8>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [8]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [8])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<7>  (
    .CI(\executedebouncer/Mcount_countstill_cy [6]),
    .LI(\executedebouncer/Mcount_countstill_lut [7]),
    .O(\executedebouncer/Mcount_countstill7 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<7>  (
    .CI(\executedebouncer/Mcount_countstill_cy [6]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [7]),
    .O(\executedebouncer/Mcount_countstill_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<7>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [7]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [7])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<6>  (
    .CI(\executedebouncer/Mcount_countstill_cy [5]),
    .LI(\executedebouncer/Mcount_countstill_lut [6]),
    .O(\executedebouncer/Mcount_countstill6 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<6>  (
    .CI(\executedebouncer/Mcount_countstill_cy [5]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [6]),
    .O(\executedebouncer/Mcount_countstill_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<6>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [6]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [6])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<5>  (
    .CI(\executedebouncer/Mcount_countstill_cy [4]),
    .LI(\executedebouncer/Mcount_countstill_lut [5]),
    .O(\executedebouncer/Mcount_countstill5 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<5>  (
    .CI(\executedebouncer/Mcount_countstill_cy [4]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [5]),
    .O(\executedebouncer/Mcount_countstill_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<5>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [5]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [5])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<4>  (
    .CI(\executedebouncer/Mcount_countstill_cy [3]),
    .LI(\executedebouncer/Mcount_countstill_lut [4]),
    .O(\executedebouncer/Mcount_countstill4 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<4>  (
    .CI(\executedebouncer/Mcount_countstill_cy [3]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [4]),
    .O(\executedebouncer/Mcount_countstill_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<4>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [4]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [4])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<3>  (
    .CI(\executedebouncer/Mcount_countstill_cy [2]),
    .LI(\executedebouncer/Mcount_countstill_lut [3]),
    .O(\executedebouncer/Mcount_countstill3 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<3>  (
    .CI(\executedebouncer/Mcount_countstill_cy [2]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [3]),
    .O(\executedebouncer/Mcount_countstill_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<3>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [3]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [3])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<2>  (
    .CI(\executedebouncer/Mcount_countstill_cy [1]),
    .LI(\executedebouncer/Mcount_countstill_lut [2]),
    .O(\executedebouncer/Mcount_countstill2 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<2>  (
    .CI(\executedebouncer/Mcount_countstill_cy [1]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [2]),
    .O(\executedebouncer/Mcount_countstill_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<2>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [2]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [2])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<1>  (
    .CI(\executedebouncer/Mcount_countstill_cy [0]),
    .LI(\executedebouncer/Mcount_countstill_lut [1]),
    .O(\executedebouncer/Mcount_countstill1 )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<1>  (
    .CI(\executedebouncer/Mcount_countstill_cy [0]),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [1]),
    .O(\executedebouncer/Mcount_countstill_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<1>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [1]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [1])
  );
  XORCY   \executedebouncer/Mcount_countstill_xor<0>  (
    .CI(\executedebouncer/noisy_inv ),
    .LI(\executedebouncer/Mcount_countstill_lut [0]),
    .O(\executedebouncer/Mcount_countstill )
  );
  MUXCY   \executedebouncer/Mcount_countstill_cy<0>  (
    .CI(\executedebouncer/noisy_inv ),
    .DI(displayctl_3_OBUF_47),
    .S(\executedebouncer/Mcount_countstill_lut [0]),
    .O(\executedebouncer/Mcount_countstill_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \executedebouncer/Mcount_countstill_lut<0>  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [0]),
    .I2(displayctl_3_OBUF_47),
    .O(\executedebouncer/Mcount_countstill_lut [0])
  );
  FDCE   \lifo/top_2  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0129_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Result [2]),
    .Q(\lifo/top [2])
  );
  FDCE   \lifo/top_1  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0129_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Result [1]),
    .Q(\lifo/top [1])
  );
  FDCE   \lifo/top_0  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0129_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Result [0]),
    .Q(\lifo/top [0])
  );
  FDRE   \lifo/opcodeselout_2  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0139_inv ),
    .D(\lifo/top[2]_X_6_o_wide_mux_8_OUT<2> ),
    .R(\lifo/_n0108 ),
    .Q(\lifo/opcodeselout [2])
  );
  FDRE   \lifo/opcodeselout_1  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0139_inv ),
    .D(\lifo/top[2]_X_6_o_wide_mux_8_OUT<1> ),
    .R(\lifo/_n0108 ),
    .Q(\lifo/opcodeselout [1])
  );
  FDRE   \lifo/opcodeselout_0  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0139_inv ),
    .D(\lifo/top[2]_X_6_o_wide_mux_8_OUT<0> ),
    .R(\lifo/_n0108 ),
    .Q(\lifo/opcodeselout [0])
  );
  FDRE   \lifo/result_5  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0139_inv ),
    .D(\lifo/top[2]_X_6_o_wide_mux_7_OUT<5> ),
    .R(\lifo/_n0108 ),
    .Q(\lifo/result [5])
  );
  FDRE   \lifo/result_4  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0139_inv ),
    .D(\lifo/top[2]_X_6_o_wide_mux_7_OUT<4> ),
    .R(\lifo/_n0108 ),
    .Q(\lifo/result [4])
  );
  FDRE   \lifo/result_3  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0139_inv ),
    .D(\lifo/top[2]_X_6_o_wide_mux_7_OUT<3> ),
    .R(\lifo/_n0108 ),
    .Q(\lifo/result [3])
  );
  FDRE   \lifo/result_2  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0139_inv ),
    .D(\lifo/top[2]_X_6_o_wide_mux_7_OUT<2> ),
    .R(\lifo/_n0108 ),
    .Q(\lifo/result [2])
  );
  FDRE   \lifo/result_1  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0139_inv ),
    .D(\lifo/top[2]_X_6_o_wide_mux_7_OUT<1> ),
    .R(\lifo/_n0108 ),
    .Q(\lifo/result [1])
  );
  FDRE   \lifo/result_0  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0139_inv ),
    .D(\lifo/top[2]_X_6_o_wide_mux_7_OUT<0> ),
    .R(\lifo/_n0108 ),
    .Q(\lifo/result [0])
  );
  FDCE   \lifo/Opmem_0_14  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_14_dpot_853 ),
    .Q(\lifo/Opmem_0 [14])
  );
  FDCE   \lifo/Opmem_0_13  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_13_dpot_852 ),
    .Q(\lifo/Opmem_0 [13])
  );
  FDCE   \lifo/Opmem_0_12  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_12_dpot_851 ),
    .Q(\lifo/Opmem_0 [12])
  );
  FDCE   \lifo/Opmem_0_11  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_11_dpot_850 ),
    .Q(\lifo/Opmem_0 [11])
  );
  FDCE   \lifo/Opmem_0_10  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_10_dpot_849 ),
    .Q(\lifo/Opmem_0 [10])
  );
  FDCE   \lifo/Opmem_0_9  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_9_dpot_848 ),
    .Q(\lifo/Opmem_0 [9])
  );
  FDCE   \lifo/Opmem_0_8  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_8_dpot_847 ),
    .Q(\lifo/Opmem_0 [8])
  );
  FDCE   \lifo/Opmem_0_7  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_7_dpot_846 ),
    .Q(\lifo/Opmem_0 [7])
  );
  FDCE   \lifo/Opmem_0_6  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_6_dpot_845 ),
    .Q(\lifo/Opmem_0 [6])
  );
  FDCE   \lifo/Opmem_0_5  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_5_dpot_844 ),
    .Q(\lifo/Opmem_0 [5])
  );
  FDCE   \lifo/Opmem_0_4  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_4_dpot_843 ),
    .Q(\lifo/Opmem_0 [4])
  );
  FDCE   \lifo/Opmem_0_3  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_3_dpot_842 ),
    .Q(\lifo/Opmem_0 [3])
  );
  FDCE   \lifo/Opmem_0_2  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_2_dpot_841 ),
    .Q(\lifo/Opmem_0 [2])
  );
  FDCE   \lifo/Opmem_0_1  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_1_dpot_840 ),
    .Q(\lifo/Opmem_0 [1])
  );
  FDCE   \lifo/Opmem_0_0  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Opmem_0_0_dpot_839 ),
    .Q(\lifo/Opmem_0 [0])
  );
  FDCE   \lifo/Fmem_0_29  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_29_dpot_838 ),
    .Q(\lifo/Fmem_0 [29])
  );
  FDCE   \lifo/Fmem_0_28  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_28_dpot_837 ),
    .Q(\lifo/Fmem_0 [28])
  );
  FDCE   \lifo/Fmem_0_27  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_27_dpot_836 ),
    .Q(\lifo/Fmem_0 [27])
  );
  FDCE   \lifo/Fmem_0_26  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_26_dpot_835 ),
    .Q(\lifo/Fmem_0 [26])
  );
  FDCE   \lifo/Fmem_0_25  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_25_dpot_834 ),
    .Q(\lifo/Fmem_0 [25])
  );
  FDCE   \lifo/Fmem_0_24  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_24_dpot_833 ),
    .Q(\lifo/Fmem_0 [24])
  );
  FDCE   \lifo/Fmem_0_23  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_23_dpot_832 ),
    .Q(\lifo/Fmem_0 [23])
  );
  FDCE   \lifo/Fmem_0_22  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_22_dpot_831 ),
    .Q(\lifo/Fmem_0 [22])
  );
  FDCE   \lifo/Fmem_0_21  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_21_dpot_830 ),
    .Q(\lifo/Fmem_0 [21])
  );
  FDCE   \lifo/Fmem_0_20  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_20_dpot_829 ),
    .Q(\lifo/Fmem_0 [20])
  );
  FDCE   \lifo/Fmem_0_19  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_19_dpot_828 ),
    .Q(\lifo/Fmem_0 [19])
  );
  FDCE   \lifo/Fmem_0_18  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_18_dpot_827 ),
    .Q(\lifo/Fmem_0 [18])
  );
  FDCE   \lifo/Fmem_0_17  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_17_dpot_826 ),
    .Q(\lifo/Fmem_0 [17])
  );
  FDCE   \lifo/Fmem_0_16  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_16_dpot_825 ),
    .Q(\lifo/Fmem_0 [16])
  );
  FDCE   \lifo/Fmem_0_15  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_15_dpot_824 ),
    .Q(\lifo/Fmem_0 [15])
  );
  FDCE   \lifo/Fmem_0_14  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_14_dpot_823 ),
    .Q(\lifo/Fmem_0 [14])
  );
  FDCE   \lifo/Fmem_0_13  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_13_dpot_822 ),
    .Q(\lifo/Fmem_0 [13])
  );
  FDCE   \lifo/Fmem_0_12  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_12_dpot_821 ),
    .Q(\lifo/Fmem_0 [12])
  );
  FDCE   \lifo/Fmem_0_11  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_11_dpot_820 ),
    .Q(\lifo/Fmem_0 [11])
  );
  FDCE   \lifo/Fmem_0_10  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_10_dpot_819 ),
    .Q(\lifo/Fmem_0 [10])
  );
  FDCE   \lifo/Fmem_0_9  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_9_dpot_818 ),
    .Q(\lifo/Fmem_0 [9])
  );
  FDCE   \lifo/Fmem_0_8  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_8_dpot_817 ),
    .Q(\lifo/Fmem_0 [8])
  );
  FDCE   \lifo/Fmem_0_7  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_7_dpot_816 ),
    .Q(\lifo/Fmem_0 [7])
  );
  FDCE   \lifo/Fmem_0_6  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_6_dpot_815 ),
    .Q(\lifo/Fmem_0 [6])
  );
  FDCE   \lifo/Fmem_0_5  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_5_dpot_814 ),
    .Q(\lifo/Fmem_0 [5])
  );
  FDCE   \lifo/Fmem_0_4  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_4_dpot_813 ),
    .Q(\lifo/Fmem_0 [4])
  );
  FDCE   \lifo/Fmem_0_3  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_3_dpot_812 ),
    .Q(\lifo/Fmem_0 [3])
  );
  FDCE   \lifo/Fmem_0_2  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_2_dpot_811 ),
    .Q(\lifo/Fmem_0 [2])
  );
  FDCE   \lifo/Fmem_0_1  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_1_dpot_810 ),
    .Q(\lifo/Fmem_0 [1])
  );
  FDCE   \lifo/Fmem_0_0  (
    .C(clk_BUFGP_9),
    .CE(\executedebouncer/clean_25 ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Fmem_0_0_dpot_809 ),
    .Q(\lifo/Fmem_0 [0])
  );
  FDC   \LED/counter_1  (
    .C(\clkdiv1/clk_300hz_27 ),
    .CLR(\LED/reset_n_inv ),
    .D(\LED/Mcount_counter1 ),
    .Q(\LED/counter [1])
  );
  FDC   \LED/counter_0  (
    .C(\clkdiv1/clk_300hz_27 ),
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
  LUT5 #(
    .INIT ( 32'hEEAEEEE4 ))
  \lifo/_n0129_inv2  (
    .I0(\readdebouncer/clean_26 ),
    .I1(\executedebouncer/clean_25 ),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .O(\lifo/_n0129_inv )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lifo/_n0139_inv1  (
    .I0(reset_n_IBUF_10),
    .I1(\readdebouncer/clean_26 ),
    .O(\lifo/_n0139_inv )
  );
  LUT3 #(
    .INIT ( 8'h24 ))
  \LED/Mmux_currentdigit<0>22121  (
    .I0(\lifo/result [2]),
    .I1(\lifo/result [4]),
    .I2(\lifo/result [3]),
    .O(\LED/Mmux_currentdigit<0>2212 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \LED/Mmux_currentdigit<0>2141  (
    .I0(\lifo/opcodeselout [2]),
    .I1(\lifo/opcodeselout [1]),
    .I2(\lifo/opcodeselout [0]),
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
    .I0(reset_n_IBUF_10),
    .I1(\LED/counter [0]),
    .I2(\LED/counter [1]),
    .O(displayctl_0_OBUF_39)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \LED/Mmux_ctl21  (
    .I0(\LED/counter [0]),
    .I1(\LED/counter [1]),
    .I2(reset_n_IBUF_10),
    .O(displayctl_1_OBUF_38)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \LED/Mmux_ctl31  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .I2(reset_n_IBUF_10),
    .O(displayctl_2_OBUF_37)
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
    .O(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 )
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
    .O(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 )
  );
  LUT6 #(
    .INIT ( 64'h8282228288882888 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_108 ),
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33_629 )
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
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_107 ),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT4 ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I3(B[2]),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_108 ),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41_631 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43_632 )
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
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22_635 ),
    .I1(B[0]),
    .I2(\decoder1/Mram_opcodeout ),
    .I3(A_2_IBUF_0),
    .I4(A_0_IBUF_2),
    .I5(A_1_IBUF_1),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23_636 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF8 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT25  (
    .I0(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<1> ),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_109 ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21_634 ),
    .I3(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23_636 ),
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
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_109 ),
    .I3(B[1]),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I5(B[0]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61_638 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF8FFF8FFF8 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT64  (
    .I0(A_2_IBUF_0),
    .I1(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT61_638 ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_107 ),
    .I3(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT6 ),
    .I4(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<3> ),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62_639 ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF282828 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT5  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_109 ),
    .I1(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_cy<3> ),
    .I2(\alu1/Mmult_a[2]_b[2]_MuLt_3_OUT_Madd1_lut<4> ),
    .I3(N01),
    .I4(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT11 ),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_107 ),
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15_642 )
  );
  LUT6 #(
    .INIT ( 64'h2A0A280822022000 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16_643 ),
    .I1(B[0]),
    .I2(B[1]),
    .I3(A_2_IBUF_0),
    .I4(A_0_IBUF_2),
    .I5(A_1_IBUF_1),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17_644 )
  );
  LUT6 #(
    .INIT ( 64'hFBBBBBBBEAAAAAAA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14_641 ),
    .I1(\decoder1/Mram_opcodeout ),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT15_642 ),
    .I3(\decoder1/Mram_opcodeout1 ),
    .I4(opcodein[2]),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT18 ),
    .O(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>1  (
    .I0(\readdebouncer/countpushed [20]),
    .I1(\readdebouncer/countpushed [19]),
    .I2(\readdebouncer/countpushed [22]),
    .I3(\readdebouncer/countpushed [21]),
    .I4(\readdebouncer/countpushed [25]),
    .I5(\readdebouncer/countpushed [23]),
    .O(\readdebouncer/GND_2_o_GND_2_o_equal_4_o [25])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>2  (
    .I0(\readdebouncer/countpushed [12]),
    .I1(\readdebouncer/countpushed [6]),
    .I2(\readdebouncer/countpushed [14]),
    .I3(\readdebouncer/countpushed [13]),
    .I4(\readdebouncer/countpushed [17]),
    .I5(\readdebouncer/countpushed [15]),
    .O(\readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_647 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>3  (
    .I0(\readdebouncer/countpushed [1]),
    .I1(\readdebouncer/countpushed [0]),
    .I2(\readdebouncer/countpushed [3]),
    .I3(\readdebouncer/countpushed [2]),
    .I4(\readdebouncer/countpushed [5]),
    .I5(\readdebouncer/countpushed [4]),
    .O(\readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_648 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>4  (
    .I0(\readdebouncer/countpushed [8]),
    .I1(\readdebouncer/countpushed [7]),
    .I2(\readdebouncer/countpushed [9]),
    .I3(\readdebouncer/countpushed [10]),
    .I4(\readdebouncer/countpushed [11]),
    .I5(\readdebouncer/countpushed [16]),
    .O(\readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_649 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \readdebouncer/_n00661  (
    .I0(\readdebouncer/countstill [8]),
    .I1(\readdebouncer/countstill [6]),
    .I2(\readdebouncer/countstill [9]),
    .I3(\readdebouncer/countstill [10]),
    .I4(\readdebouncer/countstill [11]),
    .I5(\readdebouncer/countstill [16]),
    .O(\readdebouncer/_n00661_650 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \readdebouncer/_n00662  (
    .I0(\readdebouncer/countstill [24]),
    .I1(\readdebouncer/countstill [18]),
    .I2(\readdebouncer/_n00661_650 ),
    .O(\readdebouncer/_n00662_651 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \readdebouncer/_n00663  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countstill [22]),
    .I2(\readdebouncer/countstill [23]),
    .I3(\readdebouncer/countstill [21]),
    .I4(\readdebouncer/countstill [25]),
    .O(\readdebouncer/_n00663_652 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \readdebouncer/_n00664  (
    .I0(\readdebouncer/countstill [12]),
    .I1(\readdebouncer/countstill [7]),
    .I2(\readdebouncer/countstill [14]),
    .I3(\readdebouncer/countstill [13]),
    .I4(\readdebouncer/countstill [17]),
    .I5(\readdebouncer/countstill [15]),
    .O(\readdebouncer/_n00664_653 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \readdebouncer/_n00665  (
    .I0(\readdebouncer/countstill [1]),
    .I1(\readdebouncer/countstill [0]),
    .I2(\readdebouncer/countstill [2]),
    .I3(\readdebouncer/countstill [3]),
    .I4(\readdebouncer/countstill [4]),
    .I5(\readdebouncer/countstill [5]),
    .O(\readdebouncer/_n00665_654 )
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
    .O(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_656 )
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
    .O(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_657 )
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
    .O(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_658 )
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
    .O(\executedebouncer/_n00661_659 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \executedebouncer/_n00662  (
    .I0(\executedebouncer/countstill [24]),
    .I1(\executedebouncer/countstill [18]),
    .I2(\executedebouncer/_n00661_659 ),
    .O(\executedebouncer/_n00662_660 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \executedebouncer/_n00663  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countstill [22]),
    .I2(\executedebouncer/countstill [23]),
    .I3(\executedebouncer/countstill [21]),
    .I4(\executedebouncer/countstill [25]),
    .O(\executedebouncer/_n00663_661 )
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
    .O(\executedebouncer/_n00664_662 )
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
    .O(\executedebouncer/_n00665_663 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \lifo/mux6211  (
    .I0(\lifo/Fmem_0 [5]),
    .I1(\lifo/Fmem_0 [17]),
    .I2(\lifo/Fmem_0 [23]),
    .I3(\lifo/Fmem_0 [11]),
    .I4(\lifo/top [1]),
    .I5(\lifo/top [0]),
    .O(\lifo/mux621 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \lifo/mux6212  (
    .I0(\lifo/top [2]),
    .I1(\lifo/top [0]),
    .I2(\lifo/Fmem_0 [29]),
    .I3(\lifo/mux621 ),
    .O(\lifo/top[2]_X_6_o_wide_mux_7_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \lifo/mux61111  (
    .I0(\lifo/Fmem_0 [4]),
    .I1(\lifo/Fmem_0 [16]),
    .I2(\lifo/Fmem_0 [22]),
    .I3(\lifo/Fmem_0 [10]),
    .I4(\lifo/top [1]),
    .I5(\lifo/top [0]),
    .O(\lifo/mux6111 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \lifo/mux61112  (
    .I0(\lifo/top [2]),
    .I1(\lifo/top [0]),
    .I2(\lifo/Fmem_0 [28]),
    .I3(\lifo/mux6111 ),
    .O(\lifo/top[2]_X_6_o_wide_mux_7_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \lifo/mux6011  (
    .I0(\lifo/Fmem_0 [3]),
    .I1(\lifo/Fmem_0 [15]),
    .I2(\lifo/Fmem_0 [21]),
    .I3(\lifo/Fmem_0 [9]),
    .I4(\lifo/top [1]),
    .I5(\lifo/top [0]),
    .O(\lifo/mux601 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \lifo/mux6012  (
    .I0(\lifo/top [2]),
    .I1(\lifo/top [0]),
    .I2(\lifo/Fmem_0 [27]),
    .I3(\lifo/mux601 ),
    .O(\lifo/top[2]_X_6_o_wide_mux_7_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \lifo/mux5911  (
    .I0(\lifo/Fmem_0 [2]),
    .I1(\lifo/Fmem_0 [14]),
    .I2(\lifo/Fmem_0 [20]),
    .I3(\lifo/Fmem_0 [8]),
    .I4(\lifo/top [1]),
    .I5(\lifo/top [0]),
    .O(\lifo/mux591 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \lifo/mux5912  (
    .I0(\lifo/top [2]),
    .I1(\lifo/top [0]),
    .I2(\lifo/Fmem_0 [26]),
    .I3(\lifo/mux591 ),
    .O(\lifo/top[2]_X_6_o_wide_mux_7_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \lifo/mux5811  (
    .I0(\lifo/Fmem_0 [1]),
    .I1(\lifo/Fmem_0 [13]),
    .I2(\lifo/Fmem_0 [19]),
    .I3(\lifo/Fmem_0 [7]),
    .I4(\lifo/top [1]),
    .I5(\lifo/top [0]),
    .O(\lifo/mux581 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \lifo/mux5812  (
    .I0(\lifo/top [2]),
    .I1(\lifo/top [0]),
    .I2(\lifo/Fmem_0 [25]),
    .I3(\lifo/mux581 ),
    .O(\lifo/top[2]_X_6_o_wide_mux_7_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \lifo/mux5711  (
    .I0(\lifo/Fmem_0 [0]),
    .I1(\lifo/Fmem_0 [12]),
    .I2(\lifo/Fmem_0 [18]),
    .I3(\lifo/Fmem_0 [6]),
    .I4(\lifo/top [1]),
    .I5(\lifo/top [0]),
    .O(\lifo/mux571 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \lifo/mux5712  (
    .I0(\lifo/top [2]),
    .I1(\lifo/top [0]),
    .I2(\lifo/Fmem_0 [24]),
    .I3(\lifo/mux571 ),
    .O(\lifo/top[2]_X_6_o_wide_mux_7_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \lifo/mux5611  (
    .I0(\lifo/Opmem_0 [2]),
    .I1(\lifo/Opmem_0 [8]),
    .I2(\lifo/Opmem_0 [11]),
    .I3(\lifo/Opmem_0 [5]),
    .I4(\lifo/top [1]),
    .I5(\lifo/top [0]),
    .O(\lifo/mux561 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \lifo/mux5612  (
    .I0(\lifo/top [2]),
    .I1(\lifo/top [0]),
    .I2(\lifo/Opmem_0 [14]),
    .I3(\lifo/mux561 ),
    .O(\lifo/top[2]_X_6_o_wide_mux_8_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \lifo/mux5511  (
    .I0(\lifo/Opmem_0 [1]),
    .I1(\lifo/Opmem_0 [7]),
    .I2(\lifo/Opmem_0 [10]),
    .I3(\lifo/Opmem_0 [4]),
    .I4(\lifo/top [1]),
    .I5(\lifo/top [0]),
    .O(\lifo/mux551 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \lifo/mux5512  (
    .I0(\lifo/top [2]),
    .I1(\lifo/top [0]),
    .I2(\lifo/Opmem_0 [13]),
    .I3(\lifo/mux551 ),
    .O(\lifo/top[2]_X_6_o_wide_mux_8_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \lifo/mux5411  (
    .I0(\lifo/Opmem_0 [0]),
    .I1(\lifo/Opmem_0 [6]),
    .I2(\lifo/Opmem_0 [9]),
    .I3(\lifo/Opmem_0 [3]),
    .I4(\lifo/top [1]),
    .I5(\lifo/top [0]),
    .O(\lifo/mux541 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \lifo/mux5412  (
    .I0(\lifo/top [2]),
    .I1(\lifo/top [0]),
    .I2(\lifo/Opmem_0 [12]),
    .I3(\lifo/mux541 ),
    .O(\lifo/top[2]_X_6_o_wide_mux_8_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hA888888820441108 ))
  \LED/Mmux_currentdigit<0>261  (
    .I0(\lifo/result [5]),
    .I1(\lifo/result [3]),
    .I2(\lifo/result [0]),
    .I3(\lifo/result [1]),
    .I4(\lifo/result [2]),
    .I5(\LED/counter [0]),
    .O(\LED/Mmux_currentdigit<0>26_673 )
  );
  LUT6 #(
    .INIT ( 64'h0026432240220362 ))
  \LED/Mmux_currentdigit<0>262  (
    .I0(\LED/counter [0]),
    .I1(\lifo/result [5]),
    .I2(\lifo/result [2]),
    .I3(\lifo/result [3]),
    .I4(\lifo/result [1]),
    .I5(\lifo/result [0]),
    .O(\LED/Mmux_currentdigit<0>261_674 )
  );
  LUT6 #(
    .INIT ( 64'hFFA8FF08AAA8AA08 ))
  \LED/Mmux_currentdigit<0>263  (
    .I0(\LED/Mmux_currentdigit<0>214 ),
    .I1(\LED/Mmux_currentdigit<0>261_674 ),
    .I2(\lifo/result [4]),
    .I3(\LED/counter [1]),
    .I4(\LED/Mmux_currentdigit<0>26_673 ),
    .I5(\LED/counter [0]),
    .O(\LED/Mmux_currentdigit<0>262_675 )
  );
  LUT5 #(
    .INIT ( 32'h22200200 ))
  \LED/Mmux_currentdigit<0>21  (
    .I0(\LED/counter [1]),
    .I1(\LED/counter [0]),
    .I2(\LED/Mmux_currentdigit<0>214 ),
    .I3(\lifo/result [2]),
    .I4(\lifo/result [5]),
    .O(\LED/Mmux_currentdigit<0>2 )
  );
  LUT5 #(
    .INIT ( 32'h22B2B2B2 ))
  \LED/Mmux_currentdigit<0>23  (
    .I0(\lifo/result [4]),
    .I1(\lifo/result [2]),
    .I2(\lifo/result [5]),
    .I3(\lifo/result [0]),
    .I4(\lifo/result [1]),
    .O(\LED/Mmux_currentdigit<0>21_677 )
  );
  LUT5 #(
    .INIT ( 32'h088E088C ))
  \LED/Mmux_currentdigit<0>24  (
    .I0(\lifo/result [2]),
    .I1(\lifo/result [1]),
    .I2(\lifo/result [5]),
    .I3(\lifo/result [4]),
    .I4(\LED/Mmux_currentdigit<0>214 ),
    .O(\LED/Mmux_currentdigit<0>22 )
  );
  LUT6 #(
    .INIT ( 64'hAAA8AA0808A80808 ))
  \LED/Mmux_currentdigit<0>25  (
    .I0(\LED/counter [0]),
    .I1(\lifo/result [1]),
    .I2(\LED/Mmux_currentdigit<0>214 ),
    .I3(\lifo/result [3]),
    .I4(\LED/Mmux_currentdigit<0>21_677 ),
    .I5(\LED/Mmux_currentdigit<0>22 ),
    .O(\LED/Mmux_currentdigit<0>23_679 )
  );
  LUT6 #(
    .INIT ( 64'h2A22222222222222 ))
  \LED/Mmux_currentdigit<0>26  (
    .I0(\lifo/result [0]),
    .I1(\LED/counter [0]),
    .I2(\lifo/result [4]),
    .I3(\lifo/result [3]),
    .I4(\LED/Mmux_currentdigit<0>214 ),
    .I5(\lifo/result [2]),
    .O(\LED/Mmux_currentdigit<0>24_680 )
  );
  LUT5 #(
    .INIT ( 32'hAAAA2220 ))
  \LED/Mmux_currentdigit<0>27  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/counter [1]),
    .I2(\LED/Mmux_currentdigit<0>24_680 ),
    .I3(\LED/Mmux_currentdigit<0>23_679 ),
    .I4(\LED/Mmux_currentdigit<0>2 ),
    .O(\LED/currentdigit [0])
  );
  LUT6 #(
    .INIT ( 64'h99BBD99BDD996DD9 ))
  \LED/Mram_segments41_SW0  (
    .I0(\lifo/result [4]),
    .I1(\lifo/result [2]),
    .I2(\lifo/result [5]),
    .I3(\lifo/result [3]),
    .I4(\lifo/result [0]),
    .I5(\lifo/result [1]),
    .O(N2)
  );
  LUT5 #(
    .INIT ( 32'hFFEFFFFF ))
  \LED/Mram_segments41  (
    .I0(\LED/counter [1]),
    .I1(N2),
    .I2(\LED/Mmux_currentdigit<0>214 ),
    .I3(\LED/counter [0]),
    .I4(reset_n_IBUF_10),
    .O(\LED/Mram_segments41_616 )
  );
  LUT6 #(
    .INIT ( 64'h1B110B00B515B00B ))
  \LED/Mmux_currentdigit<0>222  (
    .I0(\lifo/result [4]),
    .I1(\lifo/result [2]),
    .I2(\lifo/result [1]),
    .I3(\lifo/result [3]),
    .I4(\LED/counter [0]),
    .I5(\lifo/result [0]),
    .O(\LED/Mmux_currentdigit<0>222_682 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA20000000 ))
  \LED/Mmux_currentdigit<0>223  (
    .I0(\lifo/result [5]),
    .I1(\LED/counter [0]),
    .I2(\lifo/result [0]),
    .I3(\lifo/result [1]),
    .I4(\LED/Mmux_currentdigit<0>2212 ),
    .I5(\LED/Mmux_currentdigit<0>222_682 ),
    .O(\LED/Mmux_currentdigit<0>223_683 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8080808A ))
  \LED/Mmux_currentdigit<0>224  (
    .I0(\LED/counter [0]),
    .I1(\lifo/result [3]),
    .I2(\lifo/result [4]),
    .I3(\lifo/result [2]),
    .I4(\lifo/result [1]),
    .I5(\LED/counter [1]),
    .O(\LED/Mmux_currentdigit<0>224_684 )
  );
  LUT5 #(
    .INIT ( 32'hB232F6BA ))
  \LED/Mmux_currentdigit<0>225  (
    .I0(\lifo/result [1]),
    .I1(\lifo/result [5]),
    .I2(\LED/counter [0]),
    .I3(\lifo/result [0]),
    .I4(\lifo/result [4]),
    .O(\LED/Mmux_currentdigit<0>225_685 )
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
    .I(display_7_OBUF_40),
    .O(display[7])
  );
  OBUF   display_6_OBUF (
    .I(display_6_OBUF_41),
    .O(display[6])
  );
  OBUF   display_5_OBUF (
    .I(display_5_OBUF_42),
    .O(display[5])
  );
  OBUF   display_4_OBUF (
    .I(display_4_OBUF_43),
    .O(display[4])
  );
  OBUF   display_3_OBUF (
    .I(display_3_OBUF_44),
    .O(display[3])
  );
  OBUF   display_2_OBUF (
    .I(display_2_OBUF_45),
    .O(display[2])
  );
  OBUF   display_1_OBUF (
    .I(display_1_OBUF_46),
    .O(display[1])
  );
  OBUF   display_0_OBUF (
    .I(display_0_OBUF_48),
    .O(display[0])
  );
  OBUF   displayctl_3_OBUF (
    .I(displayctl_3_OBUF_47),
    .O(displayctl[3])
  );
  OBUF   displayctl_2_OBUF (
    .I(displayctl_2_OBUF_37),
    .O(displayctl[2])
  );
  OBUF   displayctl_1_OBUF (
    .I(displayctl_1_OBUF_38),
    .O(displayctl[1])
  );
  OBUF   displayctl_0_OBUF (
    .I(displayctl_0_OBUF_39),
    .O(displayctl[0])
  );
  OBUF   resulttbLIFOLED_5_OBUF (
    .I(\lifo/result [5]),
    .O(resulttbLIFOLED[5])
  );
  OBUF   resulttbLIFOLED_4_OBUF (
    .I(\lifo/result [4]),
    .O(resulttbLIFOLED[4])
  );
  OBUF   resulttbLIFOLED_3_OBUF (
    .I(\lifo/result [3]),
    .O(resulttbLIFOLED[3])
  );
  OBUF   resulttbLIFOLED_2_OBUF (
    .I(\lifo/result [2]),
    .O(resulttbLIFOLED[2])
  );
  OBUF   resulttbLIFOLED_1_OBUF (
    .I(\lifo/result [1]),
    .O(resulttbLIFOLED[1])
  );
  OBUF   resulttbLIFOLED_0_OBUF (
    .I(\lifo/result [0]),
    .O(resulttbLIFOLED[0])
  );
  OBUF   opcodetbLIFOLED_2_OBUF (
    .I(\lifo/opcodeselout [2]),
    .O(opcodetbLIFOLED[2])
  );
  OBUF   opcodetbLIFOLED_1_OBUF (
    .I(\lifo/opcodeselout [1]),
    .O(opcodetbLIFOLED[1])
  );
  OBUF   opcodetbLIFOLED_0_OBUF (
    .I(\lifo/opcodeselout [0]),
    .O(opcodetbLIFOLED[0])
  );
  OBUF   opcodetbALULIFO_2_OBUF (
    .I(\alu1/opcodesel_2_1_872 ),
    .O(opcodetbALULIFO[2])
  );
  OBUF   opcodetbALULIFO_1_OBUF (
    .I(\alu1/opcodesel_1_1_873 ),
    .O(opcodetbALULIFO[1])
  );
  OBUF   opcodetbALULIFO_0_OBUF (
    .I(\alu1/opcodesel_0_1_874 ),
    .O(opcodetbALULIFO[0])
  );
  OBUF   FtbALULIFO_5_OBUF (
    .I(\alu1/f_5_1_875 ),
    .O(FtbALULIFO[5])
  );
  OBUF   FtbALULIFO_4_OBUF (
    .I(\alu1/f_4_1_876 ),
    .O(FtbALULIFO[4])
  );
  OBUF   FtbALULIFO_3_OBUF (
    .I(\alu1/f_3_1_877 ),
    .O(FtbALULIFO[3])
  );
  OBUF   FtbALULIFO_2_OBUF (
    .I(\alu1/f_2_1_878 ),
    .O(FtbALULIFO[2])
  );
  OBUF   FtbALULIFO_1_OBUF (
    .I(\alu1/f_1_1_879 ),
    .O(FtbALULIFO[1])
  );
  OBUF   FtbALULIFO_0_OBUF (
    .I(\alu1/f_0_1_880 ),
    .O(FtbALULIFO[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<1>_rt  (
    .I0(\clkdiv1/counter_300hz [1]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<1>_rt_728 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<2>_rt  (
    .I0(\clkdiv1/counter_300hz [2]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<2>_rt_729 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<3>_rt  (
    .I0(\clkdiv1/counter_300hz [3]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<3>_rt_730 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<4>_rt  (
    .I0(\clkdiv1/counter_300hz [4]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<4>_rt_731 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<5>_rt  (
    .I0(\clkdiv1/counter_300hz [5]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<5>_rt_732 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<6>_rt  (
    .I0(\clkdiv1/counter_300hz [6]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<6>_rt_733 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<7>_rt  (
    .I0(\clkdiv1/counter_300hz [7]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<7>_rt_734 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<8>_rt  (
    .I0(\clkdiv1/counter_300hz [8]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<8>_rt_735 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<9>_rt  (
    .I0(\clkdiv1/counter_300hz [9]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<9>_rt_736 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<10>_rt  (
    .I0(\clkdiv1/counter_300hz [10]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<10>_rt_737 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<11>_rt  (
    .I0(\clkdiv1/counter_300hz [11]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<11>_rt_738 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<12>_rt  (
    .I0(\clkdiv1/counter_300hz [12]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<12>_rt_739 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<13>_rt  (
    .I0(\clkdiv1/counter_300hz [13]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<13>_rt_740 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<14>_rt  (
    .I0(\clkdiv1/counter_300hz [14]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<14>_rt_741 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<15>_rt  (
    .I0(\clkdiv1/counter_300hz [15]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<15>_rt_742 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_cy<16>_rt  (
    .I0(\clkdiv1/counter_300hz [16]),
    .O(\clkdiv1/Mcount_counter_300hz_cy<16>_rt_743 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clkdiv1/Mcount_counter_300hz_xor<17>_rt  (
    .I0(\clkdiv1/counter_300hz [17]),
    .O(\clkdiv1/Mcount_counter_300hz_xor<17>_rt_744 )
  );
  FDC   \readdebouncer/pushed  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/pushed_rstpot_745 ),
    .Q(\readdebouncer/pushed_286 )
  );
  FDC   \readdebouncer/still  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/still_rstpot_746 ),
    .Q(\readdebouncer/still_287 )
  );
  FDC   \readdebouncer/clean  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/clean_rstpot_747 ),
    .Q(\readdebouncer/clean_26 )
  );
  FDC   \executedebouncer/pushed  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/pushed_rstpot_748 ),
    .Q(\executedebouncer/pushed_497 )
  );
  FDC   \executedebouncer/still  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/still_rstpot_749 ),
    .Q(\executedebouncer/still_498 )
  );
  FDC   \executedebouncer/clean  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/clean_rstpot_750 ),
    .Q(\executedebouncer/clean_25 )
  );
  FD   \clkdiv1/clk_300hz  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/clk_300hz_rstpot1_751 ),
    .Q(\clkdiv1/clk_300hz_27 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_11_rstpot  (
    .I0(\readdebouncer/countstill [11]),
    .I1(\readdebouncer/Mcount_countstill11 ),
    .I2(\readdebouncer/_n0066_inv ),
    .O(\readdebouncer/countstill_11_rstpot_752 )
  );
  FDC   \readdebouncer/countstill_11  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_11_rstpot_752 ),
    .Q(\readdebouncer/countstill [11])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_10_rstpot  (
    .I0(\readdebouncer/countstill [10]),
    .I1(\readdebouncer/Mcount_countstill10 ),
    .I2(\readdebouncer/_n0066_inv ),
    .O(\readdebouncer/countstill_10_rstpot_753 )
  );
  FDC   \readdebouncer/countstill_10  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_10_rstpot_753 ),
    .Q(\readdebouncer/countstill [10])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_9_rstpot  (
    .I0(\readdebouncer/countstill [9]),
    .I1(\readdebouncer/Mcount_countstill9 ),
    .I2(\readdebouncer/_n0066_inv ),
    .O(\readdebouncer/countstill_9_rstpot_754 )
  );
  FDC   \readdebouncer/countstill_9  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_9_rstpot_754 ),
    .Q(\readdebouncer/countstill [9])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_8_rstpot  (
    .I0(\readdebouncer/countstill [8]),
    .I1(\readdebouncer/Mcount_countstill8 ),
    .I2(\readdebouncer/_n0066_inv ),
    .O(\readdebouncer/countstill_8_rstpot_755 )
  );
  FDC   \readdebouncer/countstill_8  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_8_rstpot_755 ),
    .Q(\readdebouncer/countstill [8])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_7_rstpot  (
    .I0(\readdebouncer/countstill [7]),
    .I1(\readdebouncer/Mcount_countstill7 ),
    .I2(\readdebouncer/_n0066_inv ),
    .O(\readdebouncer/countstill_7_rstpot_756 )
  );
  FDC   \readdebouncer/countstill_7  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_7_rstpot_756 ),
    .Q(\readdebouncer/countstill [7])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_6_rstpot  (
    .I0(\readdebouncer/countstill [6]),
    .I1(\readdebouncer/Mcount_countstill6 ),
    .I2(\readdebouncer/_n0066_inv ),
    .O(\readdebouncer/countstill_6_rstpot_757 )
  );
  FDC   \readdebouncer/countstill_6  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_6_rstpot_757 ),
    .Q(\readdebouncer/countstill [6])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_5_rstpot  (
    .I0(\readdebouncer/countstill [5]),
    .I1(\readdebouncer/Mcount_countstill5 ),
    .I2(\readdebouncer/_n0066_inv ),
    .O(\readdebouncer/countstill_5_rstpot_758 )
  );
  FDC   \readdebouncer/countstill_5  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_5_rstpot_758 ),
    .Q(\readdebouncer/countstill [5])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_4_rstpot  (
    .I0(\readdebouncer/countstill [4]),
    .I1(\readdebouncer/Mcount_countstill4 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_4_rstpot_759 )
  );
  FDC   \readdebouncer/countstill_4  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_4_rstpot_759 ),
    .Q(\readdebouncer/countstill [4])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_3_rstpot  (
    .I0(\readdebouncer/countstill [3]),
    .I1(\readdebouncer/Mcount_countstill3 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_3_rstpot_760 )
  );
  FDC   \readdebouncer/countstill_3  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_3_rstpot_760 ),
    .Q(\readdebouncer/countstill [3])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_2_rstpot  (
    .I0(\readdebouncer/countstill [2]),
    .I1(\readdebouncer/Mcount_countstill2 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_2_rstpot_761 )
  );
  FDC   \readdebouncer/countstill_2  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_2_rstpot_761 ),
    .Q(\readdebouncer/countstill [2])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_1_rstpot  (
    .I0(\readdebouncer/countstill [1]),
    .I1(\readdebouncer/Mcount_countstill1 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_1_rstpot_762 )
  );
  FDC   \readdebouncer/countstill_1  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_1_rstpot_762 ),
    .Q(\readdebouncer/countstill [1])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_0_rstpot  (
    .I0(\readdebouncer/countstill [0]),
    .I1(\readdebouncer/Mcount_countstill ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_0_rstpot_763 )
  );
  FDC   \readdebouncer/countstill_0  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_0_rstpot_763 ),
    .Q(\readdebouncer/countstill [0])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_11_rstpot  (
    .I0(\executedebouncer/countstill [11]),
    .I1(\executedebouncer/Mcount_countstill11 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_11_rstpot_764 )
  );
  FDC   \executedebouncer/countstill_11  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_11_rstpot_764 ),
    .Q(\executedebouncer/countstill [11])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_10_rstpot  (
    .I0(\executedebouncer/countstill [10]),
    .I1(\executedebouncer/Mcount_countstill10 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_10_rstpot_765 )
  );
  FDC   \executedebouncer/countstill_10  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_10_rstpot_765 ),
    .Q(\executedebouncer/countstill [10])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_9_rstpot  (
    .I0(\executedebouncer/countstill [9]),
    .I1(\executedebouncer/Mcount_countstill9 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_9_rstpot_766 )
  );
  FDC   \executedebouncer/countstill_9  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_9_rstpot_766 ),
    .Q(\executedebouncer/countstill [9])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_8_rstpot  (
    .I0(\executedebouncer/countstill [8]),
    .I1(\executedebouncer/Mcount_countstill8 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_8_rstpot_767 )
  );
  FDC   \executedebouncer/countstill_8  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_8_rstpot_767 ),
    .Q(\executedebouncer/countstill [8])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_7_rstpot  (
    .I0(\executedebouncer/countstill [7]),
    .I1(\executedebouncer/Mcount_countstill7 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_7_rstpot_768 )
  );
  FDC   \executedebouncer/countstill_7  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_7_rstpot_768 ),
    .Q(\executedebouncer/countstill [7])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_6_rstpot  (
    .I0(\executedebouncer/countstill [6]),
    .I1(\executedebouncer/Mcount_countstill6 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_6_rstpot_769 )
  );
  FDC   \executedebouncer/countstill_6  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_6_rstpot_769 ),
    .Q(\executedebouncer/countstill [6])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_5_rstpot  (
    .I0(\executedebouncer/countstill [5]),
    .I1(\executedebouncer/Mcount_countstill5 ),
    .I2(\executedebouncer/_n0066_inv ),
    .O(\executedebouncer/countstill_5_rstpot_770 )
  );
  FDC   \executedebouncer/countstill_5  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_5_rstpot_770 ),
    .Q(\executedebouncer/countstill [5])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_4_rstpot  (
    .I0(\executedebouncer/countstill [4]),
    .I1(\executedebouncer/Mcount_countstill4 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_4_rstpot_771 )
  );
  FDC   \executedebouncer/countstill_4  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_4_rstpot_771 ),
    .Q(\executedebouncer/countstill [4])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_3_rstpot  (
    .I0(\executedebouncer/countstill [3]),
    .I1(\executedebouncer/Mcount_countstill3 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_3_rstpot_772 )
  );
  FDC   \executedebouncer/countstill_3  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_3_rstpot_772 ),
    .Q(\executedebouncer/countstill [3])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_2_rstpot  (
    .I0(\executedebouncer/countstill [2]),
    .I1(\executedebouncer/Mcount_countstill2 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_2_rstpot_773 )
  );
  FDC   \executedebouncer/countstill_2  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_2_rstpot_773 ),
    .Q(\executedebouncer/countstill [2])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_1_rstpot  (
    .I0(\executedebouncer/countstill [1]),
    .I1(\executedebouncer/Mcount_countstill1 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_1_rstpot_774 )
  );
  FDC   \executedebouncer/countstill_1  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_1_rstpot_774 ),
    .Q(\executedebouncer/countstill [1])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_0_rstpot  (
    .I0(\executedebouncer/countstill [0]),
    .I1(\executedebouncer/Mcount_countstill ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_0_rstpot_775 )
  );
  FDC   \executedebouncer/countstill_0  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_0_rstpot_775 ),
    .Q(\executedebouncer/countstill [0])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_12_rstpot  (
    .I0(\readdebouncer/countstill [12]),
    .I1(\readdebouncer/Mcount_countstill12 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_12_rstpot_776 )
  );
  FDC   \readdebouncer/countstill_12  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_12_rstpot_776 ),
    .Q(\readdebouncer/countstill [12])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_12_rstpot  (
    .I0(\executedebouncer/countstill [12]),
    .I1(\executedebouncer/Mcount_countstill12 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_12_rstpot_777 )
  );
  FDC   \executedebouncer/countstill_12  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_12_rstpot_777 ),
    .Q(\executedebouncer/countstill [12])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_13_rstpot  (
    .I0(\readdebouncer/countstill [13]),
    .I1(\readdebouncer/Mcount_countstill13 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_13_rstpot_778 )
  );
  FDC   \readdebouncer/countstill_13  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_13_rstpot_778 ),
    .Q(\readdebouncer/countstill [13])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_13_rstpot  (
    .I0(\executedebouncer/countstill [13]),
    .I1(\executedebouncer/Mcount_countstill13 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_13_rstpot_779 )
  );
  FDC   \executedebouncer/countstill_13  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_13_rstpot_779 ),
    .Q(\executedebouncer/countstill [13])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_14_rstpot  (
    .I0(\readdebouncer/countstill [14]),
    .I1(\readdebouncer/Mcount_countstill14 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_14_rstpot_780 )
  );
  FDC   \readdebouncer/countstill_14  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_14_rstpot_780 ),
    .Q(\readdebouncer/countstill [14])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_14_rstpot  (
    .I0(\executedebouncer/countstill [14]),
    .I1(\executedebouncer/Mcount_countstill14 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_14_rstpot_781 )
  );
  FDC   \executedebouncer/countstill_14  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_14_rstpot_781 ),
    .Q(\executedebouncer/countstill [14])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_15_rstpot  (
    .I0(\readdebouncer/countstill [15]),
    .I1(\readdebouncer/Mcount_countstill15 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_15_rstpot_782 )
  );
  FDC   \readdebouncer/countstill_15  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_15_rstpot_782 ),
    .Q(\readdebouncer/countstill [15])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_15_rstpot  (
    .I0(\executedebouncer/countstill [15]),
    .I1(\executedebouncer/Mcount_countstill15 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_15_rstpot_783 )
  );
  FDC   \executedebouncer/countstill_15  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_15_rstpot_783 ),
    .Q(\executedebouncer/countstill [15])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_16_rstpot  (
    .I0(\readdebouncer/countstill [16]),
    .I1(\readdebouncer/Mcount_countstill16 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_16_rstpot_784 )
  );
  FDC   \readdebouncer/countstill_16  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_16_rstpot_784 ),
    .Q(\readdebouncer/countstill [16])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_16_rstpot  (
    .I0(\executedebouncer/countstill [16]),
    .I1(\executedebouncer/Mcount_countstill16 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_16_rstpot_785 )
  );
  FDC   \executedebouncer/countstill_16  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_16_rstpot_785 ),
    .Q(\executedebouncer/countstill [16])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_17_rstpot  (
    .I0(\readdebouncer/countstill [17]),
    .I1(\readdebouncer/Mcount_countstill17 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_17_rstpot_786 )
  );
  FDC   \readdebouncer/countstill_17  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_17_rstpot_786 ),
    .Q(\readdebouncer/countstill [17])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_17_rstpot  (
    .I0(\executedebouncer/countstill [17]),
    .I1(\executedebouncer/Mcount_countstill17 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_17_rstpot_787 )
  );
  FDC   \executedebouncer/countstill_17  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_17_rstpot_787 ),
    .Q(\executedebouncer/countstill [17])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \readdebouncer/countstill_18_rstpot  (
    .I0(\readdebouncer/countstill [18]),
    .I1(\readdebouncer/Mcount_countstill18 ),
    .I2(\readdebouncer/_n0066_inv1_805 ),
    .O(\readdebouncer/countstill_18_rstpot_788 )
  );
  FDC   \readdebouncer/countstill_18  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\readdebouncer/countstill_18_rstpot_788 ),
    .Q(\readdebouncer/countstill [18])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \executedebouncer/countstill_18_rstpot  (
    .I0(\executedebouncer/countstill [18]),
    .I1(\executedebouncer/Mcount_countstill18 ),
    .I2(\executedebouncer/_n0066_inv1_806 ),
    .O(\executedebouncer/countstill_18_rstpot_789 )
  );
  FDC   \executedebouncer/countstill_18  (
    .C(clk_BUFGP_9),
    .CLR(\LED/reset_n_inv ),
    .D(\executedebouncer/countstill_18_rstpot_789 ),
    .Q(\executedebouncer/countstill [18])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/_n00666_SW0  (
    .I0(\readdebouncer/countstill [20]),
    .I1(\readdebouncer/countstill [19]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAAAAAAAAAA ))
  \readdebouncer/still_rstpot  (
    .I0(\readdebouncer/still_287 ),
    .I1(N4),
    .I2(\readdebouncer/_n00663_652 ),
    .I3(\readdebouncer/_n00664_653 ),
    .I4(\readdebouncer/_n00665_654 ),
    .I5(\readdebouncer/_n00662_651 ),
    .O(\readdebouncer/still_rstpot_746 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \executedebouncer/_n00666_SW0  (
    .I0(\executedebouncer/countstill [20]),
    .I1(\executedebouncer/countstill [19]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAAAAAAAAAA ))
  \executedebouncer/still_rstpot  (
    .I0(\executedebouncer/still_498 ),
    .I1(N6),
    .I2(\executedebouncer/_n00663_661 ),
    .I3(\executedebouncer/_n00664_662 ),
    .I4(\executedebouncer/_n00665_663 ),
    .I5(\executedebouncer/_n00662_660 ),
    .O(\executedebouncer/still_rstpot_749 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \readdebouncer/_n00662_SW0  (
    .I0(\readdebouncer/countstill [20]),
    .I1(\readdebouncer/countstill [19]),
    .I2(\readdebouncer/countstill [18]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hEFFFFFFFFFFFFFFF ))
  \readdebouncer/_n0066_inv1  (
    .I0(\readdebouncer/countstill [24]),
    .I1(N8),
    .I2(\readdebouncer/_n00663_652 ),
    .I3(\readdebouncer/_n00664_653 ),
    .I4(\readdebouncer/_n00665_654 ),
    .I5(\readdebouncer/_n00661_650 ),
    .O(\readdebouncer/_n0066_inv )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \executedebouncer/_n00662_SW0  (
    .I0(\executedebouncer/countstill [20]),
    .I1(\executedebouncer/countstill [19]),
    .I2(\executedebouncer/countstill [18]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hEFFFFFFFFFFFFFFF ))
  \executedebouncer/_n0066_inv1  (
    .I0(\executedebouncer/countstill [24]),
    .I1(N10),
    .I2(\executedebouncer/_n00663_661 ),
    .I3(\executedebouncer/_n00664_662 ),
    .I4(\executedebouncer/_n00665_663 ),
    .I5(\executedebouncer/_n00661_659 ),
    .O(\executedebouncer/_n0066_inv )
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW0  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/pushed_286 ),
    .I2(\readdebouncer/still_287 ),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hAA02AAAA ))
  \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW1  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [18]),
    .I2(\readdebouncer/countpushed [24]),
    .I3(\readdebouncer/pushed_286 ),
    .I4(\readdebouncer/still_287 ),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'h3555555555555555 ))
  \readdebouncer/_n0063_inv1  (
    .I0(N12),
    .I1(N13),
    .I2(\readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_649 ),
    .I3(\readdebouncer/GND_2_o_GND_2_o_equal_4_o [25]),
    .I4(\readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_647 ),
    .I5(\readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_648 ),
    .O(\readdebouncer/_n0063_inv )
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW0  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/pushed_497 ),
    .I2(\executedebouncer/still_498 ),
    .O(N15)
  );
  LUT5 #(
    .INIT ( 32'hAA02AAAA ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW1  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/countpushed [18]),
    .I2(\executedebouncer/countpushed [24]),
    .I3(\executedebouncer/pushed_497 ),
    .I4(\executedebouncer/still_498 ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h3555555555555555 ))
  \executedebouncer/_n0063_inv1  (
    .I0(N15),
    .I1(N16),
    .I2(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_658 ),
    .I3(\executedebouncer/GND_2_o_GND_2_o_equal_4_o [25]),
    .I4(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_656 ),
    .I5(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_657 ),
    .O(\executedebouncer/_n0063_inv )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW2  (
    .I0(\readdebouncer/pushed_286 ),
    .I1(readin_IBUF_8),
    .I2(\readdebouncer/still_287 ),
    .O(N18)
  );
  LUT5 #(
    .INIT ( 32'hAAFDFFFF ))
  \readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW3  (
    .I0(\readdebouncer/still_287 ),
    .I1(\readdebouncer/countpushed [18]),
    .I2(\readdebouncer/countpushed [24]),
    .I3(\readdebouncer/pushed_286 ),
    .I4(readin_IBUF_8),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'h15555555D5555555 ))
  \readdebouncer/pushed_rstpot  (
    .I0(N18),
    .I1(\readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_648 ),
    .I2(\readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_647 ),
    .I3(\readdebouncer/GND_2_o_GND_2_o_equal_4_o [25]),
    .I4(\readdebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_649 ),
    .I5(N19),
    .O(\readdebouncer/pushed_rstpot_745 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW2  (
    .I0(\executedebouncer/pushed_497 ),
    .I1(executein_IBUF_7),
    .I2(\executedebouncer/still_498 ),
    .O(N21)
  );
  LUT5 #(
    .INIT ( 32'hAAFDFFFF ))
  \executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>5_SW3  (
    .I0(\executedebouncer/still_498 ),
    .I1(\executedebouncer/countpushed [18]),
    .I2(\executedebouncer/countpushed [24]),
    .I3(\executedebouncer/pushed_497 ),
    .I4(executein_IBUF_7),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h15555555D5555555 ))
  \executedebouncer/pushed_rstpot  (
    .I0(N21),
    .I1(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>2_657 ),
    .I2(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>1_656 ),
    .I3(\executedebouncer/GND_2_o_GND_2_o_equal_4_o [25]),
    .I4(\executedebouncer/GND_2_o_GND_2_o_equal_4_o<25>3_658 ),
    .I5(N22),
    .O(\executedebouncer/pushed_rstpot_748 )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \lifo/_n01081  (
    .I0(reset_n_IBUF_10),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .O(\lifo/_n0108 )
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
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \readdebouncer/clean_rstpot  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/pushed_286 ),
    .I2(\readdebouncer/still_287 ),
    .I3(\readdebouncer/clean_26 ),
    .O(\readdebouncer/clean_rstpot_747 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \executedebouncer/clean_rstpot  (
    .I0(executein_IBUF_7),
    .I1(\executedebouncer/pushed_497 ),
    .I2(\executedebouncer/still_498 ),
    .I3(\executedebouncer/clean_25 ),
    .O(\executedebouncer/clean_rstpot_750 )
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \clkdiv1/clk_300hz_rstpot1  (
    .I0(reset_n_IBUF_10),
    .I1(\clkdiv1/clk_300hz_27 ),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .O(\clkdiv1/clk_300hz_rstpot1_751 )
  );
  LUT6 #(
    .INIT ( 64'h0141000001410410 ))
  \LED/Mmux_currentdigit<0>228  (
    .I0(\lifo/result [5]),
    .I1(\lifo/result [3]),
    .I2(\lifo/result [4]),
    .I3(\lifo/result [2]),
    .I4(\lifo/result [1]),
    .I5(\LED/counter [0]),
    .O(\LED/Mmux_currentdigit<0>228_686 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAABAAAAA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT36_SW0  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT32 ),
    .I1(B[2]),
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT33_629 ),
    .I3(\decoder1/Mram_opcodeout1 ),
    .I4(opcodein[2]),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT3 ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88882888 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT36  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_109 ),
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
    .I0(\LED/Mmux_currentdigit<0>228_686 ),
    .I1(\LED/Mmux_currentdigit<0>224_684 ),
    .I2(\lifo/result [2]),
    .I3(\lifo/result [3]),
    .I4(\LED/Mmux_currentdigit<0>225_685 ),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hAAAA888088808880 ))
  \LED/Mmux_currentdigit<0>229  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/Mmux_currentdigit<0>214 ),
    .I2(\LED/Mmux_currentdigit<0>223_683 ),
    .I3(N26),
    .I4(\LED/counter [1]),
    .I5(\LED/counter [0]),
    .O(\LED/currentdigit [1])
  );
  LUT4 #(
    .INIT ( 16'hB4D2 ))
  \lifo/Mcount_top_xor<2>11  (
    .I0(\readdebouncer/clean_26 ),
    .I1(\lifo/top [0]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .O(\lifo/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \lifo/Mcount_top_xor<1>11  (
    .I0(\readdebouncer/clean_26 ),
    .I1(\lifo/top [0]),
    .I2(\lifo/top [1]),
    .O(\lifo/Result [1])
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
  LUT2 #(
    .INIT ( 4'h8 ))
  \readdebouncer/Mcount_countpushed_lut<8>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [8]),
    .O(\readdebouncer/Mcount_countpushed_lut [8])
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
  \readdebouncer/Mcount_countpushed_lut<9>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [9]),
    .O(\readdebouncer/Mcount_countpushed_lut [9])
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
  \readdebouncer/Mcount_countpushed_lut<10>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [10]),
    .O(\readdebouncer/Mcount_countpushed_lut [10])
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
  \readdebouncer/Mcount_countpushed_lut<11>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [11]),
    .O(\readdebouncer/Mcount_countpushed_lut [11])
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
  \readdebouncer/Mcount_countpushed_lut<12>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [12]),
    .O(\readdebouncer/Mcount_countpushed_lut [12])
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
  \readdebouncer/Mcount_countpushed_lut<13>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [13]),
    .O(\readdebouncer/Mcount_countpushed_lut [13])
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
  \readdebouncer/Mcount_countpushed_lut<14>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [14]),
    .O(\readdebouncer/Mcount_countpushed_lut [14])
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
  \readdebouncer/Mcount_countpushed_lut<15>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [15]),
    .O(\readdebouncer/Mcount_countpushed_lut [15])
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
  \readdebouncer/Mcount_countpushed_lut<16>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [16]),
    .O(\readdebouncer/Mcount_countpushed_lut [16])
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
  \readdebouncer/Mcount_countpushed_lut<17>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [17]),
    .O(\readdebouncer/Mcount_countpushed_lut [17])
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
  \readdebouncer/Mcount_countpushed_lut<18>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [18]),
    .O(\readdebouncer/Mcount_countpushed_lut [18])
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
  \readdebouncer/Mcount_countpushed_lut<19>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [19]),
    .O(\readdebouncer/Mcount_countpushed_lut [19])
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
  \readdebouncer/Mcount_countpushed_lut<20>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [20]),
    .O(\readdebouncer/Mcount_countpushed_lut [20])
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
  \readdebouncer/Mcount_countpushed_lut<21>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [21]),
    .O(\readdebouncer/Mcount_countpushed_lut [21])
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
  \readdebouncer/Mcount_countpushed_lut<22>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [22]),
    .O(\readdebouncer/Mcount_countpushed_lut [22])
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
  \readdebouncer/Mcount_countpushed_lut<23>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [23]),
    .O(\readdebouncer/Mcount_countpushed_lut [23])
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
  \readdebouncer/Mcount_countpushed_lut<24>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [24]),
    .O(\readdebouncer/Mcount_countpushed_lut [24])
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
  \readdebouncer/Mcount_countpushed_lut<25>  (
    .I0(readin_IBUF_8),
    .I1(\readdebouncer/countpushed [25]),
    .O(\readdebouncer/Mcount_countpushed_lut [25])
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT42_107 )
  );
  LUT5 #(
    .INIT ( 32'h00020200 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT23  (
    .I0(opcodein[2]),
    .I1(B[2]),
    .I2(B[1]),
    .I3(opcodein[0]),
    .I4(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT22_635 )
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14  (
    .I0(opcodein[2]),
    .I1(B[2]),
    .I2(opcodein[0]),
    .I3(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT16_643 )
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
    .I1(\LED/Mram_segments41_616 ),
    .I2(\LED/currentdigit [0]),
    .I3(reset_n_IBUF_10),
    .I4(\LED/Mmux_currentdigit<0>262_675 ),
    .O(display_1_OBUF_46)
  );
  LUT5 #(
    .INIT ( 32'hFF778007 ))
  \LED/Mram_segments31  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/Mmux_currentdigit<0>262_675 ),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/Mram_segments41_616 ),
    .I4(\LED/currentdigit [0]),
    .O(display_3_OBUF_44)
  );
  LUT5 #(
    .INIT ( 32'h8088F088 ))
  \LED/Mram_segments51  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/Mmux_currentdigit<0>262_675 ),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/Mram_segments41_616 ),
    .I4(\LED/currentdigit [0]),
    .O(display_5_OBUF_42)
  );
  LUT5 #(
    .INIT ( 32'h88E8E8E8 ))
  \LED/Mram_segments21  (
    .I0(\LED/currentdigit [1]),
    .I1(\LED/Mram_segments41_616 ),
    .I2(\LED/currentdigit [0]),
    .I3(reset_n_IBUF_10),
    .I4(\LED/Mmux_currentdigit<0>262_675 ),
    .O(display_2_OBUF_45)
  );
  LUT5 #(
    .INIT ( 32'hDD141414 ))
  \LED/Mram_segments61  (
    .I0(\LED/Mram_segments41_616 ),
    .I1(\LED/currentdigit [1]),
    .I2(\LED/currentdigit [0]),
    .I3(reset_n_IBUF_10),
    .I4(\LED/Mmux_currentdigit<0>262_675 ),
    .O(display_6_OBUF_41)
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
    .I2(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_108 ),
    .I3(B[1]),
    .I4(N28),
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_109 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT14_641 )
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_108 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT121  (
    .I0(opcodein[0]),
    .I1(opcodein[2]),
    .I2(opcodein[1]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_109 )
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
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT17_644 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT18 )
  );
  LUT5 #(
    .INIT ( 32'h95008015 ))
  \LED/Mram_segments71  (
    .I0(\LED/currentdigit [1]),
    .I1(reset_n_IBUF_10),
    .I2(\LED/Mmux_currentdigit<0>262_675 ),
    .I3(\LED/Mram_segments41_616 ),
    .I4(\LED/currentdigit [0]),
    .O(display_7_OBUF_40)
  );
  LUT5 #(
    .INIT ( 32'h87708007 ))
  \LED/Mram_segments42  (
    .I0(reset_n_IBUF_10),
    .I1(\LED/Mmux_currentdigit<0>262_675 ),
    .I2(\LED/currentdigit [1]),
    .I3(\LED/Mram_segments41_616 ),
    .I4(\LED/currentdigit [0]),
    .O(display_4_OBUF_43)
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
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT13_108 ),
    .I1(A_1_IBUF_1),
    .I2(B[1]),
    .I3(A_0_IBUF_2),
    .I4(B[0]),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT21_634 )
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
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT41_631 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAEAAAEAAAA ))
  \alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT44  (
    .I0(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT43_632 ),
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
    .I5(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT12_109 ),
    .O(\alu1/Mmux_opcodein[2]_GND_5_o_wide_mux_9_OUT62_639 )
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
  \readdebouncer/_n0066_inv1_1  (
    .I0(\readdebouncer/countstill [24]),
    .I1(N8),
    .I2(\readdebouncer/_n00663_652 ),
    .I3(\readdebouncer/_n00664_653 ),
    .I4(\readdebouncer/_n00665_654 ),
    .I5(\readdebouncer/_n00661_650 ),
    .O(\readdebouncer/_n0066_inv1_805 )
  );
  LUT6 #(
    .INIT ( 64'hEFFFFFFFFFFFFFFF ))
  \executedebouncer/_n0066_inv1_1  (
    .I0(\executedebouncer/countstill [24]),
    .I1(N10),
    .I2(\executedebouncer/_n00663_661 ),
    .I3(\executedebouncer/_n00664_662 ),
    .I4(\executedebouncer/_n00665_663 ),
    .I5(\executedebouncer/_n00661_659 ),
    .O(\executedebouncer/_n0066_inv1_806 )
  );
  FDCE   \lifo/top_0_1  (
    .C(clk_BUFGP_9),
    .CE(\lifo/_n0129_inv ),
    .CLR(\LED/reset_n_inv ),
    .D(\lifo/Result [0]),
    .Q(\lifo/top_0_1_807 )
  );
  LUT4 #(
    .INIT ( 16'h5155 ))
  \lifo/_n0120_inv1_rstpot  (
    .I0(\readdebouncer/clean_26 ),
    .I1(\lifo/top_0_1_807 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .O(\lifo/_n0120_inv1_rstpot_808 )
  );
  FD   \clkdiv1/counter_300hz_2  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_2_rstpot_854 ),
    .Q(\clkdiv1/counter_300hz [2])
  );
  FD   \clkdiv1/counter_300hz_0  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_0_rstpot_855 ),
    .Q(\clkdiv1/counter_300hz [0])
  );
  FD   \clkdiv1/counter_300hz_1  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_1_rstpot_856 ),
    .Q(\clkdiv1/counter_300hz [1])
  );
  FD   \clkdiv1/counter_300hz_5  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_5_rstpot_857 ),
    .Q(\clkdiv1/counter_300hz [5])
  );
  FD   \clkdiv1/counter_300hz_3  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_3_rstpot_858 ),
    .Q(\clkdiv1/counter_300hz [3])
  );
  FD   \clkdiv1/counter_300hz_4  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_4_rstpot_859 ),
    .Q(\clkdiv1/counter_300hz [4])
  );
  FD   \clkdiv1/counter_300hz_8  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_8_rstpot_860 ),
    .Q(\clkdiv1/counter_300hz [8])
  );
  FD   \clkdiv1/counter_300hz_6  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_6_rstpot_861 ),
    .Q(\clkdiv1/counter_300hz [6])
  );
  FD   \clkdiv1/counter_300hz_7  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_7_rstpot_862 ),
    .Q(\clkdiv1/counter_300hz [7])
  );
  FD   \clkdiv1/counter_300hz_11  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_11_rstpot_863 ),
    .Q(\clkdiv1/counter_300hz [11])
  );
  FD   \clkdiv1/counter_300hz_9  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_9_rstpot_864 ),
    .Q(\clkdiv1/counter_300hz [9])
  );
  FD   \clkdiv1/counter_300hz_10  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_10_rstpot_865 ),
    .Q(\clkdiv1/counter_300hz [10])
  );
  FD   \clkdiv1/counter_300hz_14  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_14_rstpot_866 ),
    .Q(\clkdiv1/counter_300hz [14])
  );
  FD   \clkdiv1/counter_300hz_12  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_12_rstpot_867 ),
    .Q(\clkdiv1/counter_300hz [12])
  );
  FD   \clkdiv1/counter_300hz_13  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_13_rstpot_868 ),
    .Q(\clkdiv1/counter_300hz [13])
  );
  FD   \clkdiv1/counter_300hz_17  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_17_rstpot_869 ),
    .Q(\clkdiv1/counter_300hz [17])
  );
  FD   \clkdiv1/counter_300hz_15  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_15_rstpot_870 ),
    .Q(\clkdiv1/counter_300hz [15])
  );
  FD   \clkdiv1/counter_300hz_16  (
    .C(clk_BUFGP_9),
    .D(\clkdiv1/counter_300hz_16_rstpot_871 ),
    .Q(\clkdiv1/counter_300hz [16])
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCACCCCCCCCC ))
  \lifo/Fmem_0_24_dpot  (
    .I0(\alu1/f [0]),
    .I1(\lifo/Fmem_0 [24]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Fmem_0_24_dpot_833 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCACCCCCCCCC ))
  \lifo/Fmem_0_25_dpot  (
    .I0(\alu1/f [1]),
    .I1(\lifo/Fmem_0 [25]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Fmem_0_25_dpot_834 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCACCCCCCCCC ))
  \lifo/Fmem_0_26_dpot  (
    .I0(\alu1/f [2]),
    .I1(\lifo/Fmem_0 [26]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Fmem_0_26_dpot_835 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCACCCCCCCCC ))
  \lifo/Fmem_0_27_dpot  (
    .I0(\alu1/f [3]),
    .I1(\lifo/Fmem_0 [27]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Fmem_0_27_dpot_836 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCACCCCCCCCC ))
  \lifo/Fmem_0_28_dpot  (
    .I0(\alu1/f [4]),
    .I1(\lifo/Fmem_0 [28]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Fmem_0_28_dpot_837 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCACCCCCCCCC ))
  \lifo/Fmem_0_29_dpot  (
    .I0(\alu1/f [5]),
    .I1(\lifo/Fmem_0 [29]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Fmem_0_29_dpot_838 )
  );
  LUT6 #(
    .INIT ( 64'hCCCACCCCCCCCCCCC ))
  \lifo/Opmem_0_3_dpot  (
    .I0(\alu1/opcodesel [0]),
    .I1(\lifo/Opmem_0 [3]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Opmem_0_3_dpot_842 )
  );
  LUT6 #(
    .INIT ( 64'hCCCACCCCCCCCCCCC ))
  \lifo/Opmem_0_4_dpot  (
    .I0(\alu1/opcodesel [1]),
    .I1(\lifo/Opmem_0 [4]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Opmem_0_4_dpot_843 )
  );
  LUT6 #(
    .INIT ( 64'hCCCACCCCCCCCCCCC ))
  \lifo/Opmem_0_5_dpot  (
    .I0(\alu1/opcodesel [2]),
    .I1(\lifo/Opmem_0 [5]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Opmem_0_5_dpot_844 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCACCCCCCCCCC ))
  \lifo/Opmem_0_6_dpot  (
    .I0(\alu1/opcodesel [0]),
    .I1(\lifo/Opmem_0 [6]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Opmem_0_6_dpot_845 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCACCCCCCCCCC ))
  \lifo/Opmem_0_7_dpot  (
    .I0(\alu1/opcodesel [1]),
    .I1(\lifo/Opmem_0 [7]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Opmem_0_7_dpot_846 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCACCCCCCCCCC ))
  \lifo/Opmem_0_8_dpot  (
    .I0(\alu1/opcodesel [2]),
    .I1(\lifo/Opmem_0 [8]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Opmem_0_8_dpot_847 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCACCCCCCCCC ))
  \lifo/Opmem_0_12_dpot  (
    .I0(\alu1/opcodesel [0]),
    .I1(\lifo/Opmem_0 [12]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Opmem_0_12_dpot_851 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCACCCCCCCCC ))
  \lifo/Opmem_0_13_dpot  (
    .I0(\alu1/opcodesel [1]),
    .I1(\lifo/Opmem_0 [13]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Opmem_0_13_dpot_852 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCACCCCCCCCC ))
  \lifo/Opmem_0_14_dpot  (
    .I0(\alu1/opcodesel [2]),
    .I1(\lifo/Opmem_0 [14]),
    .I2(\lifo/top [2]),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\lifo/_n0120_inv1_rstpot_808 ),
    .O(\lifo/Opmem_0_14_dpot_853 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_0_rstpot  (
    .I0(Result[0]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_0_rstpot_855 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_1_rstpot  (
    .I0(Result[1]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_1_rstpot_856 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_2_rstpot  (
    .I0(Result[2]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_2_rstpot_854 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_3_rstpot  (
    .I0(Result[3]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_3_rstpot_858 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_4_rstpot  (
    .I0(Result[4]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_4_rstpot_859 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_5_rstpot  (
    .I0(Result[5]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_5_rstpot_857 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_6_rstpot  (
    .I0(Result[6]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_6_rstpot_861 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_7_rstpot  (
    .I0(Result[7]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_7_rstpot_862 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_8_rstpot  (
    .I0(Result[8]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_8_rstpot_860 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_9_rstpot  (
    .I0(Result[9]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_9_rstpot_864 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_10_rstpot  (
    .I0(Result[10]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_10_rstpot_865 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_11_rstpot  (
    .I0(Result[11]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_11_rstpot_863 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_12_rstpot  (
    .I0(Result[12]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_12_rstpot_867 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_13_rstpot  (
    .I0(Result[13]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_13_rstpot_868 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_14_rstpot  (
    .I0(Result[14]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_14_rstpot_866 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_15_rstpot  (
    .I0(Result[15]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_15_rstpot_870 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_16_rstpot  (
    .I0(Result[16]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_16_rstpot_871 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \clkdiv1/counter_300hz_17_rstpot  (
    .I0(Result[17]),
    .I1(reset_n_IBUF_10),
    .I2(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>1_625 ),
    .I3(\clkdiv1/GND_3_o_GND_3_o_equal_5_o<17>2_626 ),
    .I4(\clkdiv1/GND_3_o_GND_3_o_equal_5_o [17]),
    .O(\clkdiv1/counter_300hz_17_rstpot_869 )
  );
  LUT6 #(
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \lifo/Fmem_0_18_dpot  (
    .I0(\lifo/Fmem_0 [18]),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [0]),
    .O(\lifo/Fmem_0_18_dpot_827 )
  );
  LUT6 #(
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \lifo/Fmem_0_19_dpot  (
    .I0(\lifo/Fmem_0 [19]),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [1]),
    .O(\lifo/Fmem_0_19_dpot_828 )
  );
  LUT6 #(
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \lifo/Fmem_0_20_dpot  (
    .I0(\lifo/Fmem_0 [20]),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [2]),
    .O(\lifo/Fmem_0_20_dpot_829 )
  );
  LUT6 #(
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \lifo/Fmem_0_21_dpot  (
    .I0(\lifo/Fmem_0 [21]),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [3]),
    .O(\lifo/Fmem_0_21_dpot_830 )
  );
  LUT6 #(
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \lifo/Fmem_0_22_dpot  (
    .I0(\lifo/Fmem_0 [22]),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [4]),
    .O(\lifo/Fmem_0_22_dpot_831 )
  );
  LUT6 #(
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \lifo/Fmem_0_23_dpot  (
    .I0(\lifo/Fmem_0 [23]),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [5]),
    .O(\lifo/Fmem_0_23_dpot_832 )
  );
  LUT6 #(
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \lifo/Opmem_0_9_dpot  (
    .I0(\lifo/Opmem_0 [9]),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [0]),
    .I5(\alu1/opcodesel [0]),
    .O(\lifo/Opmem_0_9_dpot_848 )
  );
  LUT6 #(
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \lifo/Opmem_0_10_dpot  (
    .I0(\lifo/Opmem_0 [10]),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [0]),
    .I5(\alu1/opcodesel [1]),
    .O(\lifo/Opmem_0_10_dpot_849 )
  );
  LUT6 #(
    .INIT ( 64'hAABAAAAAAA8AAAAA ))
  \lifo/Opmem_0_11_dpot  (
    .I0(\lifo/Opmem_0 [11]),
    .I1(\readdebouncer/clean_26 ),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [0]),
    .I5(\alu1/opcodesel [2]),
    .O(\lifo/Opmem_0_11_dpot_850 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_6_dpot  (
    .I0(\lifo/Fmem_0 [6]),
    .I1(\lifo/top [2]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [0]),
    .O(\lifo/Fmem_0_6_dpot_815 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_7_dpot  (
    .I0(\lifo/Fmem_0 [7]),
    .I1(\lifo/top [2]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [1]),
    .O(\lifo/Fmem_0_7_dpot_816 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_8_dpot  (
    .I0(\lifo/Fmem_0 [8]),
    .I1(\lifo/top [2]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [2]),
    .O(\lifo/Fmem_0_8_dpot_817 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_9_dpot  (
    .I0(\lifo/Fmem_0 [9]),
    .I1(\lifo/top [2]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [3]),
    .O(\lifo/Fmem_0_9_dpot_818 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_10_dpot  (
    .I0(\lifo/Fmem_0 [10]),
    .I1(\lifo/top [2]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [4]),
    .O(\lifo/Fmem_0_10_dpot_819 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_11_dpot  (
    .I0(\lifo/Fmem_0 [11]),
    .I1(\lifo/top [2]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [1]),
    .I4(\lifo/top [0]),
    .I5(\alu1/f [5]),
    .O(\lifo/Fmem_0_11_dpot_820 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_12_dpot  (
    .I0(\lifo/Fmem_0 [12]),
    .I1(\lifo/top [0]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [1]),
    .I5(\alu1/f [0]),
    .O(\lifo/Fmem_0_12_dpot_821 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_13_dpot  (
    .I0(\lifo/Fmem_0 [13]),
    .I1(\lifo/top [0]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [1]),
    .I5(\alu1/f [1]),
    .O(\lifo/Fmem_0_13_dpot_822 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_14_dpot  (
    .I0(\lifo/Fmem_0 [14]),
    .I1(\lifo/top [0]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [1]),
    .I5(\alu1/f [2]),
    .O(\lifo/Fmem_0_14_dpot_823 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_15_dpot  (
    .I0(\lifo/Fmem_0 [15]),
    .I1(\lifo/top [0]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [1]),
    .I5(\alu1/f [3]),
    .O(\lifo/Fmem_0_15_dpot_824 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_16_dpot  (
    .I0(\lifo/Fmem_0 [16]),
    .I1(\lifo/top [0]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [1]),
    .I5(\alu1/f [4]),
    .O(\lifo/Fmem_0_16_dpot_825 )
  );
  LUT6 #(
    .INIT ( 64'hAAABAAAAAAA8AAAA ))
  \lifo/Fmem_0_17_dpot  (
    .I0(\lifo/Fmem_0 [17]),
    .I1(\lifo/top [0]),
    .I2(\readdebouncer/clean_26 ),
    .I3(\lifo/top [2]),
    .I4(\lifo/top [1]),
    .I5(\alu1/f [5]),
    .O(\lifo/Fmem_0_17_dpot_826 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \lifo/Fmem_0_0_dpot  (
    .I0(\lifo/Fmem_0 [0]),
    .I1(\lifo/top [2]),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(\alu1/f [0]),
    .O(\lifo/Fmem_0_0_dpot_809 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \lifo/Fmem_0_1_dpot  (
    .I0(\lifo/Fmem_0 [1]),
    .I1(\lifo/top [2]),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(\alu1/f [1]),
    .O(\lifo/Fmem_0_1_dpot_810 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \lifo/Fmem_0_2_dpot  (
    .I0(\lifo/Fmem_0 [2]),
    .I1(\lifo/top [2]),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(\alu1/f [2]),
    .O(\lifo/Fmem_0_2_dpot_811 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \lifo/Fmem_0_3_dpot  (
    .I0(\lifo/Fmem_0 [3]),
    .I1(\lifo/top [2]),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(\alu1/f [3]),
    .O(\lifo/Fmem_0_3_dpot_812 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \lifo/Fmem_0_4_dpot  (
    .I0(\lifo/Fmem_0 [4]),
    .I1(\lifo/top [2]),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(\alu1/f [4]),
    .O(\lifo/Fmem_0_4_dpot_813 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \lifo/Fmem_0_5_dpot  (
    .I0(\lifo/Fmem_0 [5]),
    .I1(\lifo/top [2]),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(\alu1/f [5]),
    .O(\lifo/Fmem_0_5_dpot_814 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \lifo/Opmem_0_0_dpot  (
    .I0(\lifo/Opmem_0 [0]),
    .I1(\lifo/top [2]),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(\alu1/opcodesel [0]),
    .O(\lifo/Opmem_0_0_dpot_839 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \lifo/Opmem_0_1_dpot  (
    .I0(\lifo/Opmem_0 [1]),
    .I1(\lifo/top [2]),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(\alu1/opcodesel [1]),
    .O(\lifo/Opmem_0_1_dpot_840 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \lifo/Opmem_0_2_dpot  (
    .I0(\lifo/Opmem_0 [2]),
    .I1(\lifo/top [2]),
    .I2(\lifo/top [1]),
    .I3(\lifo/top [0]),
    .I4(\readdebouncer/clean_26 ),
    .I5(\alu1/opcodesel [2]),
    .O(\lifo/Opmem_0_2_dpot_841 )
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
  INV   \lifo/Mcount_top_xor<0>11_INV_0  (
    .I(\lifo/top [0]),
    .O(\lifo/Result [0])
  );
  FD   \alu1/opcodesel_2_1  (
    .C(\executedebouncer/clean_25 ),
    .D(opcodein[2]),
    .Q(\alu1/opcodesel_2_1_872 )
  );
  FD   \alu1/opcodesel_1_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\decoder1/Mram_opcodeout1 ),
    .Q(\alu1/opcodesel_1_1_873 )
  );
  FD   \alu1/opcodesel_0_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\decoder1/Mram_opcodeout ),
    .Q(\alu1/opcodesel_0_1_874 )
  );
  FD   \alu1/f_5_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<5> ),
    .Q(\alu1/f_5_1_875 )
  );
  FD   \alu1/f_4_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<4> ),
    .Q(\alu1/f_4_1_876 )
  );
  FD   \alu1/f_3_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<3> ),
    .Q(\alu1/f_3_1_877 )
  );
  FD   \alu1/f_2_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<2> ),
    .Q(\alu1/f_2_1_878 )
  );
  FD   \alu1/f_1_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<1> ),
    .Q(\alu1/f_1_1_879 )
  );
  FD   \alu1/f_0_1  (
    .C(\executedebouncer/clean_25 ),
    .D(\alu1/opcodein[2]_GND_5_o_wide_mux_9_OUT<0> ),
    .Q(\alu1/f_0_1_880 )
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

