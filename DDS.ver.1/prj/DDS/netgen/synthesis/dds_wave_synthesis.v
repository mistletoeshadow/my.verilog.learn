////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: dds_wave_synthesis.v
// /___/   /\     Timestamp: Tue Nov 02 15:14:20 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim dds_wave.ngc dds_wave_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: dds_wave.ngc
// Output file	: E:\FPGA\my.verilog.learn\DDS.ver.1\prj\DDS\netgen\synthesis\dds_wave_synthesis.v
// # of Modules	: 1
// Design Name	: dds_wave
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

module dds_wave (
  clk, rst_n, f_word, p_word, f_out
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input rst_n;
  input [31 : 0] f_word;
  input [10 : 0] p_word;
  output [9 : 0] f_out;
  
  // synthesis translate_off
  
  wire f_word_31_IBUF_0;
  wire f_word_30_IBUF_1;
  wire f_word_29_IBUF_2;
  wire f_word_28_IBUF_3;
  wire f_word_27_IBUF_4;
  wire f_word_26_IBUF_5;
  wire f_word_25_IBUF_6;
  wire f_word_24_IBUF_7;
  wire f_word_23_IBUF_8;
  wire f_word_22_IBUF_9;
  wire f_word_21_IBUF_10;
  wire f_word_20_IBUF_11;
  wire f_word_19_IBUF_12;
  wire f_word_18_IBUF_13;
  wire f_word_17_IBUF_14;
  wire f_word_16_IBUF_15;
  wire f_word_15_IBUF_16;
  wire f_word_14_IBUF_17;
  wire f_word_13_IBUF_18;
  wire f_word_12_IBUF_19;
  wire f_word_11_IBUF_20;
  wire f_word_10_IBUF_21;
  wire f_word_9_IBUF_22;
  wire f_word_8_IBUF_23;
  wire f_word_7_IBUF_24;
  wire f_word_6_IBUF_25;
  wire f_word_5_IBUF_26;
  wire f_word_4_IBUF_27;
  wire f_word_3_IBUF_28;
  wire f_word_2_IBUF_29;
  wire f_word_1_IBUF_30;
  wire f_word_0_IBUF_31;
  wire p_word_10_IBUF_32;
  wire p_word_9_IBUF_33;
  wire p_word_8_IBUF_34;
  wire p_word_7_IBUF_35;
  wire p_word_6_IBUF_36;
  wire p_word_5_IBUF_37;
  wire p_word_4_IBUF_38;
  wire p_word_3_IBUF_39;
  wire p_word_2_IBUF_40;
  wire p_word_1_IBUF_41;
  wire p_word_0_IBUF_42;
  wire clk_BUFGP_43;
  wire rst_n_IBUF_44;
  wire f_out_9_OBUF_88;
  wire f_out_8_OBUF_89;
  wire f_out_7_OBUF_90;
  wire f_out_6_OBUF_91;
  wire f_out_5_OBUF_92;
  wire f_out_4_OBUF_93;
  wire f_out_3_OBUF_94;
  wire f_out_2_OBUF_95;
  wire f_out_1_OBUF_96;
  wire f_out_0_OBUF_97;
  wire N0;
  wire rst_n_inv;
  wire [31 : 0] f_cnt;
  wire [10 : 0] r_p_word;
  wire [31 : 0] r_f_word;
  wire [10 : 0] addr;
  wire [31 : 0] Result;
  wire [31 : 0] Maccum_r_f_word_lut;
  wire [30 : 0] Maccum_r_f_word_cy;
  wire [10 : 0] Madd_addr_lut;
  wire [9 : 0] Madd_addr_cy;
  GND   XST_GND (
    .G(N0)
  );
  FDC   f_cnt_0 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_0_IBUF_31),
    .Q(f_cnt[0])
  );
  FDC   f_cnt_1 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_1_IBUF_30),
    .Q(f_cnt[1])
  );
  FDC   f_cnt_2 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_2_IBUF_29),
    .Q(f_cnt[2])
  );
  FDC   f_cnt_3 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_3_IBUF_28),
    .Q(f_cnt[3])
  );
  FDC   f_cnt_4 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_4_IBUF_27),
    .Q(f_cnt[4])
  );
  FDC   f_cnt_5 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_5_IBUF_26),
    .Q(f_cnt[5])
  );
  FDC   f_cnt_6 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_6_IBUF_25),
    .Q(f_cnt[6])
  );
  FDC   f_cnt_7 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_7_IBUF_24),
    .Q(f_cnt[7])
  );
  FDC   f_cnt_8 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_8_IBUF_23),
    .Q(f_cnt[8])
  );
  FDC   f_cnt_9 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_9_IBUF_22),
    .Q(f_cnt[9])
  );
  FDC   f_cnt_10 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_10_IBUF_21),
    .Q(f_cnt[10])
  );
  FDC   f_cnt_11 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_11_IBUF_20),
    .Q(f_cnt[11])
  );
  FDC   f_cnt_12 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_12_IBUF_19),
    .Q(f_cnt[12])
  );
  FDC   f_cnt_13 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_13_IBUF_18),
    .Q(f_cnt[13])
  );
  FDC   f_cnt_14 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_14_IBUF_17),
    .Q(f_cnt[14])
  );
  FDC   f_cnt_15 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_15_IBUF_16),
    .Q(f_cnt[15])
  );
  FDC   f_cnt_16 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_16_IBUF_15),
    .Q(f_cnt[16])
  );
  FDC   f_cnt_17 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_17_IBUF_14),
    .Q(f_cnt[17])
  );
  FDC   f_cnt_18 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_18_IBUF_13),
    .Q(f_cnt[18])
  );
  FDC   f_cnt_19 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_19_IBUF_12),
    .Q(f_cnt[19])
  );
  FDC   f_cnt_20 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_20_IBUF_11),
    .Q(f_cnt[20])
  );
  FDC   f_cnt_21 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_21_IBUF_10),
    .Q(f_cnt[21])
  );
  FDC   f_cnt_22 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_22_IBUF_9),
    .Q(f_cnt[22])
  );
  FDC   f_cnt_23 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_23_IBUF_8),
    .Q(f_cnt[23])
  );
  FDC   f_cnt_24 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_24_IBUF_7),
    .Q(f_cnt[24])
  );
  FDC   f_cnt_25 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_25_IBUF_6),
    .Q(f_cnt[25])
  );
  FDC   f_cnt_26 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_26_IBUF_5),
    .Q(f_cnt[26])
  );
  FDC   f_cnt_27 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_27_IBUF_4),
    .Q(f_cnt[27])
  );
  FDC   f_cnt_28 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_28_IBUF_3),
    .Q(f_cnt[28])
  );
  FDC   f_cnt_29 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_29_IBUF_2),
    .Q(f_cnt[29])
  );
  FDC   f_cnt_30 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_30_IBUF_1),
    .Q(f_cnt[30])
  );
  FDC   f_cnt_31 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(f_word_31_IBUF_0),
    .Q(f_cnt[31])
  );
  FDC   r_p_word_0 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_0_IBUF_42),
    .Q(r_p_word[0])
  );
  FDC   r_p_word_1 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_1_IBUF_41),
    .Q(r_p_word[1])
  );
  FDC   r_p_word_2 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_2_IBUF_40),
    .Q(r_p_word[2])
  );
  FDC   r_p_word_3 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_3_IBUF_39),
    .Q(r_p_word[3])
  );
  FDC   r_p_word_4 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_4_IBUF_38),
    .Q(r_p_word[4])
  );
  FDC   r_p_word_5 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_5_IBUF_37),
    .Q(r_p_word[5])
  );
  FDC   r_p_word_6 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_6_IBUF_36),
    .Q(r_p_word[6])
  );
  FDC   r_p_word_7 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_7_IBUF_35),
    .Q(r_p_word[7])
  );
  FDC   r_p_word_8 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_8_IBUF_34),
    .Q(r_p_word[8])
  );
  FDC   r_p_word_9 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_9_IBUF_33),
    .Q(r_p_word[9])
  );
  FDC   r_p_word_10 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(p_word_10_IBUF_32),
    .Q(r_p_word[10])
  );
  FDC   r_f_word_0 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[0]),
    .Q(r_f_word[0])
  );
  FDC   r_f_word_1 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[1]),
    .Q(r_f_word[1])
  );
  FDC   r_f_word_2 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[2]),
    .Q(r_f_word[2])
  );
  FDC   r_f_word_3 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[3]),
    .Q(r_f_word[3])
  );
  FDC   r_f_word_4 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[4]),
    .Q(r_f_word[4])
  );
  FDC   r_f_word_5 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[5]),
    .Q(r_f_word[5])
  );
  FDC   r_f_word_6 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[6]),
    .Q(r_f_word[6])
  );
  FDC   r_f_word_7 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[7]),
    .Q(r_f_word[7])
  );
  FDC   r_f_word_8 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[8]),
    .Q(r_f_word[8])
  );
  FDC   r_f_word_9 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[9]),
    .Q(r_f_word[9])
  );
  FDC   r_f_word_10 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[10]),
    .Q(r_f_word[10])
  );
  FDC   r_f_word_11 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[11]),
    .Q(r_f_word[11])
  );
  FDC   r_f_word_12 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[12]),
    .Q(r_f_word[12])
  );
  FDC   r_f_word_13 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[13]),
    .Q(r_f_word[13])
  );
  FDC   r_f_word_14 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[14]),
    .Q(r_f_word[14])
  );
  FDC   r_f_word_15 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[15]),
    .Q(r_f_word[15])
  );
  FDC   r_f_word_16 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[16]),
    .Q(r_f_word[16])
  );
  FDC   r_f_word_17 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[17]),
    .Q(r_f_word[17])
  );
  FDC   r_f_word_18 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[18]),
    .Q(r_f_word[18])
  );
  FDC   r_f_word_19 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[19]),
    .Q(r_f_word[19])
  );
  FDC   r_f_word_20 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[20]),
    .Q(r_f_word[20])
  );
  FDC   r_f_word_21 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[21]),
    .Q(r_f_word[21])
  );
  FDC   r_f_word_22 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[22]),
    .Q(r_f_word[22])
  );
  FDC   r_f_word_23 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[23]),
    .Q(r_f_word[23])
  );
  FDC   r_f_word_24 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[24]),
    .Q(r_f_word[24])
  );
  FDC   r_f_word_25 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[25]),
    .Q(r_f_word[25])
  );
  FDC   r_f_word_26 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[26]),
    .Q(r_f_word[26])
  );
  FDC   r_f_word_27 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[27]),
    .Q(r_f_word[27])
  );
  FDC   r_f_word_28 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[28]),
    .Q(r_f_word[28])
  );
  FDC   r_f_word_29 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[29]),
    .Q(r_f_word[29])
  );
  FDC   r_f_word_30 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[30]),
    .Q(r_f_word[30])
  );
  FDC   r_f_word_31 (
    .C(clk_BUFGP_43),
    .CLR(rst_n_inv),
    .D(Result[31]),
    .Q(r_f_word[31])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<0>  (
    .I0(r_f_word[0]),
    .I1(f_cnt[0]),
    .O(Maccum_r_f_word_lut[0])
  );
  MUXCY   \Maccum_r_f_word_cy<0>  (
    .CI(N0),
    .DI(r_f_word[0]),
    .S(Maccum_r_f_word_lut[0]),
    .O(Maccum_r_f_word_cy[0])
  );
  XORCY   \Maccum_r_f_word_xor<0>  (
    .CI(N0),
    .LI(Maccum_r_f_word_lut[0]),
    .O(Result[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<1>  (
    .I0(r_f_word[1]),
    .I1(f_cnt[1]),
    .O(Maccum_r_f_word_lut[1])
  );
  MUXCY   \Maccum_r_f_word_cy<1>  (
    .CI(Maccum_r_f_word_cy[0]),
    .DI(r_f_word[1]),
    .S(Maccum_r_f_word_lut[1]),
    .O(Maccum_r_f_word_cy[1])
  );
  XORCY   \Maccum_r_f_word_xor<1>  (
    .CI(Maccum_r_f_word_cy[0]),
    .LI(Maccum_r_f_word_lut[1]),
    .O(Result[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<2>  (
    .I0(r_f_word[2]),
    .I1(f_cnt[2]),
    .O(Maccum_r_f_word_lut[2])
  );
  MUXCY   \Maccum_r_f_word_cy<2>  (
    .CI(Maccum_r_f_word_cy[1]),
    .DI(r_f_word[2]),
    .S(Maccum_r_f_word_lut[2]),
    .O(Maccum_r_f_word_cy[2])
  );
  XORCY   \Maccum_r_f_word_xor<2>  (
    .CI(Maccum_r_f_word_cy[1]),
    .LI(Maccum_r_f_word_lut[2]),
    .O(Result[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<3>  (
    .I0(r_f_word[3]),
    .I1(f_cnt[3]),
    .O(Maccum_r_f_word_lut[3])
  );
  MUXCY   \Maccum_r_f_word_cy<3>  (
    .CI(Maccum_r_f_word_cy[2]),
    .DI(r_f_word[3]),
    .S(Maccum_r_f_word_lut[3]),
    .O(Maccum_r_f_word_cy[3])
  );
  XORCY   \Maccum_r_f_word_xor<3>  (
    .CI(Maccum_r_f_word_cy[2]),
    .LI(Maccum_r_f_word_lut[3]),
    .O(Result[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<4>  (
    .I0(r_f_word[4]),
    .I1(f_cnt[4]),
    .O(Maccum_r_f_word_lut[4])
  );
  MUXCY   \Maccum_r_f_word_cy<4>  (
    .CI(Maccum_r_f_word_cy[3]),
    .DI(r_f_word[4]),
    .S(Maccum_r_f_word_lut[4]),
    .O(Maccum_r_f_word_cy[4])
  );
  XORCY   \Maccum_r_f_word_xor<4>  (
    .CI(Maccum_r_f_word_cy[3]),
    .LI(Maccum_r_f_word_lut[4]),
    .O(Result[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<5>  (
    .I0(r_f_word[5]),
    .I1(f_cnt[5]),
    .O(Maccum_r_f_word_lut[5])
  );
  MUXCY   \Maccum_r_f_word_cy<5>  (
    .CI(Maccum_r_f_word_cy[4]),
    .DI(r_f_word[5]),
    .S(Maccum_r_f_word_lut[5]),
    .O(Maccum_r_f_word_cy[5])
  );
  XORCY   \Maccum_r_f_word_xor<5>  (
    .CI(Maccum_r_f_word_cy[4]),
    .LI(Maccum_r_f_word_lut[5]),
    .O(Result[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<6>  (
    .I0(r_f_word[6]),
    .I1(f_cnt[6]),
    .O(Maccum_r_f_word_lut[6])
  );
  MUXCY   \Maccum_r_f_word_cy<6>  (
    .CI(Maccum_r_f_word_cy[5]),
    .DI(r_f_word[6]),
    .S(Maccum_r_f_word_lut[6]),
    .O(Maccum_r_f_word_cy[6])
  );
  XORCY   \Maccum_r_f_word_xor<6>  (
    .CI(Maccum_r_f_word_cy[5]),
    .LI(Maccum_r_f_word_lut[6]),
    .O(Result[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<7>  (
    .I0(r_f_word[7]),
    .I1(f_cnt[7]),
    .O(Maccum_r_f_word_lut[7])
  );
  MUXCY   \Maccum_r_f_word_cy<7>  (
    .CI(Maccum_r_f_word_cy[6]),
    .DI(r_f_word[7]),
    .S(Maccum_r_f_word_lut[7]),
    .O(Maccum_r_f_word_cy[7])
  );
  XORCY   \Maccum_r_f_word_xor<7>  (
    .CI(Maccum_r_f_word_cy[6]),
    .LI(Maccum_r_f_word_lut[7]),
    .O(Result[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<8>  (
    .I0(r_f_word[8]),
    .I1(f_cnt[8]),
    .O(Maccum_r_f_word_lut[8])
  );
  MUXCY   \Maccum_r_f_word_cy<8>  (
    .CI(Maccum_r_f_word_cy[7]),
    .DI(r_f_word[8]),
    .S(Maccum_r_f_word_lut[8]),
    .O(Maccum_r_f_word_cy[8])
  );
  XORCY   \Maccum_r_f_word_xor<8>  (
    .CI(Maccum_r_f_word_cy[7]),
    .LI(Maccum_r_f_word_lut[8]),
    .O(Result[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<9>  (
    .I0(r_f_word[9]),
    .I1(f_cnt[9]),
    .O(Maccum_r_f_word_lut[9])
  );
  MUXCY   \Maccum_r_f_word_cy<9>  (
    .CI(Maccum_r_f_word_cy[8]),
    .DI(r_f_word[9]),
    .S(Maccum_r_f_word_lut[9]),
    .O(Maccum_r_f_word_cy[9])
  );
  XORCY   \Maccum_r_f_word_xor<9>  (
    .CI(Maccum_r_f_word_cy[8]),
    .LI(Maccum_r_f_word_lut[9]),
    .O(Result[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<10>  (
    .I0(r_f_word[10]),
    .I1(f_cnt[10]),
    .O(Maccum_r_f_word_lut[10])
  );
  MUXCY   \Maccum_r_f_word_cy<10>  (
    .CI(Maccum_r_f_word_cy[9]),
    .DI(r_f_word[10]),
    .S(Maccum_r_f_word_lut[10]),
    .O(Maccum_r_f_word_cy[10])
  );
  XORCY   \Maccum_r_f_word_xor<10>  (
    .CI(Maccum_r_f_word_cy[9]),
    .LI(Maccum_r_f_word_lut[10]),
    .O(Result[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<11>  (
    .I0(r_f_word[11]),
    .I1(f_cnt[11]),
    .O(Maccum_r_f_word_lut[11])
  );
  MUXCY   \Maccum_r_f_word_cy<11>  (
    .CI(Maccum_r_f_word_cy[10]),
    .DI(r_f_word[11]),
    .S(Maccum_r_f_word_lut[11]),
    .O(Maccum_r_f_word_cy[11])
  );
  XORCY   \Maccum_r_f_word_xor<11>  (
    .CI(Maccum_r_f_word_cy[10]),
    .LI(Maccum_r_f_word_lut[11]),
    .O(Result[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<12>  (
    .I0(r_f_word[12]),
    .I1(f_cnt[12]),
    .O(Maccum_r_f_word_lut[12])
  );
  MUXCY   \Maccum_r_f_word_cy<12>  (
    .CI(Maccum_r_f_word_cy[11]),
    .DI(r_f_word[12]),
    .S(Maccum_r_f_word_lut[12]),
    .O(Maccum_r_f_word_cy[12])
  );
  XORCY   \Maccum_r_f_word_xor<12>  (
    .CI(Maccum_r_f_word_cy[11]),
    .LI(Maccum_r_f_word_lut[12]),
    .O(Result[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<13>  (
    .I0(r_f_word[13]),
    .I1(f_cnt[13]),
    .O(Maccum_r_f_word_lut[13])
  );
  MUXCY   \Maccum_r_f_word_cy<13>  (
    .CI(Maccum_r_f_word_cy[12]),
    .DI(r_f_word[13]),
    .S(Maccum_r_f_word_lut[13]),
    .O(Maccum_r_f_word_cy[13])
  );
  XORCY   \Maccum_r_f_word_xor<13>  (
    .CI(Maccum_r_f_word_cy[12]),
    .LI(Maccum_r_f_word_lut[13]),
    .O(Result[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<14>  (
    .I0(r_f_word[14]),
    .I1(f_cnt[14]),
    .O(Maccum_r_f_word_lut[14])
  );
  MUXCY   \Maccum_r_f_word_cy<14>  (
    .CI(Maccum_r_f_word_cy[13]),
    .DI(r_f_word[14]),
    .S(Maccum_r_f_word_lut[14]),
    .O(Maccum_r_f_word_cy[14])
  );
  XORCY   \Maccum_r_f_word_xor<14>  (
    .CI(Maccum_r_f_word_cy[13]),
    .LI(Maccum_r_f_word_lut[14]),
    .O(Result[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<15>  (
    .I0(r_f_word[15]),
    .I1(f_cnt[15]),
    .O(Maccum_r_f_word_lut[15])
  );
  MUXCY   \Maccum_r_f_word_cy<15>  (
    .CI(Maccum_r_f_word_cy[14]),
    .DI(r_f_word[15]),
    .S(Maccum_r_f_word_lut[15]),
    .O(Maccum_r_f_word_cy[15])
  );
  XORCY   \Maccum_r_f_word_xor<15>  (
    .CI(Maccum_r_f_word_cy[14]),
    .LI(Maccum_r_f_word_lut[15]),
    .O(Result[15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<16>  (
    .I0(r_f_word[16]),
    .I1(f_cnt[16]),
    .O(Maccum_r_f_word_lut[16])
  );
  MUXCY   \Maccum_r_f_word_cy<16>  (
    .CI(Maccum_r_f_word_cy[15]),
    .DI(r_f_word[16]),
    .S(Maccum_r_f_word_lut[16]),
    .O(Maccum_r_f_word_cy[16])
  );
  XORCY   \Maccum_r_f_word_xor<16>  (
    .CI(Maccum_r_f_word_cy[15]),
    .LI(Maccum_r_f_word_lut[16]),
    .O(Result[16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<17>  (
    .I0(r_f_word[17]),
    .I1(f_cnt[17]),
    .O(Maccum_r_f_word_lut[17])
  );
  MUXCY   \Maccum_r_f_word_cy<17>  (
    .CI(Maccum_r_f_word_cy[16]),
    .DI(r_f_word[17]),
    .S(Maccum_r_f_word_lut[17]),
    .O(Maccum_r_f_word_cy[17])
  );
  XORCY   \Maccum_r_f_word_xor<17>  (
    .CI(Maccum_r_f_word_cy[16]),
    .LI(Maccum_r_f_word_lut[17]),
    .O(Result[17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<18>  (
    .I0(r_f_word[18]),
    .I1(f_cnt[18]),
    .O(Maccum_r_f_word_lut[18])
  );
  MUXCY   \Maccum_r_f_word_cy<18>  (
    .CI(Maccum_r_f_word_cy[17]),
    .DI(r_f_word[18]),
    .S(Maccum_r_f_word_lut[18]),
    .O(Maccum_r_f_word_cy[18])
  );
  XORCY   \Maccum_r_f_word_xor<18>  (
    .CI(Maccum_r_f_word_cy[17]),
    .LI(Maccum_r_f_word_lut[18]),
    .O(Result[18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<19>  (
    .I0(r_f_word[19]),
    .I1(f_cnt[19]),
    .O(Maccum_r_f_word_lut[19])
  );
  MUXCY   \Maccum_r_f_word_cy<19>  (
    .CI(Maccum_r_f_word_cy[18]),
    .DI(r_f_word[19]),
    .S(Maccum_r_f_word_lut[19]),
    .O(Maccum_r_f_word_cy[19])
  );
  XORCY   \Maccum_r_f_word_xor<19>  (
    .CI(Maccum_r_f_word_cy[18]),
    .LI(Maccum_r_f_word_lut[19]),
    .O(Result[19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<20>  (
    .I0(r_f_word[20]),
    .I1(f_cnt[20]),
    .O(Maccum_r_f_word_lut[20])
  );
  MUXCY   \Maccum_r_f_word_cy<20>  (
    .CI(Maccum_r_f_word_cy[19]),
    .DI(r_f_word[20]),
    .S(Maccum_r_f_word_lut[20]),
    .O(Maccum_r_f_word_cy[20])
  );
  XORCY   \Maccum_r_f_word_xor<20>  (
    .CI(Maccum_r_f_word_cy[19]),
    .LI(Maccum_r_f_word_lut[20]),
    .O(Result[20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<21>  (
    .I0(r_f_word[21]),
    .I1(f_cnt[21]),
    .O(Maccum_r_f_word_lut[21])
  );
  MUXCY   \Maccum_r_f_word_cy<21>  (
    .CI(Maccum_r_f_word_cy[20]),
    .DI(r_f_word[21]),
    .S(Maccum_r_f_word_lut[21]),
    .O(Maccum_r_f_word_cy[21])
  );
  XORCY   \Maccum_r_f_word_xor<21>  (
    .CI(Maccum_r_f_word_cy[20]),
    .LI(Maccum_r_f_word_lut[21]),
    .O(Result[21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<22>  (
    .I0(r_f_word[22]),
    .I1(f_cnt[22]),
    .O(Maccum_r_f_word_lut[22])
  );
  MUXCY   \Maccum_r_f_word_cy<22>  (
    .CI(Maccum_r_f_word_cy[21]),
    .DI(r_f_word[22]),
    .S(Maccum_r_f_word_lut[22]),
    .O(Maccum_r_f_word_cy[22])
  );
  XORCY   \Maccum_r_f_word_xor<22>  (
    .CI(Maccum_r_f_word_cy[21]),
    .LI(Maccum_r_f_word_lut[22]),
    .O(Result[22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<23>  (
    .I0(r_f_word[23]),
    .I1(f_cnt[23]),
    .O(Maccum_r_f_word_lut[23])
  );
  MUXCY   \Maccum_r_f_word_cy<23>  (
    .CI(Maccum_r_f_word_cy[22]),
    .DI(r_f_word[23]),
    .S(Maccum_r_f_word_lut[23]),
    .O(Maccum_r_f_word_cy[23])
  );
  XORCY   \Maccum_r_f_word_xor<23>  (
    .CI(Maccum_r_f_word_cy[22]),
    .LI(Maccum_r_f_word_lut[23]),
    .O(Result[23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<24>  (
    .I0(r_f_word[24]),
    .I1(f_cnt[24]),
    .O(Maccum_r_f_word_lut[24])
  );
  MUXCY   \Maccum_r_f_word_cy<24>  (
    .CI(Maccum_r_f_word_cy[23]),
    .DI(r_f_word[24]),
    .S(Maccum_r_f_word_lut[24]),
    .O(Maccum_r_f_word_cy[24])
  );
  XORCY   \Maccum_r_f_word_xor<24>  (
    .CI(Maccum_r_f_word_cy[23]),
    .LI(Maccum_r_f_word_lut[24]),
    .O(Result[24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<25>  (
    .I0(r_f_word[25]),
    .I1(f_cnt[25]),
    .O(Maccum_r_f_word_lut[25])
  );
  MUXCY   \Maccum_r_f_word_cy<25>  (
    .CI(Maccum_r_f_word_cy[24]),
    .DI(r_f_word[25]),
    .S(Maccum_r_f_word_lut[25]),
    .O(Maccum_r_f_word_cy[25])
  );
  XORCY   \Maccum_r_f_word_xor<25>  (
    .CI(Maccum_r_f_word_cy[24]),
    .LI(Maccum_r_f_word_lut[25]),
    .O(Result[25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<26>  (
    .I0(r_f_word[26]),
    .I1(f_cnt[26]),
    .O(Maccum_r_f_word_lut[26])
  );
  MUXCY   \Maccum_r_f_word_cy<26>  (
    .CI(Maccum_r_f_word_cy[25]),
    .DI(r_f_word[26]),
    .S(Maccum_r_f_word_lut[26]),
    .O(Maccum_r_f_word_cy[26])
  );
  XORCY   \Maccum_r_f_word_xor<26>  (
    .CI(Maccum_r_f_word_cy[25]),
    .LI(Maccum_r_f_word_lut[26]),
    .O(Result[26])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<27>  (
    .I0(r_f_word[27]),
    .I1(f_cnt[27]),
    .O(Maccum_r_f_word_lut[27])
  );
  MUXCY   \Maccum_r_f_word_cy<27>  (
    .CI(Maccum_r_f_word_cy[26]),
    .DI(r_f_word[27]),
    .S(Maccum_r_f_word_lut[27]),
    .O(Maccum_r_f_word_cy[27])
  );
  XORCY   \Maccum_r_f_word_xor<27>  (
    .CI(Maccum_r_f_word_cy[26]),
    .LI(Maccum_r_f_word_lut[27]),
    .O(Result[27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<28>  (
    .I0(r_f_word[28]),
    .I1(f_cnt[28]),
    .O(Maccum_r_f_word_lut[28])
  );
  MUXCY   \Maccum_r_f_word_cy<28>  (
    .CI(Maccum_r_f_word_cy[27]),
    .DI(r_f_word[28]),
    .S(Maccum_r_f_word_lut[28]),
    .O(Maccum_r_f_word_cy[28])
  );
  XORCY   \Maccum_r_f_word_xor<28>  (
    .CI(Maccum_r_f_word_cy[27]),
    .LI(Maccum_r_f_word_lut[28]),
    .O(Result[28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<29>  (
    .I0(r_f_word[29]),
    .I1(f_cnt[29]),
    .O(Maccum_r_f_word_lut[29])
  );
  MUXCY   \Maccum_r_f_word_cy<29>  (
    .CI(Maccum_r_f_word_cy[28]),
    .DI(r_f_word[29]),
    .S(Maccum_r_f_word_lut[29]),
    .O(Maccum_r_f_word_cy[29])
  );
  XORCY   \Maccum_r_f_word_xor<29>  (
    .CI(Maccum_r_f_word_cy[28]),
    .LI(Maccum_r_f_word_lut[29]),
    .O(Result[29])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<30>  (
    .I0(r_f_word[30]),
    .I1(f_cnt[30]),
    .O(Maccum_r_f_word_lut[30])
  );
  MUXCY   \Maccum_r_f_word_cy<30>  (
    .CI(Maccum_r_f_word_cy[29]),
    .DI(r_f_word[30]),
    .S(Maccum_r_f_word_lut[30]),
    .O(Maccum_r_f_word_cy[30])
  );
  XORCY   \Maccum_r_f_word_xor<30>  (
    .CI(Maccum_r_f_word_cy[29]),
    .LI(Maccum_r_f_word_lut[30]),
    .O(Result[30])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_f_word_lut<31>  (
    .I0(r_f_word[31]),
    .I1(f_cnt[31]),
    .O(Maccum_r_f_word_lut[31])
  );
  XORCY   \Maccum_r_f_word_xor<31>  (
    .CI(Maccum_r_f_word_cy[30]),
    .LI(Maccum_r_f_word_lut[31]),
    .O(Result[31])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<0>  (
    .I0(r_p_word[0]),
    .I1(r_f_word[21]),
    .O(Madd_addr_lut[0])
  );
  MUXCY   \Madd_addr_cy<0>  (
    .CI(N0),
    .DI(r_f_word[21]),
    .S(Madd_addr_lut[0]),
    .O(Madd_addr_cy[0])
  );
  XORCY   \Madd_addr_xor<0>  (
    .CI(N0),
    .LI(Madd_addr_lut[0]),
    .O(addr[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<1>  (
    .I0(r_p_word[1]),
    .I1(r_f_word[22]),
    .O(Madd_addr_lut[1])
  );
  MUXCY   \Madd_addr_cy<1>  (
    .CI(Madd_addr_cy[0]),
    .DI(r_f_word[22]),
    .S(Madd_addr_lut[1]),
    .O(Madd_addr_cy[1])
  );
  XORCY   \Madd_addr_xor<1>  (
    .CI(Madd_addr_cy[0]),
    .LI(Madd_addr_lut[1]),
    .O(addr[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<2>  (
    .I0(r_p_word[2]),
    .I1(r_f_word[23]),
    .O(Madd_addr_lut[2])
  );
  MUXCY   \Madd_addr_cy<2>  (
    .CI(Madd_addr_cy[1]),
    .DI(r_f_word[23]),
    .S(Madd_addr_lut[2]),
    .O(Madd_addr_cy[2])
  );
  XORCY   \Madd_addr_xor<2>  (
    .CI(Madd_addr_cy[1]),
    .LI(Madd_addr_lut[2]),
    .O(addr[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<3>  (
    .I0(r_p_word[3]),
    .I1(r_f_word[24]),
    .O(Madd_addr_lut[3])
  );
  MUXCY   \Madd_addr_cy<3>  (
    .CI(Madd_addr_cy[2]),
    .DI(r_f_word[24]),
    .S(Madd_addr_lut[3]),
    .O(Madd_addr_cy[3])
  );
  XORCY   \Madd_addr_xor<3>  (
    .CI(Madd_addr_cy[2]),
    .LI(Madd_addr_lut[3]),
    .O(addr[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<4>  (
    .I0(r_p_word[4]),
    .I1(r_f_word[25]),
    .O(Madd_addr_lut[4])
  );
  MUXCY   \Madd_addr_cy<4>  (
    .CI(Madd_addr_cy[3]),
    .DI(r_f_word[25]),
    .S(Madd_addr_lut[4]),
    .O(Madd_addr_cy[4])
  );
  XORCY   \Madd_addr_xor<4>  (
    .CI(Madd_addr_cy[3]),
    .LI(Madd_addr_lut[4]),
    .O(addr[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<5>  (
    .I0(r_p_word[5]),
    .I1(r_f_word[26]),
    .O(Madd_addr_lut[5])
  );
  MUXCY   \Madd_addr_cy<5>  (
    .CI(Madd_addr_cy[4]),
    .DI(r_f_word[26]),
    .S(Madd_addr_lut[5]),
    .O(Madd_addr_cy[5])
  );
  XORCY   \Madd_addr_xor<5>  (
    .CI(Madd_addr_cy[4]),
    .LI(Madd_addr_lut[5]),
    .O(addr[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<6>  (
    .I0(r_p_word[6]),
    .I1(r_f_word[27]),
    .O(Madd_addr_lut[6])
  );
  MUXCY   \Madd_addr_cy<6>  (
    .CI(Madd_addr_cy[5]),
    .DI(r_f_word[27]),
    .S(Madd_addr_lut[6]),
    .O(Madd_addr_cy[6])
  );
  XORCY   \Madd_addr_xor<6>  (
    .CI(Madd_addr_cy[5]),
    .LI(Madd_addr_lut[6]),
    .O(addr[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<7>  (
    .I0(r_p_word[7]),
    .I1(r_f_word[28]),
    .O(Madd_addr_lut[7])
  );
  MUXCY   \Madd_addr_cy<7>  (
    .CI(Madd_addr_cy[6]),
    .DI(r_f_word[28]),
    .S(Madd_addr_lut[7]),
    .O(Madd_addr_cy[7])
  );
  XORCY   \Madd_addr_xor<7>  (
    .CI(Madd_addr_cy[6]),
    .LI(Madd_addr_lut[7]),
    .O(addr[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<8>  (
    .I0(r_p_word[8]),
    .I1(r_f_word[29]),
    .O(Madd_addr_lut[8])
  );
  MUXCY   \Madd_addr_cy<8>  (
    .CI(Madd_addr_cy[7]),
    .DI(r_f_word[29]),
    .S(Madd_addr_lut[8]),
    .O(Madd_addr_cy[8])
  );
  XORCY   \Madd_addr_xor<8>  (
    .CI(Madd_addr_cy[7]),
    .LI(Madd_addr_lut[8]),
    .O(addr[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<9>  (
    .I0(r_p_word[9]),
    .I1(r_f_word[30]),
    .O(Madd_addr_lut[9])
  );
  MUXCY   \Madd_addr_cy<9>  (
    .CI(Madd_addr_cy[8]),
    .DI(r_f_word[30]),
    .S(Madd_addr_lut[9]),
    .O(Madd_addr_cy[9])
  );
  XORCY   \Madd_addr_xor<9>  (
    .CI(Madd_addr_cy[8]),
    .LI(Madd_addr_lut[9]),
    .O(addr[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_addr_lut<10>  (
    .I0(r_p_word[10]),
    .I1(r_f_word[31]),
    .O(Madd_addr_lut[10])
  );
  XORCY   \Madd_addr_xor<10>  (
    .CI(Madd_addr_cy[9]),
    .LI(Madd_addr_lut[10]),
    .O(addr[10])
  );
  IBUF   f_word_31_IBUF (
    .I(f_word[31]),
    .O(f_word_31_IBUF_0)
  );
  IBUF   f_word_30_IBUF (
    .I(f_word[30]),
    .O(f_word_30_IBUF_1)
  );
  IBUF   f_word_29_IBUF (
    .I(f_word[29]),
    .O(f_word_29_IBUF_2)
  );
  IBUF   f_word_28_IBUF (
    .I(f_word[28]),
    .O(f_word_28_IBUF_3)
  );
  IBUF   f_word_27_IBUF (
    .I(f_word[27]),
    .O(f_word_27_IBUF_4)
  );
  IBUF   f_word_26_IBUF (
    .I(f_word[26]),
    .O(f_word_26_IBUF_5)
  );
  IBUF   f_word_25_IBUF (
    .I(f_word[25]),
    .O(f_word_25_IBUF_6)
  );
  IBUF   f_word_24_IBUF (
    .I(f_word[24]),
    .O(f_word_24_IBUF_7)
  );
  IBUF   f_word_23_IBUF (
    .I(f_word[23]),
    .O(f_word_23_IBUF_8)
  );
  IBUF   f_word_22_IBUF (
    .I(f_word[22]),
    .O(f_word_22_IBUF_9)
  );
  IBUF   f_word_21_IBUF (
    .I(f_word[21]),
    .O(f_word_21_IBUF_10)
  );
  IBUF   f_word_20_IBUF (
    .I(f_word[20]),
    .O(f_word_20_IBUF_11)
  );
  IBUF   f_word_19_IBUF (
    .I(f_word[19]),
    .O(f_word_19_IBUF_12)
  );
  IBUF   f_word_18_IBUF (
    .I(f_word[18]),
    .O(f_word_18_IBUF_13)
  );
  IBUF   f_word_17_IBUF (
    .I(f_word[17]),
    .O(f_word_17_IBUF_14)
  );
  IBUF   f_word_16_IBUF (
    .I(f_word[16]),
    .O(f_word_16_IBUF_15)
  );
  IBUF   f_word_15_IBUF (
    .I(f_word[15]),
    .O(f_word_15_IBUF_16)
  );
  IBUF   f_word_14_IBUF (
    .I(f_word[14]),
    .O(f_word_14_IBUF_17)
  );
  IBUF   f_word_13_IBUF (
    .I(f_word[13]),
    .O(f_word_13_IBUF_18)
  );
  IBUF   f_word_12_IBUF (
    .I(f_word[12]),
    .O(f_word_12_IBUF_19)
  );
  IBUF   f_word_11_IBUF (
    .I(f_word[11]),
    .O(f_word_11_IBUF_20)
  );
  IBUF   f_word_10_IBUF (
    .I(f_word[10]),
    .O(f_word_10_IBUF_21)
  );
  IBUF   f_word_9_IBUF (
    .I(f_word[9]),
    .O(f_word_9_IBUF_22)
  );
  IBUF   f_word_8_IBUF (
    .I(f_word[8]),
    .O(f_word_8_IBUF_23)
  );
  IBUF   f_word_7_IBUF (
    .I(f_word[7]),
    .O(f_word_7_IBUF_24)
  );
  IBUF   f_word_6_IBUF (
    .I(f_word[6]),
    .O(f_word_6_IBUF_25)
  );
  IBUF   f_word_5_IBUF (
    .I(f_word[5]),
    .O(f_word_5_IBUF_26)
  );
  IBUF   f_word_4_IBUF (
    .I(f_word[4]),
    .O(f_word_4_IBUF_27)
  );
  IBUF   f_word_3_IBUF (
    .I(f_word[3]),
    .O(f_word_3_IBUF_28)
  );
  IBUF   f_word_2_IBUF (
    .I(f_word[2]),
    .O(f_word_2_IBUF_29)
  );
  IBUF   f_word_1_IBUF (
    .I(f_word[1]),
    .O(f_word_1_IBUF_30)
  );
  IBUF   f_word_0_IBUF (
    .I(f_word[0]),
    .O(f_word_0_IBUF_31)
  );
  IBUF   p_word_10_IBUF (
    .I(p_word[10]),
    .O(p_word_10_IBUF_32)
  );
  IBUF   p_word_9_IBUF (
    .I(p_word[9]),
    .O(p_word_9_IBUF_33)
  );
  IBUF   p_word_8_IBUF (
    .I(p_word[8]),
    .O(p_word_8_IBUF_34)
  );
  IBUF   p_word_7_IBUF (
    .I(p_word[7]),
    .O(p_word_7_IBUF_35)
  );
  IBUF   p_word_6_IBUF (
    .I(p_word[6]),
    .O(p_word_6_IBUF_36)
  );
  IBUF   p_word_5_IBUF (
    .I(p_word[5]),
    .O(p_word_5_IBUF_37)
  );
  IBUF   p_word_4_IBUF (
    .I(p_word[4]),
    .O(p_word_4_IBUF_38)
  );
  IBUF   p_word_3_IBUF (
    .I(p_word[3]),
    .O(p_word_3_IBUF_39)
  );
  IBUF   p_word_2_IBUF (
    .I(p_word[2]),
    .O(p_word_2_IBUF_40)
  );
  IBUF   p_word_1_IBUF (
    .I(p_word[1]),
    .O(p_word_1_IBUF_41)
  );
  IBUF   p_word_0_IBUF (
    .I(p_word[0]),
    .O(p_word_0_IBUF_42)
  );
  IBUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_44)
  );
  OBUF   f_out_9_OBUF (
    .I(f_out_9_OBUF_88),
    .O(f_out[9])
  );
  OBUF   f_out_8_OBUF (
    .I(f_out_8_OBUF_89),
    .O(f_out[8])
  );
  OBUF   f_out_7_OBUF (
    .I(f_out_7_OBUF_90),
    .O(f_out[7])
  );
  OBUF   f_out_6_OBUF (
    .I(f_out_6_OBUF_91),
    .O(f_out[6])
  );
  OBUF   f_out_5_OBUF (
    .I(f_out_5_OBUF_92),
    .O(f_out[5])
  );
  OBUF   f_out_4_OBUF (
    .I(f_out_4_OBUF_93),
    .O(f_out[4])
  );
  OBUF   f_out_3_OBUF (
    .I(f_out_3_OBUF_94),
    .O(f_out[3])
  );
  OBUF   f_out_2_OBUF (
    .I(f_out_2_OBUF_95),
    .O(f_out[2])
  );
  OBUF   f_out_1_OBUF (
    .I(f_out_1_OBUF_96),
    .O(f_out[1])
  );
  OBUF   f_out_0_OBUF (
    .I(f_out_0_OBUF_97),
    .O(f_out[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_43)
  );
  INV   rst_n_inv1_INV_0 (
    .I(rst_n_IBUF_44),
    .O(rst_n_inv)
  );
  ROM_dds   wave_rom (
    .clka(clk_BUFGP_43),
    .addra({addr[10], addr[9], addr[8], addr[7], addr[6], addr[5], addr[4], addr[3], addr[2], addr[1], addr[0]}),
    .douta({f_out_9_OBUF_88, f_out_8_OBUF_89, f_out_7_OBUF_90, f_out_6_OBUF_91, f_out_5_OBUF_92, f_out_4_OBUF_93, f_out_3_OBUF_94, f_out_2_OBUF_95, 
f_out_1_OBUF_96, f_out_0_OBUF_97})
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
