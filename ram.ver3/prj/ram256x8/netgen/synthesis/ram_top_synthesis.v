////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ram_top_synthesis.v
// /___/   /\     Timestamp: Mon Oct 25 14:49:38 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ram_top.ngc ram_top_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: ram_top.ngc
// Output file	: E:\FPGA\my.verilog.learn\ram.ver3\prj\ram256x8\netgen\synthesis\ram_top_synthesis.v
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
  clk, rst_n, key1, key2, rs232_tx, state_led, tx_done
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input rst_n;
  input key1;
  input key2;
  output rs232_tx;
  output state_led;
  output tx_done;
  
  // synthesis translate_off
  
  wire clk_BUFGP_0;
  wire rst_n_IBUF_1;
  wire key1_IBUF_2;
  wire key2_IBUF_3;
  wire \ram_ctrl_u/w_en_28 ;
  wire \uart_byte_tx_u/tx_29 ;
  wire \uart_byte_tx_u/tx_done_30 ;
  wire \uart_byte_tx_u/uart_state_31 ;
  wire N0;
  wire N1;
  wire \ram_ctrl_u/Mcount_cnt_20ms3 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms2 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms1 ;
  wire \ram_ctrl_u/Mcount_cnt_20ms ;
  wire \ram_ctrl_u/Mcount_addr7 ;
  wire \ram_ctrl_u/Mcount_addr6 ;
  wire \ram_ctrl_u/Mcount_addr5 ;
  wire \ram_ctrl_u/Mcount_addr4 ;
  wire \ram_ctrl_u/Mcount_addr3 ;
  wire \ram_ctrl_u/Mcount_addr2 ;
  wire \ram_ctrl_u/Mcount_addr1 ;
  wire \ram_ctrl_u/Mcount_addr ;
  wire \ram_ctrl_u/w_en_clk_read_OR_9_o_inv_inv ;
  wire \ram_ctrl_u/_n0044_inv_62 ;
  wire \ram_ctrl_u/rst_n_inv ;
  wire \ram_ctrl_u/GND_3_o_GND_3_o_equal_18_o ;
  wire \ram_ctrl_u/rd_flag_65 ;
  wire \ram_ctrl_u/clk_read_66 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<14>_71 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>_72 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>_73 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>_74 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>_75 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>_76 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>_77 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>_78 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>_79 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>_80 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>_81 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>_82 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>_83 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>_84 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<0>_85 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_lut<0> ;
  wire \uart_byte_tx_u/Mcount_bps_cnt3 ;
  wire \uart_byte_tx_u/Mcount_bps_cnt2 ;
  wire \uart_byte_tx_u/Mcount_bps_cnt1 ;
  wire \uart_byte_tx_u/Mcount_bps_cnt ;
  wire \uart_byte_tx_u/_n0049_inv ;
  wire \uart_byte_tx_u/bps_cnt[3]_PWR_4_o_equal_17_o ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o ;
  wire \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ;
  wire \uart_byte_tx_u/bps_cnt[3]_PWR_4_o_Mux_17_o ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<0> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<1> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<2> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<3> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<4> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<5> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<6> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<7> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<8> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<9> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<10> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<11> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<12> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<13> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<14> ;
  wire \uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<15> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<0> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<1> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<2> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<3> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<4> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<5> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<6> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<7> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<8> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<9> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<10> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<11> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<12> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<13> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<14> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<15> ;
  wire \uart_byte_tx_u/bps_clk_132 ;
  wire N2;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o<15> ;
  wire \uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o<15>1_159 ;
  wire \uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o<15>1 ;
  wire \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o21 ;
  wire \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o23 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<14>_rt_170 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>_rt_171 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>_rt_172 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>_rt_173 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>_rt_174 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>_rt_175 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>_rt_176 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>_rt_177 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>_rt_178 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>_rt_179 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>_rt_180 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>_rt_181 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>_rt_182 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>_rt_183 ;
  wire \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<15>_rt_184 ;
  wire \ram_ctrl_u/w_en_rstpot_185 ;
  wire \ram_ctrl_u/rd_flag_rstpot_186 ;
  wire \uart_byte_tx_u/uart_state_rstpot_187 ;
  wire N6;
  wire N10;
  wire N12;
  wire N13;
  wire [7 : 0] ram_out;
  wire [7 : 0] \ram_ctrl_u/addr ;
  wire [7 : 0] ram_in;
  wire [7 : 0] \ram_ctrl_u/Mcount_addr_lut ;
  wire [6 : 0] \ram_ctrl_u/Mcount_addr_cy ;
  wire [3 : 0] \ram_ctrl_u/cnt_20ms ;
  wire [3 : 0] \uart_byte_tx_u/bps_cnt ;
  wire [15 : 0] \uart_byte_tx_u/div_cnt ;
  wire [7 : 0] \uart_byte_tx_u/r_data_byte ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDCE   \ram_ctrl_u/addr_7  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0044_inv_62 ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr7 ),
    .Q(\ram_ctrl_u/addr [7])
  );
  FDCE   \ram_ctrl_u/addr_6  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0044_inv_62 ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr6 ),
    .Q(\ram_ctrl_u/addr [6])
  );
  FDCE   \ram_ctrl_u/addr_5  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0044_inv_62 ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr5 ),
    .Q(\ram_ctrl_u/addr [5])
  );
  FDCE   \ram_ctrl_u/addr_4  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0044_inv_62 ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr4 ),
    .Q(\ram_ctrl_u/addr [4])
  );
  FDCE   \ram_ctrl_u/addr_3  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0044_inv_62 ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr3 ),
    .Q(\ram_ctrl_u/addr [3])
  );
  FDCE   \ram_ctrl_u/addr_2  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0044_inv_62 ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr2 ),
    .Q(\ram_ctrl_u/addr [2])
  );
  FDCE   \ram_ctrl_u/addr_1  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0044_inv_62 ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr1 ),
    .Q(\ram_ctrl_u/addr [1])
  );
  FDCE   \ram_ctrl_u/addr_0  (
    .C(clk_BUFGP_0),
    .CE(\ram_ctrl_u/_n0044_inv_62 ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_addr ),
    .Q(\ram_ctrl_u/addr [0])
  );
  FDC   \ram_ctrl_u/cnt_20ms_3  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms3 ),
    .Q(\ram_ctrl_u/cnt_20ms [3])
  );
  FDC   \ram_ctrl_u/cnt_20ms_2  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms2 ),
    .Q(\ram_ctrl_u/cnt_20ms [2])
  );
  FDC   \ram_ctrl_u/cnt_20ms_1  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms1 ),
    .Q(\ram_ctrl_u/cnt_20ms [1])
  );
  FDC   \ram_ctrl_u/cnt_20ms_0  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/Mcount_cnt_20ms ),
    .Q(\ram_ctrl_u/cnt_20ms [0])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<7>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [6]),
    .LI(\ram_ctrl_u/Mcount_addr_lut [7]),
    .O(\ram_ctrl_u/Mcount_addr7 )
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<6>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [5]),
    .LI(\ram_ctrl_u/Mcount_addr_lut [6]),
    .O(\ram_ctrl_u/Mcount_addr6 )
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<6>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [5]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_lut [6]),
    .O(\ram_ctrl_u/Mcount_addr_cy [6])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<5>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [4]),
    .LI(\ram_ctrl_u/Mcount_addr_lut [5]),
    .O(\ram_ctrl_u/Mcount_addr5 )
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<5>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [4]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_lut [5]),
    .O(\ram_ctrl_u/Mcount_addr_cy [5])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<4>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [3]),
    .LI(\ram_ctrl_u/Mcount_addr_lut [4]),
    .O(\ram_ctrl_u/Mcount_addr4 )
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<4>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [3]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_lut [4]),
    .O(\ram_ctrl_u/Mcount_addr_cy [4])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<3>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [2]),
    .LI(\ram_ctrl_u/Mcount_addr_lut [3]),
    .O(\ram_ctrl_u/Mcount_addr3 )
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<3>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [2]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_lut [3]),
    .O(\ram_ctrl_u/Mcount_addr_cy [3])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<2>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [1]),
    .LI(\ram_ctrl_u/Mcount_addr_lut [2]),
    .O(\ram_ctrl_u/Mcount_addr2 )
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<2>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [1]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_lut [2]),
    .O(\ram_ctrl_u/Mcount_addr_cy [2])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<1>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [0]),
    .LI(\ram_ctrl_u/Mcount_addr_lut [1]),
    .O(\ram_ctrl_u/Mcount_addr1 )
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<1>  (
    .CI(\ram_ctrl_u/Mcount_addr_cy [0]),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_lut [1]),
    .O(\ram_ctrl_u/Mcount_addr_cy [1])
  );
  XORCY   \ram_ctrl_u/Mcount_addr_xor<0>  (
    .CI(\ram_ctrl_u/w_en_clk_read_OR_9_o_inv_inv ),
    .LI(\ram_ctrl_u/Mcount_addr_lut [0]),
    .O(\ram_ctrl_u/Mcount_addr )
  );
  MUXCY   \ram_ctrl_u/Mcount_addr_cy<0>  (
    .CI(\ram_ctrl_u/w_en_clk_read_OR_9_o_inv_inv ),
    .DI(N1),
    .S(\ram_ctrl_u/Mcount_addr_lut [0]),
    .O(\ram_ctrl_u/Mcount_addr_cy [0])
  );
  FDC   \ram_ctrl_u/clk_read  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/GND_3_o_GND_3_o_equal_18_o ),
    .Q(\ram_ctrl_u/clk_read_66 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<15>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<14>_71 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<15>_rt_184 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<15> )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<14>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>_72 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<14>_rt_170 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<14> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<14>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>_72 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<14>_rt_170 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<14>_71 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<13>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>_73 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>_rt_171 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<13> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>_73 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>_rt_171 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>_72 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<12>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>_74 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>_rt_172 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<12> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>_74 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>_rt_172 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>_73 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<11>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>_75 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>_rt_173 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<11> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>_75 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>_rt_173 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>_74 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<10>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>_76 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>_rt_174 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<10> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>_76 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>_rt_174 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>_75 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<9>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>_77 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>_rt_175 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<9> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>_77 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>_rt_175 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>_76 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<8>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>_78 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>_rt_176 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<8> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>_78 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>_rt_176 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>_77 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<7>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>_79 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>_rt_177 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<7> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>_79 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>_rt_177 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>_78 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<6>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>_80 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>_rt_178 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<6> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>_80 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>_rt_178 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>_79 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<5>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>_81 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>_rt_179 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<5> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>_81 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>_rt_179 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>_80 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<4>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>_82 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>_rt_180 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<4> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>_82 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>_rt_180 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>_81 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<3>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>_83 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>_rt_181 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<3> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>_83 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>_rt_181 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>_82 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<2>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>_84 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>_rt_182 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<2> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>_84 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>_rt_182 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>_83 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<1>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<0>_85 ),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>_rt_183 ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<1> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>  (
    .CI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<0>_85 ),
    .DI(N1),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>_rt_183 ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>_84 )
  );
  XORCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<0>  (
    .CI(N1),
    .LI(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_lut<0> ),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<0> )
  );
  MUXCY   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_lut<0> ),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<0>_85 )
  );
  FDCE   \uart_byte_tx_u/bps_cnt_3  (
    .C(clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0049_inv ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt3 ),
    .Q(\uart_byte_tx_u/bps_cnt [3])
  );
  FDCE   \uart_byte_tx_u/bps_cnt_2  (
    .C(clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0049_inv ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt2 ),
    .Q(\uart_byte_tx_u/bps_cnt [2])
  );
  FDCE   \uart_byte_tx_u/bps_cnt_1  (
    .C(clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0049_inv ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt1 ),
    .Q(\uart_byte_tx_u/bps_cnt [1])
  );
  FDCE   \uart_byte_tx_u/bps_cnt_0  (
    .C(clk_BUFGP_0),
    .CE(\uart_byte_tx_u/_n0049_inv ),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/Mcount_bps_cnt ),
    .Q(\uart_byte_tx_u/bps_cnt [0])
  );
  FDC   \uart_byte_tx_u/div_cnt_15  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<15> ),
    .Q(\uart_byte_tx_u/div_cnt [15])
  );
  FDC   \uart_byte_tx_u/div_cnt_14  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<14> ),
    .Q(\uart_byte_tx_u/div_cnt [14])
  );
  FDC   \uart_byte_tx_u/div_cnt_13  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<13> ),
    .Q(\uart_byte_tx_u/div_cnt [13])
  );
  FDC   \uart_byte_tx_u/div_cnt_12  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<12> ),
    .Q(\uart_byte_tx_u/div_cnt [12])
  );
  FDC   \uart_byte_tx_u/div_cnt_11  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<11> ),
    .Q(\uart_byte_tx_u/div_cnt [11])
  );
  FDC   \uart_byte_tx_u/div_cnt_10  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<10> ),
    .Q(\uart_byte_tx_u/div_cnt [10])
  );
  FDC   \uart_byte_tx_u/div_cnt_9  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<9> ),
    .Q(\uart_byte_tx_u/div_cnt [9])
  );
  FDC   \uart_byte_tx_u/div_cnt_8  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<8> ),
    .Q(\uart_byte_tx_u/div_cnt [8])
  );
  FDC   \uart_byte_tx_u/div_cnt_7  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<7> ),
    .Q(\uart_byte_tx_u/div_cnt [7])
  );
  FDC   \uart_byte_tx_u/div_cnt_6  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<6> ),
    .Q(\uart_byte_tx_u/div_cnt [6])
  );
  FDC   \uart_byte_tx_u/div_cnt_5  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<5> ),
    .Q(\uart_byte_tx_u/div_cnt [5])
  );
  FDC   \uart_byte_tx_u/div_cnt_4  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<4> ),
    .Q(\uart_byte_tx_u/div_cnt [4])
  );
  FDC   \uart_byte_tx_u/div_cnt_3  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<3> ),
    .Q(\uart_byte_tx_u/div_cnt [3])
  );
  FDC   \uart_byte_tx_u/div_cnt_2  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<2> ),
    .Q(\uart_byte_tx_u/div_cnt [2])
  );
  FDC   \uart_byte_tx_u/div_cnt_1  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<1> ),
    .Q(\uart_byte_tx_u/div_cnt [1])
  );
  FDC   \uart_byte_tx_u/div_cnt_0  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<0> ),
    .Q(\uart_byte_tx_u/div_cnt [0])
  );
  FDP   \uart_byte_tx_u/tx  (
    .C(clk_BUFGP_0),
    .D(\uart_byte_tx_u/bps_cnt[3]_PWR_4_o_Mux_17_o ),
    .PRE(\ram_ctrl_u/rst_n_inv ),
    .Q(\uart_byte_tx_u/tx_29 )
  );
  FDC   \uart_byte_tx_u/tx_done  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/bps_cnt[3]_PWR_4_o_equal_17_o ),
    .Q(\uart_byte_tx_u/tx_done_30 )
  );
  FDC   \uart_byte_tx_u/bps_clk  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o ),
    .Q(\uart_byte_tx_u/bps_clk_132 )
  );
  FDCE   \uart_byte_tx_u/r_data_byte_7  (
    .C(clk_BUFGP_0),
    .CE(key2_IBUF_3),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(ram_out[7]),
    .Q(\uart_byte_tx_u/r_data_byte [7])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_6  (
    .C(clk_BUFGP_0),
    .CE(key2_IBUF_3),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(ram_out[6]),
    .Q(\uart_byte_tx_u/r_data_byte [6])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_5  (
    .C(clk_BUFGP_0),
    .CE(key2_IBUF_3),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(ram_out[5]),
    .Q(\uart_byte_tx_u/r_data_byte [5])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_4  (
    .C(clk_BUFGP_0),
    .CE(key2_IBUF_3),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(ram_out[4]),
    .Q(\uart_byte_tx_u/r_data_byte [4])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_3  (
    .C(clk_BUFGP_0),
    .CE(key2_IBUF_3),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(ram_out[3]),
    .Q(\uart_byte_tx_u/r_data_byte [3])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_2  (
    .C(clk_BUFGP_0),
    .CE(key2_IBUF_3),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(ram_out[2]),
    .Q(\uart_byte_tx_u/r_data_byte [2])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_1  (
    .C(clk_BUFGP_0),
    .CE(key2_IBUF_3),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(ram_out[1]),
    .Q(\uart_byte_tx_u/r_data_byte [1])
  );
  FDCE   \uart_byte_tx_u/r_data_byte_0  (
    .C(clk_BUFGP_0),
    .CE(key2_IBUF_3),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(ram_out[0]),
    .Q(\uart_byte_tx_u/r_data_byte [0])
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \ram_ctrl_u/Mcount_cnt_20ms_xor<3>11  (
    .I0(\ram_ctrl_u/rd_flag_65 ),
    .I1(\ram_ctrl_u/cnt_20ms [3]),
    .I2(\ram_ctrl_u/cnt_20ms [0]),
    .I3(\ram_ctrl_u/cnt_20ms [1]),
    .I4(\ram_ctrl_u/cnt_20ms [2]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms3 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ram_ctrl_u/Mcount_cnt_20ms_xor<1>11  (
    .I0(\ram_ctrl_u/rd_flag_65 ),
    .I1(\ram_ctrl_u/cnt_20ms [0]),
    .I2(\ram_ctrl_u/cnt_20ms [1]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms1 )
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \ram_ctrl_u/Mcount_cnt_20ms_xor<2>11  (
    .I0(\ram_ctrl_u/rd_flag_65 ),
    .I1(\ram_ctrl_u/cnt_20ms [2]),
    .I2(\ram_ctrl_u/cnt_20ms [0]),
    .I3(\ram_ctrl_u/cnt_20ms [1]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \ram_ctrl_u/Mcount_cnt_20ms_xor<0>11  (
    .I0(\ram_ctrl_u/rd_flag_65 ),
    .I1(\ram_ctrl_u/cnt_20ms [0]),
    .O(\ram_ctrl_u/Mcount_cnt_20ms )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in11  (
    .I0(\ram_ctrl_u/w_en_28 ),
    .I1(\ram_ctrl_u/addr [0]),
    .O(ram_in[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in21  (
    .I0(\ram_ctrl_u/w_en_28 ),
    .I1(\ram_ctrl_u/addr [1]),
    .O(ram_in[1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in31  (
    .I0(\ram_ctrl_u/w_en_28 ),
    .I1(\ram_ctrl_u/addr [2]),
    .O(ram_in[2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in41  (
    .I0(\ram_ctrl_u/w_en_28 ),
    .I1(\ram_ctrl_u/addr [3]),
    .O(ram_in[3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in51  (
    .I0(\ram_ctrl_u/w_en_28 ),
    .I1(\ram_ctrl_u/addr [4]),
    .O(ram_in[4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in61  (
    .I0(\ram_ctrl_u/w_en_28 ),
    .I1(\ram_ctrl_u/addr [5]),
    .O(ram_in[5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in71  (
    .I0(\ram_ctrl_u/w_en_28 ),
    .I1(\ram_ctrl_u/addr [6]),
    .O(ram_in[6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ram_ctrl_u/Mmux_data_in81  (
    .I0(\ram_ctrl_u/w_en_28 ),
    .I1(\ram_ctrl_u/addr [7]),
    .O(ram_in[7])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \ram_ctrl_u/GND_3_o_GND_3_o_equal_18_o<3>1  (
    .I0(\ram_ctrl_u/cnt_20ms [3]),
    .I1(\ram_ctrl_u/cnt_20ms [2]),
    .I2(\ram_ctrl_u/cnt_20ms [1]),
    .I3(\ram_ctrl_u/cnt_20ms [0]),
    .O(\ram_ctrl_u/GND_3_o_GND_3_o_equal_18_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \ram_ctrl_u/w_en_clk_read_OR_9_o1  (
    .I0(\ram_ctrl_u/w_en_28 ),
    .I1(\ram_ctrl_u/clk_read_66 ),
    .O(\ram_ctrl_u/w_en_clk_read_OR_9_o_inv_inv )
  );
  LUT5 #(
    .INIT ( 32'hAEAAAAAA ))
  \uart_byte_tx_u/_n0049_inv1  (
    .I0(\uart_byte_tx_u/bps_clk_132 ),
    .I1(\uart_byte_tx_u/bps_cnt [3]),
    .I2(\uart_byte_tx_u/bps_cnt [2]),
    .I3(\uart_byte_tx_u/bps_cnt [1]),
    .I4(\uart_byte_tx_u/bps_cnt [0]),
    .O(\uart_byte_tx_u/_n0049_inv )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \uart_byte_tx_u/bps_cnt[3]_PWR_4_o_equal_17_o<3>1  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/bps_cnt [1]),
    .I3(\uart_byte_tx_u/bps_cnt [0]),
    .O(\uart_byte_tx_u/bps_cnt[3]_PWR_4_o_equal_17_o )
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
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT17  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<0> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT21  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<10> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT31  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<11> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT41  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<12> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT51  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<13> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT61  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<14> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT71  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<15> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT81  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<1> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT91  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<2> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT101  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<3> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT111  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<4> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT121  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<5> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT131  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<6> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT141  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<7> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT151  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<8> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \uart_byte_tx_u/Mmux_GND_4_o_div_cnt[15]_mux_8_OUT161  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_add_6_OUT<9> ),
    .I2(\uart_byte_tx_u/div_cnt[15]_bps_DR[15]_equal_6_o ),
    .O(\uart_byte_tx_u/GND_4_o_div_cnt[15]_mux_8_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ram_ctrl_u/_n0044_inv_SW0  (
    .I0(\ram_ctrl_u/addr [5]),
    .I1(\ram_ctrl_u/addr [4]),
    .I2(\ram_ctrl_u/addr [3]),
    .I3(\ram_ctrl_u/addr [2]),
    .I4(\ram_ctrl_u/addr [0]),
    .I5(\ram_ctrl_u/addr [1]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFEAFFFFFFAA ))
  \ram_ctrl_u/_n0044_inv  (
    .I0(key2_IBUF_3),
    .I1(\ram_ctrl_u/addr [6]),
    .I2(\ram_ctrl_u/addr [7]),
    .I3(\ram_ctrl_u/clk_read_66 ),
    .I4(\ram_ctrl_u/w_en_28 ),
    .I5(N2),
    .O(\ram_ctrl_u/_n0044_inv_62 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o<15>1  (
    .I0(\uart_byte_tx_u/div_cnt [15]),
    .I1(\uart_byte_tx_u/div_cnt [3]),
    .I2(\uart_byte_tx_u/div_cnt [5]),
    .I3(\uart_byte_tx_u/div_cnt [7]),
    .I4(\uart_byte_tx_u/div_cnt [0]),
    .I5(\uart_byte_tx_u/div_cnt [9]),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o<15> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o<15>2  (
    .I0(\uart_byte_tx_u/div_cnt [11]),
    .I1(\uart_byte_tx_u/div_cnt [8]),
    .I2(\uart_byte_tx_u/div_cnt [13]),
    .I3(\uart_byte_tx_u/div_cnt [14]),
    .I4(\uart_byte_tx_u/div_cnt [6]),
    .I5(\uart_byte_tx_u/div_cnt [4]),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o<15>1_159 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o<15>3  (
    .I0(\uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o<15> ),
    .I1(\uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o<15>1_159 ),
    .I2(\uart_byte_tx_u/div_cnt [1]),
    .I3(\uart_byte_tx_u/div_cnt [2]),
    .I4(\uart_byte_tx_u/div_cnt [12]),
    .I5(\uart_byte_tx_u/div_cnt [10]),
    .O(\uart_byte_tx_u/div_cnt[15]_GND_4_o_equal_11_o )
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
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o22  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/bps_cnt [1]),
    .I2(\uart_byte_tx_u/r_data_byte [2]),
    .I3(\uart_byte_tx_u/bps_cnt [2]),
    .I4(\uart_byte_tx_u/r_data_byte [0]),
    .I5(\uart_byte_tx_u/r_data_byte [4]),
    .O(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o21 )
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o24  (
    .I0(\uart_byte_tx_u/bps_cnt [1]),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/r_data_byte [1]),
    .I3(\uart_byte_tx_u/r_data_byte [5]),
    .I4(\uart_byte_tx_u/r_data_byte [3]),
    .O(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o23 )
  );
  IBUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_1)
  );
  IBUF   key1_IBUF (
    .I(key1),
    .O(key1_IBUF_2)
  );
  IBUF   key2_IBUF (
    .I(key2),
    .O(key2_IBUF_3)
  );
  OBUF   rs232_tx_OBUF (
    .I(\uart_byte_tx_u/tx_29 ),
    .O(rs232_tx)
  );
  OBUF   state_led_OBUF (
    .I(\uart_byte_tx_u/uart_state_31 ),
    .O(state_led)
  );
  OBUF   tx_done_OBUF (
    .I(\uart_byte_tx_u/tx_done_30 ),
    .O(tx_done)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<14>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [14]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<14>_rt_170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [13]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<13>_rt_171 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [12]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<12>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [11]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<11>_rt_173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [10]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<10>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [9]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<9>_rt_175 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [8]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<8>_rt_176 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [7]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<7>_rt_177 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [6]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<6>_rt_178 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [5]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<5>_rt_179 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [4]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<4>_rt_180 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [3]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<3>_rt_181 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [2]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<2>_rt_182 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [1]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_cy<1>_rt_183 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<15>_rt  (
    .I0(\uart_byte_tx_u/div_cnt [15]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_xor<15>_rt_184 )
  );
  FDC   \ram_ctrl_u/w_en  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/w_en_rstpot_185 ),
    .Q(\ram_ctrl_u/w_en_28 )
  );
  FDC   \ram_ctrl_u/rd_flag  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\ram_ctrl_u/rd_flag_rstpot_186 ),
    .Q(\ram_ctrl_u/rd_flag_65 )
  );
  FDC   \uart_byte_tx_u/uart_state  (
    .C(clk_BUFGP_0),
    .CLR(\ram_ctrl_u/rst_n_inv ),
    .D(\uart_byte_tx_u/uart_state_rstpot_187 ),
    .Q(\uart_byte_tx_u/uart_state_31 )
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
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ram_ctrl_u/Mcount_addr_lut<0>  (
    .I0(\ram_ctrl_u/addr [0]),
    .I1(\ram_ctrl_u/w_en_28 ),
    .I2(\ram_ctrl_u/clk_read_66 ),
    .O(\ram_ctrl_u/Mcount_addr_lut [0])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ram_ctrl_u/Mcount_addr_lut<1>  (
    .I0(\ram_ctrl_u/addr [1]),
    .I1(\ram_ctrl_u/w_en_28 ),
    .I2(\ram_ctrl_u/clk_read_66 ),
    .O(\ram_ctrl_u/Mcount_addr_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ram_ctrl_u/Mcount_addr_lut<2>  (
    .I0(\ram_ctrl_u/addr [2]),
    .I1(\ram_ctrl_u/w_en_28 ),
    .I2(\ram_ctrl_u/clk_read_66 ),
    .O(\ram_ctrl_u/Mcount_addr_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ram_ctrl_u/Mcount_addr_lut<3>  (
    .I0(\ram_ctrl_u/addr [3]),
    .I1(\ram_ctrl_u/w_en_28 ),
    .I2(\ram_ctrl_u/clk_read_66 ),
    .O(\ram_ctrl_u/Mcount_addr_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ram_ctrl_u/Mcount_addr_lut<4>  (
    .I0(\ram_ctrl_u/addr [4]),
    .I1(\ram_ctrl_u/w_en_28 ),
    .I2(\ram_ctrl_u/clk_read_66 ),
    .O(\ram_ctrl_u/Mcount_addr_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ram_ctrl_u/Mcount_addr_lut<5>  (
    .I0(\ram_ctrl_u/addr [5]),
    .I1(\ram_ctrl_u/w_en_28 ),
    .I2(\ram_ctrl_u/clk_read_66 ),
    .O(\ram_ctrl_u/Mcount_addr_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ram_ctrl_u/Mcount_addr_lut<6>  (
    .I0(\ram_ctrl_u/addr [6]),
    .I1(\ram_ctrl_u/w_en_28 ),
    .I2(\ram_ctrl_u/clk_read_66 ),
    .O(\ram_ctrl_u/Mcount_addr_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ram_ctrl_u/Mcount_addr_lut<7>  (
    .I0(\ram_ctrl_u/addr [7]),
    .I1(\ram_ctrl_u/clk_read_66 ),
    .I2(\ram_ctrl_u/w_en_28 ),
    .O(\ram_ctrl_u/Mcount_addr_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8AAAAAAA ))
  \uart_byte_tx_u/uart_state_rstpot  (
    .I0(\uart_byte_tx_u/uart_state_31 ),
    .I1(\uart_byte_tx_u/bps_cnt [2]),
    .I2(\uart_byte_tx_u/bps_cnt [3]),
    .I3(\uart_byte_tx_u/bps_cnt [1]),
    .I4(\uart_byte_tx_u/bps_cnt [0]),
    .I5(key2_IBUF_3),
    .O(\uart_byte_tx_u/uart_state_rstpot_187 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \ram_ctrl_u/w_en_rstpot_SW0  (
    .I0(\ram_ctrl_u/addr [2]),
    .I1(\ram_ctrl_u/addr [3]),
    .I2(\ram_ctrl_u/addr [4]),
    .I3(\ram_ctrl_u/addr [5]),
    .I4(\ram_ctrl_u/addr [6]),
    .I5(\ram_ctrl_u/addr [7]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04444444 ))
  \ram_ctrl_u/w_en_rstpot  (
    .I0(key2_IBUF_3),
    .I1(\ram_ctrl_u/w_en_28 ),
    .I2(\ram_ctrl_u/addr [0]),
    .I3(\ram_ctrl_u/addr [1]),
    .I4(N10),
    .I5(key1_IBUF_2),
    .O(\ram_ctrl_u/w_en_rstpot_185 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \ram_ctrl_u/rd_flag_rstpot  (
    .I0(key2_IBUF_3),
    .I1(key1_IBUF_2),
    .I2(\ram_ctrl_u/rd_flag_65 ),
    .O(\ram_ctrl_u/rd_flag_rstpot_186 )
  );
  MUXF7   \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o26  (
    .I0(N12),
    .I1(N13),
    .S(\uart_byte_tx_u/bps_cnt [0]),
    .O(\uart_byte_tx_u/bps_cnt[3]_PWR_4_o_Mux_17_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o26_F  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/r_data_byte [6]),
    .I2(\uart_byte_tx_u/bps_cnt [1]),
    .I3(\uart_byte_tx_u/bps_cnt [2]),
    .I4(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o21 ),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o26_G  (
    .I0(\uart_byte_tx_u/bps_cnt [3]),
    .I1(\uart_byte_tx_u/r_data_byte [7]),
    .I2(\uart_byte_tx_u/bps_cnt [1]),
    .I3(\uart_byte_tx_u/bps_cnt [2]),
    .I4(\uart_byte_tx_u/Mmux_bps_cnt[3]_PWR_4_o_Mux_17_o23 ),
    .O(N13)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_lut<0>_INV_0  (
    .I(\uart_byte_tx_u/div_cnt [0]),
    .O(\uart_byte_tx_u/Madd_div_cnt[15]_GND_4_o_add_6_OUT_lut<0> )
  );
  INV   \ram_ctrl_u/rst_n_inv1_INV_0  (
    .I(rst_n_IBUF_1),
    .O(\ram_ctrl_u/rst_n_inv )
  );
  INV   \uart_byte_tx_u/Mcount_bps_cnt_xor<0>11_INV_0  (
    .I(\uart_byte_tx_u/bps_cnt [0]),
    .O(\uart_byte_tx_u/Mcount_bps_cnt )
  );
  ram256x8   ram256x8_u (
    .clka(clk_BUFGP_0),
    .wea({\ram_ctrl_u/w_en_28 }),
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
