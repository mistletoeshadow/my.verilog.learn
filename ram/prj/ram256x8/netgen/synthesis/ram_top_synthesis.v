////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ram_top_synthesis.v
// /___/   /\     Timestamp: Mon Oct 25 09:45:25 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ram_top.ngc ram_top_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: ram_top.ngc
// Output file	: E:\FPGA\my.verilog.learn\ram\prj\ram256x8\netgen\synthesis\ram_top_synthesis.v
// # of Modules	: 1
// Design Name	: ram_top
// Xilinx        : F:\Xilinx\14.7\ISE_DS\ISE\
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

module ram_top (
  clk, rst_n, key_1, key_2, rs232_tx, state_led, tx_done
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input rst_n;
  input key_1;
  input key_2;
  output rs232_tx;
  output state_led;
  output tx_done;
  
  // synthesis translate_off
  
  wire clk_BUFGP_0;
  wire rst_n_IBUF_1;
  wire key_1_IBUF_2;
  wire key_2_IBUF_3;
  wire \key_u1/key_flag_12 ;
  wire \key_u2/key_flag_13 ;
  wire \ram_ctrl_u/w_en_30 ;
  wire \uart_byte_tx_u/tx_31 ;
  wire \uart_byte_tx_u/tx_done_32 ;
  wire \uart_byte_tx_u/uart_state_33 ;
  wire key2;
  wire N0;
  wire N1;
  wire \key_u2/Mcount_cnt19 ;
  wire \key_u2/Mcount_cnt18 ;
  wire \key_u2/Mcount_cnt17 ;
  wire \key_u2/Mcount_cnt16 ;
  wire \key_u2/Mcount_cnt15 ;
  wire \key_u2/Mcount_cnt14 ;
  wire \key_u2/Mcount_cnt13 ;
  wire \key_u2/Mcount_cnt12 ;
  wire \key_u2/Mcount_cnt11 ;
  wire \key_u2/Mcount_cnt10 ;
  wire \key_u2/Mcount_cnt9 ;
  wire \key_u2/Mcount_cnt8 ;
  wire \key_u2/Mcount_cnt7 ;
  wire \key_u2/Mcount_cnt6 ;
  wire \key_u2/Mcount_cnt5 ;
  wire \key_u2/Mcount_cnt4 ;
  wire \key_u2/Mcount_cnt3 ;
  wire \key_u2/Mcount_cnt2 ;
  wire \key_u2/Mcount_cnt1 ;
  wire \key_u2/Mcount_cnt ;
  wire \key_u2/state_FSM_FFd1_96 ;
  wire \key_u2/state_FSM_FFd2_97 ;
  wire \key_u2/state_FSM_FFd1-In ;
  wire \key_u2/state_FSM_FFd2-In ;
  wire \key_u2/state[3]_en_cnt_Select_14_o ;
  wire \key_u2/GND_3_o_GND_3_o_equal_21_o ;
  wire \key_u2/key_in_sa_102 ;
  wire \key_u2/cnt_full_103 ;
  wire \key_u2/en_cnt_104 ;
  wire \key_u2/key_tmpb_105 ;
  wire \key_u2/key_tmpa_106 ;
  wire \key_u2/key_in_sb_107 ;
  wire \key_u1/Mcount_cnt19 ;
  wire \key_u1/Mcount_cnt18 ;
  wire \key_u1/Mcount_cnt17 ;
  wire \key_u1/Mcount_cnt16 ;
  wire \key_u1/Mcount_cnt15 ;
  wire \key_u1/Mcount_cnt14 ;
  wire \key_u1/Mcount_cnt13 ;
  wire \key_u1/Mcount_cnt12 ;
  wire \key_u1/Mcount_cnt11 ;
  wire \key_u1/Mcount_cnt10 ;
  wire \key_u1/Mcount_cnt9 ;
  wire \key_u1/Mcount_cnt8 ;
  wire \key_u1/Mcount_cnt7 ;
  wire \key_u1/Mcount_cnt6 ;
  wire \key_u1/Mcount_cnt5 ;
  wire \key_u1/Mcount_cnt4 ;
  wire \key_u1/Mcount_cnt3 ;
  wire \key_u1/Mcount_cnt2 ;
  wire \key_u1/Mcount_cnt1 ;
  wire \key_u1/Mcount_cnt ;
  wire \key_u1/state_FSM_FFd1_187 ;
  wire \key_u1/state_FSM_FFd2_188 ;
  wire \key_u1/state_FSM_FFd1-In ;
  wire \key_u1/state_FSM_FFd2-In ;
  wire \key_u1/rst_n_inv ;
  wire \key_u1/state[3]_en_cnt_Select_14_o ;
  wire \key_u1/GND_3_o_GND_3_o_equal_21_o ;
  wire \key_u1/key_in_sa_194 ;
  wire \key_u1/cnt_full_195 ;
  wire \key_u1/en_cnt_196 ;
  wire \key_u1/key_tmpb_197 ;
  wire \key_u1/key_tmpa_198 ;
  wire \key_u1/key_in_sb_199 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms23 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms22 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms21 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms20 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms19 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms18 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms17 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms16 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms15 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms14 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms13 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms12 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms11 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms10 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms9 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms8 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms7 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms6 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms5 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms4 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms3 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms2 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms1 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms ;
  wire \ram_ctrl_u/Mcount_addr_eqn_3 ;
  wire \ram_ctrl_u/Mcount_addr_eqn_2 ;
  wire \ram_ctrl_u/Mcount_addr_eqn_1 ;
  wire \ram_ctrl_u/_n0042_inv_310 ;
  wire \ram_ctrl_u/w_en_GND_5_o_OR_58_o ;
  wire \ram_ctrl_u/rd_flag_312 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<14>_337 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>_338 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>_339 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>_340 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>_341 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>_342 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>_343 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>_344 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>_345 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>_346 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>_347 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>_348 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>_349 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>_350 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<0>_351 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_lut<0> ;
  wire \uart_byte_tx_u/Mcount_bps_cnt3 ;
  wire \uart_byte_tx_u/Mcount_bps_cnt2 ;
  wire \uart_byte_tx_u/Mcount_bps_cnt1 ;
  wire \uart_byte_tx_u/Mcount_bps_cnt ;
  wire \uart_byte_tx_u/_n0049_inv ;
  wire \uart_byte_tx_u/bps_cnt[3]_PWR_5_o_equal_17_o ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o ;
  wire \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ;
  wire \uart_byte_tx_u/bps_cnt[3]_PWR_5_o_Mux_17_o ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<0> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<1> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<2> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<3> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<4> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<5> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<6> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<7> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<8> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<9> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<10> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<11> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<12> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<13> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<14> ;
  wire \uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<15> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<0> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<1> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<2> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<3> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<4> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<5> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<6> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<7> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<8> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<9> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<10> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<11> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<12> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<13> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<14> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<15> ;
  wire \uart_byte_tx_u/bps_clk_398 ;
  wire \key_u2/GND_3_o_GND_3_o_equal_21_o<19>1_424 ;
  wire \key_u2/GND_3_o_GND_3_o_equal_21_o<19>2_425 ;
  wire \key_u1/GND_3_o_GND_3_o_equal_21_o<19>1_427 ;
  wire \key_u1/GND_3_o_GND_3_o_equal_21_o<19>2_428 ;
  wire N2;
  wire \ram_ctrl_u/w_en_GND_5_o_OR_58_o1_430 ;
  wire \ram_ctrl_u/w_en_GND_5_o_OR_58_o2_431 ;
  wire \ram_ctrl_u/w_en_GND_5_o_OR_58_o3_432 ;
  wire \ram_ctrl_u/w_en_GND_5_o_OR_58_o4_433 ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o<15> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o<15>1_435 ;
  wire \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o<15>1 ;
  wire \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o21 ;
  wire \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o23 ;
  wire \ram_ctrl_u/Mcount_addr_cy<6>_rt_446 ;
  wire \ram_ctrl_u/Mcount_addr_cy<5>_rt_447 ;
  wire \ram_ctrl_u/Mcount_addr_cy<4>_rt_448 ;
  wire \ram_ctrl_u/Mcount_addr_cy<3>_rt_449 ;
  wire \ram_ctrl_u/Mcount_addr_cy<2>_rt_450 ;
  wire \ram_ctrl_u/Mcount_addr_cy<1>_rt_451 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<14>_rt_452 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>_rt_453 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>_rt_454 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>_rt_455 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>_rt_456 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>_rt_457 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>_rt_458 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>_rt_459 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>_rt_460 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>_rt_461 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>_rt_462 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>_rt_463 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>_rt_464 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>_rt_465 ;
  wire \ram_ctrl_u/Mcount_addr_xor<7>_rt_466 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<15>_rt_467 ;
  wire \key_u2/key_flag_rstpot_468 ;
  wire \key_u1/key_flag_rstpot_469 ;
  wire \uart_byte_tx_u/uart_state_rstpot_470 ;
  wire N6;
  wire \ram_ctrl_u/rd_flag_rstpot_472 ;
  wire \ram_ctrl_u/addr_7_rstpot_473 ;
  wire \ram_ctrl_u/addr_6_rstpot_474 ;
  wire \ram_ctrl_u/addr_5_rstpot_475 ;
  wire \ram_ctrl_u/addr_4_rstpot_476 ;
  wire \ram_ctrl_u/addr_0_rstpot_477 ;
  wire \ram_ctrl_u/w_en_rstpot_478 ;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire N30;
  wire N31;
  wire [7 : 0] ram_out;
  wire [7 : 0] \ram_ctrl_u/addr ;
  wire [7 : 0] ram_in;
  wire [19 : 0] \key_u2/Mcount_cnt_lut ;
  wire [18 : 0] \key_u2/Mcount_cnt_cy ;
  wire [19 : 0] \key_u2/cnt ;
  wire [19 : 0] \key_u1/Mcount_cnt_lut ;
  wire [18 : 0] \key_u1/Mcount_cnt_cy ;
  wire [19 : 0] \key_u1/cnt ;
  wire [6 : 0] \ram_ctrl_u/Mcount_addr_cy ;
  wire [0 : 0] \ram_ctrl_u/Mcount_addr_lut ;
  wire [23 : 0] \ram_ctrl_u/Mcount_cnt_20ms_lut ;
  wire [22 : 0] \ram_ctrl_u/Mcount_cnt_20ms_cy ;
  wire [7 : 0] \ram_ctrl_u/Result ;
  wire [23 : 0] \ram_ctrl_u/cnt_20ms ;
  wire [3 : 0] \uart_byte_tx_u/bps_cnt ;
  wire [15 : 0] \uart_byte_tx_u/div_cnt ;
  wire [7 : 0] \uart_byte_tx_u/r_data_byte ;
  wire [19 : 19] \key_u2/GND_3_o_GND_3_o_equal_21_o_0 ;
  wire [19 : 19] \key_u1/GND_3_o_GND_3_o_equal_21_o_1 ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDC   \key_u2/cnt_19  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt19 ),
    .Q(\key_u2/cnt [19])
  );
  FDC   \key_u2/cnt_18  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt18 ),
    .Q(\key_u2/cnt [18])
  );
  FDC   \key_u2/cnt_17  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt17 ),
    .Q(\key_u2/cnt [17])
  );
  FDC   \key_u2/cnt_16  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt16 ),
    .Q(\key_u2/cnt [16])
  );
  FDC   \key_u2/cnt_15  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt15 ),
    .Q(\key_u2/cnt [15])
  );
  FDC   \key_u2/cnt_14  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt14 ),
    .Q(\key_u2/cnt [14])
  );
  FDC   \key_u2/cnt_13  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt13 ),
    .Q(\key_u2/cnt [13])
  );
  FDC   \key_u2/cnt_12  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt12 ),
    .Q(\key_u2/cnt [12])
  );
  FDC   \key_u2/cnt_11  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt11 ),
    .Q(\key_u2/cnt [11])
  );
  FDC   \key_u2/cnt_10  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt10 ),
    .Q(\key_u2/cnt [10])
  );
  FDC   \key_u2/cnt_9  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt9 ),
    .Q(\key_u2/cnt [9])
  );
  FDC   \key_u2/cnt_8  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt8 ),
    .Q(\key_u2/cnt [8])
  );
  FDC   \key_u2/cnt_7  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt7 ),
    .Q(\key_u2/cnt [7])
  );
  FDC   \key_u2/cnt_6  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt6 ),
    .Q(\key_u2/cnt [6])
  );
  FDC   \key_u2/cnt_5  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt5 ),
    .Q(\key_u2/cnt [5])
  );
  FDC   \key_u2/cnt_4  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt4 ),
    .Q(\key_u2/cnt [4])
  );
  FDC   \key_u2/cnt_3  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt3 ),
    .Q(\key_u2/cnt [3])
  );
  FDC   \key_u2/cnt_2  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt2 ),
    .Q(\key_u2/cnt [2])
  );
  FDC   \key_u2/cnt_1  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt1 ),
    .Q(\key_u2/cnt [1])
  );
  FDC   \key_u2/cnt_0  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/Mcount_cnt ),
    .Q(\key_u2/cnt [0])
  );
  FDC   \key_u2/state_FSM_FFd1  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/state_FSM_FFd1-In ),
    .Q(\key_u2/state_FSM_FFd1_96 )
  );
  FDC   \key_u2/state_FSM_FFd2  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/state_FSM_FFd2-In ),
    .Q(\key_u2/state_FSM_FFd2_97 )
  );
  XORCY   \key_u2/Mcount_cnt_xor<19>  (
    .CI(\key_u2/Mcount_cnt_cy [18]),
    .LI(\key_u2/Mcount_cnt_lut [19]),
    .O(\key_u2/Mcount_cnt19 )
  );
  XORCY   \key_u2/Mcount_cnt_xor<18>  (
    .CI(\key_u2/Mcount_cnt_cy [17]),
    .LI(\key_u2/Mcount_cnt_lut [18]),
    .O(\key_u2/Mcount_cnt18 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<18>  (
    .CI(\key_u2/Mcount_cnt_cy [17]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [18]),
    .O(\key_u2/Mcount_cnt_cy [18])
  );
  XORCY   \key_u2/Mcount_cnt_xor<17>  (
    .CI(\key_u2/Mcount_cnt_cy [16]),
    .LI(\key_u2/Mcount_cnt_lut [17]),
    .O(\key_u2/Mcount_cnt17 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<17>  (
    .CI(\key_u2/Mcount_cnt_cy [16]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [17]),
    .O(\key_u2/Mcount_cnt_cy [17])
  );
  XORCY   \key_u2/Mcount_cnt_xor<16>  (
    .CI(\key_u2/Mcount_cnt_cy [15]),
    .LI(\key_u2/Mcount_cnt_lut [16]),
    .O(\key_u2/Mcount_cnt16 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<16>  (
    .CI(\key_u2/Mcount_cnt_cy [15]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [16]),
    .O(\key_u2/Mcount_cnt_cy [16])
  );
  XORCY   \key_u2/Mcount_cnt_xor<15>  (
    .CI(\key_u2/Mcount_cnt_cy [14]),
    .LI(\key_u2/Mcount_cnt_lut [15]),
    .O(\key_u2/Mcount_cnt15 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<15>  (
    .CI(\key_u2/Mcount_cnt_cy [14]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [15]),
    .O(\key_u2/Mcount_cnt_cy [15])
  );
  XORCY   \key_u2/Mcount_cnt_xor<14>  (
    .CI(\key_u2/Mcount_cnt_cy [13]),
    .LI(\key_u2/Mcount_cnt_lut [14]),
    .O(\key_u2/Mcount_cnt14 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<14>  (
    .CI(\key_u2/Mcount_cnt_cy [13]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [14]),
    .O(\key_u2/Mcount_cnt_cy [14])
  );
  XORCY   \key_u2/Mcount_cnt_xor<13>  (
    .CI(\key_u2/Mcount_cnt_cy [12]),
    .LI(\key_u2/Mcount_cnt_lut [13]),
    .O(\key_u2/Mcount_cnt13 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<13>  (
    .CI(\key_u2/Mcount_cnt_cy [12]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [13]),
    .O(\key_u2/Mcount_cnt_cy [13])
  );
  XORCY   \key_u2/Mcount_cnt_xor<12>  (
    .CI(\key_u2/Mcount_cnt_cy [11]),
    .LI(\key_u2/Mcount_cnt_lut [12]),
    .O(\key_u2/Mcount_cnt12 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<12>  (
    .CI(\key_u2/Mcount_cnt_cy [11]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [12]),
    .O(\key_u2/Mcount_cnt_cy [12])
  );
  XORCY   \key_u2/Mcount_cnt_xor<11>  (
    .CI(\key_u2/Mcount_cnt_cy [10]),
    .LI(\key_u2/Mcount_cnt_lut [11]),
    .O(\key_u2/Mcount_cnt11 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<11>  (
    .CI(\key_u2/Mcount_cnt_cy [10]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [11]),
    .O(\key_u2/Mcount_cnt_cy [11])
  );
  XORCY   \key_u2/Mcount_cnt_xor<10>  (
    .CI(\key_u2/Mcount_cnt_cy [9]),
    .LI(\key_u2/Mcount_cnt_lut [10]),
    .O(\key_u2/Mcount_cnt10 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<10>  (
    .CI(\key_u2/Mcount_cnt_cy [9]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [10]),
    .O(\key_u2/Mcount_cnt_cy [10])
  );
  XORCY   \key_u2/Mcount_cnt_xor<9>  (
    .CI(\key_u2/Mcount_cnt_cy [8]),
    .LI(\key_u2/Mcount_cnt_lut [9]),
    .O(\key_u2/Mcount_cnt9 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<9>  (
    .CI(\key_u2/Mcount_cnt_cy [8]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [9]),
    .O(\key_u2/Mcount_cnt_cy [9])
  );
  XORCY   \key_u2/Mcount_cnt_xor<8>  (
    .CI(\key_u2/Mcount_cnt_cy [7]),
    .LI(\key_u2/Mcount_cnt_lut [8]),
    .O(\key_u2/Mcount_cnt8 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<8>  (
    .CI(\key_u2/Mcount_cnt_cy [7]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [8]),
    .O(\key_u2/Mcount_cnt_cy [8])
  );
  XORCY   \key_u2/Mcount_cnt_xor<7>  (
    .CI(\key_u2/Mcount_cnt_cy [6]),
    .LI(\key_u2/Mcount_cnt_lut [7]),
    .O(\key_u2/Mcount_cnt7 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<7>  (
    .CI(\key_u2/Mcount_cnt_cy [6]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [7]),
    .O(\key_u2/Mcount_cnt_cy [7])
  );
  XORCY   \key_u2/Mcount_cnt_xor<6>  (
    .CI(\key_u2/Mcount_cnt_cy [5]),
    .LI(\key_u2/Mcount_cnt_lut [6]),
    .O(\key_u2/Mcount_cnt6 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<6>  (
    .CI(\key_u2/Mcount_cnt_cy [5]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [6]),
    .O(\key_u2/Mcount_cnt_cy [6])
  );
  XORCY   \key_u2/Mcount_cnt_xor<5>  (
    .CI(\key_u2/Mcount_cnt_cy [4]),
    .LI(\key_u2/Mcount_cnt_lut [5]),
    .O(\key_u2/Mcount_cnt5 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<5>  (
    .CI(\key_u2/Mcount_cnt_cy [4]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [5]),
    .O(\key_u2/Mcount_cnt_cy [5])
  );
  XORCY   \key_u2/Mcount_cnt_xor<4>  (
    .CI(\key_u2/Mcount_cnt_cy [3]),
    .LI(\key_u2/Mcount_cnt_lut [4]),
    .O(\key_u2/Mcount_cnt4 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<4>  (
    .CI(\key_u2/Mcount_cnt_cy [3]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [4]),
    .O(\key_u2/Mcount_cnt_cy [4])
  );
  XORCY   \key_u2/Mcount_cnt_xor<3>  (
    .CI(\key_u2/Mcount_cnt_cy [2]),
    .LI(\key_u2/Mcount_cnt_lut [3]),
    .O(\key_u2/Mcount_cnt3 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<3>  (
    .CI(\key_u2/Mcount_cnt_cy [2]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [3]),
    .O(\key_u2/Mcount_cnt_cy [3])
  );
  XORCY   \key_u2/Mcount_cnt_xor<2>  (
    .CI(\key_u2/Mcount_cnt_cy [1]),
    .LI(\key_u2/Mcount_cnt_lut [2]),
    .O(\key_u2/Mcount_cnt2 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<2>  (
    .CI(\key_u2/Mcount_cnt_cy [1]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [2]),
    .O(\key_u2/Mcount_cnt_cy [2])
  );
  XORCY   \key_u2/Mcount_cnt_xor<1>  (
    .CI(\key_u2/Mcount_cnt_cy [0]),
    .LI(\key_u2/Mcount_cnt_lut [1]),
    .O(\key_u2/Mcount_cnt1 )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<1>  (
    .CI(\key_u2/Mcount_cnt_cy [0]),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [1]),
    .O(\key_u2/Mcount_cnt_cy [1])
  );
  XORCY   \key_u2/Mcount_cnt_xor<0>  (
    .CI(\key_u2/en_cnt_104 ),
    .LI(\key_u2/Mcount_cnt_lut [0]),
    .O(\key_u2/Mcount_cnt )
  );
  MUXCY   \key_u2/Mcount_cnt_cy<0>  (
    .CI(\key_u2/en_cnt_104 ),
    .DI(N1),
    .S(\key_u2/Mcount_cnt_lut [0]),
    .O(\key_u2/Mcount_cnt_cy [0])
  );
  FDC   \key_u2/key_tmpb  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/key_tmpa_106 ),
    .Q(\key_u2/key_tmpb_105 )
  );
  FDC   \key_u2/key_tmpa  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/key_in_sb_107 ),
    .Q(\key_u2/key_tmpa_106 )
  );
  FDC   \key_u2/key_in_sb  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/key_in_sa_102 ),
    .Q(\key_u2/key_in_sb_107 )
  );
  FDC   \key_u2/key_in_sa  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(key_2_IBUF_3),
    .Q(\key_u2/key_in_sa_102 )
  );
  FDC   \key_u2/cnt_full  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/GND_3_o_GND_3_o_equal_21_o ),
    .Q(\key_u2/cnt_full_103 )
  );
  FDC   \key_u2/en_cnt  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/state[3]_en_cnt_Select_14_o ),
    .Q(\key_u2/en_cnt_104 )
  );
  FDC   \key_u1/cnt_19  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt19 ),
    .Q(\key_u1/cnt [19])
  );
  FDC   \key_u1/cnt_18  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt18 ),
    .Q(\key_u1/cnt [18])
  );
  FDC   \key_u1/cnt_17  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt17 ),
    .Q(\key_u1/cnt [17])
  );
  FDC   \key_u1/cnt_16  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt16 ),
    .Q(\key_u1/cnt [16])
  );
  FDC   \key_u1/cnt_15  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt15 ),
    .Q(\key_u1/cnt [15])
  );
  FDC   \key_u1/cnt_14  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt14 ),
    .Q(\key_u1/cnt [14])
  );
  FDC   \key_u1/cnt_13  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt13 ),
    .Q(\key_u1/cnt [13])
  );
  FDC   \key_u1/cnt_12  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt12 ),
    .Q(\key_u1/cnt [12])
  );
  FDC   \key_u1/cnt_11  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt11 ),
    .Q(\key_u1/cnt [11])
  );
  FDC   \key_u1/cnt_10  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt10 ),
    .Q(\key_u1/cnt [10])
  );
  FDC   \key_u1/cnt_9  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt9 ),
    .Q(\key_u1/cnt [9])
  );
  FDC   \key_u1/cnt_8  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt8 ),
    .Q(\key_u1/cnt [8])
  );
  FDC   \key_u1/cnt_7  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt7 ),
    .Q(\key_u1/cnt [7])
  );
  FDC   \key_u1/cnt_6  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt6 ),
    .Q(\key_u1/cnt [6])
  );
  FDC   \key_u1/cnt_5  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt5 ),
    .Q(\key_u1/cnt [5])
  );
  FDC   \key_u1/cnt_4  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt4 ),
    .Q(\key_u1/cnt [4])
  );
  FDC   \key_u1/cnt_3  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt3 ),
    .Q(\key_u1/cnt [3])
  );
  FDC   \key_u1/cnt_2  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt2 ),
    .Q(\key_u1/cnt [2])
  );
  FDC   \key_u1/cnt_1  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt1 ),
    .Q(\key_u1/cnt [1])
  );
  FDC   \key_u1/cnt_0  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/Mcount_cnt ),
    .Q(\key_u1/cnt [0])
  );
  FDC   \key_u1/state_FSM_FFd1  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/state_FSM_FFd1-In ),
    .Q(\key_u1/state_FSM_FFd1_187 )
  );
  FDC   \key_u1/state_FSM_FFd2  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/state_FSM_FFd2-In ),
    .Q(\key_u1/state_FSM_FFd2_188 )
  );
  XORCY   \key_u1/Mcount_cnt_xor<19>  (
    .CI(\key_u1/Mcount_cnt_cy [18]),
    .LI(\key_u1/Mcount_cnt_lut [19]),
    .O(\key_u1/Mcount_cnt19 )
  );
  XORCY   \key_u1/Mcount_cnt_xor<18>  (
    .CI(\key_u1/Mcount_cnt_cy [17]),
    .LI(\key_u1/Mcount_cnt_lut [18]),
    .O(\key_u1/Mcount_cnt18 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<18>  (
    .CI(\key_u1/Mcount_cnt_cy [17]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [18]),
    .O(\key_u1/Mcount_cnt_cy [18])
  );
  XORCY   \key_u1/Mcount_cnt_xor<17>  (
    .CI(\key_u1/Mcount_cnt_cy [16]),
    .LI(\key_u1/Mcount_cnt_lut [17]),
    .O(\key_u1/Mcount_cnt17 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<17>  (
    .CI(\key_u1/Mcount_cnt_cy [16]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [17]),
    .O(\key_u1/Mcount_cnt_cy [17])
  );
  XORCY   \key_u1/Mcount_cnt_xor<16>  (
    .CI(\key_u1/Mcount_cnt_cy [15]),
    .LI(\key_u1/Mcount_cnt_lut [16]),
    .O(\key_u1/Mcount_cnt16 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<16>  (
    .CI(\key_u1/Mcount_cnt_cy [15]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [16]),
    .O(\key_u1/Mcount_cnt_cy [16])
  );
  XORCY   \key_u1/Mcount_cnt_xor<15>  (
    .CI(\key_u1/Mcount_cnt_cy [14]),
    .LI(\key_u1/Mcount_cnt_lut [15]),
    .O(\key_u1/Mcount_cnt15 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<15>  (
    .CI(\key_u1/Mcount_cnt_cy [14]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [15]),
    .O(\key_u1/Mcount_cnt_cy [15])
  );
  XORCY   \key_u1/Mcount_cnt_xor<14>  (
    .CI(\key_u1/Mcount_cnt_cy [13]),
    .LI(\key_u1/Mcount_cnt_lut [14]),
    .O(\key_u1/Mcount_cnt14 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<14>  (
    .CI(\key_u1/Mcount_cnt_cy [13]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [14]),
    .O(\key_u1/Mcount_cnt_cy [14])
  );
  XORCY   \key_u1/Mcount_cnt_xor<13>  (
    .CI(\key_u1/Mcount_cnt_cy [12]),
    .LI(\key_u1/Mcount_cnt_lut [13]),
    .O(\key_u1/Mcount_cnt13 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<13>  (
    .CI(\key_u1/Mcount_cnt_cy [12]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [13]),
    .O(\key_u1/Mcount_cnt_cy [13])
  );
  XORCY   \key_u1/Mcount_cnt_xor<12>  (
    .CI(\key_u1/Mcount_cnt_cy [11]),
    .LI(\key_u1/Mcount_cnt_lut [12]),
    .O(\key_u1/Mcount_cnt12 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<12>  (
    .CI(\key_u1/Mcount_cnt_cy [11]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [12]),
    .O(\key_u1/Mcount_cnt_cy [12])
  );
  XORCY   \key_u1/Mcount_cnt_xor<11>  (
    .CI(\key_u1/Mcount_cnt_cy [10]),
    .LI(\key_u1/Mcount_cnt_lut [11]),
    .O(\key_u1/Mcount_cnt11 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<11>  (
    .CI(\key_u1/Mcount_cnt_cy [10]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [11]),
    .O(\key_u1/Mcount_cnt_cy [11])
  );
  XORCY   \key_u1/Mcount_cnt_xor<10>  (
    .CI(\key_u1/Mcount_cnt_cy [9]),
    .LI(\key_u1/Mcount_cnt_lut [10]),
    .O(\key_u1/Mcount_cnt10 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<10>  (
    .CI(\key_u1/Mcount_cnt_cy [9]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [10]),
    .O(\key_u1/Mcount_cnt_cy [10])
  );
  XORCY   \key_u1/Mcount_cnt_xor<9>  (
    .CI(\key_u1/Mcount_cnt_cy [8]),
    .LI(\key_u1/Mcount_cnt_lut [9]),
    .O(\key_u1/Mcount_cnt9 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<9>  (
    .CI(\key_u1/Mcount_cnt_cy [8]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [9]),
    .O(\key_u1/Mcount_cnt_cy [9])
  );
  XORCY   \key_u1/Mcount_cnt_xor<8>  (
    .CI(\key_u1/Mcount_cnt_cy [7]),
    .LI(\key_u1/Mcount_cnt_lut [8]),
    .O(\key_u1/Mcount_cnt8 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<8>  (
    .CI(\key_u1/Mcount_cnt_cy [7]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [8]),
    .O(\key_u1/Mcount_cnt_cy [8])
  );
  XORCY   \key_u1/Mcount_cnt_xor<7>  (
    .CI(\key_u1/Mcount_cnt_cy [6]),
    .LI(\key_u1/Mcount_cnt_lut [7]),
    .O(\key_u1/Mcount_cnt7 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<7>  (
    .CI(\key_u1/Mcount_cnt_cy [6]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [7]),
    .O(\key_u1/Mcount_cnt_cy [7])
  );
  XORCY   \key_u1/Mcount_cnt_xor<6>  (
    .CI(\key_u1/Mcount_cnt_cy [5]),
    .LI(\key_u1/Mcount_cnt_lut [6]),
    .O(\key_u1/Mcount_cnt6 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<6>  (
    .CI(\key_u1/Mcount_cnt_cy [5]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [6]),
    .O(\key_u1/Mcount_cnt_cy [6])
  );
  XORCY   \key_u1/Mcount_cnt_xor<5>  (
    .CI(\key_u1/Mcount_cnt_cy [4]),
    .LI(\key_u1/Mcount_cnt_lut [5]),
    .O(\key_u1/Mcount_cnt5 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<5>  (
    .CI(\key_u1/Mcount_cnt_cy [4]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [5]),
    .O(\key_u1/Mcount_cnt_cy [5])
  );
  XORCY   \key_u1/Mcount_cnt_xor<4>  (
    .CI(\key_u1/Mcount_cnt_cy [3]),
    .LI(\key_u1/Mcount_cnt_lut [4]),
    .O(\key_u1/Mcount_cnt4 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<4>  (
    .CI(\key_u1/Mcount_cnt_cy [3]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [4]),
    .O(\key_u1/Mcount_cnt_cy [4])
  );
  XORCY   \key_u1/Mcount_cnt_xor<3>  (
    .CI(\key_u1/Mcount_cnt_cy [2]),
    .LI(\key_u1/Mcount_cnt_lut [3]),
    .O(\key_u1/Mcount_cnt3 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<3>  (
    .CI(\key_u1/Mcount_cnt_cy [2]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [3]),
    .O(\key_u1/Mcount_cnt_cy [3])
  );
  XORCY   \key_u1/Mcount_cnt_xor<2>  (
    .CI(\key_u1/Mcount_cnt_cy [1]),
    .LI(\key_u1/Mcount_cnt_lut [2]),
    .O(\key_u1/Mcount_cnt2 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<2>  (
    .CI(\key_u1/Mcount_cnt_cy [1]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [2]),
    .O(\key_u1/Mcount_cnt_cy [2])
  );
  XORCY   \key_u1/Mcount_cnt_xor<1>  (
    .CI(\key_u1/Mcount_cnt_cy [0]),
    .LI(\key_u1/Mcount_cnt_lut [1]),
    .O(\key_u1/Mcount_cnt1 )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<1>  (
    .CI(\key_u1/Mcount_cnt_cy [0]),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [1]),
    .O(\key_u1/Mcount_cnt_cy [1])
  );
  XORCY   \key_u1/Mcount_cnt_xor<0>  (
    .CI(\key_u1/en_cnt_196 ),
    .LI(\key_u1/Mcount_cnt_lut [0]),
    .O(\key_u1/Mcount_cnt )
  );
  MUXCY   \key_u1/Mcount_cnt_cy<0>  (
    .CI(\key_u1/en_cnt_196 ),
    .DI(N1),
    .S(\key_u1/Mcount_cnt_lut [0]),
    .O(\key_u1/Mcount_cnt_cy [0])
  );
  FDC   \key_u1/key_tmpb  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/key_tmpa_198 ),
    .Q(\key_u1/key_tmpb_197 )
  );
  FDC   \key_u1/key_tmpa  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/key_in_sb_199 ),
    .Q(\key_u1/key_tmpa_198 )
  );
  FDC   \key_u1/key_in_sb  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/key_in_sa_194 ),
    .Q(\key_u1/key_in_sb_199 )
  );
  FDC   \key_u1/key_in_sa  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(key_1_IBUF_2),
    .Q(\key_u1/key_in_sa_194 )
  );
  FDC   \key_u1/cnt_full  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/GND_3_o_GND_3_o_equal_21_o ),
    .Q(\key_u1/cnt_full_195 )
  );
  FDC   \key_u1/en_cnt  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/state[3]_en_cnt_Select_14_o ),
    .Q(\key_u1/en_cnt_196 )
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<7>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [6]),
    .LI(\ram_ctrl_u/Mcount_addr_xor<7>_rt_466 ),
    .O(\ram_ctrl_u/Result [7])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<6>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [5]),
    .LI(\ram_ctrl_u/Mcount_addr_cy<6>_rt_446 ),
    .O(\ram_ctrl_u/Result [6])
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<6>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [5]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_cy<6>_rt_446 ),
    .O(\ram_ctrl_u/Mcount_addr_cy [6])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<5>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [4]),
    .LI(\ram_ctrl_u/Mcount_addr_cy<5>_rt_447 ),
    .O(\ram_ctrl_u/Result [5])
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<5>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [4]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_cy<5>_rt_447 ),
    .O(\ram_ctrl_u/Mcount_addr_cy [5])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<4>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [3]),
    .LI(\ram_ctrl_u/Mcount_addr_cy<4>_rt_448 ),
    .O(\ram_ctrl_u/Result [4])
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<4>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [3]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_cy<4>_rt_448 ),
    .O(\ram_ctrl_u/Mcount_addr_cy [4])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<3>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [2]),
    .LI(\ram_ctrl_u/Mcount_addr_cy<3>_rt_449 ),
    .O(\ram_ctrl_u/Result [3])
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<3>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [2]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_cy<3>_rt_449 ),
    .O(\ram_ctrl_u/Mcount_addr_cy [3])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<2>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [1]),
    .LI(\ram_ctrl_u/Mcount_addr_cy<2>_rt_450 ),
    .O(\ram_ctrl_u/Result [2])
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<2>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [1]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_cy<2>_rt_450 ),
    .O(\ram_ctrl_u/Mcount_addr_cy [2])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<1>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [0]),
    .LI(\ram_ctrl_u/Mcount_addr_cy<1>_rt_451 ),
    .O(\ram_ctrl_u/Result [1])
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<1>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [0]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_cy<1>_rt_451 ),
    .O(\ram_ctrl_u/Mcount_addr_cy [1])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<0>  (
    .CI(N1),
    .LI(\ram_ctrl_u/Mcount_addr_lut [0]),
    .O(\ram_ctrl_u/Result [0])
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\ram_ctrl_u/Mcount_addr_lut [0]),
    .O(\ram_ctrl_u/Mcount_addr_cy [0])
  );
  FDC   \ram_ctrl_u/cnt_20ms_23  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms23 ),
    .Q(\ram_ctrl_u/cnt_20ms [23])
  );
  FDC   \ram_ctrl_u/cnt_20ms_22  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms22 ),
    .Q(\ram_ctrl_u/cnt_20ms [22])
  );
  FDC   \ram_ctrl_u/cnt_20ms_21  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms21 ),
    .Q(\ram_ctrl_u/cnt_20ms [21])
  );
  FDC   \ram_ctrl_u/cnt_20ms_20  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms20 ),
    .Q(\ram_ctrl_u/cnt_20ms [20])
  );
  FDC   \ram_ctrl_u/cnt_20ms_19  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms19 ),
    .Q(\ram_ctrl_u/cnt_20ms [19])
  );
  FDC   \ram_ctrl_u/cnt_20ms_18  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms18 ),
    .Q(\ram_ctrl_u/cnt_20ms [18])
  );
  FDC   \ram_ctrl_u/cnt_20ms_17  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms17 ),
    .Q(\ram_ctrl_u/cnt_20ms [17])
  );
  FDC   \ram_ctrl_u/cnt_20ms_16  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms16 ),
    .Q(\ram_ctrl_u/cnt_20ms [16])
  );
  FDC   \ram_ctrl_u/cnt_20ms_15  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms15 ),
    .Q(\ram_ctrl_u/cnt_20ms [15])
  );
  FDC   \ram_ctrl_u/cnt_20ms_14  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms14 ),
    .Q(\ram_ctrl_u/cnt_20ms [14])
  );
  FDC   \ram_ctrl_u/cnt_20ms_13  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms13 ),
    .Q(\ram_ctrl_u/cnt_20ms [13])
  );
  FDC   \ram_ctrl_u/cnt_20ms_12  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms12 ),
    .Q(\ram_ctrl_u/cnt_20ms [12])
  );
  FDC   \ram_ctrl_u/cnt_20ms_11  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms11 ),
    .Q(\ram_ctrl_u/cnt_20ms [11])
  );
  FDC   \ram_ctrl_u/cnt_20ms_10  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms10 ),
    .Q(\ram_ctrl_u/cnt_20ms [10])
  );
  FDC   \ram_ctrl_u/cnt_20ms_9  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms9 ),
    .Q(\ram_ctrl_u/cnt_20ms [9])
  );
  FDC   \ram_ctrl_u/cnt_20ms_8  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms8 ),
    .Q(\ram_ctrl_u/cnt_20ms [8])
  );
  FDC   \ram_ctrl_u/cnt_20ms_7  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms7 ),
    .Q(\ram_ctrl_u/cnt_20ms [7])
  );
  FDC   \ram_ctrl_u/cnt_20ms_6  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms6 ),
    .Q(\ram_ctrl_u/cnt_20ms [6])
  );
  FDC   \ram_ctrl_u/cnt_20ms_5  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms5 ),
    .Q(\ram_ctrl_u/cnt_20ms [5])
  );
  FDC   \ram_ctrl_u/cnt_20ms_4  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms4 ),
    .Q(\ram_ctrl_u/cnt_20ms [4])
  );
  FDC   \ram_ctrl_u/cnt_20ms_3  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms3 ),
    .Q(\ram_ctrl_u/cnt_20ms [3])
  );
  FDC   \ram_ctrl_u/cnt_20ms_2  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms2 ),
    .Q(\ram_ctrl_u/cnt_20ms [2])
  );
  FDC   \ram_ctrl_u/cnt_20ms_1  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms1 ),
    .Q(\ram_ctrl_u/cnt_20ms [1])
  );
  FDC   \ram_ctrl_u/cnt_20ms_0  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms ),
    .Q(\ram_ctrl_u/cnt_20ms [0])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<23>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [22]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [23]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms23 )
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<22>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [21]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [22]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms22 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<22>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [21]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [22]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [22])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<21>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [20]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [21]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms21 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<21>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [20]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [21]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [21])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<20>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [19]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [20]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms20 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<20>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [19]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [20]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [20])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<19>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [18]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [19]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms19 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<19>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [18]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [19]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [19])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<18>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [17]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [18]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms18 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<18>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [17]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [18]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [18])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<17>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [16]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [17]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms17 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<17>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [16]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [17]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [17])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<16>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [15]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [16]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms16 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<16>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [15]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [16]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [16])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<15>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [14]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [15]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms15 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<15>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [14]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [15]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [15])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<14>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [13]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [14]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms14 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<14>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [13]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [14]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [14])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<13>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [12]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [13]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms13 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<13>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [12]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [13]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [13])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<12>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [11]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [12]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms12 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<12>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [11]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [12]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [12])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<11>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [10]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [11]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms11 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<11>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [10]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [11]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [11])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<10>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [9]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [10]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms10 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<10>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [9]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [10]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [10])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<9>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [8]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [9]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms9 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<9>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [8]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [9]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [9])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<8>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [7]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [8]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms8 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<8>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [7]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [8]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [8])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<7>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [6]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [7]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms7 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<7>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [6]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [7]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [7])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<6>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [5]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [6]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms6 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<6>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [5]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [6]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [6])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<5>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [4]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [5]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms5 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<5>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [4]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [5]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [5])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<4>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [3]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [4]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms4 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<4>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [3]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [4]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [4])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<3>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [2]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [3]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms3 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<3>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [2]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [3]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [3])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<2>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [1]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [2]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms2 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<2>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [1]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [2]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [2])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<1>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [0]),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [1]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms1 )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<1>  (
    .CI(\ram_ctrl_u/Mcount_cnt_20ms_cy [0]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [1]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [1])
  );
  XORCY   \ram_ctrl_u/Mcount_cnt_20ms_xor<0>  (
    .CI(\ram_ctrl_u/rd_flag_312 ),
    .LI(\ram_ctrl_u/Mcount_cnt_20ms_lut [0]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms )
  );
  MUXCY   \ram_ctrl_u/Mcount_cnt_20ms_cy<0>  (
    .CI(\ram_ctrl_u/rd_flag_312 ),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_cnt_20ms_lut [0]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_cy [0])
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<15>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<14>_337 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<15>_rt_467 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<15> )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<14>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>_338 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<14>_rt_452 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<14> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<14>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>_338 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<14>_rt_452 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<14>_337 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<13>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>_339 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>_rt_453 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<13> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>_339 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>_rt_453 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>_338 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<12>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>_340 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>_rt_454 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<12> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>_340 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>_rt_454 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>_339 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<11>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>_341 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>_rt_455 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<11> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>_341 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>_rt_455 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>_340 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<10>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>_342 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>_rt_456 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<10> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>_342 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>_rt_456 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>_341 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<9>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>_343 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>_rt_457 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<9> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>_343 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>_rt_457 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>_342 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<8>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>_344 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>_rt_458 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<8> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>_344 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>_rt_458 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>_343 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<7>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>_345 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>_rt_459 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<7> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>_345 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>_rt_459 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>_344 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<6>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>_346 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>_rt_460 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<6> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>_346 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>_rt_460 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>_345 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<5>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>_347 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>_rt_461 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<5> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>_347 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>_rt_461 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>_346 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<4>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>_348 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>_rt_462 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<4> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>_348 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>_rt_462 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>_347 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<3>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>_349 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>_rt_463 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<3> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>_349 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>_rt_463 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>_348 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<2>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>_350 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>_rt_464 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<2> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>_350 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>_rt_464 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>_349 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<1>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<0>_351 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>_rt_465 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<1> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<0>_351 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>_rt_465 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>_350 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<0>  (
    .CI(N1),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_lut<0> ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<0> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_lut<0> ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<0>_351 )
  );
  FDCE   \uart_byte_tx_u/bps_cnt_3  (
    .C(clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0049_inv ),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt3 ),
    .Q(\uart_byte_tx_u/bps_cnt [3])
  );
  FDCE   \uart_byte_tx_u/bps_cnt_2  (
    .C(clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0049_inv ),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt2 ),
    .Q(\uart_byte_tx_u/bps_cnt [2])
  );
  FDCE   \uart_byte_tx_u/bps_cnt_1  (
    .C(clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0049_inv ),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt1 ),
    .Q(\uart_byte_tx_u/bps_cnt [1])
  );
  FDCE   \uart_byte_tx_u/bps_cnt_0  (
    .C(clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0049_inv ),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt ),
    .Q(\uart_byte_tx_u/bps_cnt [0])
  );
  FDC   \uart_byte_tx_u/div_cnt_15  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<15> ),
    .Q(\uart_byte_tx_u/div_cnt [15])
  );
  FDC   \uart_byte_tx_u/div_cnt_14  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<14> ),
    .Q(\uart_byte_tx_u/div_cnt [14])
  );
  FDC   \uart_byte_tx_u/div_cnt_13  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<13> ),
    .Q(\uart_byte_tx_u/div_cnt [13])
  );
  FDC   \uart_byte_tx_u/div_cnt_12  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<12> ),
    .Q(\uart_byte_tx_u/div_cnt [12])
  );
  FDC   \uart_byte_tx_u/div_cnt_11  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<11> ),
    .Q(\uart_byte_tx_u/div_cnt [11])
  );
  FDC   \uart_byte_tx_u/div_cnt_10  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<10> ),
    .Q(\uart_byte_tx_u/div_cnt [10])
  );
  FDC   \uart_byte_tx_u/div_cnt_9  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<9> ),
    .Q(\uart_byte_tx_u/div_cnt [9])
  );
  FDC   \uart_byte_tx_u/div_cnt_8  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<8> ),
    .Q(\uart_byte_tx_u/div_cnt [8])
  );
  FDC   \uart_byte_tx_u/div_cnt_7  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<7> ),
    .Q(\uart_byte_tx_u/div_cnt [7])
  );
  FDC   \uart_byte_tx_u/div_cnt_6  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<6> ),
    .Q(\uart_byte_tx_u/div_cnt [6])
  );
  FDC   \uart_byte_tx_u/div_cnt_5  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<5> ),
    .Q(\uart_byte_tx_u/div_cnt [5])
  );
  FDC   \uart_byte_tx_u/div_cnt_4  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<4> ),
    .Q(\uart_byte_tx_u/div_cnt [4])
  );
  FDC   \uart_byte_tx_u/div_cnt_3  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<3> ),
    .Q(\uart_byte_tx_u/div_cnt [3])
  );
  FDC   \uart_byte_tx_u/div_cnt_2  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<2> ),
    .Q(\uart_byte_tx_u/div_cnt [2])
  );
  FDC   \uart_byte_tx_u/div_cnt_1  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<1> ),
    .Q(\uart_byte_tx_u/div_cnt [1])
  );
  FDC   \uart_byte_tx_u/div_cnt_0  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<0> ),
    .Q(\uart_byte_tx_u/div_cnt [0])
  );
  FDP   \uart_byte_tx_u/tx  (
    .C(clk_BUFGP_0),
    .D(\uart_byte_tx_u/bps_cnt[3]_PWR_5_o_Mux_17_o ),
    .PRE(\key_u1/rst_n_inv ),
    .Q(\uart_byte_tx_u/tx_31 )
  );
  FDC   \uart_byte_tx_u/tx_done  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/bps_cnt[3]_PWR_5_o_equal_17_o ),
    .Q(\uart_byte_tx_u/tx_done_32 )
  );
  FDC   \uart_byte_tx_u/bps_clk  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o ),
    .Q(\uart_byte_tx_u/bps_clk_398 )
  );
  FDCE   \uart_byte_tx_u/r_data_byte_7  (
    .C(clk_BUFGP_0),
    .CE(key_2_IBUF_3),
    .CLR(\key_u1/rst_n_inv ),
    .D(ram_out[7]),
    .Q(\uart_byte_tx_u/r_data_byte [7])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_6  (
    .C(clk_BUFGP_0),
    .CE(key_2_IBUF_3),
    .CLR(\key_u1/rst_n_inv ),
    .D(ram_out[6]),
    .Q(\uart_byte_tx_u/r_data_byte [6])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_5  (
    .C(clk_BUFGP_0),
    .CE(key_2_IBUF_3),
    .CLR(\key_u1/rst_n_inv ),
    .D(ram_out[5]),
    .Q(\uart_byte_tx_u/r_data_byte [5])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_4  (
    .C(clk_BUFGP_0),
    .CE(key_2_IBUF_3),
    .CLR(\key_u1/rst_n_inv ),
    .D(ram_out[4]),
    .Q(\uart_byte_tx_u/r_data_byte [4])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_3  (
    .C(clk_BUFGP_0),
    .CE(key_2_IBUF_3),
    .CLR(\key_u1/rst_n_inv ),
    .D(ram_out[3]),
    .Q(\uart_byte_tx_u/r_data_byte [3])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_2  (
    .C(clk_BUFGP_0),
    .CE(key_2_IBUF_3),
    .CLR(\key_u1/rst_n_inv ),
    .D(ram_out[2]),
    .Q(\uart_byte_tx_u/r_data_byte [2])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_1  (
    .C(clk_BUFGP_0),
    .CE(key_2_IBUF_3),
    .CLR(\key_u1/rst_n_inv ),
    .D(ram_out[1]),
    .Q(\uart_byte_tx_u/r_data_byte [1])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_0  (
    .C(clk_BUFGP_0),
    .CE(key_2_IBUF_3),
    .CLR(\key_u1/rst_n_inv ),
    .D(ram_out[0]),
    .Q(\uart_byte_tx_u/r_data_byte [0])
  );
  LUT5 #(
    .INIT ( 32'hDDFD0444 ))
  \key_u2/state_FSM_FFd2-In1  (
    .I0(\key_u2/key_tmpa_106 ),
    .I1(\key_u2/key_tmpb_105 ),
    .I2(\key_u2/cnt_full_103 ),
    .I3(\key_u2/state_FSM_FFd1_96 ),
    .I4(\key_u2/state_FSM_FFd2_97 ),
    .O(\key_u2/state_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'h8A8AAAB3CC8AAAAA ))
  \key_u2/state[3]_en_cnt_Select_14_o1  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/state_FSM_FFd1_96 ),
    .I2(\key_u2/cnt_full_103 ),
    .I3(\key_u2/key_tmpa_106 ),
    .I4(\key_u2/state_FSM_FFd2_97 ),
    .I5(\key_u2/key_tmpb_105 ),
    .O(\key_u2/state[3]_en_cnt_Select_14_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \key_u2/state_FSM_FFd1-In1  (
    .I0(\key_u2/cnt_full_103 ),
    .I1(\key_u2/state_FSM_FFd1_96 ),
    .I2(\key_u2/state_FSM_FFd2_97 ),
    .O(\key_u2/state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'hDDFD0444 ))
  \key_u1/state_FSM_FFd2-In1  (
    .I0(\key_u1/key_tmpa_198 ),
    .I1(\key_u1/key_tmpb_197 ),
    .I2(\key_u1/cnt_full_195 ),
    .I3(\key_u1/state_FSM_FFd1_187 ),
    .I4(\key_u1/state_FSM_FFd2_188 ),
    .O(\key_u1/state_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'h8A8AAAB3CC8AAAAA ))
  \key_u1/state[3]_en_cnt_Select_14_o1  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/state_FSM_FFd1_187 ),
    .I2(\key_u1/cnt_full_195 ),
    .I3(\key_u1/key_tmpa_198 ),
    .I4(\key_u1/state_FSM_FFd2_188 ),
    .I5(\key_u1/key_tmpb_197 ),
    .O(\key_u1/state[3]_en_cnt_Select_14_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \key_u1/state_FSM_FFd1-In1  (
    .I0(\key_u1/cnt_full_195 ),
    .I1(\key_u1/state_FSM_FFd1_187 ),
    .I2(\key_u1/state_FSM_FFd2_188 ),
    .O(\key_u1/state_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in11  (
    .I0(\ram_ctrl_u/w_en_30 ),
    .I1(\ram_ctrl_u/addr [0]),
    .O(ram_in[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in21  (
    .I0(\ram_ctrl_u/w_en_30 ),
    .I1(\ram_ctrl_u/addr [1]),
    .O(ram_in[1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in31  (
    .I0(\ram_ctrl_u/w_en_30 ),
    .I1(\ram_ctrl_u/addr [2]),
    .O(ram_in[2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in41  (
    .I0(\ram_ctrl_u/w_en_30 ),
    .I1(\ram_ctrl_u/addr [3]),
    .O(ram_in[3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in51  (
    .I0(\ram_ctrl_u/w_en_30 ),
    .I1(\ram_ctrl_u/addr [4]),
    .O(ram_in[4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in61  (
    .I0(\ram_ctrl_u/w_en_30 ),
    .I1(\ram_ctrl_u/addr [5]),
    .O(ram_in[5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in71  (
    .I0(\ram_ctrl_u/w_en_30 ),
    .I1(\ram_ctrl_u/addr [6]),
    .O(ram_in[6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in81  (
    .I0(\ram_ctrl_u/w_en_30 ),
    .I1(\ram_ctrl_u/addr [7]),
    .O(ram_in[7])
  );
  LUT5 #(
    .INIT ( 32'hAEAAAAAA ))
  \uart_byte_tx_u/_n0049_inv1  (
    .I0(\uart_byte_tx_u/bps_clk_398 ),
    .I1(\uart_byte_tx_u/bps_cnt [3]),
    .I2(\uart_byte_tx_u/bps_cnt [2]),
    .I3(\uart_byte_tx_u/bps_cnt [1]),
    .I4(\uart_byte_tx_u/bps_cnt [0]),
    .O(\uart_byte_tx_u/_n0049_inv )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \uart_byte_tx_u/bps_cnt[3]_PWR_5_o_equal_17_o<3>1  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/bps_cnt [1]),
    .I3(\uart_byte_tx_u/bps_cnt [0]),
    .O(\uart_byte_tx_u/bps_cnt[3]_PWR_5_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'h2A6A ))
  \uart_byte_tx_u/Mcount_bps_cnt_xor<2>11  (
    .I0(\uart_byte_tx_u/bps_cnt [2]),
    .I1(\uart_byte_tx_u/bps_cnt [0]),
    .I2(\uart_byte_tx_u/bps_cnt [1]),
    .I3(\uart_byte_tx_u/bps_cnt [3]),
    .O(\uart_byte_tx_u/Mcount_bps_cnt2 )
  );
  LUT4 #(
    .INIT ( 16'h6A2A ))
  \uart_byte_tx_u/Mcount_bps_cnt_xor<3>11  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/bps_cnt [0]),
    .I2(\uart_byte_tx_u/bps_cnt [1]),
    .I3(\uart_byte_tx_u/bps_cnt [2]),
    .O(\uart_byte_tx_u/Mcount_bps_cnt3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \uart_byte_tx_u/Mcount_bps_cnt_xor<1>11  (
    .I0(\uart_byte_tx_u/bps_cnt [0]),
    .I1(\uart_byte_tx_u/bps_cnt [1]),
    .O(\uart_byte_tx_u/Mcount_bps_cnt1 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT17  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<0> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT21  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<10> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT31  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<11> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT41  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<12> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT51  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<13> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT61  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<14> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT71  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<15> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT81  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<1> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT91  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<2> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT101  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<3> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT111  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<4> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT121  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<5> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT131  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<6> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT141  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<7> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT151  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<8> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_6_o_div_cnt[15]_mux_8_OUT161  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_6_o_add_6_OUT<9> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_6_o_div_cnt[15]_mux_8_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \key_u2/GND_3_o_GND_3_o_equal_21_o<19>1  (
    .I0(\key_u2/cnt [14]),
    .I1(\key_u2/cnt [9]),
    .I2(\key_u2/cnt [17]),
    .I3(\key_u2/cnt [16]),
    .I4(\key_u2/cnt [19]),
    .I5(\key_u2/cnt [18]),
    .O(\key_u2/GND_3_o_GND_3_o_equal_21_o_0 [19])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \key_u2/GND_3_o_GND_3_o_equal_21_o<19>2  (
    .I0(\key_u2/cnt [1]),
    .I1(\key_u2/cnt [0]),
    .I2(\key_u2/cnt [3]),
    .I3(\key_u2/cnt [2]),
    .I4(\key_u2/cnt [5]),
    .I5(\key_u2/cnt [4]),
    .O(\key_u2/GND_3_o_GND_3_o_equal_21_o<19>1_424 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \key_u2/GND_3_o_GND_3_o_equal_21_o<19>3  (
    .I0(\key_u2/cnt [7]),
    .I1(\key_u2/cnt [6]),
    .I2(\key_u2/cnt [8]),
    .I3(\key_u2/cnt [10]),
    .I4(\key_u2/cnt [11]),
    .I5(\key_u2/cnt [12]),
    .O(\key_u2/GND_3_o_GND_3_o_equal_21_o<19>2_425 )
  );
  LUT5 #(
    .INIT ( 32'h00000080 ))
  \key_u2/GND_3_o_GND_3_o_equal_21_o<19>4  (
    .I0(\key_u2/GND_3_o_GND_3_o_equal_21_o_0 [19]),
    .I1(\key_u2/GND_3_o_GND_3_o_equal_21_o<19>1_424 ),
    .I2(\key_u2/GND_3_o_GND_3_o_equal_21_o<19>2_425 ),
    .I3(\key_u2/cnt [15]),
    .I4(\key_u2/cnt [13]),
    .O(\key_u2/GND_3_o_GND_3_o_equal_21_o )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \key_u1/GND_3_o_GND_3_o_equal_21_o<19>1  (
    .I0(\key_u1/cnt [14]),
    .I1(\key_u1/cnt [9]),
    .I2(\key_u1/cnt [17]),
    .I3(\key_u1/cnt [16]),
    .I4(\key_u1/cnt [19]),
    .I5(\key_u1/cnt [18]),
    .O(\key_u1/GND_3_o_GND_3_o_equal_21_o_1 [19])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \key_u1/GND_3_o_GND_3_o_equal_21_o<19>2  (
    .I0(\key_u1/cnt [1]),
    .I1(\key_u1/cnt [0]),
    .I2(\key_u1/cnt [3]),
    .I3(\key_u1/cnt [2]),
    .I4(\key_u1/cnt [5]),
    .I5(\key_u1/cnt [4]),
    .O(\key_u1/GND_3_o_GND_3_o_equal_21_o<19>1_427 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \key_u1/GND_3_o_GND_3_o_equal_21_o<19>3  (
    .I0(\key_u1/cnt [7]),
    .I1(\key_u1/cnt [6]),
    .I2(\key_u1/cnt [8]),
    .I3(\key_u1/cnt [10]),
    .I4(\key_u1/cnt [11]),
    .I5(\key_u1/cnt [12]),
    .O(\key_u1/GND_3_o_GND_3_o_equal_21_o<19>2_428 )
  );
  LUT5 #(
    .INIT ( 32'h00000080 ))
  \key_u1/GND_3_o_GND_3_o_equal_21_o<19>4  (
    .I0(\key_u1/GND_3_o_GND_3_o_equal_21_o_1 [19]),
    .I1(\key_u1/GND_3_o_GND_3_o_equal_21_o<19>1_427 ),
    .I2(\key_u1/GND_3_o_GND_3_o_equal_21_o<19>2_428 ),
    .I3(\key_u1/cnt [15]),
    .I4(\key_u1/cnt [13]),
    .O(\key_u1/GND_3_o_GND_3_o_equal_21_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \ram_ctrl_u/_n0042_inv_SW0  (
    .I0(\ram_ctrl_u/addr [1]),
    .I1(\ram_ctrl_u/addr [2]),
    .I2(\ram_ctrl_u/addr [3]),
    .I3(\ram_ctrl_u/addr [0]),
    .I4(\ram_ctrl_u/addr [4]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF80FF00 ))
  \ram_ctrl_u/_n0042_inv  (
    .I0(\ram_ctrl_u/addr [5]),
    .I1(\ram_ctrl_u/addr [6]),
    .I2(\ram_ctrl_u/addr [7]),
    .I3(key2),
    .I4(N2),
    .I5(\ram_ctrl_u/w_en_GND_5_o_OR_58_o ),
    .O(\ram_ctrl_u/_n0042_inv_310 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ram_ctrl_u/w_en_GND_5_o_OR_58_o1  (
    .I0(\ram_ctrl_u/cnt_20ms [12]),
    .I1(\ram_ctrl_u/cnt_20ms [10]),
    .I2(\ram_ctrl_u/cnt_20ms [19]),
    .I3(\ram_ctrl_u/cnt_20ms [15]),
    .I4(\ram_ctrl_u/cnt_20ms [23]),
    .I5(\ram_ctrl_u/cnt_20ms [20]),
    .O(\ram_ctrl_u/w_en_GND_5_o_OR_58_o1_430 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ram_ctrl_u/w_en_GND_5_o_OR_58_o2  (
    .I0(\ram_ctrl_u/cnt_20ms [3]),
    .I1(\ram_ctrl_u/cnt_20ms [2]),
    .I2(\ram_ctrl_u/cnt_20ms [5]),
    .I3(\ram_ctrl_u/cnt_20ms [4]),
    .I4(\ram_ctrl_u/cnt_20ms [9]),
    .I5(\ram_ctrl_u/cnt_20ms [6]),
    .O(\ram_ctrl_u/w_en_GND_5_o_OR_58_o2_431 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \ram_ctrl_u/w_en_GND_5_o_OR_58_o3  (
    .I0(\ram_ctrl_u/cnt_20ms [7]),
    .I1(\ram_ctrl_u/cnt_20ms [8]),
    .I2(\ram_ctrl_u/cnt_20ms [11]),
    .I3(\ram_ctrl_u/cnt_20ms [13]),
    .I4(\ram_ctrl_u/cnt_20ms [1]),
    .I5(\ram_ctrl_u/cnt_20ms [0]),
    .O(\ram_ctrl_u/w_en_GND_5_o_OR_58_o3_432 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ram_ctrl_u/w_en_GND_5_o_OR_58_o4  (
    .I0(\ram_ctrl_u/cnt_20ms [16]),
    .I1(\ram_ctrl_u/cnt_20ms [14]),
    .I2(\ram_ctrl_u/cnt_20ms [17]),
    .I3(\ram_ctrl_u/cnt_20ms [18]),
    .I4(\ram_ctrl_u/cnt_20ms [21]),
    .I5(\ram_ctrl_u/cnt_20ms [22]),
    .O(\ram_ctrl_u/w_en_GND_5_o_OR_58_o4_433 )
  );
  LUT5 #(
    .INIT ( 32'hEAAAAAAA ))
  \ram_ctrl_u/w_en_GND_5_o_OR_58_o5  (
    .I0(\ram_ctrl_u/w_en_30 ),
    .I1(\ram_ctrl_u/w_en_GND_5_o_OR_58_o4_433 ),
    .I2(\ram_ctrl_u/w_en_GND_5_o_OR_58_o3_432 ),
    .I3(\ram_ctrl_u/w_en_GND_5_o_OR_58_o2_431 ),
    .I4(\ram_ctrl_u/w_en_GND_5_o_OR_58_o1_430 ),
    .O(\ram_ctrl_u/w_en_GND_5_o_OR_58_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o<15>1  (
    .I0(\uart_byte_tx_u/div_cnt [15]),
    .I1(\uart_byte_tx_u/div_cnt [3]),
    .I2(\uart_byte_tx_u/div_cnt [5]),
    .I3(\uart_byte_tx_u/div_cnt [7]),
    .I4(\uart_byte_tx_u/div_cnt [0]),
    .I5(\uart_byte_tx_u/div_cnt [9]),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o<15> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o<15>2  (
    .I0(\uart_byte_tx_u/div_cnt [11]),
    .I1(\uart_byte_tx_u/div_cnt [8]),
    .I2(\uart_byte_tx_u/div_cnt [13]),
    .I3(\uart_byte_tx_u/div_cnt [14]),
    .I4(\uart_byte_tx_u/div_cnt [6]),
    .I5(\uart_byte_tx_u/div_cnt [4]),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o<15>1_435 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o<15>3  (
    .I0(\uart_byte_tx_u/div_cnt [1]),
    .I1(\uart_byte_tx_u/div_cnt [2]),
    .I2(\uart_byte_tx_u/div_cnt [12]),
    .I3(\uart_byte_tx_u/div_cnt [10]),
    .I4(\uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o<15> ),
    .I5(\uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o<15>1_435 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_6_o_equal_11_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o<15>2  (
    .I0(\uart_byte_tx_u/div_cnt [3]),
    .I1(\uart_byte_tx_u/div_cnt [15]),
    .I2(\uart_byte_tx_u/div_cnt [5]),
    .I3(\uart_byte_tx_u/div_cnt [7]),
    .I4(\uart_byte_tx_u/div_cnt [9]),
    .I5(\uart_byte_tx_u/div_cnt [8]),
    .O(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o<15>1 )
  );
  LUT6 #(
    .INIT ( 64'hDC55DC1110551011 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o22  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/bps_cnt [1]),
    .I2(\uart_byte_tx_u/r_data_byte [2]),
    .I3(\uart_byte_tx_u/bps_cnt [2]),
    .I4(\uart_byte_tx_u/r_data_byte [0]),
    .I5(\uart_byte_tx_u/r_data_byte [4]),
    .O(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o21 )
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o24  (
    .I0(\uart_byte_tx_u/bps_cnt [1]),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/r_data_byte [1]),
    .I3(\uart_byte_tx_u/r_data_byte [5]),
    .I4(\uart_byte_tx_u/r_data_byte [3]),
    .O(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o23 )
  );
  IBUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_1)
  );
  IBUF   key_1_IBUF (
    .I(key_1),
    .O(key_1_IBUF_2)
  );
  IBUF   key_2_IBUF (
    .I(key_2),
    .O(key_2_IBUF_3)
  );
  OBUF   rs232_tx_OBUF (
    .I(\uart_byte_tx_u/tx_31 ),
    .O(rs232_tx)
  );
  OBUF   state_led_OBUF (
    .I(\uart_byte_tx_u/uart_state_33 ),
    .O(state_led)
  );
  OBUF   tx_done_OBUF (
    .I(\uart_byte_tx_u/tx_done_32 ),
    .O(tx_done)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ram_ctrl_u/Mcount_addr_cy<6>_rt  (
    .I0(\ram_ctrl_u/addr [6]),
    .O(\ram_ctrl_u/Mcount_addr_cy<6>_rt_446 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ram_ctrl_u/Mcount_addr_cy<5>_rt  (
    .I0(\ram_ctrl_u/addr [5]),
    .O(\ram_ctrl_u/Mcount_addr_cy<5>_rt_447 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ram_ctrl_u/Mcount_addr_cy<4>_rt  (
    .I0(\ram_ctrl_u/addr [4]),
    .O(\ram_ctrl_u/Mcount_addr_cy<4>_rt_448 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ram_ctrl_u/Mcount_addr_cy<3>_rt  (
    .I0(\ram_ctrl_u/addr [3]),
    .O(\ram_ctrl_u/Mcount_addr_cy<3>_rt_449 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ram_ctrl_u/Mcount_addr_cy<2>_rt  (
    .I0(\ram_ctrl_u/addr [2]),
    .O(\ram_ctrl_u/Mcount_addr_cy<2>_rt_450 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ram_ctrl_u/Mcount_addr_cy<1>_rt  (
    .I0(\ram_ctrl_u/addr [1]),
    .O(\ram_ctrl_u/Mcount_addr_cy<1>_rt_451 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<14>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [14]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<14>_rt_452 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [13]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<13>_rt_453 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [12]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<12>_rt_454 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [11]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<11>_rt_455 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [10]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<10>_rt_456 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [9]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<9>_rt_457 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [8]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<8>_rt_458 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [7]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<7>_rt_459 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [6]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<6>_rt_460 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [5]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<5>_rt_461 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [4]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<4>_rt_462 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [3]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<3>_rt_463 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [2]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<2>_rt_464 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [1]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_cy<1>_rt_465 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ram_ctrl_u/Mcount_addr_xor<7>_rt  (
    .I0(\ram_ctrl_u/addr [7]),
    .O(\ram_ctrl_u/Mcount_addr_xor<7>_rt_466 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<15>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [15]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_xor<15>_rt_467 )
  );
  FDC   \key_u2/key_flag  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u2/key_flag_rstpot_468 ),
    .Q(\key_u2/key_flag_13 )
  );
  FDC   \key_u1/key_flag  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\key_u1/key_flag_rstpot_469 ),
    .Q(\key_u1/key_flag_12 )
  );
  FDC   \uart_byte_tx_u/uart_state  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\uart_byte_tx_u/uart_state_rstpot_470 ),
    .Q(\uart_byte_tx_u/uart_state_33 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  key21 (
    .I0(\key_u2/key_flag_13 ),
    .I1(\key_u2/state_FSM_FFd1_96 ),
    .O(key2)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFDFFFFFFF ))
  \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o<15>4_SW0  (
    .I0(\uart_byte_tx_u/div_cnt [12]),
    .I1(\uart_byte_tx_u/div_cnt [11]),
    .I2(\uart_byte_tx_u/div_cnt [10]),
    .I3(\uart_byte_tx_u/div_cnt [1]),
    .I4(\uart_byte_tx_u/div_cnt [6]),
    .I5(\uart_byte_tx_u/div_cnt [13]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h0000400000000000 ))
  \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o<15>4  (
    .I0(\uart_byte_tx_u/div_cnt [14]),
    .I1(\uart_byte_tx_u/div_cnt [2]),
    .I2(\uart_byte_tx_u/div_cnt [4]),
    .I3(\uart_byte_tx_u/div_cnt [0]),
    .I4(N6),
    .I5(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o<15>1 ),
    .O(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<0>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [0]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<1>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [1]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<2>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [2]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<3>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [3]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<0>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [0]),
    .O(\key_u2/Mcount_cnt_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<0>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [0]),
    .O(\key_u1/Mcount_cnt_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<4>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [4]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<1>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [1]),
    .O(\key_u2/Mcount_cnt_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<1>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [1]),
    .O(\key_u1/Mcount_cnt_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<5>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [5]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<2>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [2]),
    .O(\key_u2/Mcount_cnt_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<2>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [2]),
    .O(\key_u1/Mcount_cnt_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<6>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [6]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<3>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [3]),
    .O(\key_u2/Mcount_cnt_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<3>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [3]),
    .O(\key_u1/Mcount_cnt_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<7>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [7]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<4>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [4]),
    .O(\key_u2/Mcount_cnt_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<4>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [4]),
    .O(\key_u1/Mcount_cnt_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<8>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [8]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<5>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [5]),
    .O(\key_u2/Mcount_cnt_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<5>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [5]),
    .O(\key_u1/Mcount_cnt_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<9>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [9]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<6>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [6]),
    .O(\key_u2/Mcount_cnt_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<6>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [6]),
    .O(\key_u1/Mcount_cnt_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<10>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [10]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<7>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [7]),
    .O(\key_u2/Mcount_cnt_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<7>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [7]),
    .O(\key_u1/Mcount_cnt_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<11>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [11]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<8>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [8]),
    .O(\key_u2/Mcount_cnt_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<8>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [8]),
    .O(\key_u1/Mcount_cnt_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<12>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [12]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [12])
  );
  LUT6 #(
    .INIT ( 64'hA888888888888888 ))
  \ram_ctrl_u/Mcount_addr_eqn_11  (
    .I0(\ram_ctrl_u/Result [1]),
    .I1(\ram_ctrl_u/w_en_30 ),
    .I2(\ram_ctrl_u/w_en_GND_5_o_OR_58_o1_430 ),
    .I3(\ram_ctrl_u/w_en_GND_5_o_OR_58_o2_431 ),
    .I4(\ram_ctrl_u/w_en_GND_5_o_OR_58_o3_432 ),
    .I5(\ram_ctrl_u/w_en_GND_5_o_OR_58_o4_433 ),
    .O(\ram_ctrl_u/Mcount_addr_eqn_1 )
  );
  LUT6 #(
    .INIT ( 64'hA888888888888888 ))
  \ram_ctrl_u/Mcount_addr_eqn_21  (
    .I0(\ram_ctrl_u/Result [2]),
    .I1(\ram_ctrl_u/w_en_30 ),
    .I2(\ram_ctrl_u/w_en_GND_5_o_OR_58_o1_430 ),
    .I3(\ram_ctrl_u/w_en_GND_5_o_OR_58_o2_431 ),
    .I4(\ram_ctrl_u/w_en_GND_5_o_OR_58_o3_432 ),
    .I5(\ram_ctrl_u/w_en_GND_5_o_OR_58_o4_433 ),
    .O(\ram_ctrl_u/Mcount_addr_eqn_2 )
  );
  LUT6 #(
    .INIT ( 64'hA888888888888888 ))
  \ram_ctrl_u/Mcount_addr_eqn_31  (
    .I0(\ram_ctrl_u/Result [3]),
    .I1(\ram_ctrl_u/w_en_30 ),
    .I2(\ram_ctrl_u/w_en_GND_5_o_OR_58_o1_430 ),
    .I3(\ram_ctrl_u/w_en_GND_5_o_OR_58_o2_431 ),
    .I4(\ram_ctrl_u/w_en_GND_5_o_OR_58_o3_432 ),
    .I5(\ram_ctrl_u/w_en_GND_5_o_OR_58_o4_433 ),
    .O(\ram_ctrl_u/Mcount_addr_eqn_3 )
  );
  FDC   \ram_ctrl_u/rd_flag  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/rd_flag_rstpot_472 ),
    .Q(\ram_ctrl_u/rd_flag_312 )
  );
  FDC   \ram_ctrl_u/addr_7  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/addr_7_rstpot_473 ),
    .Q(\ram_ctrl_u/addr [7])
  );
  FDC   \ram_ctrl_u/addr_6  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/addr_6_rstpot_474 ),
    .Q(\ram_ctrl_u/addr [6])
  );
  FDC   \ram_ctrl_u/addr_5  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/addr_5_rstpot_475 ),
    .Q(\ram_ctrl_u/addr [5])
  );
  FDC   \ram_ctrl_u/addr_4  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/addr_4_rstpot_476 ),
    .Q(\ram_ctrl_u/addr [4])
  );
  FDCE   \ram_ctrl_u/addr_3  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0042_inv_310 ),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr_eqn_3 ),
    .Q(\ram_ctrl_u/addr [3])
  );
  FDCE   \ram_ctrl_u/addr_2  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0042_inv_310 ),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr_eqn_2 ),
    .Q(\ram_ctrl_u/addr [2])
  );
  FDCE   \ram_ctrl_u/addr_1  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0042_inv_310 ),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr_eqn_1 ),
    .Q(\ram_ctrl_u/addr [1])
  );
  FDC   \ram_ctrl_u/addr_0  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/addr_0_rstpot_477 ),
    .Q(\ram_ctrl_u/addr [0])
  );
  FDC   \ram_ctrl_u/w_en  (
    .C(clk_BUFGP_0),
    .CLR(\key_u1/rst_n_inv ),
    .D(\ram_ctrl_u/w_en_rstpot_478 ),
    .Q(\ram_ctrl_u/w_en_30 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/_n0042_inv_SW1  (
    .I0(\ram_ctrl_u/addr [5]),
    .I1(\ram_ctrl_u/addr [6]),
    .O(N8)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/_n0042_inv_SW2  (
    .I0(\ram_ctrl_u/addr [5]),
    .I1(\ram_ctrl_u/addr [7]),
    .O(N10)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/_n0042_inv_SW3  (
    .I0(\ram_ctrl_u/addr [6]),
    .I1(\ram_ctrl_u/addr [7]),
    .O(N12)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \ram_ctrl_u/_n0042_inv_SW4  (
    .I0(\ram_ctrl_u/addr [5]),
    .I1(\ram_ctrl_u/addr [6]),
    .I2(\ram_ctrl_u/addr [7]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFFFF044404440444 ))
  \ram_ctrl_u/w_en_rstpot  (
    .I0(key2),
    .I1(\ram_ctrl_u/w_en_30 ),
    .I2(N2),
    .I3(N14),
    .I4(\key_u1/key_flag_12 ),
    .I5(\key_u1/state_FSM_FFd1_187 ),
    .O(\ram_ctrl_u/w_en_rstpot_478 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<9>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [9]),
    .O(\key_u2/Mcount_cnt_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<9>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [9]),
    .O(\key_u1/Mcount_cnt_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<13>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [13]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [13])
  );
  LUT6 #(
    .INIT ( 64'hFF00FF0002020A0A ))
  \ram_ctrl_u/addr_7_rstpot  (
    .I0(\ram_ctrl_u/addr [7]),
    .I1(N8),
    .I2(key2),
    .I3(\ram_ctrl_u/Result [7]),
    .I4(N2),
    .I5(\ram_ctrl_u/w_en_GND_5_o_OR_58_o ),
    .O(\ram_ctrl_u/addr_7_rstpot_473 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF0002020A0A ))
  \ram_ctrl_u/addr_6_rstpot  (
    .I0(\ram_ctrl_u/addr [6]),
    .I1(N10),
    .I2(key2),
    .I3(\ram_ctrl_u/Result [6]),
    .I4(N2),
    .I5(\ram_ctrl_u/w_en_GND_5_o_OR_58_o ),
    .O(\ram_ctrl_u/addr_6_rstpot_474 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF0002020A0A ))
  \ram_ctrl_u/addr_5_rstpot  (
    .I0(\ram_ctrl_u/addr [5]),
    .I1(N12),
    .I2(key2),
    .I3(\ram_ctrl_u/Result [5]),
    .I4(N2),
    .I5(\ram_ctrl_u/w_en_GND_5_o_OR_58_o ),
    .O(\ram_ctrl_u/addr_5_rstpot_475 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF0002022222 ))
  \ram_ctrl_u/addr_4_rstpot  (
    .I0(\ram_ctrl_u/addr [4]),
    .I1(key2),
    .I2(N14),
    .I3(\ram_ctrl_u/Result [4]),
    .I4(N2),
    .I5(\ram_ctrl_u/w_en_GND_5_o_OR_58_o ),
    .O(\ram_ctrl_u/addr_4_rstpot_476 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCC000A0A0A ))
  \ram_ctrl_u/addr_0_rstpot  (
    .I0(\ram_ctrl_u/addr [0]),
    .I1(\ram_ctrl_u/Result [0]),
    .I2(key2),
    .I3(N14),
    .I4(N2),
    .I5(\ram_ctrl_u/w_en_GND_5_o_OR_58_o ),
    .O(\ram_ctrl_u/addr_0_rstpot_477 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<10>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [10]),
    .O(\key_u2/Mcount_cnt_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<10>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [10]),
    .O(\key_u1/Mcount_cnt_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<14>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [14]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<11>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [11]),
    .O(\key_u2/Mcount_cnt_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<11>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [11]),
    .O(\key_u1/Mcount_cnt_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<15>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [15]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<12>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [12]),
    .O(\key_u2/Mcount_cnt_lut [12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<12>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [12]),
    .O(\key_u1/Mcount_cnt_lut [12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<16>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [16]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [16])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<13>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [13]),
    .O(\key_u2/Mcount_cnt_lut [13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<13>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [13]),
    .O(\key_u1/Mcount_cnt_lut [13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<17>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [17]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [17])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<14>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [14]),
    .O(\key_u2/Mcount_cnt_lut [14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<14>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [14]),
    .O(\key_u1/Mcount_cnt_lut [14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<18>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [18]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [18])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<15>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [15]),
    .O(\key_u2/Mcount_cnt_lut [15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<15>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [15]),
    .O(\key_u1/Mcount_cnt_lut [15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<19>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [19]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [19])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<16>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [16]),
    .O(\key_u2/Mcount_cnt_lut [16])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<16>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [16]),
    .O(\key_u1/Mcount_cnt_lut [16])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<20>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [20]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [20])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<17>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [17]),
    .O(\key_u2/Mcount_cnt_lut [17])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<17>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [17]),
    .O(\key_u1/Mcount_cnt_lut [17])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<21>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [21]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [21])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<18>  (
    .I0(\key_u2/en_cnt_104 ),
    .I1(\key_u2/cnt [18]),
    .O(\key_u2/Mcount_cnt_lut [18])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<18>  (
    .I0(\key_u1/en_cnt_196 ),
    .I1(\key_u1/cnt [18]),
    .O(\key_u1/Mcount_cnt_lut [18])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<22>  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\ram_ctrl_u/cnt_20ms [22]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [22])
  );
  LUT4 #(
    .INIT ( 16'h6660 ))
  \key_u2/key_flag_rstpot  (
    .I0(\key_u2/state_FSM_FFd1_96 ),
    .I1(\key_u2/state_FSM_FFd2_97 ),
    .I2(\key_u2/cnt_full_103 ),
    .I3(\key_u2/key_flag_13 ),
    .O(\key_u2/key_flag_rstpot_468 )
  );
  LUT4 #(
    .INIT ( 16'h6660 ))
  \key_u1/key_flag_rstpot  (
    .I0(\key_u1/state_FSM_FFd1_187 ),
    .I1(\key_u1/state_FSM_FFd2_188 ),
    .I2(\key_u1/cnt_full_195 ),
    .I3(\key_u1/key_flag_12 ),
    .O(\key_u1/key_flag_rstpot_469 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u2/Mcount_cnt_lut<19>  (
    .I0(\key_u2/cnt [19]),
    .I1(\key_u2/en_cnt_104 ),
    .O(\key_u2/Mcount_cnt_lut [19])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \key_u1/Mcount_cnt_lut<19>  (
    .I0(\key_u1/cnt [19]),
    .I1(\key_u1/en_cnt_196 ),
    .O(\key_u1/Mcount_cnt_lut [19])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mcount_cnt_20ms_lut<23>  (
    .I0(\ram_ctrl_u/cnt_20ms [23]),
    .I1(\ram_ctrl_u/rd_flag_312 ),
    .O(\ram_ctrl_u/Mcount_cnt_20ms_lut [23])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8AAAAAAA ))
  \uart_byte_tx_u/uart_state_rstpot  (
    .I0(\uart_byte_tx_u/uart_state_33 ),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/bps_cnt [3]),
    .I3(\uart_byte_tx_u/bps_cnt [1]),
    .I4(\uart_byte_tx_u/bps_cnt [0]),
    .I5(key_2_IBUF_3),
    .O(\uart_byte_tx_u/uart_state_rstpot_470 )
  );
  LUT5 #(
    .INIT ( 32'hFF2A2A2A ))
  \ram_ctrl_u/rd_flag_rstpot  (
    .I0(\ram_ctrl_u/rd_flag_312 ),
    .I1(\key_u1/key_flag_12 ),
    .I2(\key_u1/state_FSM_FFd1_187 ),
    .I3(\key_u2/state_FSM_FFd1_96 ),
    .I4(\key_u2/key_flag_13 ),
    .O(\ram_ctrl_u/rd_flag_rstpot_472 )
  );
  MUXF7   \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o26  (
    .I0(N30),
    .I1(N31),
    .S(\uart_byte_tx_u/bps_cnt [0]),
    .O(\uart_byte_tx_u/bps_cnt[3]_PWR_5_o_Mux_17_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o26_F  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/r_data_byte [6]),
    .I2(\uart_byte_tx_u/bps_cnt [1]),
    .I3(\uart_byte_tx_u/bps_cnt [2]),
    .I4(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o21 ),
    .O(N30)
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o26_G  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/r_data_byte [7]),
    .I2(\uart_byte_tx_u/bps_cnt [1]),
    .I3(\uart_byte_tx_u/bps_cnt [2]),
    .I4(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_5_o_Mux_17_o23 ),
    .O(N31)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \ram_ctrl_u/Mcount_addr_lut<0>_INV_0  (
    .I(\ram_ctrl_u/addr [0]),
    .O(\ram_ctrl_u/Mcount_addr_lut [0])
  );
  INV   \uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_lut<0>_INV_0  (
    .I(\uart_byte_tx_u/div_cnt [0]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_6_o_add_6_OUT_lut<0> )
  );
  INV   \key_u2/rst_n_inv1_INV_0  (
    .I(rst_n_IBUF_1),
    .O(\key_u1/rst_n_inv )
  );
  INV   \uart_byte_tx_u/Mcount_bps_cnt_xor<0>11_INV_0  (
    .I(\uart_byte_tx_u/bps_cnt [0]),
    .O(\uart_byte_tx_u/Mcount_bps_cnt )
  );
  ram256x8   ram256x8_u (
    .clka(clk_BUFGP_0),
    .wea({\ram_ctrl_u/w_en_30 }),
    .addra({\ram_ctrl_u/addr [7], \ram_ctrl_u/addr [6], \ram_ctrl_u/addr [5], \ram_ctrl_u/addr [4], \ram_ctrl_u/addr [3], \ram_ctrl_u/addr [2], 
\ram_ctrl_u/addr [1], \ram_ctrl_u/addr [0]}),
    .dina({ram_in[7], ram_in[6], ram_in[5], ram_in[4], ram_in[3], ram_in[2], ram_in[1], ram_in[0]}),
    .douta({ram_out[7], ram_out[6], ram_out[5], ram_out[4], ram_out[3], ram_out[2], ram_out[1], ram_out[0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
