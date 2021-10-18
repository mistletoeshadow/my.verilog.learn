////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: uart_top_synthesis.v
// /___/   /\     Timestamp: Sat Oct 16 20:10:36 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim uart_top.ngc uart_top_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: uart_top.ngc
// Output file	: E:\FPGA\my.verilog.learn\uart_byte_rx\prj\uart_byte_rx\netgen\synthesis\uart_top_synthesis.v
// # of Modules	: 1
// Design Name	: uart_top
// Xilinx        : D:\xilinx\14.7\ISE_DS\ISE\
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

module uart_top (
  Clk, Rst_n, Rs232_Rx, Led, Rs232_Tx
);
  input Clk;
  input Rst_n;
  input Rs232_Rx;
  output Led;
  output Rs232_Tx;
  wire Clk_BUFGP_0;
  wire Rst_n_IBUF_1;
  wire Rs232_Rx_IBUF_2;
  wire \uart_byte_tx_u/Rs232_Tx_3 ;
  wire \uart_byte_tx_u/uart_state_4 ;
  wire \uart_byte_rx_u/Rx_Done_13 ;
  wire N0;
  wire N1;
  wire \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<14>_17 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>_18 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>_19 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>_20 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>_21 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>_22 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>_23 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>_24 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>_25 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>_26 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>_27 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>_28 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>_29 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>_30 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<0>_31 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_lut<0> ;
  wire \uart_byte_tx_u/Mcount_bps_cnt3 ;
  wire \uart_byte_tx_u/Mcount_bps_cnt2 ;
  wire \uart_byte_tx_u/Mcount_bps_cnt1 ;
  wire \uart_byte_tx_u/Mcount_bps_cnt ;
  wire \uart_byte_tx_u/_n0052_inv ;
  wire \uart_byte_tx_u/bps_cnt[3]_PWR_2_o_equal_15_o ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o ;
  wire \uart_byte_tx_u/bps_cnt[3]_PWR_2_o_Mux_15_o ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<0> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<1> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<2> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<3> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<4> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<5> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<6> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<7> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<8> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<9> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<10> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<11> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<12> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<13> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<14> ;
  wire \uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<15> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<0> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<1> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<2> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<3> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<4> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<5> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<6> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<7> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<8> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<9> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<10> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<11> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<12> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<13> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<14> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<15> ;
  wire \uart_byte_tx_u/Tx_Done_93 ;
  wire \uart_byte_tx_u/bps_clk_94 ;
  wire \uart_byte_rx_u/_n02651_103 ;
  wire \uart_byte_rx_u/_n02741_104 ;
  wire \uart_byte_rx_u/_n02622 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_106 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>11 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>11 ;
  wire \uart_byte_rx_u/Madd_r_data_byte[7][2]_GND_4_o_add_27_OUT_cy<0> ;
  wire \uart_byte_rx_u/Madd_r_data_byte[6][2]_GND_4_o_add_26_OUT_cy<0> ;
  wire \uart_byte_rx_u/Madd_r_data_byte[4][2]_GND_4_o_add_24_OUT_cy<0> ;
  wire \uart_byte_rx_u/Madd_r_data_byte[3][2]_GND_4_o_add_23_OUT_cy<0> ;
  wire \uart_byte_rx_u/Madd_r_data_byte[5][2]_GND_4_o_add_25_OUT_cy<0> ;
  wire \uart_byte_rx_u/Madd_r_data_byte[1][2]_GND_4_o_add_21_OUT_cy<0> ;
  wire \uart_byte_rx_u/Madd_r_data_byte[2][2]_GND_4_o_add_22_OUT_cy<0> ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<14>_134 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>_135 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>_136 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>_137 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>_138 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>_139 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>_140 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>_141 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>_142 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>_143 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>_144 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>_145 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>_146 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>_147 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<0>_148 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_lut<0> ;
  wire \uart_byte_rx_u/Mcount_bps_cnt7 ;
  wire \uart_byte_rx_u/Mcount_bps_cnt6 ;
  wire \uart_byte_rx_u/Mcount_bps_cnt5 ;
  wire \uart_byte_rx_u/Mcount_bps_cnt4 ;
  wire \uart_byte_rx_u/Mcount_bps_cnt3 ;
  wire \uart_byte_rx_u/Mcount_bps_cnt2 ;
  wire \uart_byte_rx_u/Mcount_bps_cnt1 ;
  wire \uart_byte_rx_u/Mcount_bps_cnt ;
  wire \uart_byte_rx_u/bps_cnt[7]_bps_cnt[7]_OR_26_o_inv ;
  wire \uart_byte_rx_u/_n0249_inv ;
  wire \uart_byte_rx_u/Rst_n_inv ;
  wire \uart_byte_rx_u/_n0258 ;
  wire \uart_byte_rx_u/_n0265 ;
  wire \uart_byte_rx_u/_n0271 ;
  wire \uart_byte_rx_u/_n0268 ;
  wire \uart_byte_rx_u/_n0283 ;
  wire \uart_byte_rx_u/_n0280 ;
  wire \uart_byte_rx_u/_n0277 ;
  wire \uart_byte_rx_u/_n0274 ;
  wire \uart_byte_rx_u/_n0262_184 ;
  wire \uart_byte_rx_u/_n0286 ;
  wire \uart_byte_rx_u/_n0253 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<0> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<1> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<2> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<3> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<5>_192 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<6> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<7> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<8>_195 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<9> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<11>_198 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<12> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<14>_201 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<15> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<16> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<17>_204 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<18> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<19> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<20>_207 ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<21> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<22> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<23> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<0> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<1> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<2> ;
  wire \uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ;
  wire \uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o ;
  wire \uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<0> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<1> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<2> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<3> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<4> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<5> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<6> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<7> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<8> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<9> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<10> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<11> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<12> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<13> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<14> ;
  wire \uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<15> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<0> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<1> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<2> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<3> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<4> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<5> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<6> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<7> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<8> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<9> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<10> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<11> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<12> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<13> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<14> ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<15> ;
  wire \uart_byte_rx_u/uart_state_267 ;
  wire \uart_byte_rx_u/s0_Rs232_Rx_284 ;
  wire \uart_byte_rx_u/bps_clk_285 ;
  wire \uart_byte_rx_u/tmp1_Rs232_Rx_286 ;
  wire \uart_byte_rx_u/tmp0_Rs232_Rx_287 ;
  wire \uart_byte_rx_u/s1_Rs232_Rx_288 ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o<15> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o<15>1_290 ;
  wire \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o<15>1 ;
  wire \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_2_o_Mux_15_o23 ;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>11_300 ;
  wire \uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>12_301 ;
  wire N18;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<14>_rt_308 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>_rt_309 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>_rt_310 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>_rt_311 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>_rt_312 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>_rt_313 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>_rt_314 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>_rt_315 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>_rt_316 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>_rt_317 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>_rt_318 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>_rt_319 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>_rt_320 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>_rt_321 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<14>_rt_322 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>_rt_323 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>_rt_324 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>_rt_325 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>_rt_326 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>_rt_327 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>_rt_328 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>_rt_329 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>_rt_330 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>_rt_331 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>_rt_332 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>_rt_333 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>_rt_334 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>_rt_335 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<15>_rt_336 ;
  wire \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<15>_rt_337 ;
  wire \uart_byte_tx_u/uart_state_rstpot_338 ;
  wire \uart_byte_rx_u/uart_state_rstpot_339 ;
  wire N22;
  wire N26;
  wire N34;
  wire N35;
  wire N37;
  wire N38;
  wire N40;
  wire N41;
  wire N46;
  wire N47;
  wire N49;
  wire N50;
  wire N52;
  wire N53;
  wire N54;
  wire N56;
  wire N57;
  wire N58;
  wire N60;
  wire N62;
  wire N66;
  wire N67;
  wire N68;
  wire N69;
  wire N70;
  wire N72;
  wire N74;
  wire N76;
  wire \uart_byte_rx_u/bps_cnt_4_1_368 ;
  wire \uart_byte_rx_u/bps_cnt_5_1_369 ;
  wire \uart_byte_rx_u/bps_cnt_4_2_370 ;
  wire \uart_byte_rx_u/_n026511_371 ;
  wire N78;
  wire N79;
  wire N80;
  wire N81;
  wire N82;
  wire N83;
  wire [7 : 0] \uart_byte_rx_u/data_byte ;
  wire [3 : 0] \uart_byte_tx_u/bps_cnt ;
  wire [15 : 0] \uart_byte_tx_u/div_cnt ;
  wire [7 : 0] \uart_byte_tx_u/r_data_byte ;
  wire [23 : 0] \uart_byte_rx_u/r_data_byte_0 ;
  wire [2 : 0] \uart_byte_rx_u/START_BIT ;
  wire [7 : 0] \uart_byte_rx_u/Mcount_bps_cnt_lut ;
  wire [6 : 0] \uart_byte_rx_u/Mcount_bps_cnt_cy ;
  wire [7 : 0] \uart_byte_rx_u/bps_cnt ;
  wire [15 : 0] \uart_byte_rx_u/div_cnt ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<15>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<14>_17 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<15>_rt_336 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<15> )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<14>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>_18 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<14>_rt_308 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<14> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<14>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>_18 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<14>_rt_308 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<14>_17 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<13>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>_19 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>_rt_309 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<13> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>_19 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>_rt_309 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>_18 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<12>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>_20 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>_rt_310 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<12> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>_20 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>_rt_310 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>_19 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<11>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>_21 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>_rt_311 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<11> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>_21 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>_rt_311 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>_20 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<10>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>_22 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>_rt_312 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<10> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>_22 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>_rt_312 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>_21 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<9>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>_23 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>_rt_313 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<9> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>_23 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>_rt_313 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>_22 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<8>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>_24 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>_rt_314 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<8> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>_24 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>_rt_314 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>_23 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<7>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>_25 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>_rt_315 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<7> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>_25 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>_rt_315 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>_24 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<6>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>_26 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>_rt_316 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<6> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>_26 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>_rt_316 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>_25 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<5>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>_27 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>_rt_317 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<5> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>_27 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>_rt_317 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>_26 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<4>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>_28 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>_rt_318 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<4> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>_28 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>_rt_318 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>_27 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<3>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>_29 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>_rt_319 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<3> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>_29 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>_rt_319 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>_28 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<2>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>_30 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>_rt_320 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<2> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>_30 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>_rt_320 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>_29 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<1>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<0>_31 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>_rt_321 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<1> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<0>_31 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>_rt_321 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>_30 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<0>  (
    .CI(N1),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_lut<0> ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<0> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_lut<0> ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<0>_31 )
  );
  FDCE   \uart_byte_tx_u/bps_cnt_3  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0052_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt3 ),
    .Q(\uart_byte_tx_u/bps_cnt [3])
  );
  FDCE   \uart_byte_tx_u/bps_cnt_2  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0052_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt2 ),
    .Q(\uart_byte_tx_u/bps_cnt [2])
  );
  FDCE   \uart_byte_tx_u/bps_cnt_1  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0052_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt1 ),
    .Q(\uart_byte_tx_u/bps_cnt [1])
  );
  FDCE   \uart_byte_tx_u/bps_cnt_0  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0052_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt ),
    .Q(\uart_byte_tx_u/bps_cnt [0])
  );
  FDC   \uart_byte_tx_u/div_cnt_15  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<15> ),
    .Q(\uart_byte_tx_u/div_cnt [15])
  );
  FDC   \uart_byte_tx_u/div_cnt_14  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<14> ),
    .Q(\uart_byte_tx_u/div_cnt [14])
  );
  FDC   \uart_byte_tx_u/div_cnt_13  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<13> ),
    .Q(\uart_byte_tx_u/div_cnt [13])
  );
  FDC   \uart_byte_tx_u/div_cnt_12  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<12> ),
    .Q(\uart_byte_tx_u/div_cnt [12])
  );
  FDC   \uart_byte_tx_u/div_cnt_11  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<11> ),
    .Q(\uart_byte_tx_u/div_cnt [11])
  );
  FDC   \uart_byte_tx_u/div_cnt_10  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<10> ),
    .Q(\uart_byte_tx_u/div_cnt [10])
  );
  FDC   \uart_byte_tx_u/div_cnt_9  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<9> ),
    .Q(\uart_byte_tx_u/div_cnt [9])
  );
  FDC   \uart_byte_tx_u/div_cnt_8  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<8> ),
    .Q(\uart_byte_tx_u/div_cnt [8])
  );
  FDC   \uart_byte_tx_u/div_cnt_7  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<7> ),
    .Q(\uart_byte_tx_u/div_cnt [7])
  );
  FDC   \uart_byte_tx_u/div_cnt_6  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<6> ),
    .Q(\uart_byte_tx_u/div_cnt [6])
  );
  FDC   \uart_byte_tx_u/div_cnt_5  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<5> ),
    .Q(\uart_byte_tx_u/div_cnt [5])
  );
  FDC   \uart_byte_tx_u/div_cnt_4  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<4> ),
    .Q(\uart_byte_tx_u/div_cnt [4])
  );
  FDC   \uart_byte_tx_u/div_cnt_3  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<3> ),
    .Q(\uart_byte_tx_u/div_cnt [3])
  );
  FDC   \uart_byte_tx_u/div_cnt_2  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<2> ),
    .Q(\uart_byte_tx_u/div_cnt [2])
  );
  FDC   \uart_byte_tx_u/div_cnt_1  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<1> ),
    .Q(\uart_byte_tx_u/div_cnt [1])
  );
  FDC   \uart_byte_tx_u/div_cnt_0  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<0> ),
    .Q(\uart_byte_tx_u/div_cnt [0])
  );
  FDP   \uart_byte_tx_u/Rs232_Tx  (
    .C(Clk_BUFGP_0),
    .D(\uart_byte_tx_u/bps_cnt[3]_PWR_2_o_Mux_15_o ),
    .PRE(\uart_byte_rx_u/Rst_n_inv ),
    .Q(\uart_byte_tx_u/Rs232_Tx_3 )
  );
  FDC   \uart_byte_tx_u/bps_clk  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o ),
    .Q(\uart_byte_tx_u/bps_clk_94 )
  );
  FDCE   \uart_byte_tx_u/r_data_byte_7  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/Rx_Done_13 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/data_byte [7]),
    .Q(\uart_byte_tx_u/r_data_byte [7])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_6  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/Rx_Done_13 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/data_byte [6]),
    .Q(\uart_byte_tx_u/r_data_byte [6])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_5  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/Rx_Done_13 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/data_byte [5]),
    .Q(\uart_byte_tx_u/r_data_byte [5])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_4  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/Rx_Done_13 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/data_byte [4]),
    .Q(\uart_byte_tx_u/r_data_byte [4])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_3  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/Rx_Done_13 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/data_byte [3]),
    .Q(\uart_byte_tx_u/r_data_byte [3])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_2  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/Rx_Done_13 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/data_byte [2]),
    .Q(\uart_byte_tx_u/r_data_byte [2])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_1  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/Rx_Done_13 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/data_byte [1]),
    .Q(\uart_byte_tx_u/r_data_byte [1])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_0  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/Rx_Done_13 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/data_byte [0]),
    .Q(\uart_byte_tx_u/r_data_byte [0])
  );
  FDC   \uart_byte_tx_u/Tx_Done  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/bps_cnt[3]_PWR_2_o_equal_15_o ),
    .Q(\uart_byte_tx_u/Tx_Done_93 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<15>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<14>_134 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<15>_rt_337 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<15> )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<14>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>_135 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<14>_rt_322 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<14> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<14>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>_135 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<14>_rt_322 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<14>_134 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<13>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>_136 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>_rt_323 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<13> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>_136 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>_rt_323 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>_135 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<12>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>_137 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>_rt_324 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<12> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>_137 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>_rt_324 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>_136 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<11>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>_138 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>_rt_325 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<11> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>_138 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>_rt_325 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>_137 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<10>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>_139 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>_rt_326 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<10> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>_139 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>_rt_326 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>_138 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<9>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>_140 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>_rt_327 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<9> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>_140 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>_rt_327 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>_139 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<8>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>_141 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>_rt_328 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<8> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>_141 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>_rt_328 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>_140 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<7>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>_142 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>_rt_329 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<7> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>_142 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>_rt_329 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>_141 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<6>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>_143 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>_rt_330 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<6> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>_143 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>_rt_330 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>_142 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<5>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>_144 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>_rt_331 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<5> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>_144 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>_rt_331 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>_143 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<4>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>_145 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>_rt_332 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<4> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>_145 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>_rt_332 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>_144 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<3>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>_146 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>_rt_333 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<3> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>_146 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>_rt_333 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>_145 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<2>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>_147 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>_rt_334 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<2> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>_147 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>_rt_334 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>_146 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<1>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<0>_148 ),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>_rt_335 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<1> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>  (
    .CI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<0>_148 ),
    .DI(N1),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>_rt_335 ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>_147 )
  );
  XORCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<0>  (
    .CI(N1),
    .LI(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_lut<0> ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<0> )
  );
  MUXCY   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_lut<0> ),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<0>_148 )
  );
  FDCE   \uart_byte_rx_u/bps_cnt_7  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt7 ),
    .Q(\uart_byte_rx_u/bps_cnt [7])
  );
  FDCE   \uart_byte_rx_u/bps_cnt_6  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt6 ),
    .Q(\uart_byte_rx_u/bps_cnt [6])
  );
  FDCE   \uart_byte_rx_u/bps_cnt_5  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt5 ),
    .Q(\uart_byte_rx_u/bps_cnt [5])
  );
  FDCE   \uart_byte_rx_u/bps_cnt_4  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt4 ),
    .Q(\uart_byte_rx_u/bps_cnt [4])
  );
  FDCE   \uart_byte_rx_u/bps_cnt_3  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt3 ),
    .Q(\uart_byte_rx_u/bps_cnt [3])
  );
  FDCE   \uart_byte_rx_u/bps_cnt_2  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt2 ),
    .Q(\uart_byte_rx_u/bps_cnt [2])
  );
  FDCE   \uart_byte_rx_u/bps_cnt_1  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt1 ),
    .Q(\uart_byte_rx_u/bps_cnt [1])
  );
  FDCE   \uart_byte_rx_u/bps_cnt_0  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt ),
    .Q(\uart_byte_rx_u/bps_cnt [0])
  );
  XORCY   \uart_byte_rx_u/Mcount_bps_cnt_xor<7>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [6]),
    .LI(\uart_byte_rx_u/Mcount_bps_cnt_lut [7]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt7 )
  );
  XORCY   \uart_byte_rx_u/Mcount_bps_cnt_xor<6>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [5]),
    .LI(\uart_byte_rx_u/Mcount_bps_cnt_lut [6]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt6 )
  );
  MUXCY   \uart_byte_rx_u/Mcount_bps_cnt_cy<6>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [5]),
    .DI(N1),
    .S(\uart_byte_rx_u/Mcount_bps_cnt_lut [6]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_cy [6])
  );
  XORCY   \uart_byte_rx_u/Mcount_bps_cnt_xor<5>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [4]),
    .LI(\uart_byte_rx_u/Mcount_bps_cnt_lut [5]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt5 )
  );
  MUXCY   \uart_byte_rx_u/Mcount_bps_cnt_cy<5>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [4]),
    .DI(N1),
    .S(\uart_byte_rx_u/Mcount_bps_cnt_lut [5]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_cy [5])
  );
  XORCY   \uart_byte_rx_u/Mcount_bps_cnt_xor<4>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [3]),
    .LI(\uart_byte_rx_u/Mcount_bps_cnt_lut [4]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt4 )
  );
  MUXCY   \uart_byte_rx_u/Mcount_bps_cnt_cy<4>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [3]),
    .DI(N1),
    .S(\uart_byte_rx_u/Mcount_bps_cnt_lut [4]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_cy [4])
  );
  XORCY   \uart_byte_rx_u/Mcount_bps_cnt_xor<3>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [2]),
    .LI(\uart_byte_rx_u/Mcount_bps_cnt_lut [3]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt3 )
  );
  MUXCY   \uart_byte_rx_u/Mcount_bps_cnt_cy<3>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [2]),
    .DI(N1),
    .S(\uart_byte_rx_u/Mcount_bps_cnt_lut [3]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_cy [3])
  );
  XORCY   \uart_byte_rx_u/Mcount_bps_cnt_xor<2>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [1]),
    .LI(\uart_byte_rx_u/Mcount_bps_cnt_lut [2]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt2 )
  );
  MUXCY   \uart_byte_rx_u/Mcount_bps_cnt_cy<2>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [1]),
    .DI(N1),
    .S(\uart_byte_rx_u/Mcount_bps_cnt_lut [2]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_cy [2])
  );
  XORCY   \uart_byte_rx_u/Mcount_bps_cnt_xor<1>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [0]),
    .LI(\uart_byte_rx_u/Mcount_bps_cnt_lut [1]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt1 )
  );
  MUXCY   \uart_byte_rx_u/Mcount_bps_cnt_cy<1>  (
    .CI(\uart_byte_rx_u/Mcount_bps_cnt_cy [0]),
    .DI(N1),
    .S(\uart_byte_rx_u/Mcount_bps_cnt_lut [1]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_cy [1])
  );
  XORCY   \uart_byte_rx_u/Mcount_bps_cnt_xor<0>  (
    .CI(\uart_byte_rx_u/bps_cnt[7]_bps_cnt[7]_OR_26_o_inv ),
    .LI(\uart_byte_rx_u/Mcount_bps_cnt_lut [0]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt )
  );
  MUXCY   \uart_byte_rx_u/Mcount_bps_cnt_cy<0>  (
    .CI(\uart_byte_rx_u/bps_cnt[7]_bps_cnt[7]_OR_26_o_inv ),
    .DI(N1),
    .S(\uart_byte_rx_u/Mcount_bps_cnt_lut [0]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_cy [0])
  );
  FDC   \uart_byte_rx_u/div_cnt_15  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<15> ),
    .Q(\uart_byte_rx_u/div_cnt [15])
  );
  FDC   \uart_byte_rx_u/div_cnt_14  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<14> ),
    .Q(\uart_byte_rx_u/div_cnt [14])
  );
  FDC   \uart_byte_rx_u/div_cnt_13  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<13> ),
    .Q(\uart_byte_rx_u/div_cnt [13])
  );
  FDC   \uart_byte_rx_u/div_cnt_12  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<12> ),
    .Q(\uart_byte_rx_u/div_cnt [12])
  );
  FDC   \uart_byte_rx_u/div_cnt_11  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<11> ),
    .Q(\uart_byte_rx_u/div_cnt [11])
  );
  FDC   \uart_byte_rx_u/div_cnt_10  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<10> ),
    .Q(\uart_byte_rx_u/div_cnt [10])
  );
  FDC   \uart_byte_rx_u/div_cnt_9  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<9> ),
    .Q(\uart_byte_rx_u/div_cnt [9])
  );
  FDC   \uart_byte_rx_u/div_cnt_8  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<8> ),
    .Q(\uart_byte_rx_u/div_cnt [8])
  );
  FDC   \uart_byte_rx_u/div_cnt_7  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<7> ),
    .Q(\uart_byte_rx_u/div_cnt [7])
  );
  FDC   \uart_byte_rx_u/div_cnt_6  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<6> ),
    .Q(\uart_byte_rx_u/div_cnt [6])
  );
  FDC   \uart_byte_rx_u/div_cnt_5  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<5> ),
    .Q(\uart_byte_rx_u/div_cnt [5])
  );
  FDC   \uart_byte_rx_u/div_cnt_4  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<4> ),
    .Q(\uart_byte_rx_u/div_cnt [4])
  );
  FDC   \uart_byte_rx_u/div_cnt_3  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<3> ),
    .Q(\uart_byte_rx_u/div_cnt [3])
  );
  FDC   \uart_byte_rx_u/div_cnt_2  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<2> ),
    .Q(\uart_byte_rx_u/div_cnt [2])
  );
  FDC   \uart_byte_rx_u/div_cnt_1  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<1> ),
    .Q(\uart_byte_rx_u/div_cnt [1])
  );
  FDC   \uart_byte_rx_u/div_cnt_0  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<0> ),
    .Q(\uart_byte_rx_u/div_cnt [0])
  );
  FDC   \uart_byte_rx_u/tmp1_Rs232_Rx  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/tmp0_Rs232_Rx_287 ),
    .Q(\uart_byte_rx_u/tmp1_Rs232_Rx_286 )
  );
  FDCE   \uart_byte_rx_u/data_byte_7  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/r_data_byte_0 [23]),
    .Q(\uart_byte_rx_u/data_byte [7])
  );
  FDCE   \uart_byte_rx_u/data_byte_6  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/r_data_byte_0 [20]),
    .Q(\uart_byte_rx_u/data_byte [6])
  );
  FDCE   \uart_byte_rx_u/data_byte_5  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/r_data_byte_0 [17]),
    .Q(\uart_byte_rx_u/data_byte [5])
  );
  FDCE   \uart_byte_rx_u/data_byte_4  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/r_data_byte_0 [14]),
    .Q(\uart_byte_rx_u/data_byte [4])
  );
  FDCE   \uart_byte_rx_u/data_byte_3  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/r_data_byte_0 [11]),
    .Q(\uart_byte_rx_u/data_byte [3])
  );
  FDCE   \uart_byte_rx_u/data_byte_2  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/r_data_byte_0 [8]),
    .Q(\uart_byte_rx_u/data_byte [2])
  );
  FDCE   \uart_byte_rx_u/data_byte_1  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/r_data_byte_0 [5]),
    .Q(\uart_byte_rx_u/data_byte [1])
  );
  FDCE   \uart_byte_rx_u/data_byte_0  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/r_data_byte_0 [2]),
    .Q(\uart_byte_rx_u/data_byte [0])
  );
  FDC   \uart_byte_rx_u/tmp0_Rs232_Rx  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .Q(\uart_byte_rx_u/tmp0_Rs232_Rx_287 )
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_23  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<23> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [23])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_22  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<22> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [22])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_21  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<21> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [21])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_20  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<20>_207 ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [20])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_19  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<19> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [19])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_18  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<18> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [18])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_17  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<17>_204 ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [17])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_16  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<16> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [16])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_15  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<15> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [15])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_14  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<14>_201 ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [14])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_13  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [13])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_12  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<12> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [12])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_11  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<11>_198 ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [11])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_10  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [10])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_9  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<9> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [9])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_8  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<8>_195 ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [8])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_7  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<7> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [7])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_6  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<6> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [6])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_5  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<5>_192 ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [5])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_4  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [4])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_3  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<3> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [3])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_2  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<2> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [2])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_1  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<1> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [1])
  );
  FDCE   \uart_byte_rx_u/r_data_byte_0_0  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<0> ),
    .Q(\uart_byte_rx_u/r_data_byte_0 [0])
  );
  FDCE   \uart_byte_rx_u/START_BIT_2  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<2> ),
    .Q(\uart_byte_rx_u/START_BIT [2])
  );
  FDCE   \uart_byte_rx_u/START_BIT_1  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<1> ),
    .Q(\uart_byte_rx_u/START_BIT [1])
  );
  FDCE   \uart_byte_rx_u/START_BIT_0  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/bps_clk_285 ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<0> ),
    .Q(\uart_byte_rx_u/START_BIT [0])
  );
  FDC   \uart_byte_rx_u/s1_Rs232_Rx  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/s0_Rs232_Rx_284 ),
    .Q(\uart_byte_rx_u/s1_Rs232_Rx_288 )
  );
  FDC   \uart_byte_rx_u/s0_Rs232_Rx  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(Rs232_Rx_IBUF_2),
    .Q(\uart_byte_rx_u/s0_Rs232_Rx_284 )
  );
  FDC   \uart_byte_rx_u/Rx_Done  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .Q(\uart_byte_rx_u/Rx_Done_13 )
  );
  FDC   \uart_byte_rx_u/bps_clk  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o ),
    .Q(\uart_byte_rx_u/bps_clk_285 )
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  \uart_byte_tx_u/Mcount_bps_cnt21  (
    .I0(\uart_byte_tx_u/Tx_Done_93 ),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/bps_cnt [0]),
    .I3(\uart_byte_tx_u/bps_cnt [1]),
    .O(\uart_byte_tx_u/Mcount_bps_cnt2 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \uart_byte_tx_u/bps_cnt[3]_PWR_2_o_equal_15_o1  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/bps_cnt [0]),
    .I3(\uart_byte_tx_u/bps_cnt [1]),
    .O(\uart_byte_tx_u/bps_cnt[3]_PWR_2_o_equal_15_o )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT161  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<9> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT151  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<8> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT141  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<7> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT131  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<6> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT121  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<5> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT111  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<4> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT101  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<3> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT91  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<2> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT81  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<1> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT71  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<15> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT61  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<14> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT51  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<13> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT41  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<12> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT31  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<11> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT21  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<10> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_2_o_div_cnt[15]_mux_7_OUT11  (
    .I0(\uart_byte_tx_u/uart_state_4 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_2_o_add_5_OUT<0> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o ),
    .O(\uart_byte_tx_u/GND_2_o_div_cnt[15]_mux_7_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h14444444 ))
  \uart_byte_tx_u/Mcount_bps_cnt_xor<3>11  (
    .I0(\uart_byte_tx_u/Tx_Done_93 ),
    .I1(\uart_byte_tx_u/bps_cnt [3]),
    .I2(\uart_byte_tx_u/bps_cnt [0]),
    .I3(\uart_byte_tx_u/bps_cnt [1]),
    .I4(\uart_byte_tx_u/bps_cnt [2]),
    .O(\uart_byte_tx_u/Mcount_bps_cnt3 )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \uart_byte_tx_u/Mcount_bps_cnt_xor<1>11  (
    .I0(\uart_byte_tx_u/Tx_Done_93 ),
    .I1(\uart_byte_tx_u/bps_cnt [0]),
    .I2(\uart_byte_tx_u/bps_cnt [1]),
    .O(\uart_byte_tx_u/Mcount_bps_cnt1 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \uart_byte_tx_u/_n0052_inv1  (
    .I0(\uart_byte_tx_u/bps_clk_94 ),
    .I1(\uart_byte_tx_u/Tx_Done_93 ),
    .O(\uart_byte_tx_u/_n0052_inv )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \uart_byte_tx_u/Mcount_bps_cnt_xor<0>11  (
    .I0(\uart_byte_tx_u/Tx_Done_93 ),
    .I1(\uart_byte_tx_u/bps_cnt [0]),
    .O(\uart_byte_tx_u/Mcount_bps_cnt )
  );
  LUT5 #(
    .INIT ( 32'h01100100 ))
  \uart_byte_rx_u/_n026511  (
    .I0(\uart_byte_rx_u/bps_cnt [6]),
    .I1(\uart_byte_rx_u/bps_cnt [7]),
    .I2(\uart_byte_rx_u/bps_cnt [2]),
    .I3(\uart_byte_rx_u/bps_cnt [3]),
    .I4(\uart_byte_rx_u/bps_cnt [1]),
    .O(\uart_byte_rx_u/_n02651_103 )
  );
  LUT5 #(
    .INIT ( 32'h02200200 ))
  \uart_byte_rx_u/_n027411  (
    .I0(\uart_byte_rx_u/bps_cnt [6]),
    .I1(\uart_byte_rx_u/bps_cnt [7]),
    .I2(\uart_byte_rx_u/bps_cnt [2]),
    .I3(\uart_byte_rx_u/bps_cnt [3]),
    .I4(\uart_byte_rx_u/bps_cnt [1]),
    .O(\uart_byte_rx_u/_n02741_104 )
  );
  LUT5 #(
    .INIT ( 32'h0000002C ))
  \uart_byte_rx_u/_n02581  (
    .I0(\uart_byte_rx_u/bps_cnt [1]),
    .I1(\uart_byte_rx_u/bps_cnt [3]),
    .I2(\uart_byte_rx_u/bps_cnt [2]),
    .I3(\uart_byte_rx_u/bps_cnt [7]),
    .I4(\uart_byte_rx_u/_n02622 ),
    .O(\uart_byte_rx_u/_n0258 )
  );
  LUT5 #(
    .INIT ( 32'h00002C00 ))
  \uart_byte_rx_u/_n02861  (
    .I0(\uart_byte_rx_u/bps_cnt [1]),
    .I1(\uart_byte_rx_u/bps_cnt [3]),
    .I2(\uart_byte_rx_u/bps_cnt [2]),
    .I3(\uart_byte_rx_u/bps_cnt [7]),
    .I4(\uart_byte_rx_u/_n02622 ),
    .O(\uart_byte_rx_u/_n0286 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEEEEEEFFFFFE ))
  \uart_byte_rx_u/_n02531  (
    .I0(\uart_byte_rx_u/_n02622 ),
    .I1(\uart_byte_rx_u/bps_cnt [7]),
    .I2(\uart_byte_rx_u/bps_cnt [0]),
    .I3(\uart_byte_rx_u/bps_cnt [1]),
    .I4(\uart_byte_rx_u/bps_cnt [2]),
    .I5(\uart_byte_rx_u/bps_cnt [3]),
    .O(\uart_byte_rx_u/_n0253 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \uart_byte_rx_u/_n02651  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/_n026511_371 ),
    .O(\uart_byte_rx_u/_n0265 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uart_byte_rx_u/_n02711  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/_n02651_103 ),
    .O(\uart_byte_rx_u/_n0271 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \uart_byte_rx_u/_n02681  (
    .I0(\uart_byte_rx_u/bps_cnt [5]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/_n02651_103 ),
    .O(\uart_byte_rx_u/_n0268 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uart_byte_rx_u/_n02831  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/_n02741_104 ),
    .O(\uart_byte_rx_u/_n0283 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \uart_byte_rx_u/_n02801  (
    .I0(\uart_byte_rx_u/bps_cnt [5]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/_n02741_104 ),
    .O(\uart_byte_rx_u/_n0280 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \uart_byte_rx_u/_n02771  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/_n02741_104 ),
    .O(\uart_byte_rx_u/_n0277 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \uart_byte_rx_u/_n02741  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/_n02741_104 ),
    .O(\uart_byte_rx_u/_n0274 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o<7>1  (
    .I0(\uart_byte_rx_u/bps_cnt [0]),
    .I1(\uart_byte_rx_u/bps_cnt [1]),
    .I2(\uart_byte_rx_u/bps_cnt [2]),
    .I3(\uart_byte_rx_u/bps_cnt [3]),
    .I4(\uart_byte_rx_u/bps_cnt [7]),
    .I5(\uart_byte_rx_u/_n02622 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \uart_byte_rx_u/_n026221  (
    .I0(\uart_byte_rx_u/bps_cnt_4_1_368 ),
    .I1(\uart_byte_rx_u/bps_cnt_5_1_369 ),
    .I2(\uart_byte_rx_u/bps_cnt [6]),
    .O(\uart_byte_rx_u/_n02622 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT17  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<0> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT21  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<10> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT31  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<11> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT41  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<12> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT51  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<13> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT61  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<14> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT71  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<15> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT81  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<1> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT91  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<2> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT101  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<3> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT111  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<4> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT121  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<5> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT131  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<6> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT141  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<7> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT151  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<8> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_rx_u/Mmux_GND_4_o_div_cnt[15]_mux_5_OUT161  (
    .I0(\uart_byte_rx_u/uart_state_267 ),
    .I1(\uart_byte_rx_u/div_cnt[15]_GND_4_o_add_3_OUT<9> ),
    .I2(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o ),
    .O(\uart_byte_rx_u/GND_4_o_div_cnt[15]_mux_5_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'hEAEAEA60 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<3>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [3]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/_n0268 ),
    .I3(\uart_byte_rx_u/_n0271 ),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_106 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hEAEAEA60 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<6>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [6]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/_n0271 ),
    .I3(\uart_byte_rx_u/_n0268 ),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_106 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'hEAEAEA60 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<12>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [12]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/_n0277 ),
    .I3(\uart_byte_rx_u/_n0280 ),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>11 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<12> )
  );
  LUT5 #(
    .INIT ( 32'hEAEAEA60 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<15>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [15]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/_n0280 ),
    .I3(\uart_byte_rx_u/_n0277 ),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>11 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'hEAEAEA60 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<18>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [18]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/_n0283 ),
    .I3(\uart_byte_rx_u/_n0274 ),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>11 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<18> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_byte_rx_u/Madd_r_data_byte[7][2]_GND_4_o_add_27_OUT_cy<0>11  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [21]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .O(\uart_byte_rx_u/Madd_r_data_byte[7][2]_GND_4_o_add_27_OUT_cy<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_byte_rx_u/Madd_r_data_byte[6][2]_GND_4_o_add_26_OUT_cy<0>11  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [18]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .O(\uart_byte_rx_u/Madd_r_data_byte[6][2]_GND_4_o_add_26_OUT_cy<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_byte_rx_u/Madd_r_data_byte[4][2]_GND_4_o_add_24_OUT_cy<0>11  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [12]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .O(\uart_byte_rx_u/Madd_r_data_byte[4][2]_GND_4_o_add_24_OUT_cy<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_byte_rx_u/Madd_r_data_byte[3][2]_GND_4_o_add_23_OUT_cy<0>11  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [9]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .O(\uart_byte_rx_u/Madd_r_data_byte[3][2]_GND_4_o_add_23_OUT_cy<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_byte_rx_u/Madd_r_data_byte[5][2]_GND_4_o_add_25_OUT_cy<0>11  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [15]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .O(\uart_byte_rx_u/Madd_r_data_byte[5][2]_GND_4_o_add_25_OUT_cy<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_byte_rx_u/Madd_r_data_byte[1][2]_GND_4_o_add_21_OUT_cy<0>11  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [3]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .O(\uart_byte_rx_u/Madd_r_data_byte[1][2]_GND_4_o_add_21_OUT_cy<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_byte_rx_u/Madd_r_data_byte[2][2]_GND_4_o_add_22_OUT_cy<0>11  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [6]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .O(\uart_byte_rx_u/Madd_r_data_byte[2][2]_GND_4_o_add_22_OUT_cy<0> )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<0>1  (
    .I0(\uart_byte_rx_u/START_BIT [0]),
    .I1(\uart_byte_rx_u/_n0258 ),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/_n0253 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o<15>1  (
    .I0(\uart_byte_tx_u/div_cnt [15]),
    .I1(\uart_byte_tx_u/div_cnt [3]),
    .I2(\uart_byte_tx_u/div_cnt [5]),
    .I3(\uart_byte_tx_u/div_cnt [8]),
    .I4(\uart_byte_tx_u/div_cnt [0]),
    .I5(\uart_byte_tx_u/div_cnt [7]),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o<15> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o<15>2  (
    .I0(\uart_byte_tx_u/div_cnt [11]),
    .I1(\uart_byte_tx_u/div_cnt [9]),
    .I2(\uart_byte_tx_u/div_cnt [14]),
    .I3(\uart_byte_tx_u/div_cnt [13]),
    .I4(\uart_byte_tx_u/div_cnt [6]),
    .I5(\uart_byte_tx_u/div_cnt [4]),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o<15>1_290 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000001000 ))
  \uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o<15>3  (
    .I0(\uart_byte_tx_u/div_cnt [1]),
    .I1(\uart_byte_tx_u/div_cnt [2]),
    .I2(\uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o<15> ),
    .I3(\uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o<15>1_290 ),
    .I4(\uart_byte_tx_u/div_cnt [12]),
    .I5(\uart_byte_tx_u/div_cnt [10]),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_2_o_equal_10_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o<15>2  (
    .I0(\uart_byte_tx_u/div_cnt [3]),
    .I1(\uart_byte_tx_u/div_cnt [15]),
    .I2(\uart_byte_tx_u/div_cnt [5]),
    .I3(\uart_byte_tx_u/div_cnt [8]),
    .I4(\uart_byte_tx_u/div_cnt [7]),
    .I5(\uart_byte_tx_u/div_cnt [9]),
    .O(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o<15>1 )
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_2_o_Mux_15_o24  (
    .I0(\uart_byte_tx_u/bps_cnt [1]),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/r_data_byte [1]),
    .I3(\uart_byte_tx_u/r_data_byte [5]),
    .I4(\uart_byte_tx_u/r_data_byte [3]),
    .O(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_2_o_Mux_15_o23 )
  );
  LUT3 #(
    .INIT ( 8'h9D ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW0  (
    .I0(\uart_byte_rx_u/bps_cnt [3]),
    .I1(\uart_byte_rx_u/bps_cnt [2]),
    .I2(\uart_byte_rx_u/bps_cnt [1]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF002E ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11  (
    .I0(\uart_byte_rx_u/bps_cnt [6]),
    .I1(\uart_byte_rx_u/bps_cnt [7]),
    .I2(\uart_byte_rx_u/_n02622 ),
    .I3(N2),
    .I4(\uart_byte_rx_u/_n0265 ),
    .I5(\uart_byte_rx_u/_n0262_184 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_106 )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEAAAEAAA6200 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<8>  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [8]),
    .I1(\uart_byte_rx_u/r_data_byte_0 [7]),
    .I2(\uart_byte_rx_u/Madd_r_data_byte[2][2]_GND_4_o_add_22_OUT_cy<0> ),
    .I3(\uart_byte_rx_u/_n0271 ),
    .I4(N4),
    .I5(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_106 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<8>_195 )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEAAAEAAA6200 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<5>  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [5]),
    .I1(\uart_byte_rx_u/r_data_byte_0 [4]),
    .I2(\uart_byte_rx_u/Madd_r_data_byte[1][2]_GND_4_o_add_21_OUT_cy<0> ),
    .I3(\uart_byte_rx_u/_n0268 ),
    .I4(N6),
    .I5(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_106 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<5>_192 )
  );
  LUT6 #(
    .INIT ( 64'hECECCCCC64EC00CC ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<20>  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [19]),
    .I1(\uart_byte_rx_u/r_data_byte_0 [20]),
    .I2(\uart_byte_rx_u/Madd_r_data_byte[6][2]_GND_4_o_add_26_OUT_cy<0> ),
    .I3(N8),
    .I4(\uart_byte_rx_u/_n0283 ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>11 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<20>_207 )
  );
  LUT6 #(
    .INIT ( 64'hECECCCCC64EC00CC ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<17>  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [16]),
    .I1(\uart_byte_rx_u/r_data_byte_0 [17]),
    .I2(\uart_byte_rx_u/Madd_r_data_byte[5][2]_GND_4_o_add_25_OUT_cy<0> ),
    .I3(N10),
    .I4(\uart_byte_rx_u/_n0280 ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>11 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<17>_204 )
  );
  LUT6 #(
    .INIT ( 64'hECECCCCC64EC00CC ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<14>  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [13]),
    .I1(\uart_byte_rx_u/r_data_byte_0 [14]),
    .I2(\uart_byte_rx_u/Madd_r_data_byte[4][2]_GND_4_o_add_24_OUT_cy<0> ),
    .I3(N12),
    .I4(\uart_byte_rx_u/_n0277 ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>11 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<14>_201 )
  );
  LUT6 #(
    .INIT ( 64'hEAAAEAAAEAAA6200 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<11>  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [11]),
    .I1(\uart_byte_rx_u/r_data_byte_0 [10]),
    .I2(\uart_byte_rx_u/Madd_r_data_byte[3][2]_GND_4_o_add_23_OUT_cy<0> ),
    .I3(\uart_byte_rx_u/_n0274 ),
    .I4(N14),
    .I5(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>11 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<11>_198 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF03FF03FFFFE ))
  \uart_byte_rx_u/_n0262  (
    .I0(\uart_byte_rx_u/bps_cnt [0]),
    .I1(\uart_byte_rx_u/bps_cnt [1]),
    .I2(\uart_byte_rx_u/bps_cnt [2]),
    .I3(\uart_byte_rx_u/bps_cnt [3]),
    .I4(\uart_byte_rx_u/bps_cnt [7]),
    .I5(\uart_byte_rx_u/_n02622 ),
    .O(\uart_byte_rx_u/_n0262_184 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>11  (
    .I0(\uart_byte_rx_u/div_cnt [1]),
    .I1(\uart_byte_rx_u/div_cnt [15]),
    .I2(\uart_byte_rx_u/div_cnt [3]),
    .I3(\uart_byte_rx_u/div_cnt [4]),
    .I4(\uart_byte_rx_u/div_cnt [5]),
    .I5(\uart_byte_rx_u/div_cnt [7]),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>11_300 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>12  (
    .I0(\uart_byte_rx_u/div_cnt [9]),
    .I1(\uart_byte_rx_u/div_cnt [10]),
    .I2(\uart_byte_rx_u/div_cnt [11]),
    .I3(\uart_byte_rx_u/div_cnt [12]),
    .I4(\uart_byte_rx_u/div_cnt [13]),
    .I5(\uart_byte_rx_u/div_cnt [14]),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>12_301 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o<7>_SW0  (
    .I0(\uart_byte_rx_u/bps_cnt_4_2_370 ),
    .I1(\uart_byte_rx_u/bps_cnt_5_1_369 ),
    .I2(\uart_byte_rx_u/bps_cnt [6]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o<7>  (
    .I0(\uart_byte_rx_u/bps_cnt [7]),
    .I1(\uart_byte_rx_u/bps_cnt [3]),
    .I2(\uart_byte_rx_u/bps_cnt [2]),
    .I3(\uart_byte_rx_u/bps_cnt [1]),
    .I4(\uart_byte_rx_u/bps_cnt [0]),
    .I5(N18),
    .O(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o )
  );
  IBUF   Rst_n_IBUF (
    .I(Rst_n),
    .O(Rst_n_IBUF_1)
  );
  IBUF   Rs232_Rx_IBUF (
    .I(Rs232_Rx),
    .O(Rs232_Rx_IBUF_2)
  );
  OBUF   Led_OBUF (
    .I(\uart_byte_tx_u/uart_state_4 ),
    .O(Led)
  );
  OBUF   Rs232_Tx_OBUF (
    .I(\uart_byte_tx_u/Rs232_Tx_3 ),
    .O(Rs232_Tx)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<14>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [14]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<14>_rt_308 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [13]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<13>_rt_309 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [12]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<12>_rt_310 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [11]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<11>_rt_311 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [10]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<10>_rt_312 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [9]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<9>_rt_313 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [8]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<8>_rt_314 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [7]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<7>_rt_315 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [6]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<6>_rt_316 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [5]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<5>_rt_317 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [4]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<4>_rt_318 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [3]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<3>_rt_319 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [2]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<2>_rt_320 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [1]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_cy<1>_rt_321 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<14>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [14]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<14>_rt_322 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [13]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<13>_rt_323 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [12]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<12>_rt_324 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [11]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<11>_rt_325 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [10]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<10>_rt_326 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [9]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<9>_rt_327 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [8]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<8>_rt_328 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [7]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<7>_rt_329 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [6]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<6>_rt_330 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [5]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<5>_rt_331 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [4]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<4>_rt_332 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [3]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<3>_rt_333 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [2]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<2>_rt_334 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [1]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_cy<1>_rt_335 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<15>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [15]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_xor<15>_rt_336 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<15>_rt  (
    .I0(\uart_byte_rx_u/div_cnt [15]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_xor<15>_rt_337 )
  );
  FDC   \uart_byte_tx_u/uart_state  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_tx_u/uart_state_rstpot_338 ),
    .Q(\uart_byte_tx_u/uart_state_4 )
  );
  FDC   \uart_byte_rx_u/uart_state  (
    .C(Clk_BUFGP_0),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/uart_state_rstpot_339 ),
    .Q(\uart_byte_rx_u/uart_state_267 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFE84 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>111  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/_n02741_104 ),
    .I2(\uart_byte_rx_u/bps_cnt [5]),
    .I3(\uart_byte_rx_u/_n02651_103 ),
    .I4(\uart_byte_rx_u/_n0286 ),
    .I5(\uart_byte_rx_u/_n0262_184 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>11 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFA48 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>111  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/_n02741_104 ),
    .I2(\uart_byte_rx_u/bps_cnt [5]),
    .I3(\uart_byte_rx_u/_n02651_103 ),
    .I4(\uart_byte_rx_u/_n0286 ),
    .I5(\uart_byte_rx_u/_n0262_184 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>11 )
  );
  LUT6 #(
    .INIT ( 64'h000000001500FF00 ))
  \uart_byte_rx_u/Mcount_bps_cnt_lut<1>  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/bps_cnt [1]),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h000000001500FF00 ))
  \uart_byte_rx_u/Mcount_bps_cnt_lut<2>  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/bps_cnt [2]),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h000000001500FF00 ))
  \uart_byte_rx_u/Mcount_bps_cnt_lut<3>  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/bps_cnt [3]),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h000000001500FF00 ))
  \uart_byte_rx_u/Mcount_bps_cnt_lut<4>  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/bps_cnt [4]),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h000000001500FF00 ))
  \uart_byte_rx_u/Mcount_bps_cnt_lut<5>  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h000000000444CCCC ))
  \uart_byte_rx_u/Mcount_bps_cnt_lut<6>  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/bps_cnt [6]),
    .I2(\uart_byte_rx_u/START_BIT [1]),
    .I3(\uart_byte_rx_u/START_BIT [0]),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_lut [6])
  );
  LUT5 #(
    .INIT ( 32'h000015FF ))
  \uart_byte_rx_u/bps_cnt[7]_bps_cnt[7]_OR_26_o_inv1  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I4(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .O(\uart_byte_rx_u/bps_cnt[7]_bps_cnt[7]_OR_26_o_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFEAFF00 ))
  \uart_byte_rx_u/_n0249_inv1  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/bps_clk_285 ),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .O(\uart_byte_rx_u/_n0249_inv )
  );
  LUT6 #(
    .INIT ( 64'h000000001500FF00 ))
  \uart_byte_rx_u/Mcount_bps_cnt_lut<7>  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/bps_cnt [7]),
    .I4(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I5(\uart_byte_rx_u/bps_cnt[7]_PWR_3_o_equal_17_o ),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o<15>1  (
    .I0(\uart_byte_rx_u/div_cnt [0]),
    .I1(\uart_byte_rx_u/div_cnt [8]),
    .I2(\uart_byte_rx_u/div_cnt [6]),
    .I3(\uart_byte_rx_u/div_cnt [2]),
    .I4(\uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>11_300 ),
    .I5(\uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>12_301 ),
    .O(\uart_byte_rx_u/div_cnt[15]_bps_DR[15]_equal_3_o )
  );
  LUT3 #(
    .INIT ( 8'hE0 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<22>1_SW0  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/_n02651_103 ),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hEEAAEEAAEEAAE6A0 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<22>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [22]),
    .I1(\uart_byte_rx_u/Madd_r_data_byte[7][2]_GND_4_o_add_27_OUT_cy<0> ),
    .I2(\uart_byte_rx_u/_n02741_104 ),
    .I3(\uart_byte_rx_u/_n0286 ),
    .I4(\uart_byte_rx_u/_n0262_184 ),
    .I5(N26),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<22> )
  );
  LUT6 #(
    .INIT ( 64'hEEAAEEAAEEAAE6A0 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<21>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [21]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/_n02741_104 ),
    .I3(\uart_byte_rx_u/_n0286 ),
    .I4(\uart_byte_rx_u/_n0262_184 ),
    .I5(N26),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<21> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFAAAAFFFDAAA8 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<1>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [1]),
    .I1(\uart_byte_rx_u/_n02741_104 ),
    .I2(\uart_byte_rx_u/_n0286 ),
    .I3(\uart_byte_rx_u/_n0262_184 ),
    .I4(N34),
    .I5(N35),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<0>1_SW0  (
    .I0(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/bps_cnt [5]),
    .I3(\uart_byte_rx_u/_n02651_103 ),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'hAE00 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<0>1_SW1  (
    .I0(\uart_byte_rx_u/bps_cnt [5]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/_n02651_103 ),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hFFFFAAAAFFFDAAA8 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<0>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [0]),
    .I1(\uart_byte_rx_u/_n02741_104 ),
    .I2(\uart_byte_rx_u/_n0286 ),
    .I3(\uart_byte_rx_u/_n0262_184 ),
    .I4(N37),
    .I5(N38),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFAAFDA8 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<19>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [19]),
    .I1(\uart_byte_rx_u/_n0286 ),
    .I2(\uart_byte_rx_u/_n0262_184 ),
    .I3(N40),
    .I4(N41),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<19> )
  );
  LUT5 #(
    .INIT ( 32'hFFAAFDA8 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<16>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [16]),
    .I1(\uart_byte_rx_u/_n0286 ),
    .I2(\uart_byte_rx_u/_n0262_184 ),
    .I3(N46),
    .I4(N47),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<16> )
  );
  LUT5 #(
    .INIT ( 32'hFFAAFDA8 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [13]),
    .I1(\uart_byte_rx_u/_n0286 ),
    .I2(\uart_byte_rx_u/_n0262_184 ),
    .I3(N49),
    .I4(N50),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'hFFCEFFDF00020013 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<7>1  (
    .I0(\uart_byte_rx_u/bps_cnt [7]),
    .I1(\uart_byte_rx_u/_n0265 ),
    .I2(N53),
    .I3(\uart_byte_rx_u/_n0262_184 ),
    .I4(N52),
    .I5(N54),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFDFFEC00310020 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>1  (
    .I0(\uart_byte_rx_u/bps_cnt [7]),
    .I1(\uart_byte_rx_u/_n0265 ),
    .I2(N57),
    .I3(\uart_byte_rx_u/_n0262_184 ),
    .I4(N56),
    .I5(N58),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>11211_SW0  (
    .I0(\uart_byte_rx_u/bps_cnt [5]),
    .I1(\uart_byte_rx_u/_n02651_103 ),
    .I2(\uart_byte_rx_u/_n02741_104 ),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'hBBBBAAAABBB9AAA0 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<2>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [2]),
    .I1(N22),
    .I2(\uart_byte_rx_u/_n0286 ),
    .I3(\uart_byte_rx_u/_n0262_184 ),
    .I4(\uart_byte_rx_u/_n0265 ),
    .I5(N60),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFABF ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW2_SW0  (
    .I0(\uart_byte_rx_u/bps_cnt [6]),
    .I1(\uart_byte_rx_u/bps_cnt [1]),
    .I2(\uart_byte_rx_u/bps_cnt [2]),
    .I3(\uart_byte_rx_u/bps_cnt [3]),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hFFFFEFD5FFFFDFD5 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW2  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [7]),
    .I1(\uart_byte_rx_u/bps_cnt [7]),
    .I2(\uart_byte_rx_u/bps_cnt [5]),
    .I3(\uart_byte_rx_u/bps_cnt [4]),
    .I4(N62),
    .I5(\uart_byte_rx_u/Madd_r_data_byte[2][2]_GND_4_o_add_22_OUT_cy<0> ),
    .O(N53)
  );
  LUT6 #(
    .INIT ( 64'h0000210A0000220A ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW5  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [4]),
    .I1(\uart_byte_rx_u/bps_cnt [7]),
    .I2(\uart_byte_rx_u/bps_cnt [4]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(N62),
    .I5(\uart_byte_rx_u/Madd_r_data_byte[1][2]_GND_4_o_add_21_OUT_cy<0> ),
    .O(N57)
  );
  MUXF7   \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW1  (
    .I0(N66),
    .I1(N67),
    .S(\uart_byte_rx_u/_n02651_103 ),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'hA5FF257755FF5577 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW1_G  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [7]),
    .I1(\uart_byte_rx_u/bps_cnt [6]),
    .I2(\uart_byte_rx_u/bps_cnt [4]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(N2),
    .I5(\uart_byte_rx_u/Madd_r_data_byte[2][2]_GND_4_o_add_22_OUT_cy<0> ),
    .O(N67)
  );
  MUXF7   \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW4  (
    .I0(N68),
    .I1(N69),
    .S(\uart_byte_rx_u/_n02651_103 ),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'hA500AD88AA00AA88 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW4_G  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [4]),
    .I1(\uart_byte_rx_u/bps_cnt [6]),
    .I2(\uart_byte_rx_u/bps_cnt [4]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(N2),
    .I5(\uart_byte_rx_u/Madd_r_data_byte[1][2]_GND_4_o_add_21_OUT_cy<0> ),
    .O(N69)
  );
  LUT6 #(
    .INIT ( 64'h0002000000000000 ))
  \uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>2  (
    .I0(\uart_byte_rx_u/div_cnt [0]),
    .I1(\uart_byte_rx_u/div_cnt [2]),
    .I2(\uart_byte_rx_u/div_cnt [6]),
    .I3(\uart_byte_rx_u/div_cnt [8]),
    .I4(\uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>11_300 ),
    .I5(\uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o<15>12_301 ),
    .O(\uart_byte_rx_u/div_cnt[15]_GND_4_o_equal_8_o )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \uart_byte_tx_u/uart_state_rstpot  (
    .I0(\uart_byte_rx_u/Rx_Done_13 ),
    .I1(\uart_byte_tx_u/Tx_Done_93 ),
    .I2(\uart_byte_tx_u/uart_state_4 ),
    .O(\uart_byte_tx_u/uart_state_rstpot_338 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \uart_byte_rx_u/uart_state_rstpot_SW0  (
    .I0(\uart_byte_rx_u/START_BIT [0]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [2]),
    .O(N70)
  );
  LUT6 #(
    .INIT ( 64'h0444FFFF04440444 ))
  \uart_byte_rx_u/uart_state_rstpot  (
    .I0(\uart_byte_rx_u/Rx_Done_13 ),
    .I1(\uart_byte_rx_u/uart_state_267 ),
    .I2(N70),
    .I3(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_equal_10_o ),
    .I4(\uart_byte_rx_u/tmp0_Rs232_Rx_287 ),
    .I5(\uart_byte_rx_u/tmp1_Rs232_Rx_286 ),
    .O(\uart_byte_rx_u/uart_state_rstpot_339 )
  );
  LUT4 #(
    .INIT ( 16'hFFE0 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<23>1_SW1  (
    .I0(\uart_byte_rx_u/bps_cnt [5]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/_n02651_103 ),
    .I3(\uart_byte_rx_u/_n02741_104 ),
    .O(N72)
  );
  LUT6 #(
    .INIT ( 64'hECCCECCCECCC6C00 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<23>1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [22]),
    .I1(\uart_byte_rx_u/r_data_byte_0 [23]),
    .I2(\uart_byte_rx_u/Madd_r_data_byte[7][2]_GND_4_o_add_27_OUT_cy<0> ),
    .I3(\uart_byte_rx_u/_n0286 ),
    .I4(\uart_byte_rx_u/_n0262_184 ),
    .I5(N72),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<23> )
  );
  LUT6 #(
    .INIT ( 64'hEFFFFFFFFFFFFFFF ))
  \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o<15>4_SW0  (
    .I0(\uart_byte_tx_u/div_cnt [14]),
    .I1(\uart_byte_tx_u/div_cnt [13]),
    .I2(\uart_byte_tx_u/div_cnt [12]),
    .I3(\uart_byte_tx_u/div_cnt [2]),
    .I4(\uart_byte_tx_u/div_cnt [4]),
    .I5(\uart_byte_tx_u/div_cnt [6]),
    .O(N74)
  );
  LUT6 #(
    .INIT ( 64'h0000400000000000 ))
  \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o<15>4  (
    .I0(\uart_byte_tx_u/div_cnt [11]),
    .I1(\uart_byte_tx_u/div_cnt [10]),
    .I2(\uart_byte_tx_u/div_cnt [1]),
    .I3(\uart_byte_tx_u/div_cnt [0]),
    .I4(N74),
    .I5(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o<15>1 ),
    .O(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_5_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \uart_byte_rx_u/Mcount_bps_cnt_lut<0>  (
    .I0(\uart_byte_rx_u/bps_cnt [0]),
    .I1(\uart_byte_rx_u/bps_cnt [7]),
    .I2(\uart_byte_rx_u/bps_cnt [3]),
    .I3(\uart_byte_rx_u/bps_cnt [2]),
    .I4(N18),
    .I5(\uart_byte_rx_u/bps_cnt [1]),
    .O(\uart_byte_rx_u/Mcount_bps_cnt_lut [0])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_2_o_Mux_15_o26_SW0  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/r_data_byte [7]),
    .I2(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_2_o_Mux_15_o23 ),
    .O(N76)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<1>111_SW1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [0]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/r_data_byte_0 [1]),
    .O(N22)
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<1>1  (
    .I0(\uart_byte_rx_u/START_BIT [1]),
    .I1(\uart_byte_rx_u/_n0258 ),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I4(\uart_byte_rx_u/_n0253 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAA6AAA0000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<2>1  (
    .I0(\uart_byte_rx_u/START_BIT [2]),
    .I1(\uart_byte_rx_u/START_BIT [1]),
    .I2(\uart_byte_rx_u/START_BIT [0]),
    .I3(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I4(\uart_byte_rx_u/_n0258 ),
    .I5(\uart_byte_rx_u/_n0253 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_91_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h7F000000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<8>_SW0  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [6]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/_n02651_103 ),
    .O(N4)
  );
  LUT5 #(
    .INIT ( 32'hF7000000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<5>_SW0  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [3]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/bps_cnt [4]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/_n02651_103 ),
    .O(N6)
  );
  LUT5 #(
    .INIT ( 32'hE666FFFF ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<20>_SW0  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/r_data_byte_0 [18]),
    .I3(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I4(\uart_byte_rx_u/_n02741_104 ),
    .O(N8)
  );
  LUT5 #(
    .INIT ( 32'hB999FFFF ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<17>_SW0  (
    .I0(\uart_byte_rx_u/bps_cnt [5]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/r_data_byte_0 [15]),
    .I4(\uart_byte_rx_u/_n02741_104 ),
    .O(N10)
  );
  LUT5 #(
    .INIT ( 32'hB999FFFF ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<14>_SW0  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/r_data_byte_0 [12]),
    .I4(\uart_byte_rx_u/_n02741_104 ),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hF0070000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<11>_SW0  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [9]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/bps_cnt [4]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/_n02741_104 ),
    .O(N14)
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<1>1_SW0  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [0]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/_n02651_103 ),
    .O(N34)
  );
  LUT5 #(
    .INIT ( 32'hDFCC0000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<1>1_SW1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [0]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/bps_cnt [4]),
    .I4(\uart_byte_rx_u/_n02651_103 ),
    .O(N35)
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>111_SW0  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [18]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/bps_cnt [5]),
    .I3(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I4(\uart_byte_rx_u/_n02741_104 ),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hFFFF7FFFFFCC0000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>111_SW1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [18]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/_n02651_103 ),
    .I5(\uart_byte_rx_u/_n02741_104 ),
    .O(N41)
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>111_SW0  (
    .I0(\uart_byte_rx_u/bps_cnt [4]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/r_data_byte_0 [15]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/_n02741_104 ),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'hFFFFF7FFFFF00000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>111_SW1  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [15]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/bps_cnt [4]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/_n02651_103 ),
    .I5(\uart_byte_rx_u/_n02741_104 ),
    .O(N47)
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>111_SW2  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [12]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/_n02741_104 ),
    .O(N49)
  );
  LUT6 #(
    .INIT ( 64'hFFFFF7FFFFF00000 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<13>111_SW3  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [12]),
    .I1(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I2(\uart_byte_rx_u/bps_cnt [5]),
    .I3(\uart_byte_rx_u/bps_cnt [4]),
    .I4(\uart_byte_rx_u/_n02651_103 ),
    .I5(\uart_byte_rx_u/_n02741_104 ),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'hECCCCCCCCCCCCCCC ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW3  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [6]),
    .I1(\uart_byte_rx_u/r_data_byte_0 [7]),
    .I2(\uart_byte_rx_u/bps_cnt [4]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I5(\uart_byte_rx_u/_n02651_103 ),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'hCCECCCCCCCCCCCCC ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW6  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [3]),
    .I1(\uart_byte_rx_u/r_data_byte_0 [4]),
    .I2(\uart_byte_rx_u/bps_cnt [5]),
    .I3(\uart_byte_rx_u/bps_cnt [4]),
    .I4(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I5(\uart_byte_rx_u/_n02651_103 ),
    .O(N58)
  );
  LUT5 #(
    .INIT ( 32'h9DFFFFFF ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW1_F  (
    .I0(\uart_byte_rx_u/bps_cnt [3]),
    .I1(\uart_byte_rx_u/bps_cnt [2]),
    .I2(\uart_byte_rx_u/bps_cnt [1]),
    .I3(\uart_byte_rx_u/bps_cnt [6]),
    .I4(\uart_byte_rx_u/r_data_byte_0 [7]),
    .O(N66)
  );
  LUT5 #(
    .INIT ( 32'h08800080 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<4>11_SW4_F  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [4]),
    .I1(\uart_byte_rx_u/bps_cnt [6]),
    .I2(\uart_byte_rx_u/bps_cnt [3]),
    .I3(\uart_byte_rx_u/bps_cnt [2]),
    .I4(\uart_byte_rx_u/bps_cnt [1]),
    .O(N68)
  );
  FDCE   \uart_byte_rx_u/bps_cnt_4_1  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt4 ),
    .Q(\uart_byte_rx_u/bps_cnt_4_1_368 )
  );
  FDCE   \uart_byte_rx_u/bps_cnt_5_1  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt5 ),
    .Q(\uart_byte_rx_u/bps_cnt_5_1_369 )
  );
  FDCE   \uart_byte_rx_u/bps_cnt_4_2  (
    .C(Clk_BUFGP_0),
    .CE(\uart_byte_rx_u/_n0249_inv ),
    .CLR(\uart_byte_rx_u/Rst_n_inv ),
    .D(\uart_byte_rx_u/Mcount_bps_cnt4 ),
    .Q(\uart_byte_rx_u/bps_cnt_4_2_370 )
  );
  LUT5 #(
    .INIT ( 32'h01100100 ))
  \uart_byte_rx_u/_n026511_1  (
    .I0(\uart_byte_rx_u/bps_cnt [6]),
    .I1(\uart_byte_rx_u/bps_cnt [7]),
    .I2(\uart_byte_rx_u/bps_cnt [2]),
    .I3(\uart_byte_rx_u/bps_cnt [3]),
    .I4(\uart_byte_rx_u/bps_cnt [1]),
    .O(\uart_byte_rx_u/_n026511_371 )
  );
  MUXF7   \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>1  (
    .I0(N78),
    .I1(N79),
    .S(\uart_byte_rx_u/_n02741_104 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAA8880 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>1_F  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [10]),
    .I1(\uart_byte_rx_u/_n02651_103 ),
    .I2(\uart_byte_rx_u/bps_cnt [5]),
    .I3(\uart_byte_rx_u/bps_cnt [4]),
    .I4(\uart_byte_rx_u/_n0262_184 ),
    .I5(\uart_byte_rx_u/_n0286 ),
    .O(N78)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAABABABA9A ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<10>1_G  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [10]),
    .I1(\uart_byte_rx_u/bps_cnt [5]),
    .I2(\uart_byte_rx_u/Madd_r_data_byte[3][2]_GND_4_o_add_23_OUT_cy<0> ),
    .I3(\uart_byte_rx_u/_n0286 ),
    .I4(\uart_byte_rx_u/_n0262_184 ),
    .I5(\uart_byte_rx_u/bps_cnt [4]),
    .O(N79)
  );
  MUXF7   \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_2_o_Mux_15_o26  (
    .I0(N80),
    .I1(N81),
    .S(\uart_byte_tx_u/bps_cnt [1]),
    .O(\uart_byte_tx_u/bps_cnt[3]_PWR_2_o_Mux_15_o )
  );
  LUT6 #(
    .INIT ( 64'hFEFFFEBBDC55DC11 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_2_o_Mux_15_o26_F  (
    .I0(\uart_byte_tx_u/bps_cnt [0]),
    .I1(\uart_byte_tx_u/bps_cnt [3]),
    .I2(\uart_byte_tx_u/r_data_byte [2]),
    .I3(\uart_byte_tx_u/bps_cnt [2]),
    .I4(\uart_byte_tx_u/r_data_byte [6]),
    .I5(N76),
    .O(N80)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEBA5410 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_2_o_Mux_15_o26_G  (
    .I0(\uart_byte_tx_u/bps_cnt [0]),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/r_data_byte [0]),
    .I3(\uart_byte_tx_u/r_data_byte [4]),
    .I4(N76),
    .I5(\uart_byte_tx_u/bps_cnt [3]),
    .O(N81)
  );
  MUXF7   \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<9>1  (
    .I0(N82),
    .I1(N83),
    .S(\uart_byte_rx_u/_n02741_104 ),
    .O(\uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAA8880 ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<9>1_F  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [9]),
    .I1(\uart_byte_rx_u/_n02651_103 ),
    .I2(\uart_byte_rx_u/bps_cnt [4]),
    .I3(\uart_byte_rx_u/bps_cnt [5]),
    .I4(\uart_byte_rx_u/_n0286 ),
    .I5(\uart_byte_rx_u/_n0262_184 ),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAABABABA9A ))
  \uart_byte_rx_u/bps_cnt[7]_GND_4_o_select_92_OUT<9>1_G  (
    .I0(\uart_byte_rx_u/r_data_byte_0 [9]),
    .I1(\uart_byte_rx_u/bps_cnt [4]),
    .I2(\uart_byte_rx_u/s1_Rs232_Rx_288 ),
    .I3(\uart_byte_rx_u/_n0262_184 ),
    .I4(\uart_byte_rx_u/_n0286 ),
    .I5(\uart_byte_rx_u/bps_cnt [5]),
    .O(N83)
  );
  BUFGP   Clk_BUFGP (
    .I(Clk),
    .O(Clk_BUFGP_0)
  );
  INV   \uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_lut<0>_INV_0  (
    .I(\uart_byte_tx_u/div_cnt [0]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_2_o_add_5_OUT_lut<0> )
  );
  INV   \uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_lut<0>_INV_0  (
    .I(\uart_byte_rx_u/div_cnt [0]),
    .O(\uart_byte_rx_u/Madd_div_cnt[15]_GND_4_o_add_3_OUT_lut<0> )
  );
  INV   \uart_byte_tx_u/Rst_n_inv1_INV_0  (
    .I(Rst_n_IBUF_1),
    .O(\uart_byte_rx_u/Rst_n_inv )
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

