////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: uart_byte_tx_synthesis.v
// /___/   /\     Timestamp: Sat Oct 16 20:42:51 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim uart_byte_tx.ngc uart_byte_tx_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: uart_byte_tx.ngc
// Output file	: E:\FPGA\my.verilog.learn\a_uart_tx\prj\uart_byte_tx\netgen\synthesis\uart_byte_tx_synthesis.v
// # of Modules	: 1
// Design Name	: uart_byte_tx
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

module uart_byte_tx (
  clk, rst_n, send_en, tx, tx_done, uart_state, data_byte, baud_set
);
  input clk;
  input rst_n;
  input send_en;
  output tx;
  output tx_done;
  output uart_state;
  input [7 : 0] data_byte;
  input [2 : 0] baud_set;
  wire data_byte_7_IBUF_0;
  wire data_byte_6_IBUF_1;
  wire data_byte_5_IBUF_2;
  wire data_byte_4_IBUF_3;
  wire data_byte_3_IBUF_4;
  wire data_byte_2_IBUF_5;
  wire data_byte_1_IBUF_6;
  wire data_byte_0_IBUF_7;
  wire baud_set_2_IBUF_8;
  wire baud_set_1_IBUF_9;
  wire baud_set_0_IBUF_10;
  wire clk_BUFGP_11;
  wire rst_n_IBUF_12;
  wire send_en_IBUF_13;
  wire tx_OBUF_22;
  wire \bps_DR[13] ;
  wire \bps_DR[12] ;
  wire \bps_DR[3] ;
  wire \bps_DR[2] ;
  wire \bps_DR[8] ;
  wire \bps_DR[7] ;
  wire \bps_DR[6] ;
  wire \bps_DR[4] ;
  wire \bps_DR[1] ;
  wire \bps_DR[0] ;
  wire bps_clk_49;
  wire tx_done_OBUF_50;
  wire uart_state_OBUF_55;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<15> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<14> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<13> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<12> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<11> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<10> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<9> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<8> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<7> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<6> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<5> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<4> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<3> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<2> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<1> ;
  wire \div_cnt[15]_GND_1_o_add_6_OUT<0> ;
  wire \div_cnt[15]_bps_DR[15]_equal_6_o ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<15> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<14> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<13> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<12> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<11> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<10> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<9> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<8> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<7> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<6> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<5> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<4> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<3> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<2> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<1> ;
  wire \GND_1_o_div_cnt[15]_mux_8_OUT<0> ;
  wire \bps_cnt[3]_PWR_1_o_Mux_17_o ;
  wire \div_cnt[15]_GND_1_o_equal_11_o ;
  wire \bps_cnt[3]_PWR_1_o_equal_17_o ;
  wire rst_n_inv;
  wire \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT1 ;
  wire \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT4 ;
  wire \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT6 ;
  wire \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT8 ;
  wire \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT10 ;
  wire \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT11 ;
  wire \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT12 ;
  wire _n0049_inv;
  wire Mcount_bps_cnt;
  wire Mcount_bps_cnt1;
  wire Mcount_bps_cnt2;
  wire Mcount_bps_cnt3;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_lut<0> ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<0>_106 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>_107 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>_108 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>_109 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>_110 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>_111 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>_112 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>_113 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>_114 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>_115 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>_116 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>_117 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>_118 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>_119 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<14>_120 ;
  wire \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<0>_121 ;
  wire \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<0>_122 ;
  wire \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<1>_123 ;
  wire \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<1>_124 ;
  wire \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<2>_125 ;
  wire \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<2>_126 ;
  wire \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<3>_127 ;
  wire \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<3>_128 ;
  wire \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<4>_129 ;
  wire \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT51 ;
  wire \div_cnt[15]_GND_1_o_equal_11_o<15> ;
  wire \div_cnt[15]_GND_1_o_equal_11_o<15>1_132 ;
  wire \Mmux_bps_cnt[3]_PWR_1_o_Mux_17_o23 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>_rt_151 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>_rt_152 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>_rt_153 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>_rt_154 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>_rt_155 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>_rt_156 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>_rt_157 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>_rt_158 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>_rt_159 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>_rt_160 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>_rt_161 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>_rt_162 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>_rt_163 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<14>_rt_164 ;
  wire \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<15>_rt_165 ;
  wire uart_state_rstpot_166;
  wire \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT141_lut_167 ;
  wire N0;
  wire N2;
  wire N3;
  wire [7 : 0] r_data_byte;
  wire [15 : 0] div_cnt;
  wire [3 : 0] bps_cnt;
  VCC   XST_VCC (
    .P(\bps_DR[0] )
  );
  GND   XST_GND (
    .G(\bps_DR[13] )
  );
  FDCE   r_data_byte_0 (
    .C(clk_BUFGP_11),
    .CE(send_en_IBUF_13),
    .CLR(rst_n_inv),
    .D(data_byte_0_IBUF_7),
    .Q(r_data_byte[0])
  );
  FDCE   r_data_byte_1 (
    .C(clk_BUFGP_11),
    .CE(send_en_IBUF_13),
    .CLR(rst_n_inv),
    .D(data_byte_1_IBUF_6),
    .Q(r_data_byte[1])
  );
  FDCE   r_data_byte_2 (
    .C(clk_BUFGP_11),
    .CE(send_en_IBUF_13),
    .CLR(rst_n_inv),
    .D(data_byte_2_IBUF_5),
    .Q(r_data_byte[2])
  );
  FDCE   r_data_byte_3 (
    .C(clk_BUFGP_11),
    .CE(send_en_IBUF_13),
    .CLR(rst_n_inv),
    .D(data_byte_3_IBUF_4),
    .Q(r_data_byte[3])
  );
  FDCE   r_data_byte_4 (
    .C(clk_BUFGP_11),
    .CE(send_en_IBUF_13),
    .CLR(rst_n_inv),
    .D(data_byte_4_IBUF_3),
    .Q(r_data_byte[4])
  );
  FDCE   r_data_byte_5 (
    .C(clk_BUFGP_11),
    .CE(send_en_IBUF_13),
    .CLR(rst_n_inv),
    .D(data_byte_5_IBUF_2),
    .Q(r_data_byte[5])
  );
  FDCE   r_data_byte_6 (
    .C(clk_BUFGP_11),
    .CE(send_en_IBUF_13),
    .CLR(rst_n_inv),
    .D(data_byte_6_IBUF_1),
    .Q(r_data_byte[6])
  );
  FDCE   r_data_byte_7 (
    .C(clk_BUFGP_11),
    .CE(send_en_IBUF_13),
    .CLR(rst_n_inv),
    .D(data_byte_7_IBUF_0),
    .Q(r_data_byte[7])
  );
  FDC   bps_clk (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\div_cnt[15]_GND_1_o_equal_11_o ),
    .Q(bps_clk_49)
  );
  FDC   tx_done_12 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\bps_cnt[3]_PWR_1_o_equal_17_o ),
    .Q(tx_done_OBUF_50)
  );
  FDP   bps_DR_1 (
    .C(clk_BUFGP_11),
    .D(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT1 ),
    .PRE(rst_n_inv),
    .Q(\bps_DR[1] )
  );
  FDP   bps_DR_2 (
    .C(clk_BUFGP_11),
    .D(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT10 ),
    .PRE(rst_n_inv),
    .Q(\bps_DR[2] )
  );
  FDC   bps_DR_3 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT11 ),
    .Q(\bps_DR[3] )
  );
  FDP   bps_DR_4 (
    .C(clk_BUFGP_11),
    .D(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT4 ),
    .PRE(rst_n_inv),
    .Q(\bps_DR[4] )
  );
  FDP   bps_DR_6 (
    .C(clk_BUFGP_11),
    .D(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT6 ),
    .PRE(rst_n_inv),
    .Q(\bps_DR[6] )
  );
  FDC   bps_DR_7 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT51 ),
    .Q(\bps_DR[7] )
  );
  FDC   bps_DR_8 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT8 ),
    .Q(\bps_DR[8] )
  );
  FDP   bps_DR_12 (
    .C(clk_BUFGP_11),
    .D(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT12 ),
    .PRE(rst_n_inv),
    .Q(\bps_DR[12] )
  );
  FDP   tx_21 (
    .C(clk_BUFGP_11),
    .D(\bps_cnt[3]_PWR_1_o_Mux_17_o ),
    .PRE(rst_n_inv),
    .Q(tx_OBUF_22)
  );
  FDC   div_cnt_0 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<0> ),
    .Q(div_cnt[0])
  );
  FDC   div_cnt_1 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<1> ),
    .Q(div_cnt[1])
  );
  FDC   div_cnt_2 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<2> ),
    .Q(div_cnt[2])
  );
  FDC   div_cnt_3 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<3> ),
    .Q(div_cnt[3])
  );
  FDC   div_cnt_4 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<4> ),
    .Q(div_cnt[4])
  );
  FDC   div_cnt_5 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<5> ),
    .Q(div_cnt[5])
  );
  FDC   div_cnt_6 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<6> ),
    .Q(div_cnt[6])
  );
  FDC   div_cnt_7 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<7> ),
    .Q(div_cnt[7])
  );
  FDC   div_cnt_8 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<8> ),
    .Q(div_cnt[8])
  );
  FDC   div_cnt_9 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<9> ),
    .Q(div_cnt[9])
  );
  FDC   div_cnt_10 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<10> ),
    .Q(div_cnt[10])
  );
  FDC   div_cnt_11 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<11> ),
    .Q(div_cnt[11])
  );
  FDC   div_cnt_12 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<12> ),
    .Q(div_cnt[12])
  );
  FDC   div_cnt_13 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<13> ),
    .Q(div_cnt[13])
  );
  FDC   div_cnt_14 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<14> ),
    .Q(div_cnt[14])
  );
  FDC   div_cnt_15 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(\GND_1_o_div_cnt[15]_mux_8_OUT<15> ),
    .Q(div_cnt[15])
  );
  FDCE   bps_cnt_0 (
    .C(clk_BUFGP_11),
    .CE(_n0049_inv),
    .CLR(rst_n_inv),
    .D(Mcount_bps_cnt),
    .Q(bps_cnt[0])
  );
  FDCE   bps_cnt_1 (
    .C(clk_BUFGP_11),
    .CE(_n0049_inv),
    .CLR(rst_n_inv),
    .D(Mcount_bps_cnt1),
    .Q(bps_cnt[1])
  );
  FDCE   bps_cnt_2 (
    .C(clk_BUFGP_11),
    .CE(_n0049_inv),
    .CLR(rst_n_inv),
    .D(Mcount_bps_cnt2),
    .Q(bps_cnt[2])
  );
  FDCE   bps_cnt_3 (
    .C(clk_BUFGP_11),
    .CE(_n0049_inv),
    .CLR(rst_n_inv),
    .D(Mcount_bps_cnt3),
    .Q(bps_cnt[3])
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<0>  (
    .CI(\bps_DR[13] ),
    .DI(\bps_DR[0] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_lut<0> ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<0>_106 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<0>  (
    .CI(\bps_DR[13] ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_lut<0> ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<0> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<0>_106 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>_rt_151 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>_107 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<1>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<0>_106 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>_rt_151 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<1> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>_107 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>_rt_152 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>_108 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<2>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>_107 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>_rt_152 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<2> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>_108 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>_rt_153 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>_109 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<3>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>_108 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>_rt_153 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<3> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>_109 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>_rt_154 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>_110 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<4>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>_109 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>_rt_154 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<4> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>_110 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>_rt_155 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>_111 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<5>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>_110 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>_rt_155 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<5> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>_111 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>_rt_156 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>_112 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<6>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>_111 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>_rt_156 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<6> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>_112 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>_rt_157 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>_113 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<7>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>_112 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>_rt_157 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<7> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>_113 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>_rt_158 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>_114 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<8>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>_113 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>_rt_158 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<8> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>_114 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>_rt_159 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>_115 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<9>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>_114 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>_rt_159 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<9> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>_115 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>_rt_160 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>_116 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<10>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>_115 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>_rt_160 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<10> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>_116 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>_rt_161 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>_117 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<11>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>_116 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>_rt_161 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<11> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>_117 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>_rt_162 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>_118 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<12>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>_117 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>_rt_162 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<12> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>_118 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>_rt_163 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>_119 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<13>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>_118 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>_rt_163 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<13> )
  );
  MUXCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<14>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>_119 ),
    .DI(\bps_DR[13] ),
    .S(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<14>_rt_164 ),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<14>_120 )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<14>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>_119 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<14>_rt_164 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<14> )
  );
  XORCY   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<15>  (
    .CI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<14>_120 ),
    .LI(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<15>_rt_165 ),
    .O(\div_cnt[15]_GND_1_o_add_6_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'h82410000 ))
  \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<0>  (
    .I0(\bps_DR[1] ),
    .I1(\bps_DR[2] ),
    .I2(div_cnt[2]),
    .I3(div_cnt[1]),
    .I4(div_cnt[0]),
    .O(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<0>_121 )
  );
  MUXCY   \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<0>  (
    .CI(\bps_DR[13] ),
    .DI(\bps_DR[0] ),
    .S(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<0>_121 ),
    .O(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<0>_122 )
  );
  MUXCY   \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<1>  (
    .CI(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<0>_122 ),
    .DI(\bps_DR[0] ),
    .S(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<1>_123 ),
    .O(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<1>_124 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<2>  (
    .I0(\bps_DR[8] ),
    .I1(\bps_DR[7] ),
    .I2(\bps_DR[6] ),
    .I3(div_cnt[8]),
    .I4(div_cnt[7]),
    .I5(div_cnt[6]),
    .O(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<2>_125 )
  );
  MUXCY   \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<2>  (
    .CI(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<1>_124 ),
    .DI(\bps_DR[0] ),
    .S(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<2>_125 ),
    .O(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<2>_126 )
  );
  MUXCY   \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<3>  (
    .CI(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<2>_126 ),
    .DI(\bps_DR[0] ),
    .S(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<3>_127 ),
    .O(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<3>_128 )
  );
  LUT5 #(
    .INIT ( 32'h00000009 ))
  \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<4>  (
    .I0(\bps_DR[12] ),
    .I1(div_cnt[12]),
    .I2(div_cnt[15]),
    .I3(div_cnt[14]),
    .I4(div_cnt[13]),
    .O(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<4>_129 )
  );
  MUXCY   \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<4>  (
    .CI(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_cy<3>_128 ),
    .DI(\bps_DR[0] ),
    .S(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<4>_129 ),
    .O(\div_cnt[15]_bps_DR[15]_equal_6_o )
  );
  LUT3 #(
    .INIT ( 8'hF9 ))
  \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT112  (
    .I0(baud_set_1_IBUF_9),
    .I1(baud_set_2_IBUF_8),
    .I2(baud_set_0_IBUF_10),
    .O(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT1 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT41  (
    .I0(baud_set_0_IBUF_10),
    .I1(baud_set_2_IBUF_8),
    .O(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT4 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT1111  (
    .I0(baud_set_0_IBUF_10),
    .I1(baud_set_1_IBUF_9),
    .I2(baud_set_2_IBUF_8),
    .O(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT11 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_bps_cnt_xor<1>11  (
    .I0(bps_cnt[0]),
    .I1(bps_cnt[1]),
    .O(Mcount_bps_cnt1)
  );
  LUT3 #(
    .INIT ( 8'hB9 ))
  \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT101  (
    .I0(baud_set_2_IBUF_8),
    .I1(baud_set_0_IBUF_10),
    .I2(baud_set_1_IBUF_9),
    .O(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT10 )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT121  (
    .I0(baud_set_2_IBUF_8),
    .I1(baud_set_0_IBUF_10),
    .I2(baud_set_1_IBUF_9),
    .O(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT12 )
  );
  LUT4 #(
    .INIT ( 16'h6A2A ))
  \Mcount_bps_cnt_xor<3>11  (
    .I0(bps_cnt[3]),
    .I1(bps_cnt[0]),
    .I2(bps_cnt[1]),
    .I3(bps_cnt[2]),
    .O(Mcount_bps_cnt3)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT811  (
    .I0(baud_set_2_IBUF_8),
    .I1(baud_set_0_IBUF_10),
    .I2(baud_set_1_IBUF_9),
    .O(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT51 )
  );
  LUT4 #(
    .INIT ( 16'h2A6A ))
  \Mcount_bps_cnt_xor<2>11  (
    .I0(bps_cnt[2]),
    .I1(bps_cnt[0]),
    .I2(bps_cnt[1]),
    .I3(bps_cnt[3]),
    .O(Mcount_bps_cnt2)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \bps_cnt[3]_PWR_1_o_equal_17_o<3>1  (
    .I0(bps_cnt[3]),
    .I1(bps_cnt[2]),
    .I2(bps_cnt[1]),
    .I3(bps_cnt[0]),
    .O(\bps_cnt[3]_PWR_1_o_equal_17_o )
  );
  LUT5 #(
    .INIT ( 32'hAEAAAAAA ))
  _n0049_inv1 (
    .I0(bps_clk_49),
    .I1(bps_cnt[3]),
    .I2(bps_cnt[2]),
    .I3(bps_cnt[1]),
    .I4(bps_cnt[0]),
    .O(_n0049_inv)
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \div_cnt[15]_GND_1_o_equal_11_o<15>1  (
    .I0(div_cnt[1]),
    .I1(div_cnt[2]),
    .I2(div_cnt[3]),
    .I3(div_cnt[4]),
    .I4(div_cnt[0]),
    .I5(div_cnt[5]),
    .O(\div_cnt[15]_GND_1_o_equal_11_o<15> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \div_cnt[15]_GND_1_o_equal_11_o<15>2  (
    .I0(div_cnt[7]),
    .I1(div_cnt[6]),
    .I2(div_cnt[8]),
    .I3(div_cnt[9]),
    .I4(div_cnt[10]),
    .I5(div_cnt[11]),
    .O(\div_cnt[15]_GND_1_o_equal_11_o<15>1_132 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \div_cnt[15]_GND_1_o_equal_11_o<15>3  (
    .I0(div_cnt[15]),
    .I1(div_cnt[14]),
    .I2(div_cnt[12]),
    .I3(div_cnt[13]),
    .I4(\div_cnt[15]_GND_1_o_equal_11_o<15>1_132 ),
    .I5(\div_cnt[15]_GND_1_o_equal_11_o<15> ),
    .O(\div_cnt[15]_GND_1_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'hCCF0AA00 ))
  \Mmux_bps_cnt[3]_PWR_1_o_Mux_17_o24  (
    .I0(r_data_byte[3]),
    .I1(r_data_byte[5]),
    .I2(r_data_byte[1]),
    .I3(bps_cnt[2]),
    .I4(bps_cnt[1]),
    .O(\Mmux_bps_cnt[3]_PWR_1_o_Mux_17_o23 )
  );
  IBUF   data_byte_7_IBUF (
    .I(data_byte[7]),
    .O(data_byte_7_IBUF_0)
  );
  IBUF   data_byte_6_IBUF (
    .I(data_byte[6]),
    .O(data_byte_6_IBUF_1)
  );
  IBUF   data_byte_5_IBUF (
    .I(data_byte[5]),
    .O(data_byte_5_IBUF_2)
  );
  IBUF   data_byte_4_IBUF (
    .I(data_byte[4]),
    .O(data_byte_4_IBUF_3)
  );
  IBUF   data_byte_3_IBUF (
    .I(data_byte[3]),
    .O(data_byte_3_IBUF_4)
  );
  IBUF   data_byte_2_IBUF (
    .I(data_byte[2]),
    .O(data_byte_2_IBUF_5)
  );
  IBUF   data_byte_1_IBUF (
    .I(data_byte[1]),
    .O(data_byte_1_IBUF_6)
  );
  IBUF   data_byte_0_IBUF (
    .I(data_byte[0]),
    .O(data_byte_0_IBUF_7)
  );
  IBUF   baud_set_2_IBUF (
    .I(baud_set[2]),
    .O(baud_set_2_IBUF_8)
  );
  IBUF   baud_set_1_IBUF (
    .I(baud_set[1]),
    .O(baud_set_1_IBUF_9)
  );
  IBUF   baud_set_0_IBUF (
    .I(baud_set[0]),
    .O(baud_set_0_IBUF_10)
  );
  IBUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_12)
  );
  IBUF   send_en_IBUF (
    .I(send_en),
    .O(send_en_IBUF_13)
  );
  OBUF   tx_OBUF (
    .I(tx_OBUF_22),
    .O(tx)
  );
  OBUF   tx_done_OBUF (
    .I(tx_done_OBUF_50),
    .O(tx_done)
  );
  OBUF   uart_state_OBUF (
    .I(uart_state_OBUF_55),
    .O(uart_state)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>_rt  (
    .I0(div_cnt[1]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<1>_rt_151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>_rt  (
    .I0(div_cnt[2]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<2>_rt_152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>_rt  (
    .I0(div_cnt[3]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<3>_rt_153 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>_rt  (
    .I0(div_cnt[4]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<4>_rt_154 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>_rt  (
    .I0(div_cnt[5]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<5>_rt_155 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>_rt  (
    .I0(div_cnt[6]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<6>_rt_156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>_rt  (
    .I0(div_cnt[7]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<7>_rt_157 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>_rt  (
    .I0(div_cnt[8]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<8>_rt_158 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>_rt  (
    .I0(div_cnt[9]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<9>_rt_159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>_rt  (
    .I0(div_cnt[10]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<10>_rt_160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>_rt  (
    .I0(div_cnt[11]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<11>_rt_161 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>_rt  (
    .I0(div_cnt[12]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<12>_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>_rt  (
    .I0(div_cnt[13]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<13>_rt_163 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<14>_rt  (
    .I0(div_cnt[14]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_cy<14>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<15>_rt  (
    .I0(div_cnt[15]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_xor<15>_rt_165 )
  );
  FDC   uart_state_127 (
    .C(clk_BUFGP_11),
    .CLR(rst_n_inv),
    .D(uart_state_rstpot_166),
    .Q(uart_state_OBUF_55)
  );
  LUT6 #(
    .INIT ( 64'h0880044002200110 ))
  \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<1>  (
    .I0(\bps_DR[4] ),
    .I1(\bps_DR[3] ),
    .I2(\bps_DR[2] ),
    .I3(div_cnt[5]),
    .I4(div_cnt[4]),
    .I5(div_cnt[3]),
    .O(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<1>_123 )
  );
  LUT6 #(
    .INIT ( 64'h4812000000004812 ))
  \Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<3>  (
    .I0(\bps_DR[4] ),
    .I1(\bps_DR[3] ),
    .I2(div_cnt[9]),
    .I3(div_cnt[11]),
    .I4(\bps_DR[2] ),
    .I5(div_cnt[10]),
    .O(\Mcompar_div_cnt[15]_bps_DR[15]_equal_6_o_lut<3>_127 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT131  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<6> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT121  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<5> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT111  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<4> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT101  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<3> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT91  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<2> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT81  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<1> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT71  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<15> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT61  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<14> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT51  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<13> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT41  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<12> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT31  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<11> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT21  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<10> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT11  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<0> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT161_cy  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<9> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT151_cy  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<8> ),
    .I2(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<8> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT141_lut  (
    .I0(uart_state_OBUF_55),
    .I1(\div_cnt[15]_GND_1_o_add_6_OUT<7> ),
    .O(\Mmux_GND_1_o_div_cnt[15]_mux_8_OUT141_lut_167 )
  );
  MUXCY   \Mmux_GND_1_o_div_cnt[15]_mux_8_OUT141_cy  (
    .CI(\div_cnt[15]_bps_DR[15]_equal_6_o ),
    .DI(\bps_DR[13] ),
    .S(\Mmux_GND_1_o_div_cnt[15]_mux_8_OUT141_lut_167 ),
    .O(\GND_1_o_div_cnt[15]_mux_8_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8AAAAAAA ))
  uart_state_rstpot (
    .I0(uart_state_OBUF_55),
    .I1(bps_cnt[2]),
    .I2(bps_cnt[3]),
    .I3(bps_cnt[1]),
    .I4(bps_cnt[0]),
    .I5(send_en_IBUF_13),
    .O(uart_state_rstpot_166)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \Mmux_bps_cnt[3]_PWR_1_o_Mux_17_o26_SW0  (
    .I0(bps_cnt[3]),
    .I1(r_data_byte[7]),
    .I2(\Mmux_bps_cnt[3]_PWR_1_o_Mux_17_o23 ),
    .O(N0)
  );
  LUT3 #(
    .INIT ( 8'hE9 ))
  \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT61  (
    .I0(baud_set_0_IBUF_10),
    .I1(baud_set_1_IBUF_9),
    .I2(baud_set_2_IBUF_8),
    .O(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT6 )
  );
  LUT3 #(
    .INIT ( 8'h46 ))
  \Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT81  (
    .I0(baud_set_2_IBUF_8),
    .I1(baud_set_1_IBUF_9),
    .I2(baud_set_0_IBUF_10),
    .O(\Mram_baud_set[2]_GND_1_o_wide_mux_3_OUT8 )
  );
  MUXF7   \Mmux_bps_cnt[3]_PWR_1_o_Mux_17_o26  (
    .I0(N2),
    .I1(N3),
    .S(bps_cnt[1]),
    .O(\bps_cnt[3]_PWR_1_o_Mux_17_o )
  );
  LUT6 #(
    .INIT ( 64'hFEFFFEBBDC55DC11 ))
  \Mmux_bps_cnt[3]_PWR_1_o_Mux_17_o26_F  (
    .I0(bps_cnt[0]),
    .I1(bps_cnt[3]),
    .I2(r_data_byte[2]),
    .I3(bps_cnt[2]),
    .I4(r_data_byte[6]),
    .I5(N0),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEBA5410 ))
  \Mmux_bps_cnt[3]_PWR_1_o_Mux_17_o26_G  (
    .I0(bps_cnt[0]),
    .I1(bps_cnt[2]),
    .I2(r_data_byte[0]),
    .I3(r_data_byte[4]),
    .I4(N0),
    .I5(bps_cnt[3]),
    .O(N3)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_11)
  );
  INV   \Madd_div_cnt[15]_GND_1_o_add_6_OUT_lut<0>_INV_0  (
    .I(div_cnt[0]),
    .O(\Madd_div_cnt[15]_GND_1_o_add_6_OUT_lut<0> )
  );
  INV   rst_n_inv1_INV_0 (
    .I(rst_n_IBUF_12),
    .O(rst_n_inv)
  );
  INV   \Mcount_bps_cnt_xor<0>11_INV_0  (
    .I(bps_cnt[0]),
    .O(Mcount_bps_cnt)
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

