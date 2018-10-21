// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Sep 24 20:35:07 2018
// Host        : DESKTOP-KKHALKC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               S:/Uni/EEE4022S/FPGAProjectTesting/MathematicOperations/MathematicOperations.sim/sim_1/synth/func/xsim/AdderTB_func_synth.v
// Design      : implementation
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder
   (\FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[0]_0 ,
    A_STB_reg,
    Z_ACK_reg,
    Q,
    CLK100MHZ_IBUF_BUFG,
    out,
    in0,
    B_STB,
    Z_ACK_reg_0);
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[0]_0 ;
  output A_STB_reg;
  output Z_ACK_reg;
  output [31:0]Q;
  input CLK100MHZ_IBUF_BUFG;
  input [1:0]out;
  input [1:0]in0;
  input B_STB;
  input Z_ACK_reg_0;

  wire A_ACK;
  wire A_STB_reg;
  wire B_ACK;
  wire B_STB;
  wire CLK100MHZ_IBUF_BUFG;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [31:0]Q;
  wire Z_ACK_reg;
  wire Z_ACK_reg_0;
  wire Z_STB;
  wire a_e;
  wire \a_e[0]_i_1_n_0 ;
  wire \a_e[1]_i_1_n_0 ;
  wire \a_e[2]_i_1_n_0 ;
  wire \a_e[3]_i_1_n_0 ;
  wire \a_e[4]_i_1_n_0 ;
  wire \a_e[4]_i_2_n_0 ;
  wire \a_e[5]_i_1_n_0 ;
  wire \a_e[5]_i_2_n_0 ;
  wire \a_e[6]_i_1_n_0 ;
  wire \a_e[7]_i_1_n_0 ;
  wire \a_e[8]_i_2_n_0 ;
  wire \a_e[8]_i_3_n_0 ;
  wire \a_e[8]_i_4_n_0 ;
  wire \a_e[8]_i_5_n_0 ;
  wire \a_e[8]_i_6_n_0 ;
  wire \a_e_reg_n_0_[0] ;
  wire \a_e_reg_n_0_[1] ;
  wire \a_e_reg_n_0_[2] ;
  wire \a_e_reg_n_0_[3] ;
  wire \a_e_reg_n_0_[4] ;
  wire \a_e_reg_n_0_[5] ;
  wire \a_e_reg_n_0_[6] ;
  wire \a_e_reg_n_0_[7] ;
  wire \a_e_reg_n_0_[8] ;
  wire \a_m[0]_i_1_n_0 ;
  wire \a_m[25]_i_1_n_0 ;
  wire \a_m[25]_i_2_n_0 ;
  wire \a_m[26]_i_1_n_0 ;
  wire \a_m[7]_i_1_n_0 ;
  wire \a_m_reg_n_0_[0] ;
  wire \a_m_reg_n_0_[10] ;
  wire \a_m_reg_n_0_[11] ;
  wire \a_m_reg_n_0_[12] ;
  wire \a_m_reg_n_0_[13] ;
  wire \a_m_reg_n_0_[14] ;
  wire \a_m_reg_n_0_[15] ;
  wire \a_m_reg_n_0_[16] ;
  wire \a_m_reg_n_0_[17] ;
  wire \a_m_reg_n_0_[18] ;
  wire \a_m_reg_n_0_[19] ;
  wire \a_m_reg_n_0_[1] ;
  wire \a_m_reg_n_0_[20] ;
  wire \a_m_reg_n_0_[21] ;
  wire \a_m_reg_n_0_[22] ;
  wire \a_m_reg_n_0_[23] ;
  wire \a_m_reg_n_0_[24] ;
  wire \a_m_reg_n_0_[25] ;
  wire \a_m_reg_n_0_[26] ;
  wire \a_m_reg_n_0_[2] ;
  wire \a_m_reg_n_0_[3] ;
  wire \a_m_reg_n_0_[4] ;
  wire \a_m_reg_n_0_[5] ;
  wire \a_m_reg_n_0_[6] ;
  wire \a_m_reg_n_0_[7] ;
  wire \a_m_reg_n_0_[8] ;
  wire \a_m_reg_n_0_[9] ;
  wire b_e;
  wire \b_e[0]_i_1_n_0 ;
  wire \b_e[1]_i_1_n_0 ;
  wire \b_e[2]_i_1_n_0 ;
  wire \b_e[3]_i_1_n_0 ;
  wire \b_e[4]_i_1_n_0 ;
  wire \b_e[5]_i_1_n_0 ;
  wire \b_e[5]_i_2_n_0 ;
  wire \b_e[6]_i_1_n_0 ;
  wire \b_e[7]_i_1_n_0 ;
  wire \b_e[8]_i_2_n_0 ;
  wire \b_e[8]_i_3_n_0 ;
  wire \b_e[8]_i_4_n_0 ;
  wire \b_e[8]_i_5_n_0 ;
  wire \b_e[8]_i_6_n_0 ;
  wire \b_e_reg_n_0_[0] ;
  wire \b_e_reg_n_0_[1] ;
  wire \b_e_reg_n_0_[2] ;
  wire \b_e_reg_n_0_[3] ;
  wire \b_e_reg_n_0_[4] ;
  wire \b_e_reg_n_0_[5] ;
  wire \b_e_reg_n_0_[6] ;
  wire \b_e_reg_n_0_[7] ;
  wire \b_e_reg_n_0_[8] ;
  wire [0:0]b_m;
  wire \b_m[0]_i_1_n_0 ;
  wire \b_m[25]_i_1_n_0 ;
  wire \b_m[26]_i_1_n_0 ;
  wire \b_m[26]_i_2_n_0 ;
  wire \b_m[26]_i_3_n_0 ;
  wire \b_m[7]_i_1_n_0 ;
  wire \b_m_reg_n_0_[0] ;
  wire \b_m_reg_n_0_[10] ;
  wire \b_m_reg_n_0_[11] ;
  wire \b_m_reg_n_0_[12] ;
  wire \b_m_reg_n_0_[13] ;
  wire \b_m_reg_n_0_[14] ;
  wire \b_m_reg_n_0_[15] ;
  wire \b_m_reg_n_0_[16] ;
  wire \b_m_reg_n_0_[17] ;
  wire \b_m_reg_n_0_[18] ;
  wire \b_m_reg_n_0_[19] ;
  wire \b_m_reg_n_0_[1] ;
  wire \b_m_reg_n_0_[20] ;
  wire \b_m_reg_n_0_[21] ;
  wire \b_m_reg_n_0_[22] ;
  wire \b_m_reg_n_0_[23] ;
  wire \b_m_reg_n_0_[24] ;
  wire \b_m_reg_n_0_[25] ;
  wire \b_m_reg_n_0_[26] ;
  wire \b_m_reg_n_0_[2] ;
  wire \b_m_reg_n_0_[3] ;
  wire \b_m_reg_n_0_[4] ;
  wire \b_m_reg_n_0_[5] ;
  wire \b_m_reg_n_0_[6] ;
  wire \b_m_reg_n_0_[7] ;
  wire \b_m_reg_n_0_[8] ;
  wire \b_m_reg_n_0_[9] ;
  wire guard;
  wire guard_i_1_n_0;
  wire guard_i_2_n_0;
  wire guard_i_3_n_0;
  wire guard_reg_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire [1:0]in0;
  wire [23:1]in21;
  wire [8:0]in24;
  wire [1:0]out;
  wire p_1_in;
  wire p_1_out_carry__0_i_1_n_0;
  wire p_1_out_carry__0_i_2_n_0;
  wire p_1_out_carry__0_i_3_n_0;
  wire p_1_out_carry__0_i_4_n_0;
  wire p_1_out_carry__0_n_0;
  wire p_1_out_carry__0_n_1;
  wire p_1_out_carry__0_n_2;
  wire p_1_out_carry__0_n_3;
  wire p_1_out_carry__1_i_1_n_0;
  wire p_1_out_carry_i_1_n_0;
  wire p_1_out_carry_i_2_n_0;
  wire p_1_out_carry_i_3_n_0;
  wire p_1_out_carry_i_4_n_0;
  wire p_1_out_carry_i_5_n_0;
  wire p_1_out_carry_n_0;
  wire p_1_out_carry_n_1;
  wire p_1_out_carry_n_2;
  wire p_1_out_carry_n_3;
  wire p_2_in;
  wire p_4_in;
  wire round_bit_i_1_n_0;
  wire round_bit_i_2_n_0;
  wire round_bit_reg_n_0;
  wire s_input_a_ack_i_1_n_0;
  wire s_input_b_ack_i_1_n_0;
  wire s_output_z_stb;
  wire s_output_z_stb_i_1_n_0;
  wire \state1_inferred__2/i__carry_n_0 ;
  wire \state1_inferred__2/i__carry_n_1 ;
  wire \state1_inferred__2/i__carry_n_2 ;
  wire \state1_inferred__2/i__carry_n_3 ;
  wire \state1_inferred__3/i__carry__0_n_3 ;
  wire \state1_inferred__3/i__carry_n_0 ;
  wire \state1_inferred__3/i__carry_n_1 ;
  wire \state1_inferred__3/i__carry_n_2 ;
  wire \state1_inferred__3/i__carry_n_3 ;
  wire state317_in;
  wire state320_in;
  wire state3_carry_i_1_n_0;
  wire state3_carry_i_2_n_0;
  wire state3_carry_i_3_n_0;
  wire state3_carry_n_2;
  wire state3_carry_n_3;
  wire \state3_inferred__0/i__carry_n_2 ;
  wire \state3_inferred__0/i__carry_n_3 ;
  (* RTL_KEEP = "yes" *) wire [3:0]state__0;
  wire sticky_i_1_n_0;
  wire sticky_i_2_n_0;
  wire sticky_i_3_n_0;
  wire sticky_reg_n_0;
  wire sum;
  wire [27:0]sum0_in;
  wire \sum[11]_i_2_n_0 ;
  wire \sum[11]_i_3_n_0 ;
  wire \sum[11]_i_4_n_0 ;
  wire \sum[11]_i_5_n_0 ;
  wire \sum[15]_i_2_n_0 ;
  wire \sum[15]_i_3_n_0 ;
  wire \sum[15]_i_4_n_0 ;
  wire \sum[15]_i_5_n_0 ;
  wire \sum[19]_i_2_n_0 ;
  wire \sum[19]_i_3_n_0 ;
  wire \sum[19]_i_4_n_0 ;
  wire \sum[19]_i_5_n_0 ;
  wire \sum[23]_i_2_n_0 ;
  wire \sum[23]_i_3_n_0 ;
  wire \sum[23]_i_4_n_0 ;
  wire \sum[23]_i_5_n_0 ;
  wire \sum[27]_i_3_n_0 ;
  wire \sum[27]_i_4_n_0 ;
  wire \sum[27]_i_5_n_0 ;
  wire \sum[3]_i_2_n_0 ;
  wire \sum[3]_i_3_n_0 ;
  wire \sum[3]_i_4_n_0 ;
  wire \sum[3]_i_5_n_0 ;
  wire \sum[7]_i_2_n_0 ;
  wire \sum[7]_i_3_n_0 ;
  wire \sum[7]_i_4_n_0 ;
  wire \sum[7]_i_5_n_0 ;
  wire \sum_reg[11]_i_1_n_0 ;
  wire \sum_reg[11]_i_1_n_1 ;
  wire \sum_reg[11]_i_1_n_2 ;
  wire \sum_reg[11]_i_1_n_3 ;
  wire \sum_reg[15]_i_1_n_0 ;
  wire \sum_reg[15]_i_1_n_1 ;
  wire \sum_reg[15]_i_1_n_2 ;
  wire \sum_reg[15]_i_1_n_3 ;
  wire \sum_reg[19]_i_1_n_0 ;
  wire \sum_reg[19]_i_1_n_1 ;
  wire \sum_reg[19]_i_1_n_2 ;
  wire \sum_reg[19]_i_1_n_3 ;
  wire \sum_reg[23]_i_1_n_0 ;
  wire \sum_reg[23]_i_1_n_1 ;
  wire \sum_reg[23]_i_1_n_2 ;
  wire \sum_reg[23]_i_1_n_3 ;
  wire \sum_reg[27]_i_2_n_2 ;
  wire \sum_reg[27]_i_2_n_3 ;
  wire \sum_reg[3]_i_1_n_0 ;
  wire \sum_reg[3]_i_1_n_1 ;
  wire \sum_reg[3]_i_1_n_2 ;
  wire \sum_reg[3]_i_1_n_3 ;
  wire \sum_reg[7]_i_1_n_0 ;
  wire \sum_reg[7]_i_1_n_1 ;
  wire \sum_reg[7]_i_1_n_2 ;
  wire \sum_reg[7]_i_1_n_3 ;
  wire \sum_reg_n_0_[0] ;
  wire \sum_reg_n_0_[10] ;
  wire \sum_reg_n_0_[11] ;
  wire \sum_reg_n_0_[12] ;
  wire \sum_reg_n_0_[13] ;
  wire \sum_reg_n_0_[14] ;
  wire \sum_reg_n_0_[15] ;
  wire \sum_reg_n_0_[16] ;
  wire \sum_reg_n_0_[17] ;
  wire \sum_reg_n_0_[18] ;
  wire \sum_reg_n_0_[19] ;
  wire \sum_reg_n_0_[20] ;
  wire \sum_reg_n_0_[21] ;
  wire \sum_reg_n_0_[22] ;
  wire \sum_reg_n_0_[23] ;
  wire \sum_reg_n_0_[24] ;
  wire \sum_reg_n_0_[25] ;
  wire \sum_reg_n_0_[26] ;
  wire \sum_reg_n_0_[2] ;
  wire \sum_reg_n_0_[3] ;
  wire \sum_reg_n_0_[4] ;
  wire \sum_reg_n_0_[5] ;
  wire \sum_reg_n_0_[6] ;
  wire \sum_reg_n_0_[7] ;
  wire \sum_reg_n_0_[8] ;
  wire \sum_reg_n_0_[9] ;
  wire z;
  wire [31:0]z0_in;
  wire z2;
  wire \z2_inferred__0/i__carry_n_2 ;
  wire \z2_inferred__0/i__carry_n_3 ;
  wire \z[0]_i_2_n_0 ;
  wire \z[10]_i_2_n_0 ;
  wire \z[11]_i_2_n_0 ;
  wire \z[12]_i_2_n_0 ;
  wire \z[13]_i_2_n_0 ;
  wire \z[14]_i_2_n_0 ;
  wire \z[15]_i_2_n_0 ;
  wire \z[16]_i_2_n_0 ;
  wire \z[17]_i_2_n_0 ;
  wire \z[18]_i_2_n_0 ;
  wire \z[19]_i_2_n_0 ;
  wire \z[1]_i_2_n_0 ;
  wire \z[20]_i_2_n_0 ;
  wire \z[21]_i_2_n_0 ;
  wire \z[21]_i_3_n_0 ;
  wire \z[21]_i_4_n_0 ;
  wire \z[22]_i_2_n_0 ;
  wire \z[22]_i_3_n_0 ;
  wire \z[23]_i_2_n_0 ;
  wire \z[23]_i_3_n_0 ;
  wire \z[23]_i_4_n_0 ;
  wire \z[23]_i_5_n_0 ;
  wire \z[23]_i_6_n_0 ;
  wire \z[23]_i_7_n_0 ;
  wire \z[24]_i_2_n_0 ;
  wire \z[24]_i_3_n_0 ;
  wire \z[25]_i_2_n_0 ;
  wire \z[25]_i_3_n_0 ;
  wire \z[25]_i_4_n_0 ;
  wire \z[26]_i_2_n_0 ;
  wire \z[26]_i_3_n_0 ;
  wire \z[26]_i_4_n_0 ;
  wire \z[27]_i_2_n_0 ;
  wire \z[27]_i_3_n_0 ;
  wire \z[27]_i_4_n_0 ;
  wire \z[27]_i_5_n_0 ;
  wire \z[28]_i_2_n_0 ;
  wire \z[28]_i_3_n_0 ;
  wire \z[28]_i_4_n_0 ;
  wire \z[28]_i_5_n_0 ;
  wire \z[28]_i_6_n_0 ;
  wire \z[28]_i_7_n_0 ;
  wire \z[28]_i_8_n_0 ;
  wire \z[29]_i_2_n_0 ;
  wire \z[29]_i_3_n_0 ;
  wire \z[29]_i_4_n_0 ;
  wire \z[2]_i_2_n_0 ;
  wire \z[30]_i_2_n_0 ;
  wire \z[30]_i_3_n_0 ;
  wire \z[30]_i_4_n_0 ;
  wire \z[30]_i_5_n_0 ;
  wire \z[31]_i_10_n_0 ;
  wire \z[31]_i_11_n_0 ;
  wire \z[31]_i_12_n_0 ;
  wire \z[31]_i_13_n_0 ;
  wire \z[31]_i_14_n_0 ;
  wire \z[31]_i_15_n_0 ;
  wire \z[31]_i_16_n_0 ;
  wire \z[31]_i_17_n_0 ;
  wire \z[31]_i_18_n_0 ;
  wire \z[31]_i_19_n_0 ;
  wire \z[31]_i_20_n_0 ;
  wire \z[31]_i_3_n_0 ;
  wire \z[31]_i_4_n_0 ;
  wire \z[31]_i_5_n_0 ;
  wire \z[31]_i_6_n_0 ;
  wire \z[31]_i_7_n_0 ;
  wire \z[31]_i_8_n_0 ;
  wire \z[31]_i_9_n_0 ;
  wire \z[3]_i_2_n_0 ;
  wire \z[4]_i_2_n_0 ;
  wire \z[5]_i_2_n_0 ;
  wire \z[6]_i_2_n_0 ;
  wire \z[7]_i_2_n_0 ;
  wire \z[8]_i_2_n_0 ;
  wire \z[9]_i_2_n_0 ;
  wire z_e;
  wire \z_e[0]_i_1_n_0 ;
  wire \z_e[1]_i_1_n_0 ;
  wire \z_e[2]_i_1_n_0 ;
  wire \z_e[3]_i_1_n_0 ;
  wire \z_e[4]_i_1_n_0 ;
  wire \z_e[5]_i_1_n_0 ;
  wire \z_e[6]_i_1_n_0 ;
  wire \z_e[7]_i_1_n_0 ;
  wire \z_e[8]_i_10_n_0 ;
  wire \z_e[8]_i_11_n_0 ;
  wire \z_e[8]_i_2_n_0 ;
  wire \z_e[8]_i_3_n_0 ;
  wire \z_e[8]_i_4_n_0 ;
  wire \z_e[8]_i_5_n_0 ;
  wire \z_e[8]_i_6_n_0 ;
  wire \z_e[8]_i_7_n_0 ;
  wire \z_e[8]_i_8_n_0 ;
  wire \z_e[8]_i_9_n_0 ;
  wire \z_e_reg_n_0_[0] ;
  wire \z_e_reg_n_0_[1] ;
  wire \z_e_reg_n_0_[2] ;
  wire \z_e_reg_n_0_[3] ;
  wire \z_e_reg_n_0_[4] ;
  wire \z_e_reg_n_0_[5] ;
  wire \z_e_reg_n_0_[6] ;
  wire \z_e_reg_n_0_[7] ;
  wire \z_e_reg_n_0_[8] ;
  wire z_m;
  wire z_m0_carry__0_n_0;
  wire z_m0_carry__0_n_1;
  wire z_m0_carry__0_n_2;
  wire z_m0_carry__0_n_3;
  wire z_m0_carry__1_n_0;
  wire z_m0_carry__1_n_1;
  wire z_m0_carry__1_n_2;
  wire z_m0_carry__1_n_3;
  wire z_m0_carry__2_n_0;
  wire z_m0_carry__2_n_1;
  wire z_m0_carry__2_n_2;
  wire z_m0_carry__2_n_3;
  wire z_m0_carry__3_n_0;
  wire z_m0_carry__3_n_1;
  wire z_m0_carry__3_n_2;
  wire z_m0_carry__3_n_3;
  wire z_m0_carry__4_n_2;
  wire z_m0_carry__4_n_3;
  wire z_m0_carry_n_0;
  wire z_m0_carry_n_1;
  wire z_m0_carry_n_2;
  wire z_m0_carry_n_3;
  wire \z_m[0]_i_1_n_0 ;
  wire \z_m[0]_i_2_n_0 ;
  wire \z_m[10]_i_1_n_0 ;
  wire \z_m[10]_i_2_n_0 ;
  wire \z_m[11]_i_1_n_0 ;
  wire \z_m[11]_i_2_n_0 ;
  wire \z_m[12]_i_1_n_0 ;
  wire \z_m[12]_i_2_n_0 ;
  wire \z_m[13]_i_1_n_0 ;
  wire \z_m[13]_i_2_n_0 ;
  wire \z_m[14]_i_1_n_0 ;
  wire \z_m[14]_i_2_n_0 ;
  wire \z_m[15]_i_1_n_0 ;
  wire \z_m[15]_i_2_n_0 ;
  wire \z_m[16]_i_1_n_0 ;
  wire \z_m[16]_i_2_n_0 ;
  wire \z_m[17]_i_1_n_0 ;
  wire \z_m[17]_i_2_n_0 ;
  wire \z_m[18]_i_1_n_0 ;
  wire \z_m[18]_i_2_n_0 ;
  wire \z_m[19]_i_1_n_0 ;
  wire \z_m[19]_i_2_n_0 ;
  wire \z_m[1]_i_1_n_0 ;
  wire \z_m[1]_i_2_n_0 ;
  wire \z_m[20]_i_1_n_0 ;
  wire \z_m[20]_i_2_n_0 ;
  wire \z_m[21]_i_1_n_0 ;
  wire \z_m[21]_i_2_n_0 ;
  wire \z_m[22]_i_1_n_0 ;
  wire \z_m[22]_i_2_n_0 ;
  wire \z_m[23]_i_2_n_0 ;
  wire \z_m[23]_i_3_n_0 ;
  wire \z_m[23]_i_4_n_0 ;
  wire \z_m[2]_i_1_n_0 ;
  wire \z_m[2]_i_2_n_0 ;
  wire \z_m[3]_i_1_n_0 ;
  wire \z_m[3]_i_2_n_0 ;
  wire \z_m[4]_i_1_n_0 ;
  wire \z_m[4]_i_2_n_0 ;
  wire \z_m[5]_i_1_n_0 ;
  wire \z_m[5]_i_2_n_0 ;
  wire \z_m[6]_i_1_n_0 ;
  wire \z_m[6]_i_2_n_0 ;
  wire \z_m[7]_i_1_n_0 ;
  wire \z_m[7]_i_2_n_0 ;
  wire \z_m[8]_i_1_n_0 ;
  wire \z_m[8]_i_2_n_0 ;
  wire \z_m[9]_i_1_n_0 ;
  wire \z_m[9]_i_2_n_0 ;
  wire \z_m_reg_n_0_[0] ;
  wire \z_m_reg_n_0_[10] ;
  wire \z_m_reg_n_0_[11] ;
  wire \z_m_reg_n_0_[12] ;
  wire \z_m_reg_n_0_[13] ;
  wire \z_m_reg_n_0_[14] ;
  wire \z_m_reg_n_0_[15] ;
  wire \z_m_reg_n_0_[16] ;
  wire \z_m_reg_n_0_[17] ;
  wire \z_m_reg_n_0_[18] ;
  wire \z_m_reg_n_0_[19] ;
  wire \z_m_reg_n_0_[1] ;
  wire \z_m_reg_n_0_[20] ;
  wire \z_m_reg_n_0_[21] ;
  wire \z_m_reg_n_0_[22] ;
  wire \z_m_reg_n_0_[23] ;
  wire \z_m_reg_n_0_[2] ;
  wire \z_m_reg_n_0_[3] ;
  wire \z_m_reg_n_0_[4] ;
  wire \z_m_reg_n_0_[5] ;
  wire \z_m_reg_n_0_[6] ;
  wire \z_m_reg_n_0_[7] ;
  wire \z_m_reg_n_0_[8] ;
  wire \z_m_reg_n_0_[9] ;
  wire \z_reg_n_0_[0] ;
  wire \z_reg_n_0_[10] ;
  wire \z_reg_n_0_[11] ;
  wire \z_reg_n_0_[12] ;
  wire \z_reg_n_0_[13] ;
  wire \z_reg_n_0_[14] ;
  wire \z_reg_n_0_[15] ;
  wire \z_reg_n_0_[16] ;
  wire \z_reg_n_0_[17] ;
  wire \z_reg_n_0_[18] ;
  wire \z_reg_n_0_[19] ;
  wire \z_reg_n_0_[1] ;
  wire \z_reg_n_0_[20] ;
  wire \z_reg_n_0_[21] ;
  wire \z_reg_n_0_[22] ;
  wire \z_reg_n_0_[23] ;
  wire \z_reg_n_0_[24] ;
  wire \z_reg_n_0_[25] ;
  wire \z_reg_n_0_[26] ;
  wire \z_reg_n_0_[27] ;
  wire \z_reg_n_0_[28] ;
  wire \z_reg_n_0_[29] ;
  wire \z_reg_n_0_[2] ;
  wire \z_reg_n_0_[30] ;
  wire \z_reg_n_0_[31] ;
  wire \z_reg_n_0_[3] ;
  wire \z_reg_n_0_[4] ;
  wire \z_reg_n_0_[5] ;
  wire \z_reg_n_0_[6] ;
  wire \z_reg_n_0_[7] ;
  wire \z_reg_n_0_[8] ;
  wire \z_reg_n_0_[9] ;
  wire [3:0]NLW_p_1_out_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_p_1_out_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_state1_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_state1_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_state1_inferred__3/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__3/i__carry__0_O_UNCONNECTED ;
  wire [3:3]NLW_state3_carry_CO_UNCONNECTED;
  wire [3:0]NLW_state3_carry_O_UNCONNECTED;
  wire [3:3]\NLW_state3_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_state3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [2:2]\NLW_sum_reg[27]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum_reg[27]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_sum_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_z2_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_z2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]NLW_z_m0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_z_m0_carry__4_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF7F0055)) 
    A_STB_i_1
       (.I0(out[0]),
        .I1(B_ACK),
        .I2(A_ACK),
        .I3(out[1]),
        .I4(B_STB),
        .O(A_STB_reg));
  LUT6 #(
    .INIT(64'hFFAA3FFF00AA3FFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(Z_STB),
        .I1(B_ACK),
        .I2(A_ACK),
        .I3(out[0]),
        .I4(out[1]),
        .I5(in0[0]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0400FFFF)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(\FSM_sequential_state[3]_i_6_n_0 ),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF800F80)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(B_ACK),
        .I1(A_ACK),
        .I2(out[0]),
        .I3(out[1]),
        .I4(in0[1]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0F2FF0F0)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\FSM_sequential_state[3]_i_6_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h22AA26AA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEFEE)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(B_STB),
        .I1(A_ACK),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0FFFE000)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_6_n_0 ),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5500555540400000)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state__0[3]),
        .I1(B_ACK),
        .I2(B_STB),
        .I3(\z_m[23]_i_4_n_0 ),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00AB00AB0000FFFF)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(state__0[0]),
        .I1(\state1_inferred__3/i__carry__0_n_3 ),
        .I2(p_4_in),
        .I3(\FSM_sequential_state[3]_i_7_n_0 ),
        .I4(\FSM_sequential_state[3]_i_8_n_0 ),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h04440404)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(state__0[0]),
        .I1(\z_e_reg_n_0_[8] ),
        .I2(\z_e_reg_n_0_[7] ),
        .I3(\z_e_reg_n_0_[1] ),
        .I4(\FSM_sequential_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEAFF)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(state317_in),
        .I2(\z[31]_i_5_n_0 ),
        .I3(\z[27]_i_3_n_0 ),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h77000000FFFFFF0F)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(Z_STB),
        .I1(Z_ACK_reg_0),
        .I2(\FSM_sequential_state[3]_i_10_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(\z_e_reg_n_0_[5] ),
        .I1(\z_e_reg_n_0_[4] ),
        .I2(\z_e_reg_n_0_[3] ),
        .I3(\z_e_reg_n_0_[6] ),
        .I4(\z_e_reg_n_0_[2] ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "align:0100,special_cases:0011,unpack:0010,put_z:1011,pack:1010,get_b:0001,get_a:0000,round:1001,normalise_1:0111,normalise_2:1000,add_1:0110,add_0:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "align:0100,special_cases:0011,unpack:0010,put_z:1011,pack:1010,get_b:0001,get_a:0000,round:1001,normalise_1:0111,normalise_2:1000,add_1:0110,add_0:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "align:0100,special_cases:0011,unpack:0010,put_z:1011,pack:1010,get_b:0001,get_a:0000,round:1001,normalise_1:0111,normalise_2:1000,add_1:0110,add_0:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "align:0100,special_cases:0011,unpack:0010,put_z:1011,pack:1010,get_b:0001,get_a:0000,round:1001,normalise_1:0111,normalise_2:1000,add_1:0110,add_0:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_state[3]_i_2_n_0 ),
        .Q(state__0[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    Z_ACK_i_1
       (.I0(Z_STB),
        .I1(out[1]),
        .I2(out[0]),
        .I3(Z_ACK_reg_0),
        .O(Z_ACK_reg));
  LUT4 #(
    .INIT(16'h0007)) 
    \a_e[0]_i_1 
       (.I0(state__0[2]),
        .I1(\a_e_reg_n_0_[0] ),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .O(\a_e[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00515100F3F3F3F3)) 
    \a_e[1]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\a_e_reg_n_0_[0] ),
        .I4(\a_e_reg_n_0_[1] ),
        .I5(state__0[2]),
        .O(\a_e[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000007800000000)) 
    \a_e[2]_i_1 
       (.I0(\a_e_reg_n_0_[1] ),
        .I1(\a_e_reg_n_0_[0] ),
        .I2(\a_e_reg_n_0_[2] ),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .I5(state__0[2]),
        .O(\a_e[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \a_e[3]_i_1 
       (.I0(\a_e_reg_n_0_[2] ),
        .I1(\a_e_reg_n_0_[0] ),
        .I2(\a_e_reg_n_0_[1] ),
        .I3(\a_e_reg_n_0_[3] ),
        .I4(\a_e[4]_i_2_n_0 ),
        .O(\a_e[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \a_e[4]_i_1 
       (.I0(\a_e_reg_n_0_[3] ),
        .I1(\a_e_reg_n_0_[1] ),
        .I2(\a_e_reg_n_0_[0] ),
        .I3(\a_e_reg_n_0_[2] ),
        .I4(\a_e_reg_n_0_[4] ),
        .I5(\a_e[4]_i_2_n_0 ),
        .O(\a_e[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \a_e[4]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(state__0[2]),
        .O(\a_e[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00090000)) 
    \a_e[5]_i_1 
       (.I0(\a_e[5]_i_2_n_0 ),
        .I1(\a_e_reg_n_0_[5] ),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(state__0[2]),
        .O(\a_e[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \a_e[5]_i_2 
       (.I0(\a_e_reg_n_0_[3] ),
        .I1(\a_e_reg_n_0_[1] ),
        .I2(\a_e_reg_n_0_[0] ),
        .I3(\a_e_reg_n_0_[2] ),
        .I4(\a_e_reg_n_0_[4] ),
        .O(\a_e[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10000010)) 
    \a_e[6]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(state__0[2]),
        .I3(\a_e[8]_i_4_n_0 ),
        .I4(\a_e_reg_n_0_[6] ),
        .O(\a_e[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A6FFFF)) 
    \a_e[7]_i_1 
       (.I0(\a_e_reg_n_0_[7] ),
        .I1(\a_e_reg_n_0_[6] ),
        .I2(\a_e[8]_i_4_n_0 ),
        .I3(state__0[3]),
        .I4(state__0[2]),
        .O(\a_e[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \a_e[8]_i_1 
       (.I0(\a_m[25]_i_2_n_0 ),
        .I1(\a_e[8]_i_3_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(a_e));
  LUT6 #(
    .INIT(64'h00009AAAFFFFFFFF)) 
    \a_e[8]_i_2 
       (.I0(\a_e_reg_n_0_[8] ),
        .I1(\a_e[8]_i_4_n_0 ),
        .I2(\a_e_reg_n_0_[6] ),
        .I3(\a_e_reg_n_0_[7] ),
        .I4(state__0[3]),
        .I5(state__0[2]),
        .O(\a_e[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \a_e[8]_i_3 
       (.I0(\a_e[8]_i_5_n_0 ),
        .I1(\a_e[8]_i_6_n_0 ),
        .I2(\a_e_reg_n_0_[6] ),
        .I3(\a_e_reg_n_0_[8] ),
        .I4(\a_e_reg_n_0_[7] ),
        .O(\a_e[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \a_e[8]_i_4 
       (.I0(\a_e_reg_n_0_[4] ),
        .I1(\a_e_reg_n_0_[2] ),
        .I2(\a_e_reg_n_0_[0] ),
        .I3(\a_e_reg_n_0_[1] ),
        .I4(\a_e_reg_n_0_[3] ),
        .I5(\a_e_reg_n_0_[5] ),
        .O(\a_e[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \a_e[8]_i_5 
       (.I0(\a_e_reg_n_0_[5] ),
        .I1(\a_e_reg_n_0_[4] ),
        .I2(\a_e_reg_n_0_[3] ),
        .O(\a_e[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \a_e[8]_i_6 
       (.I0(\a_e_reg_n_0_[2] ),
        .I1(\a_e_reg_n_0_[0] ),
        .I2(\a_e_reg_n_0_[1] ),
        .O(\a_e[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_e_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(a_e),
        .D(\a_e[0]_i_1_n_0 ),
        .Q(\a_e_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_e_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(a_e),
        .D(\a_e[1]_i_1_n_0 ),
        .Q(\a_e_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_e_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(a_e),
        .D(\a_e[2]_i_1_n_0 ),
        .Q(\a_e_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_e_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(a_e),
        .D(\a_e[3]_i_1_n_0 ),
        .Q(\a_e_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_e_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(a_e),
        .D(\a_e[4]_i_1_n_0 ),
        .Q(\a_e_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_e_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(a_e),
        .D(\a_e[5]_i_1_n_0 ),
        .Q(\a_e_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_e_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(a_e),
        .D(\a_e[6]_i_1_n_0 ),
        .Q(\a_e_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_e_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(a_e),
        .D(\a_e[7]_i_1_n_0 ),
        .Q(\a_e_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_e_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(a_e),
        .D(\a_e[8]_i_2_n_0 ),
        .Q(\a_e_reg_n_0_[8] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hCF80)) 
    \a_m[0]_i_1 
       (.I0(\a_m_reg_n_0_[1] ),
        .I1(state__0[2]),
        .I2(\a_m[25]_i_2_n_0 ),
        .I3(\a_m_reg_n_0_[0] ),
        .O(\a_m[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \a_m[25]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .O(\a_m[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010001400100010)) 
    \a_m[25]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(p_4_in),
        .I5(\state1_inferred__3/i__carry__0_n_3 ),
        .O(\a_m[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \a_m[26]_i_1 
       (.I0(\b_m[26]_i_2_n_0 ),
        .I1(\a_m[25]_i_2_n_0 ),
        .I2(\FSM_sequential_state[3]_i_6_n_0 ),
        .I3(\b_m[26]_i_3_n_0 ),
        .I4(\a_e[8]_i_3_n_0 ),
        .I5(\a_m_reg_n_0_[26] ),
        .O(\a_m[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \a_m[7]_i_1 
       (.I0(state__0[0]),
        .I1(\a_m_reg_n_0_[8] ),
        .I2(state__0[2]),
        .I3(\a_m[25]_i_2_n_0 ),
        .I4(\a_m_reg_n_0_[7] ),
        .O(\a_m[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_m[0]_i_1_n_0 ),
        .Q(\a_m_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[11] ),
        .Q(\a_m_reg_n_0_[10] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[12] ),
        .Q(\a_m_reg_n_0_[11] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[13] ),
        .Q(\a_m_reg_n_0_[12] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[14] ),
        .Q(\a_m_reg_n_0_[13] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[15] ),
        .Q(\a_m_reg_n_0_[14] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[16] ),
        .Q(\a_m_reg_n_0_[15] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[17] ),
        .Q(\a_m_reg_n_0_[16] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[18] ),
        .Q(\a_m_reg_n_0_[17] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[19] ),
        .Q(\a_m_reg_n_0_[18] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[20] ),
        .Q(\a_m_reg_n_0_[19] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[2] ),
        .Q(\a_m_reg_n_0_[1] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[21] ),
        .Q(\a_m_reg_n_0_[20] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[22] ),
        .Q(\a_m_reg_n_0_[21] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[23] ),
        .Q(\a_m_reg_n_0_[22] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[24] ),
        .Q(\a_m_reg_n_0_[23] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[25] ),
        .Q(\a_m_reg_n_0_[24] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[26] ),
        .Q(\a_m_reg_n_0_[25] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_m[26]_i_1_n_0 ),
        .Q(\a_m_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[3] ),
        .Q(\a_m_reg_n_0_[2] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[4] ),
        .Q(\a_m_reg_n_0_[3] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[5] ),
        .Q(\a_m_reg_n_0_[4] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[6] ),
        .Q(\a_m_reg_n_0_[5] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[7] ),
        .Q(\a_m_reg_n_0_[6] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_m[7]_i_1_n_0 ),
        .Q(\a_m_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[9] ),
        .Q(\a_m_reg_n_0_[8] ),
        .R(\a_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_m_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\a_m[25]_i_2_n_0 ),
        .D(\a_m_reg_n_0_[10] ),
        .Q(\a_m_reg_n_0_[9] ),
        .R(\a_m[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \b_e[0]_i_1 
       (.I0(state__0[2]),
        .I1(\b_e_reg_n_0_[0] ),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .O(\b_e[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F351F351F300F3)) 
    \b_e[1]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(\b_e_reg_n_0_[0] ),
        .I5(\b_e_reg_n_0_[1] ),
        .O(\b_e[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000007800000000)) 
    \b_e[2]_i_1 
       (.I0(\b_e_reg_n_0_[1] ),
        .I1(\b_e_reg_n_0_[0] ),
        .I2(\b_e_reg_n_0_[2] ),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .I5(state__0[2]),
        .O(\b_e[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \b_e[3]_i_1 
       (.I0(\b_e_reg_n_0_[2] ),
        .I1(\b_e_reg_n_0_[0] ),
        .I2(\b_e_reg_n_0_[1] ),
        .I3(\b_e_reg_n_0_[3] ),
        .I4(\a_e[4]_i_2_n_0 ),
        .O(\b_e[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \b_e[4]_i_1 
       (.I0(\b_e_reg_n_0_[3] ),
        .I1(\b_e_reg_n_0_[1] ),
        .I2(\b_e_reg_n_0_[0] ),
        .I3(\b_e_reg_n_0_[2] ),
        .I4(\b_e_reg_n_0_[4] ),
        .I5(\a_e[4]_i_2_n_0 ),
        .O(\b_e[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00090000)) 
    \b_e[5]_i_1 
       (.I0(\b_e[5]_i_2_n_0 ),
        .I1(\b_e_reg_n_0_[5] ),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(state__0[2]),
        .O(\b_e[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \b_e[5]_i_2 
       (.I0(\b_e_reg_n_0_[3] ),
        .I1(\b_e_reg_n_0_[1] ),
        .I2(\b_e_reg_n_0_[0] ),
        .I3(\b_e_reg_n_0_[2] ),
        .I4(\b_e_reg_n_0_[4] ),
        .O(\b_e[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00090000)) 
    \b_e[6]_i_1 
       (.I0(\b_e[8]_i_4_n_0 ),
        .I1(\b_e_reg_n_0_[6] ),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(state__0[2]),
        .O(\b_e[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A6FFFF)) 
    \b_e[7]_i_1 
       (.I0(\b_e_reg_n_0_[7] ),
        .I1(\b_e_reg_n_0_[6] ),
        .I2(\b_e[8]_i_4_n_0 ),
        .I3(state__0[3]),
        .I4(state__0[2]),
        .O(\b_e[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \b_e[8]_i_1 
       (.I0(b_m),
        .I1(\b_e[8]_i_3_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(b_e));
  LUT6 #(
    .INIT(64'h00009AAAFFFFFFFF)) 
    \b_e[8]_i_2 
       (.I0(\b_e_reg_n_0_[8] ),
        .I1(\b_e[8]_i_4_n_0 ),
        .I2(\b_e_reg_n_0_[6] ),
        .I3(\b_e_reg_n_0_[7] ),
        .I4(state__0[3]),
        .I5(state__0[2]),
        .O(\b_e[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \b_e[8]_i_3 
       (.I0(\b_e_reg_n_0_[1] ),
        .I1(\b_e_reg_n_0_[0] ),
        .I2(\b_e_reg_n_0_[2] ),
        .I3(\b_e[8]_i_5_n_0 ),
        .I4(\b_e[8]_i_6_n_0 ),
        .O(\b_e[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \b_e[8]_i_4 
       (.I0(\b_e_reg_n_0_[4] ),
        .I1(\b_e_reg_n_0_[2] ),
        .I2(\b_e_reg_n_0_[0] ),
        .I3(\b_e_reg_n_0_[1] ),
        .I4(\b_e_reg_n_0_[3] ),
        .I5(\b_e_reg_n_0_[5] ),
        .O(\b_e[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \b_e[8]_i_5 
       (.I0(\b_e_reg_n_0_[5] ),
        .I1(\b_e_reg_n_0_[4] ),
        .I2(\b_e_reg_n_0_[3] ),
        .O(\b_e[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \b_e[8]_i_6 
       (.I0(\b_e_reg_n_0_[7] ),
        .I1(\b_e_reg_n_0_[6] ),
        .I2(\b_e_reg_n_0_[8] ),
        .O(\b_e[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_e_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_e),
        .D(\b_e[0]_i_1_n_0 ),
        .Q(\b_e_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_e_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_e),
        .D(\b_e[1]_i_1_n_0 ),
        .Q(\b_e_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_e_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_e),
        .D(\b_e[2]_i_1_n_0 ),
        .Q(\b_e_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_e_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_e),
        .D(\b_e[3]_i_1_n_0 ),
        .Q(\b_e_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_e_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_e),
        .D(\b_e[4]_i_1_n_0 ),
        .Q(\b_e_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_e_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_e),
        .D(\b_e[5]_i_1_n_0 ),
        .Q(\b_e_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_e_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_e),
        .D(\b_e[6]_i_1_n_0 ),
        .Q(\b_e_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_e_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_e),
        .D(\b_e[7]_i_1_n_0 ),
        .Q(\b_e_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_e_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_e),
        .D(\b_e[8]_i_2_n_0 ),
        .Q(\b_e_reg_n_0_[8] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hCF80)) 
    \b_m[0]_i_1 
       (.I0(\b_m_reg_n_0_[1] ),
        .I1(state__0[2]),
        .I2(b_m),
        .I3(\b_m_reg_n_0_[0] ),
        .O(\b_m[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \b_m[25]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .I3(state__0[2]),
        .O(\b_m[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001044)) 
    \b_m[25]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(p_4_in),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .O(b_m));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \b_m[26]_i_1 
       (.I0(\b_m[26]_i_2_n_0 ),
        .I1(b_m),
        .I2(\FSM_sequential_state[3]_i_6_n_0 ),
        .I3(\b_m[26]_i_3_n_0 ),
        .I4(\b_e[8]_i_3_n_0 ),
        .I5(\b_m_reg_n_0_[26] ),
        .O(\b_m[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_m[26]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\b_m[26]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \b_m[26]_i_3 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(\b_m[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \b_m[7]_i_1 
       (.I0(state__0[0]),
        .I1(\b_m_reg_n_0_[8] ),
        .I2(state__0[2]),
        .I3(b_m),
        .I4(\b_m_reg_n_0_[7] ),
        .O(\b_m[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_m[0]_i_1_n_0 ),
        .Q(\b_m_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[11] ),
        .Q(\b_m_reg_n_0_[10] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[12] ),
        .Q(\b_m_reg_n_0_[11] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[13] ),
        .Q(\b_m_reg_n_0_[12] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[14] ),
        .Q(\b_m_reg_n_0_[13] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[15] ),
        .Q(\b_m_reg_n_0_[14] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[16] ),
        .Q(\b_m_reg_n_0_[15] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[17] ),
        .Q(\b_m_reg_n_0_[16] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[18] ),
        .Q(\b_m_reg_n_0_[17] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[19] ),
        .Q(\b_m_reg_n_0_[18] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[20] ),
        .Q(\b_m_reg_n_0_[19] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[2] ),
        .Q(\b_m_reg_n_0_[1] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[21] ),
        .Q(\b_m_reg_n_0_[20] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[22] ),
        .Q(\b_m_reg_n_0_[21] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[23] ),
        .Q(\b_m_reg_n_0_[22] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[24] ),
        .Q(\b_m_reg_n_0_[23] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[25] ),
        .Q(\b_m_reg_n_0_[24] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[26] ),
        .Q(\b_m_reg_n_0_[25] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_m[26]_i_1_n_0 ),
        .Q(\b_m_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[3] ),
        .Q(\b_m_reg_n_0_[2] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[4] ),
        .Q(\b_m_reg_n_0_[3] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[5] ),
        .Q(\b_m_reg_n_0_[4] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[6] ),
        .Q(\b_m_reg_n_0_[5] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[7] ),
        .Q(\b_m_reg_n_0_[6] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_m[7]_i_1_n_0 ),
        .Q(\b_m_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[9] ),
        .Q(\b_m_reg_n_0_[8] ),
        .R(\b_m[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_m_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(b_m),
        .D(\b_m_reg_n_0_[10] ),
        .Q(\b_m_reg_n_0_[9] ),
        .R(\b_m[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    guard_i_1
       (.I0(guard_i_2_n_0),
        .I1(guard),
        .I2(guard_reg_n_0),
        .O(guard_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FDFFFDDD)) 
    guard_i_2
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[3] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[2] ),
        .I5(guard_i_3_n_0),
        .O(guard_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF40FF40404040)) 
    guard_i_3
       (.I0(round_bit_reg_n_0),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\z_m_reg_n_0_[0] ),
        .I4(state__0[2]),
        .I5(state__0[3]),
        .O(guard_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    guard_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(guard_i_1_n_0),
        .Q(guard_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1
       (.I0(\b_e_reg_n_0_[8] ),
        .I1(\a_e_reg_n_0_[8] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1__0
       (.I0(\a_e_reg_n_0_[8] ),
        .I1(\b_e_reg_n_0_[8] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(\a_e_reg_n_0_[8] ),
        .I1(\b_e_reg_n_0_[8] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(\b_e_reg_n_0_[8] ),
        .I1(\a_e_reg_n_0_[8] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1
       (.I0(\b_e_reg_n_0_[6] ),
        .I1(\a_e_reg_n_0_[6] ),
        .I2(\b_e_reg_n_0_[7] ),
        .I3(\a_e_reg_n_0_[7] ),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1__0
       (.I0(\a_e_reg_n_0_[6] ),
        .I1(\b_e_reg_n_0_[6] ),
        .I2(\a_e_reg_n_0_[7] ),
        .I3(\b_e_reg_n_0_[7] ),
        .O(i__carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    i__carry_i_1__1
       (.I0(\b_e_reg_n_0_[8] ),
        .I1(\b_e_reg_n_0_[6] ),
        .I2(\b_e_reg_n_0_[7] ),
        .O(i__carry_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    i__carry_i_1__2
       (.I0(\z_e_reg_n_0_[6] ),
        .I1(\z_e_reg_n_0_[8] ),
        .I2(\z_e_reg_n_0_[7] ),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2
       (.I0(\b_e_reg_n_0_[4] ),
        .I1(\a_e_reg_n_0_[4] ),
        .I2(\b_e_reg_n_0_[5] ),
        .I3(\a_e_reg_n_0_[5] ),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2__0
       (.I0(\a_e_reg_n_0_[4] ),
        .I1(\b_e_reg_n_0_[4] ),
        .I2(\a_e_reg_n_0_[5] ),
        .I3(\b_e_reg_n_0_[5] ),
        .O(i__carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_2__1
       (.I0(\b_e_reg_n_0_[3] ),
        .I1(\b_e_reg_n_0_[4] ),
        .I2(\b_e_reg_n_0_[5] ),
        .O(i__carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_2__2
       (.I0(\z_e_reg_n_0_[3] ),
        .I1(\z_e_reg_n_0_[4] ),
        .I2(\z_e_reg_n_0_[5] ),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3
       (.I0(\b_e_reg_n_0_[2] ),
        .I1(\a_e_reg_n_0_[2] ),
        .I2(\b_e_reg_n_0_[3] ),
        .I3(\a_e_reg_n_0_[3] ),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3__0
       (.I0(\a_e_reg_n_0_[2] ),
        .I1(\b_e_reg_n_0_[2] ),
        .I2(\a_e_reg_n_0_[3] ),
        .I3(\b_e_reg_n_0_[3] ),
        .O(i__carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_3__1
       (.I0(\b_e_reg_n_0_[2] ),
        .I1(\b_e_reg_n_0_[0] ),
        .I2(\b_e_reg_n_0_[1] ),
        .O(i__carry_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_3__2
       (.I0(\z_e_reg_n_0_[2] ),
        .I1(\z_e_reg_n_0_[1] ),
        .I2(\z_e_reg_n_0_[0] ),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4
       (.I0(\b_e_reg_n_0_[0] ),
        .I1(\a_e_reg_n_0_[0] ),
        .I2(\b_e_reg_n_0_[1] ),
        .I3(\a_e_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4__0
       (.I0(\a_e_reg_n_0_[0] ),
        .I1(\b_e_reg_n_0_[0] ),
        .I2(\a_e_reg_n_0_[1] ),
        .I3(\b_e_reg_n_0_[1] ),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\b_e_reg_n_0_[6] ),
        .I1(\a_e_reg_n_0_[6] ),
        .I2(\b_e_reg_n_0_[7] ),
        .I3(\a_e_reg_n_0_[7] ),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(\b_e_reg_n_0_[6] ),
        .I1(\a_e_reg_n_0_[6] ),
        .I2(\b_e_reg_n_0_[7] ),
        .I3(\a_e_reg_n_0_[7] ),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\b_e_reg_n_0_[4] ),
        .I1(\a_e_reg_n_0_[4] ),
        .I2(\b_e_reg_n_0_[5] ),
        .I3(\a_e_reg_n_0_[5] ),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(\b_e_reg_n_0_[4] ),
        .I1(\a_e_reg_n_0_[4] ),
        .I2(\b_e_reg_n_0_[5] ),
        .I3(\a_e_reg_n_0_[5] ),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\b_e_reg_n_0_[2] ),
        .I1(\a_e_reg_n_0_[2] ),
        .I2(\b_e_reg_n_0_[3] ),
        .I3(\a_e_reg_n_0_[3] ),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(\b_e_reg_n_0_[2] ),
        .I1(\a_e_reg_n_0_[2] ),
        .I2(\b_e_reg_n_0_[3] ),
        .I3(\a_e_reg_n_0_[3] ),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\b_e_reg_n_0_[0] ),
        .I1(\a_e_reg_n_0_[0] ),
        .I2(\b_e_reg_n_0_[1] ),
        .I3(\a_e_reg_n_0_[1] ),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(\b_e_reg_n_0_[0] ),
        .I1(\a_e_reg_n_0_[0] ),
        .I2(\b_e_reg_n_0_[1] ),
        .I3(\a_e_reg_n_0_[1] ),
        .O(i__carry_i_8__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry
       (.CI(1'b0),
        .CO({p_1_out_carry_n_0,p_1_out_carry_n_1,p_1_out_carry_n_2,p_1_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\z_e_reg_n_0_[2] ,\z_e_reg_n_0_[1] ,p_1_out_carry_i_1_n_0,\z_e_reg_n_0_[0] }),
        .O(in24[3:0]),
        .S({p_1_out_carry_i_2_n_0,p_1_out_carry_i_3_n_0,p_1_out_carry_i_4_n_0,p_1_out_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__0
       (.CI(p_1_out_carry_n_0),
        .CO({p_1_out_carry__0_n_0,p_1_out_carry__0_n_1,p_1_out_carry__0_n_2,p_1_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\z_e_reg_n_0_[6] ,\z_e_reg_n_0_[5] ,\z_e_reg_n_0_[4] ,\z_e_reg_n_0_[3] }),
        .O(in24[7:4]),
        .S({p_1_out_carry__0_i_1_n_0,p_1_out_carry__0_i_2_n_0,p_1_out_carry__0_i_3_n_0,p_1_out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_1
       (.I0(\z_e_reg_n_0_[6] ),
        .I1(\z_e_reg_n_0_[7] ),
        .O(p_1_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_2
       (.I0(\z_e_reg_n_0_[5] ),
        .I1(\z_e_reg_n_0_[6] ),
        .O(p_1_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_3
       (.I0(\z_e_reg_n_0_[4] ),
        .I1(\z_e_reg_n_0_[5] ),
        .O(p_1_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_4
       (.I0(\z_e_reg_n_0_[3] ),
        .I1(\z_e_reg_n_0_[4] ),
        .O(p_1_out_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__1
       (.CI(p_1_out_carry__0_n_0),
        .CO(NLW_p_1_out_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_1_out_carry__1_O_UNCONNECTED[3:1],in24[8]}),
        .S({1'b0,1'b0,1'b0,p_1_out_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__1_i_1
       (.I0(\z_e_reg_n_0_[7] ),
        .I1(\z_e_reg_n_0_[8] ),
        .O(p_1_out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    p_1_out_carry_i_1
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .O(p_1_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_2
       (.I0(\z_e_reg_n_0_[2] ),
        .I1(\z_e_reg_n_0_[3] ),
        .O(p_1_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_3
       (.I0(\z_e_reg_n_0_[1] ),
        .I1(\z_e_reg_n_0_[2] ),
        .O(p_1_out_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    p_1_out_carry_i_4
       (.I0(\z_e_reg_n_0_[1] ),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .O(p_1_out_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    p_1_out_carry_i_5
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(\z_e_reg_n_0_[0] ),
        .O(p_1_out_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hFF10FFFFFF100000)) 
    round_bit_i_1
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(guard_reg_n_0),
        .I3(round_bit_i_2_n_0),
        .I4(guard),
        .I5(round_bit_reg_n_0),
        .O(round_bit_i_1_n_0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    round_bit_i_2
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(\sum_reg_n_0_[2] ),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .O(round_bit_i_2_n_0));
  LUT6 #(
    .INIT(64'h0022222200040004)) 
    round_bit_i_3
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(\z_e[8]_i_5_n_0 ),
        .I3(state__0[0]),
        .I4(\z_m[23]_i_4_n_0 ),
        .I5(state__0[1]),
        .O(guard));
  FDRE #(
    .INIT(1'b0)) 
    round_bit_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(round_bit_i_1_n_0),
        .Q(round_bit_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000003)) 
    s_input_a_ack_i_1
       (.I0(B_STB),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(A_ACK),
        .O(s_input_a_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_input_a_ack_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(s_input_a_ack_i_1_n_0),
        .Q(A_ACK),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000030)) 
    s_input_b_ack_i_1
       (.I0(B_STB),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(B_ACK),
        .O(s_input_b_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_input_b_ack_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(s_input_b_ack_i_1_n_0),
        .Q(B_ACK),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \s_output_z[31]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[2]),
        .O(s_output_z_stb));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[10] ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[11] ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[12] ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[13] ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[14] ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[15] ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[16] ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[17] ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[18] ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[19] ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[20] ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[21] ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[22] ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[23] ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[24] ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[25] ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[26] ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[27] ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[28] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[28] ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[29] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[29] ),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[30] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[30] ),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[31] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[31] ),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[8] ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_output_z_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(\z_reg_n_0_[9] ),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_output_z_stb_i_1
       (.I0(Z_STB),
        .I1(Z_ACK_reg_0),
        .O(s_output_z_stb_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_output_z_stb_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(s_output_z_stb),
        .D(s_output_z_stb_i_1_n_0),
        .Q(Z_STB),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \state1_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__2/i__carry_n_0 ,\state1_inferred__2/i__carry_n_1 ,\state1_inferred__2/i__carry_n_2 ,\state1_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_state1_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \state1_inferred__2/i__carry__0 
       (.CI(\state1_inferred__2/i__carry_n_0 ),
        .CO({\NLW_state1_inferred__2/i__carry__0_CO_UNCONNECTED [3:1],p_4_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}),
        .O(\NLW_state1_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \state1_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__3/i__carry_n_0 ,\state1_inferred__3/i__carry_n_1 ,\state1_inferred__3/i__carry_n_2 ,\state1_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_state1_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \state1_inferred__3/i__carry__0 
       (.CI(\state1_inferred__3/i__carry_n_0 ),
        .CO({\NLW_state1_inferred__3/i__carry__0_CO_UNCONNECTED [3:1],\state1_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1__0_n_0}),
        .O(\NLW_state1_inferred__3/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state3_carry
       (.CI(1'b0),
        .CO({NLW_state3_carry_CO_UNCONNECTED[3],state320_in,state3_carry_n_2,state3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state3_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,state3_carry_i_1_n_0,state3_carry_i_2_n_0,state3_carry_i_3_n_0}));
  LUT3 #(
    .INIT(8'h08)) 
    state3_carry_i_1
       (.I0(\a_e_reg_n_0_[7] ),
        .I1(\a_e_reg_n_0_[8] ),
        .I2(\a_e_reg_n_0_[6] ),
        .O(state3_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    state3_carry_i_2
       (.I0(\a_e_reg_n_0_[3] ),
        .I1(\a_e_reg_n_0_[4] ),
        .I2(\a_e_reg_n_0_[5] ),
        .O(state3_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    state3_carry_i_3
       (.I0(\a_e_reg_n_0_[1] ),
        .I1(\a_e_reg_n_0_[0] ),
        .I2(\a_e_reg_n_0_[2] ),
        .O(state3_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \state3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_state3_inferred__0/i__carry_CO_UNCONNECTED [3],state317_in,\state3_inferred__0/i__carry_n_2 ,\state3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0}));
  LUT6 #(
    .INIT(64'hFFFFF5FF0000F400)) 
    sticky_i_1
       (.I0(state__0[2]),
        .I1(round_bit_reg_n_0),
        .I2(sticky_i_2_n_0),
        .I3(sticky_i_3_n_0),
        .I4(state__0[0]),
        .I5(sticky_reg_n_0),
        .O(sticky_i_1_n_0));
  LUT4 #(
    .INIT(16'h5444)) 
    sticky_i_2
       (.I0(state__0[3]),
        .I1(\sum_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(p_2_in),
        .O(sticky_i_2_n_0));
  LUT4 #(
    .INIT(16'h0C10)) 
    sticky_i_3
       (.I0(\z_e[8]_i_5_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .I3(state__0[2]),
        .O(sticky_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sticky_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(sticky_i_1_n_0),
        .Q(sticky_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sum[0]_i_1 
       (.I0(\a_m_reg_n_0_[0] ),
        .I1(\b_m_reg_n_0_[0] ),
        .O(sum0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_2 
       (.I0(\a_m_reg_n_0_[11] ),
        .I1(\b_m_reg_n_0_[11] ),
        .O(\sum[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_3 
       (.I0(\a_m_reg_n_0_[10] ),
        .I1(\b_m_reg_n_0_[10] ),
        .O(\sum[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_4 
       (.I0(\a_m_reg_n_0_[9] ),
        .I1(\b_m_reg_n_0_[9] ),
        .O(\sum[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_5 
       (.I0(\a_m_reg_n_0_[8] ),
        .I1(\b_m_reg_n_0_[8] ),
        .O(\sum[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_2 
       (.I0(\a_m_reg_n_0_[15] ),
        .I1(\b_m_reg_n_0_[15] ),
        .O(\sum[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_3 
       (.I0(\a_m_reg_n_0_[14] ),
        .I1(\b_m_reg_n_0_[14] ),
        .O(\sum[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_4 
       (.I0(\a_m_reg_n_0_[13] ),
        .I1(\b_m_reg_n_0_[13] ),
        .O(\sum[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_5 
       (.I0(\a_m_reg_n_0_[12] ),
        .I1(\b_m_reg_n_0_[12] ),
        .O(\sum[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_2 
       (.I0(\a_m_reg_n_0_[19] ),
        .I1(\b_m_reg_n_0_[19] ),
        .O(\sum[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_3 
       (.I0(\a_m_reg_n_0_[18] ),
        .I1(\b_m_reg_n_0_[18] ),
        .O(\sum[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_4 
       (.I0(\a_m_reg_n_0_[17] ),
        .I1(\b_m_reg_n_0_[17] ),
        .O(\sum[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_5 
       (.I0(\a_m_reg_n_0_[16] ),
        .I1(\b_m_reg_n_0_[16] ),
        .O(\sum[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_2 
       (.I0(\a_m_reg_n_0_[23] ),
        .I1(\b_m_reg_n_0_[23] ),
        .O(\sum[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_3 
       (.I0(\a_m_reg_n_0_[22] ),
        .I1(\b_m_reg_n_0_[22] ),
        .O(\sum[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_4 
       (.I0(\a_m_reg_n_0_[21] ),
        .I1(\b_m_reg_n_0_[21] ),
        .O(\sum[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_5 
       (.I0(\a_m_reg_n_0_[20] ),
        .I1(\b_m_reg_n_0_[20] ),
        .O(\sum[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \sum[27]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(sum));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_3 
       (.I0(\a_m_reg_n_0_[26] ),
        .I1(\b_m_reg_n_0_[26] ),
        .O(\sum[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_4 
       (.I0(\a_m_reg_n_0_[25] ),
        .I1(\b_m_reg_n_0_[25] ),
        .O(\sum[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_5 
       (.I0(\a_m_reg_n_0_[24] ),
        .I1(\b_m_reg_n_0_[24] ),
        .O(\sum[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_2 
       (.I0(\a_m_reg_n_0_[3] ),
        .I1(\b_m_reg_n_0_[3] ),
        .O(\sum[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_3 
       (.I0(\a_m_reg_n_0_[2] ),
        .I1(\b_m_reg_n_0_[2] ),
        .O(\sum[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_4 
       (.I0(\a_m_reg_n_0_[1] ),
        .I1(\b_m_reg_n_0_[1] ),
        .O(\sum[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_5 
       (.I0(\a_m_reg_n_0_[0] ),
        .I1(\b_m_reg_n_0_[0] ),
        .O(\sum[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_2 
       (.I0(\a_m_reg_n_0_[7] ),
        .I1(\b_m_reg_n_0_[7] ),
        .O(\sum[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_3 
       (.I0(\a_m_reg_n_0_[6] ),
        .I1(\b_m_reg_n_0_[6] ),
        .O(\sum[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_4 
       (.I0(\a_m_reg_n_0_[5] ),
        .I1(\b_m_reg_n_0_[5] ),
        .O(\sum[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_5 
       (.I0(\a_m_reg_n_0_[4] ),
        .I1(\b_m_reg_n_0_[4] ),
        .O(\sum[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[0]),
        .Q(\sum_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[10]),
        .Q(\sum_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[11]),
        .Q(\sum_reg_n_0_[11] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sum_reg[11]_i_1 
       (.CI(\sum_reg[7]_i_1_n_0 ),
        .CO({\sum_reg[11]_i_1_n_0 ,\sum_reg[11]_i_1_n_1 ,\sum_reg[11]_i_1_n_2 ,\sum_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\a_m_reg_n_0_[11] ,\a_m_reg_n_0_[10] ,\a_m_reg_n_0_[9] ,\a_m_reg_n_0_[8] }),
        .O(sum0_in[11:8]),
        .S({\sum[11]_i_2_n_0 ,\sum[11]_i_3_n_0 ,\sum[11]_i_4_n_0 ,\sum[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[12]),
        .Q(\sum_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[13]),
        .Q(\sum_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[14]),
        .Q(\sum_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[15]),
        .Q(\sum_reg_n_0_[15] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sum_reg[15]_i_1 
       (.CI(\sum_reg[11]_i_1_n_0 ),
        .CO({\sum_reg[15]_i_1_n_0 ,\sum_reg[15]_i_1_n_1 ,\sum_reg[15]_i_1_n_2 ,\sum_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\a_m_reg_n_0_[15] ,\a_m_reg_n_0_[14] ,\a_m_reg_n_0_[13] ,\a_m_reg_n_0_[12] }),
        .O(sum0_in[15:12]),
        .S({\sum[15]_i_2_n_0 ,\sum[15]_i_3_n_0 ,\sum[15]_i_4_n_0 ,\sum[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[16]),
        .Q(\sum_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[17]),
        .Q(\sum_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[18]),
        .Q(\sum_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[19]),
        .Q(\sum_reg_n_0_[19] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sum_reg[19]_i_1 
       (.CI(\sum_reg[15]_i_1_n_0 ),
        .CO({\sum_reg[19]_i_1_n_0 ,\sum_reg[19]_i_1_n_1 ,\sum_reg[19]_i_1_n_2 ,\sum_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\a_m_reg_n_0_[19] ,\a_m_reg_n_0_[18] ,\a_m_reg_n_0_[17] ,\a_m_reg_n_0_[16] }),
        .O(sum0_in[19:16]),
        .S({\sum[19]_i_2_n_0 ,\sum[19]_i_3_n_0 ,\sum[19]_i_4_n_0 ,\sum[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[20]),
        .Q(\sum_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[21]),
        .Q(\sum_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[22]),
        .Q(\sum_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[23]),
        .Q(\sum_reg_n_0_[23] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sum_reg[23]_i_1 
       (.CI(\sum_reg[19]_i_1_n_0 ),
        .CO({\sum_reg[23]_i_1_n_0 ,\sum_reg[23]_i_1_n_1 ,\sum_reg[23]_i_1_n_2 ,\sum_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\a_m_reg_n_0_[23] ,\a_m_reg_n_0_[22] ,\a_m_reg_n_0_[21] ,\a_m_reg_n_0_[20] }),
        .O(sum0_in[23:20]),
        .S({\sum[23]_i_2_n_0 ,\sum[23]_i_3_n_0 ,\sum[23]_i_4_n_0 ,\sum[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[24]),
        .Q(\sum_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[25]),
        .Q(\sum_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[26]),
        .Q(\sum_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[27]),
        .Q(p_2_in),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sum_reg[27]_i_2 
       (.CI(\sum_reg[23]_i_1_n_0 ),
        .CO({sum0_in[27],\NLW_sum_reg[27]_i_2_CO_UNCONNECTED [2],\sum_reg[27]_i_2_n_2 ,\sum_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\a_m_reg_n_0_[26] ,\a_m_reg_n_0_[25] ,\a_m_reg_n_0_[24] }),
        .O({\NLW_sum_reg[27]_i_2_O_UNCONNECTED [3],sum0_in[26:24]}),
        .S({1'b1,\sum[27]_i_3_n_0 ,\sum[27]_i_4_n_0 ,\sum[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[2]),
        .Q(\sum_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[3]),
        .Q(\sum_reg_n_0_[3] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sum_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg[3]_i_1_n_0 ,\sum_reg[3]_i_1_n_1 ,\sum_reg[3]_i_1_n_2 ,\sum_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\a_m_reg_n_0_[3] ,\a_m_reg_n_0_[2] ,\a_m_reg_n_0_[1] ,\a_m_reg_n_0_[0] }),
        .O({sum0_in[3:1],\NLW_sum_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\sum[3]_i_2_n_0 ,\sum[3]_i_3_n_0 ,\sum[3]_i_4_n_0 ,\sum[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[4]),
        .Q(\sum_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[5]),
        .Q(\sum_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[6]),
        .Q(\sum_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[7]),
        .Q(\sum_reg_n_0_[7] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \sum_reg[7]_i_1 
       (.CI(\sum_reg[3]_i_1_n_0 ),
        .CO({\sum_reg[7]_i_1_n_0 ,\sum_reg[7]_i_1_n_1 ,\sum_reg[7]_i_1_n_2 ,\sum_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\a_m_reg_n_0_[7] ,\a_m_reg_n_0_[6] ,\a_m_reg_n_0_[5] ,\a_m_reg_n_0_[4] }),
        .O(sum0_in[7:4]),
        .S({\sum[7]_i_2_n_0 ,\sum[7]_i_3_n_0 ,\sum[7]_i_4_n_0 ,\sum[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[8]),
        .Q(\sum_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sum),
        .D(sum0_in[9]),
        .Q(\sum_reg_n_0_[9] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \z2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_z2_inferred__0/i__carry_CO_UNCONNECTED [3],z2,\z2_inferred__0/i__carry_n_2 ,\z2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_z2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[0]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[3] ),
        .I2(\a_m_reg_n_0_[3] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[0]_i_2_n_0 ),
        .O(z0_in[0]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[0]_i_2 
       (.I0(\z_m_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[10]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[13] ),
        .I2(\a_m_reg_n_0_[13] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[10]_i_2_n_0 ),
        .O(z0_in[10]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[10]_i_2 
       (.I0(\z_m_reg_n_0_[10] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAFFEAAAAA)) 
    \z[11]_i_1 
       (.I0(\z[11]_i_2_n_0 ),
        .I1(\z[23]_i_3_n_0 ),
        .I2(\b_m_reg_n_0_[14] ),
        .I3(\a_m_reg_n_0_[14] ),
        .I4(\z[21]_i_3_n_0 ),
        .I5(\z[21]_i_4_n_0 ),
        .O(z0_in[11]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[11]_i_2 
       (.I0(\z_m_reg_n_0_[11] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAFFEAAAAA)) 
    \z[12]_i_1 
       (.I0(\z[12]_i_2_n_0 ),
        .I1(\z[23]_i_3_n_0 ),
        .I2(\b_m_reg_n_0_[15] ),
        .I3(\a_m_reg_n_0_[15] ),
        .I4(\z[21]_i_3_n_0 ),
        .I5(\z[21]_i_4_n_0 ),
        .O(z0_in[12]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[12]_i_2 
       (.I0(\z_m_reg_n_0_[12] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAFFEAAAAA)) 
    \z[13]_i_1 
       (.I0(\z[13]_i_2_n_0 ),
        .I1(\z[23]_i_3_n_0 ),
        .I2(\b_m_reg_n_0_[16] ),
        .I3(\a_m_reg_n_0_[16] ),
        .I4(\z[21]_i_3_n_0 ),
        .I5(\z[21]_i_4_n_0 ),
        .O(z0_in[13]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[13]_i_2 
       (.I0(\z_m_reg_n_0_[13] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAFFEAAAAA)) 
    \z[14]_i_1 
       (.I0(\z[14]_i_2_n_0 ),
        .I1(\z[23]_i_3_n_0 ),
        .I2(\b_m_reg_n_0_[17] ),
        .I3(\a_m_reg_n_0_[17] ),
        .I4(\z[21]_i_3_n_0 ),
        .I5(\z[21]_i_4_n_0 ),
        .O(z0_in[14]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[14]_i_2 
       (.I0(\z_m_reg_n_0_[14] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAFFEAAAAA)) 
    \z[15]_i_1 
       (.I0(\z[15]_i_2_n_0 ),
        .I1(\z[23]_i_3_n_0 ),
        .I2(\b_m_reg_n_0_[18] ),
        .I3(\a_m_reg_n_0_[18] ),
        .I4(\z[21]_i_3_n_0 ),
        .I5(\z[21]_i_4_n_0 ),
        .O(z0_in[15]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[15]_i_2 
       (.I0(\z_m_reg_n_0_[15] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAFFEAAAAA)) 
    \z[16]_i_1 
       (.I0(\z[16]_i_2_n_0 ),
        .I1(\z[23]_i_3_n_0 ),
        .I2(\b_m_reg_n_0_[19] ),
        .I3(\a_m_reg_n_0_[19] ),
        .I4(\z[21]_i_3_n_0 ),
        .I5(\z[21]_i_4_n_0 ),
        .O(z0_in[16]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[16]_i_2 
       (.I0(\z_m_reg_n_0_[16] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAFFEAAAAA)) 
    \z[17]_i_1 
       (.I0(\z[17]_i_2_n_0 ),
        .I1(\z[23]_i_3_n_0 ),
        .I2(\b_m_reg_n_0_[20] ),
        .I3(\a_m_reg_n_0_[20] ),
        .I4(\z[21]_i_3_n_0 ),
        .I5(\z[21]_i_4_n_0 ),
        .O(z0_in[17]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[17]_i_2 
       (.I0(\z_m_reg_n_0_[17] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAFFEAAAAA)) 
    \z[18]_i_1 
       (.I0(\z[18]_i_2_n_0 ),
        .I1(\z[23]_i_3_n_0 ),
        .I2(\b_m_reg_n_0_[21] ),
        .I3(\a_m_reg_n_0_[21] ),
        .I4(\z[21]_i_3_n_0 ),
        .I5(\z[21]_i_4_n_0 ),
        .O(z0_in[18]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[18]_i_2 
       (.I0(\z_m_reg_n_0_[18] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAAFFEAAAAA)) 
    \z[19]_i_1 
       (.I0(\z[19]_i_2_n_0 ),
        .I1(\z[23]_i_3_n_0 ),
        .I2(\b_m_reg_n_0_[22] ),
        .I3(\a_m_reg_n_0_[22] ),
        .I4(\z[21]_i_3_n_0 ),
        .I5(\z[21]_i_4_n_0 ),
        .O(z0_in[19]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[19]_i_2 
       (.I0(\z_m_reg_n_0_[19] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[1]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[4] ),
        .I2(\a_m_reg_n_0_[4] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[1]_i_2_n_0 ),
        .O(z0_in[1]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[1]_i_2 
       (.I0(\z_m_reg_n_0_[1] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[20]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[23] ),
        .I2(\a_m_reg_n_0_[23] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[20]_i_2_n_0 ),
        .O(z0_in[20]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[20]_i_2 
       (.I0(\z_m_reg_n_0_[20] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAAEAAEEEAAAA)) 
    \z[21]_i_1 
       (.I0(\z[21]_i_2_n_0 ),
        .I1(\z[21]_i_3_n_0 ),
        .I2(\z[23]_i_3_n_0 ),
        .I3(\z[21]_i_4_n_0 ),
        .I4(\a_m_reg_n_0_[24] ),
        .I5(\b_m_reg_n_0_[24] ),
        .O(z0_in[21]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[21]_i_2 
       (.I0(\z_m_reg_n_0_[21] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[21]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \z[21]_i_3 
       (.I0(\z[27]_i_3_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .O(\z[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \z[21]_i_4 
       (.I0(state317_in),
        .I1(\z[31]_i_5_n_0 ),
        .O(\z[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \z[22]_i_1 
       (.I0(\z[22]_i_2_n_0 ),
        .I1(\z_m_reg_n_0_[22] ),
        .I2(\z[22]_i_3_n_0 ),
        .I3(z0_in[31]),
        .O(z0_in[22]));
  LUT6 #(
    .INIT(64'h2020200020002000)) 
    \z[22]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(\z[27]_i_3_n_0 ),
        .I3(\a_m_reg_n_0_[25] ),
        .I4(\b_m_reg_n_0_[25] ),
        .I5(\z[23]_i_3_n_0 ),
        .O(\z[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \z[22]_i_3 
       (.I0(\z_e_reg_n_0_[8] ),
        .I1(\z_e_reg_n_0_[7] ),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .O(\z[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFBFBFAAAAAAAA)) 
    \z[23]_i_1 
       (.I0(\z[23]_i_2_n_0 ),
        .I1(\a_e_reg_n_0_[0] ),
        .I2(\z[27]_i_3_n_0 ),
        .I3(\b_e_reg_n_0_[0] ),
        .I4(\z[23]_i_3_n_0 ),
        .I5(\z[28]_i_6_n_0 ),
        .O(z0_in[23]));
  LUT6 #(
    .INIT(64'h20222022AAAA2022)) 
    \z[23]_i_2 
       (.I0(\z[28]_i_4_n_0 ),
        .I1(\z_e_reg_n_0_[0] ),
        .I2(\z_m_reg_n_0_[23] ),
        .I3(z2),
        .I4(\z_e_reg_n_0_[7] ),
        .I5(\z_e_reg_n_0_[8] ),
        .O(\z[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \z[23]_i_3 
       (.I0(state320_in),
        .I1(\z[23]_i_4_n_0 ),
        .I2(\a_m_reg_n_0_[26] ),
        .I3(\a_m_reg_n_0_[5] ),
        .I4(\a_m_reg_n_0_[25] ),
        .I5(\z[31]_i_8_n_0 ),
        .O(\z[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \z[23]_i_4 
       (.I0(\z[23]_i_5_n_0 ),
        .I1(\a_m_reg_n_0_[17] ),
        .I2(\a_m_reg_n_0_[23] ),
        .I3(\z[23]_i_6_n_0 ),
        .I4(\z[31]_i_16_n_0 ),
        .I5(\z[23]_i_7_n_0 ),
        .O(\z[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \z[23]_i_5 
       (.I0(\a_m_reg_n_0_[0] ),
        .I1(\a_m_reg_n_0_[1] ),
        .O(\z[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \z[23]_i_6 
       (.I0(\a_m_reg_n_0_[11] ),
        .I1(\a_m_reg_n_0_[18] ),
        .I2(\a_m_reg_n_0_[2] ),
        .I3(\a_m_reg_n_0_[21] ),
        .O(\z[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \z[23]_i_7 
       (.I0(\a_m_reg_n_0_[13] ),
        .I1(\a_m_reg_n_0_[24] ),
        .I2(\a_m_reg_n_0_[6] ),
        .I3(\a_m_reg_n_0_[9] ),
        .O(\z[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEB0000)) 
    \z[24]_i_1 
       (.I0(\z[30]_i_2_n_0 ),
        .I1(\z_e_reg_n_0_[1] ),
        .I2(\z_e_reg_n_0_[0] ),
        .I3(\z[28]_i_3_n_0 ),
        .I4(\z[28]_i_4_n_0 ),
        .I5(\z[24]_i_2_n_0 ),
        .O(z0_in[24]));
  LUT6 #(
    .INIT(64'hAA2A222A222AAA2A)) 
    \z[24]_i_2 
       (.I0(\z[28]_i_6_n_0 ),
        .I1(\z[27]_i_3_n_0 ),
        .I2(\z[24]_i_3_n_0 ),
        .I3(\z[23]_i_3_n_0 ),
        .I4(\b_e_reg_n_0_[1] ),
        .I5(\b_e_reg_n_0_[0] ),
        .O(\z[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \z[24]_i_3 
       (.I0(\a_e_reg_n_0_[0] ),
        .I1(\a_e_reg_n_0_[1] ),
        .O(\z[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0055F355)) 
    \z[25]_i_1 
       (.I0(\z[25]_i_2_n_0 ),
        .I1(\z[27]_i_3_n_0 ),
        .I2(\z[25]_i_3_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .O(z0_in[25]));
  LUT6 #(
    .INIT(64'h1114111455551114)) 
    \z[25]_i_2 
       (.I0(\z[30]_i_2_n_0 ),
        .I1(\z_e_reg_n_0_[2] ),
        .I2(\z_e_reg_n_0_[0] ),
        .I3(\z_e_reg_n_0_[1] ),
        .I4(z2),
        .I5(\z_m_reg_n_0_[23] ),
        .O(\z[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA9FFA900A900A9FF)) 
    \z[25]_i_3 
       (.I0(\b_e_reg_n_0_[2] ),
        .I1(\b_e_reg_n_0_[1] ),
        .I2(\b_e_reg_n_0_[0] ),
        .I3(\z[23]_i_3_n_0 ),
        .I4(\a_e_reg_n_0_[2] ),
        .I5(\z[25]_i_4_n_0 ),
        .O(\z[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \z[25]_i_4 
       (.I0(\a_e_reg_n_0_[0] ),
        .I1(\a_e_reg_n_0_[1] ),
        .O(\z[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00EE0FEE)) 
    \z[26]_i_1 
       (.I0(\z[30]_i_2_n_0 ),
        .I1(\z[26]_i_2_n_0 ),
        .I2(\z[26]_i_3_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .O(z0_in[26]));
  LUT6 #(
    .INIT(64'hBBBBBBB00000000B)) 
    \z[26]_i_2 
       (.I0(\z_m_reg_n_0_[23] ),
        .I1(z2),
        .I2(\z_e_reg_n_0_[2] ),
        .I3(\z_e_reg_n_0_[0] ),
        .I4(\z_e_reg_n_0_[1] ),
        .I5(\z_e_reg_n_0_[3] ),
        .O(\z[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA2800280028AA28)) 
    \z[26]_i_3 
       (.I0(\z[27]_i_3_n_0 ),
        .I1(\z[27]_i_5_n_0 ),
        .I2(\a_e_reg_n_0_[3] ),
        .I3(\z[23]_i_3_n_0 ),
        .I4(\z[26]_i_4_n_0 ),
        .I5(\b_e_reg_n_0_[3] ),
        .O(\z[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \z[26]_i_4 
       (.I0(\b_e_reg_n_0_[2] ),
        .I1(\b_e_reg_n_0_[1] ),
        .I2(\b_e_reg_n_0_[0] ),
        .O(\z[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE0FFE0E0E0E0)) 
    \z[27]_i_1 
       (.I0(\z[30]_i_2_n_0 ),
        .I1(\z[27]_i_2_n_0 ),
        .I2(\z[28]_i_4_n_0 ),
        .I3(\z[27]_i_3_n_0 ),
        .I4(\z[27]_i_4_n_0 ),
        .I5(\z[28]_i_6_n_0 ),
        .O(z0_in[27]));
  LUT6 #(
    .INIT(64'h5555555400000001)) 
    \z[27]_i_2 
       (.I0(\z[28]_i_3_n_0 ),
        .I1(\z_e_reg_n_0_[3] ),
        .I2(\z_e_reg_n_0_[1] ),
        .I3(\z_e_reg_n_0_[0] ),
        .I4(\z_e_reg_n_0_[2] ),
        .I5(\z_e_reg_n_0_[4] ),
        .O(\z[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \z[27]_i_3 
       (.I0(\b_e_reg_n_0_[7] ),
        .I1(\b_e_reg_n_0_[6] ),
        .I2(\z[31]_i_14_n_0 ),
        .I3(\b_e_reg_n_0_[8] ),
        .I4(\z[31]_i_3_n_0 ),
        .O(\z[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F909F90909F)) 
    \z[27]_i_4 
       (.I0(\b_e_reg_n_0_[4] ),
        .I1(\z[28]_i_8_n_0 ),
        .I2(\z[23]_i_3_n_0 ),
        .I3(\a_e_reg_n_0_[4] ),
        .I4(\z[27]_i_5_n_0 ),
        .I5(\a_e_reg_n_0_[3] ),
        .O(\z[27]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \z[27]_i_5 
       (.I0(\a_e_reg_n_0_[2] ),
        .I1(\a_e_reg_n_0_[1] ),
        .I2(\a_e_reg_n_0_[0] ),
        .O(\z[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAB00FFFFAB00AB00)) 
    \z[28]_i_1 
       (.I0(\z[30]_i_2_n_0 ),
        .I1(\z[28]_i_2_n_0 ),
        .I2(\z[28]_i_3_n_0 ),
        .I3(\z[28]_i_4_n_0 ),
        .I4(\z[28]_i_5_n_0 ),
        .I5(\z[28]_i_6_n_0 ),
        .O(z0_in[28]));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \z[28]_i_2 
       (.I0(\z_e_reg_n_0_[5] ),
        .I1(\z_e_reg_n_0_[4] ),
        .I2(\z_e_reg_n_0_[3] ),
        .I3(\z_e_reg_n_0_[1] ),
        .I4(\z_e_reg_n_0_[0] ),
        .I5(\z_e_reg_n_0_[2] ),
        .O(\z[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \z[28]_i_3 
       (.I0(z2),
        .I1(\z_m_reg_n_0_[23] ),
        .O(\z[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \z[28]_i_4 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\z[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h020202A2A2A2A202)) 
    \z[28]_i_5 
       (.I0(\z[27]_i_3_n_0 ),
        .I1(\z[28]_i_7_n_0 ),
        .I2(\z[23]_i_3_n_0 ),
        .I3(\b_e_reg_n_0_[4] ),
        .I4(\z[28]_i_8_n_0 ),
        .I5(\b_e_reg_n_0_[5] ),
        .O(\z[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \z[28]_i_6 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .O(\z[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \z[28]_i_7 
       (.I0(\a_e_reg_n_0_[5] ),
        .I1(\a_e_reg_n_0_[2] ),
        .I2(\a_e_reg_n_0_[1] ),
        .I3(\a_e_reg_n_0_[0] ),
        .I4(\a_e_reg_n_0_[3] ),
        .I5(\a_e_reg_n_0_[4] ),
        .O(\z[28]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \z[28]_i_8 
       (.I0(\b_e_reg_n_0_[3] ),
        .I1(\b_e_reg_n_0_[0] ),
        .I2(\b_e_reg_n_0_[1] ),
        .I3(\b_e_reg_n_0_[2] ),
        .O(\z[28]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00EE0FEE)) 
    \z[29]_i_1 
       (.I0(\z[30]_i_2_n_0 ),
        .I1(\z[29]_i_2_n_0 ),
        .I2(\z[29]_i_3_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .O(z0_in[29]));
  LUT6 #(
    .INIT(64'h5555555400000001)) 
    \z[29]_i_2 
       (.I0(\z[28]_i_3_n_0 ),
        .I1(\z_e_reg_n_0_[5] ),
        .I2(\z_e_reg_n_0_[4] ),
        .I3(\z_e_reg_n_0_[3] ),
        .I4(\z[29]_i_4_n_0 ),
        .I5(\z_e_reg_n_0_[6] ),
        .O(\z[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA2800280028AA28)) 
    \z[29]_i_3 
       (.I0(\z[27]_i_3_n_0 ),
        .I1(\z[31]_i_7_n_0 ),
        .I2(\a_e_reg_n_0_[6] ),
        .I3(\z[23]_i_3_n_0 ),
        .I4(\z[31]_i_14_n_0 ),
        .I5(\b_e_reg_n_0_[6] ),
        .O(\z[29]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \z[29]_i_4 
       (.I0(\z_e_reg_n_0_[2] ),
        .I1(\z_e_reg_n_0_[0] ),
        .I2(\z_e_reg_n_0_[1] ),
        .O(\z[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[2]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[5] ),
        .I2(\a_m_reg_n_0_[5] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[2]_i_2_n_0 ),
        .O(z0_in[2]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[2]_i_2 
       (.I0(\z_m_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00EE0FEE)) 
    \z[30]_i_1 
       (.I0(\z[30]_i_2_n_0 ),
        .I1(\z[30]_i_3_n_0 ),
        .I2(\z[30]_i_4_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .O(z0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \z[30]_i_2 
       (.I0(\z_e_reg_n_0_[7] ),
        .I1(\z_e_reg_n_0_[8] ),
        .O(\z[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000B0BBBBBB0B)) 
    \z[30]_i_3 
       (.I0(\z_m_reg_n_0_[23] ),
        .I1(z2),
        .I2(\FSM_sequential_state[3]_i_9_n_0 ),
        .I3(\z_e_reg_n_0_[0] ),
        .I4(\z_e_reg_n_0_[1] ),
        .I5(\z_e_reg_n_0_[7] ),
        .O(\z[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA20202A2A202A202)) 
    \z[30]_i_4 
       (.I0(\z[27]_i_3_n_0 ),
        .I1(\z[30]_i_5_n_0 ),
        .I2(\z[23]_i_3_n_0 ),
        .I3(\b_e_reg_n_0_[7] ),
        .I4(\b_e_reg_n_0_[6] ),
        .I5(\z[31]_i_14_n_0 ),
        .O(\z[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \z[30]_i_5 
       (.I0(\a_e_reg_n_0_[7] ),
        .I1(\a_e_reg_n_0_[3] ),
        .I2(\a_e_reg_n_0_[4] ),
        .I3(\a_e_reg_n_0_[5] ),
        .I4(\z[27]_i_5_n_0 ),
        .I5(\a_e_reg_n_0_[6] ),
        .O(\z[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h14001000)) 
    \z[31]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(z));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \z[31]_i_10 
       (.I0(\a_m_reg_n_0_[21] ),
        .I1(\a_m_reg_n_0_[2] ),
        .I2(\a_m_reg_n_0_[18] ),
        .I3(\a_m_reg_n_0_[11] ),
        .I4(\z[31]_i_17_n_0 ),
        .O(\z[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \z[31]_i_11 
       (.I0(\b_m_reg_n_0_[14] ),
        .I1(\b_m_reg_n_0_[15] ),
        .I2(\b_m_reg_n_0_[21] ),
        .I3(\b_m_reg_n_0_[4] ),
        .I4(\z[31]_i_18_n_0 ),
        .O(\z[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \z[31]_i_12 
       (.I0(\b_m_reg_n_0_[16] ),
        .I1(\b_m_reg_n_0_[8] ),
        .I2(\b_m_reg_n_0_[10] ),
        .I3(\b_m_reg_n_0_[12] ),
        .I4(\z[31]_i_19_n_0 ),
        .O(\z[31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \z[31]_i_13 
       (.I0(\b_m_reg_n_0_[6] ),
        .I1(\b_m_reg_n_0_[18] ),
        .I2(\b_m_reg_n_0_[23] ),
        .I3(\b_m_reg_n_0_[7] ),
        .I4(\z[31]_i_20_n_0 ),
        .O(\z[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \z[31]_i_14 
       (.I0(\b_e_reg_n_0_[0] ),
        .I1(\b_e_reg_n_0_[1] ),
        .I2(\b_e_reg_n_0_[2] ),
        .I3(\b_e_reg_n_0_[3] ),
        .I4(\b_e_reg_n_0_[4] ),
        .I5(\b_e_reg_n_0_[5] ),
        .O(\z[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \z[31]_i_15 
       (.I0(\a_m_reg_n_0_[10] ),
        .I1(\a_m_reg_n_0_[19] ),
        .I2(\a_m_reg_n_0_[8] ),
        .I3(\a_m_reg_n_0_[22] ),
        .O(\z[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \z[31]_i_16 
       (.I0(\a_m_reg_n_0_[14] ),
        .I1(\a_m_reg_n_0_[16] ),
        .I2(\a_m_reg_n_0_[3] ),
        .I3(\a_m_reg_n_0_[4] ),
        .O(\z[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \z[31]_i_17 
       (.I0(\a_m_reg_n_0_[1] ),
        .I1(\a_m_reg_n_0_[0] ),
        .I2(\a_m_reg_n_0_[17] ),
        .I3(\a_m_reg_n_0_[23] ),
        .O(\z[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \z[31]_i_18 
       (.I0(\b_m_reg_n_0_[25] ),
        .I1(\b_m_reg_n_0_[9] ),
        .I2(\b_m_reg_n_0_[22] ),
        .I3(\b_m_reg_n_0_[24] ),
        .O(\z[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \z[31]_i_19 
       (.I0(\b_m_reg_n_0_[2] ),
        .I1(\b_m_reg_n_0_[5] ),
        .I2(\b_m_reg_n_0_[11] ),
        .I3(\b_m_reg_n_0_[13] ),
        .O(\z[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h4000400040004444)) 
    \z[31]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(\z[31]_i_3_n_0 ),
        .I3(\z[31]_i_4_n_0 ),
        .I4(\z[31]_i_5_n_0 ),
        .I5(\z[31]_i_6_n_0 ),
        .O(z0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \z[31]_i_20 
       (.I0(\b_m_reg_n_0_[1] ),
        .I1(\b_m_reg_n_0_[0] ),
        .I2(\b_m_reg_n_0_[3] ),
        .I3(\b_m_reg_n_0_[19] ),
        .O(\z[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \z[31]_i_3 
       (.I0(\a_e_reg_n_0_[8] ),
        .I1(\z[31]_i_7_n_0 ),
        .I2(\a_e_reg_n_0_[6] ),
        .I3(\a_e_reg_n_0_[7] ),
        .O(\z[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \z[31]_i_4 
       (.I0(\z[31]_i_8_n_0 ),
        .I1(\a_m_reg_n_0_[25] ),
        .I2(\a_m_reg_n_0_[5] ),
        .I3(\a_m_reg_n_0_[26] ),
        .I4(\z[31]_i_9_n_0 ),
        .I5(\z[31]_i_10_n_0 ),
        .O(\z[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \z[31]_i_5 
       (.I0(\z[31]_i_11_n_0 ),
        .I1(\b_m_reg_n_0_[17] ),
        .I2(\b_m_reg_n_0_[20] ),
        .I3(\b_m_reg_n_0_[26] ),
        .I4(\z[31]_i_12_n_0 ),
        .I5(\z[31]_i_13_n_0 ),
        .O(\z[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \z[31]_i_6 
       (.I0(\b_e_reg_n_0_[8] ),
        .I1(\z[31]_i_14_n_0 ),
        .I2(\b_e_reg_n_0_[6] ),
        .I3(\b_e_reg_n_0_[7] ),
        .O(\z[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \z[31]_i_7 
       (.I0(\a_e_reg_n_0_[3] ),
        .I1(\a_e_reg_n_0_[4] ),
        .I2(\a_e_reg_n_0_[5] ),
        .I3(\a_e_reg_n_0_[0] ),
        .I4(\a_e_reg_n_0_[1] ),
        .I5(\a_e_reg_n_0_[2] ),
        .O(\z[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \z[31]_i_8 
       (.I0(\a_m_reg_n_0_[15] ),
        .I1(\a_m_reg_n_0_[7] ),
        .I2(\a_m_reg_n_0_[20] ),
        .I3(\a_m_reg_n_0_[12] ),
        .I4(\z[31]_i_15_n_0 ),
        .O(\z[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \z[31]_i_9 
       (.I0(\a_m_reg_n_0_[9] ),
        .I1(\a_m_reg_n_0_[6] ),
        .I2(\a_m_reg_n_0_[24] ),
        .I3(\a_m_reg_n_0_[13] ),
        .I4(\z[31]_i_16_n_0 ),
        .O(\z[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[3]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[6] ),
        .I2(\a_m_reg_n_0_[6] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[3]_i_2_n_0 ),
        .O(z0_in[3]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[3]_i_2 
       (.I0(\z_m_reg_n_0_[3] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[4]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[7] ),
        .I2(\a_m_reg_n_0_[7] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[4]_i_2_n_0 ),
        .O(z0_in[4]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[4]_i_2 
       (.I0(\z_m_reg_n_0_[4] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[5]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[8] ),
        .I2(\a_m_reg_n_0_[8] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[5]_i_2_n_0 ),
        .O(z0_in[5]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[5]_i_2 
       (.I0(\z_m_reg_n_0_[5] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[6]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[9] ),
        .I2(\a_m_reg_n_0_[9] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[6]_i_2_n_0 ),
        .O(z0_in[6]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[6]_i_2 
       (.I0(\z_m_reg_n_0_[6] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[7]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[10] ),
        .I2(\a_m_reg_n_0_[10] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[7]_i_2_n_0 ),
        .O(z0_in[7]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[7]_i_2 
       (.I0(\z_m_reg_n_0_[7] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[8]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[11] ),
        .I2(\a_m_reg_n_0_[11] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[8]_i_2_n_0 ),
        .O(z0_in[8]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[8]_i_2 
       (.I0(\z_m_reg_n_0_[8] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5000F800)) 
    \z[9]_i_1 
       (.I0(\z[23]_i_3_n_0 ),
        .I1(\b_m_reg_n_0_[12] ),
        .I2(\a_m_reg_n_0_[12] ),
        .I3(\z[21]_i_3_n_0 ),
        .I4(\z[21]_i_4_n_0 ),
        .I5(\z[9]_i_2_n_0 ),
        .O(z0_in[9]));
  LUT5 #(
    .INIT(32'h02020002)) 
    \z[9]_i_2 
       (.I0(\z_m_reg_n_0_[9] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\z_e_reg_n_0_[7] ),
        .I4(\z_e_reg_n_0_[8] ),
        .O(\z[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4C4F4C40)) 
    \z_e[0]_i_1 
       (.I0(state__0[2]),
        .I1(in24[0]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\a_e_reg_n_0_[0] ),
        .O(\z_e[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4C4F4C40)) 
    \z_e[1]_i_1 
       (.I0(state__0[2]),
        .I1(in24[1]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\a_e_reg_n_0_[1] ),
        .O(\z_e[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4C4F4C40)) 
    \z_e[2]_i_1 
       (.I0(state__0[2]),
        .I1(in24[2]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\a_e_reg_n_0_[2] ),
        .O(\z_e[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4C4F4C40)) 
    \z_e[3]_i_1 
       (.I0(state__0[2]),
        .I1(in24[3]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\a_e_reg_n_0_[3] ),
        .O(\z_e[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4C4F4C40)) 
    \z_e[4]_i_1 
       (.I0(state__0[2]),
        .I1(in24[4]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\a_e_reg_n_0_[4] ),
        .O(\z_e[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4C4F4C40)) 
    \z_e[5]_i_1 
       (.I0(state__0[2]),
        .I1(in24[5]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\a_e_reg_n_0_[5] ),
        .O(\z_e[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4C4F4C40)) 
    \z_e[6]_i_1 
       (.I0(state__0[2]),
        .I1(in24[6]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\a_e_reg_n_0_[6] ),
        .O(\z_e[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4C4F4C40)) 
    \z_e[7]_i_1 
       (.I0(state__0[2]),
        .I1(in24[7]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\a_e_reg_n_0_[7] ),
        .O(\z_e[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \z_e[8]_i_10 
       (.I0(\z_m_reg_n_0_[4] ),
        .I1(\z_m_reg_n_0_[8] ),
        .I2(\z_m_reg_n_0_[23] ),
        .I3(\z_m_reg_n_0_[22] ),
        .I4(\z_m_reg_n_0_[20] ),
        .I5(\z_m_reg_n_0_[14] ),
        .O(\z_e[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \z_e[8]_i_11 
       (.I0(\z_m_reg_n_0_[16] ),
        .I1(\z_m_reg_n_0_[1] ),
        .I2(\z_m_reg_n_0_[15] ),
        .I3(\z_m_reg_n_0_[21] ),
        .O(\z_e[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h4C4F4C40)) 
    \z_e[8]_i_2 
       (.I0(state__0[2]),
        .I1(in24[8]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\a_e_reg_n_0_[8] ),
        .O(\z_e[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30040004)) 
    \z_e[8]_i_3 
       (.I0(\z_e[8]_i_5_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(p_2_in),
        .O(\z_e[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0C5D0CFF0C)) 
    \z_e[8]_i_4 
       (.I0(\z_m[23]_i_4_n_0 ),
        .I1(\z_e[8]_i_6_n_0 ),
        .I2(\z_e[8]_i_7_n_0 ),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(state__0[3]),
        .O(\z_e[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \z_e[8]_i_5 
       (.I0(\FSM_sequential_state[3]_i_9_n_0 ),
        .I1(\z_e_reg_n_0_[1] ),
        .I2(\z_e_reg_n_0_[7] ),
        .I3(\z_e_reg_n_0_[8] ),
        .O(\z_e[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \z_e[8]_i_6 
       (.I0(\z_e[8]_i_8_n_0 ),
        .I1(\z_m_reg_n_0_[6] ),
        .I2(\z_m_reg_n_0_[3] ),
        .I3(\z_m_reg_n_0_[13] ),
        .I4(\z_m_reg_n_0_[9] ),
        .I5(\z_e[8]_i_9_n_0 ),
        .O(\z_e[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \z_e[8]_i_7 
       (.I0(\z_e[8]_i_10_n_0 ),
        .I1(\z_e[8]_i_11_n_0 ),
        .I2(\z_m_reg_n_0_[5] ),
        .I3(\z_m_reg_n_0_[2] ),
        .I4(\z_m_reg_n_0_[19] ),
        .I5(\z_m_reg_n_0_[7] ),
        .O(\z_e[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \z_e[8]_i_8 
       (.I0(\z_m_reg_n_0_[18] ),
        .I1(\z_m_reg_n_0_[0] ),
        .I2(\z_m_reg_n_0_[17] ),
        .I3(guard_reg_n_0),
        .O(\z_e[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \z_e[8]_i_9 
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(\z_m_reg_n_0_[11] ),
        .I4(\z_m_reg_n_0_[12] ),
        .I5(\z_m_reg_n_0_[10] ),
        .O(\z_e[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \z_e_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_e),
        .D(\z_e[0]_i_1_n_0 ),
        .Q(\z_e_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_e_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_e),
        .D(\z_e[1]_i_1_n_0 ),
        .Q(\z_e_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_e_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_e),
        .D(\z_e[2]_i_1_n_0 ),
        .Q(\z_e_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_e_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_e),
        .D(\z_e[3]_i_1_n_0 ),
        .Q(\z_e_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_e_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_e),
        .D(\z_e[4]_i_1_n_0 ),
        .Q(\z_e_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_e_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_e),
        .D(\z_e[5]_i_1_n_0 ),
        .Q(\z_e_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_e_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_e),
        .D(\z_e[6]_i_1_n_0 ),
        .Q(\z_e_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_e_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_e),
        .D(\z_e[7]_i_1_n_0 ),
        .Q(\z_e_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_e_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_e),
        .D(\z_e[8]_i_2_n_0 ),
        .Q(\z_e_reg_n_0_[8] ),
        .R(1'b0));
  MUXF7 \z_e_reg[8]_i_1 
       (.I0(\z_e[8]_i_3_n_0 ),
        .I1(\z_e[8]_i_4_n_0 ),
        .O(z_e),
        .S(state__0[0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 z_m0_carry
       (.CI(1'b0),
        .CO({z_m0_carry_n_0,z_m0_carry_n_1,z_m0_carry_n_2,z_m0_carry_n_3}),
        .CYINIT(\z_m_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in21[4:1]),
        .S({\z_m_reg_n_0_[4] ,\z_m_reg_n_0_[3] ,\z_m_reg_n_0_[2] ,\z_m_reg_n_0_[1] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 z_m0_carry__0
       (.CI(z_m0_carry_n_0),
        .CO({z_m0_carry__0_n_0,z_m0_carry__0_n_1,z_m0_carry__0_n_2,z_m0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in21[8:5]),
        .S({\z_m_reg_n_0_[8] ,\z_m_reg_n_0_[7] ,\z_m_reg_n_0_[6] ,\z_m_reg_n_0_[5] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 z_m0_carry__1
       (.CI(z_m0_carry__0_n_0),
        .CO({z_m0_carry__1_n_0,z_m0_carry__1_n_1,z_m0_carry__1_n_2,z_m0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in21[12:9]),
        .S({\z_m_reg_n_0_[12] ,\z_m_reg_n_0_[11] ,\z_m_reg_n_0_[10] ,\z_m_reg_n_0_[9] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 z_m0_carry__2
       (.CI(z_m0_carry__1_n_0),
        .CO({z_m0_carry__2_n_0,z_m0_carry__2_n_1,z_m0_carry__2_n_2,z_m0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in21[16:13]),
        .S({\z_m_reg_n_0_[16] ,\z_m_reg_n_0_[15] ,\z_m_reg_n_0_[14] ,\z_m_reg_n_0_[13] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 z_m0_carry__3
       (.CI(z_m0_carry__2_n_0),
        .CO({z_m0_carry__3_n_0,z_m0_carry__3_n_1,z_m0_carry__3_n_2,z_m0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in21[20:17]),
        .S({\z_m_reg_n_0_[20] ,\z_m_reg_n_0_[19] ,\z_m_reg_n_0_[18] ,\z_m_reg_n_0_[17] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 z_m0_carry__4
       (.CI(z_m0_carry__3_n_0),
        .CO({NLW_z_m0_carry__4_CO_UNCONNECTED[3:2],z_m0_carry__4_n_2,z_m0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_z_m0_carry__4_O_UNCONNECTED[3],in21[23:21]}),
        .S({1'b0,\z_m_reg_n_0_[23] ,\z_m_reg_n_0_[22] ,\z_m_reg_n_0_[21] }));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \z_m[0]_i_1 
       (.I0(\z_m_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[1] ),
        .I3(state__0[3]),
        .I4(\z_m[0]_i_2_n_0 ),
        .O(\z_m[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[0]_i_2 
       (.I0(guard_reg_n_0),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[4] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[3] ),
        .O(\z_m[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[10]_i_1 
       (.I0(in21[10]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[11] ),
        .I3(state__0[3]),
        .I4(\z_m[10]_i_2_n_0 ),
        .O(\z_m[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[10]_i_2 
       (.I0(\z_m_reg_n_0_[9] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[14] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[13] ),
        .O(\z_m[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[11]_i_1 
       (.I0(in21[11]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[12] ),
        .I3(state__0[3]),
        .I4(\z_m[11]_i_2_n_0 ),
        .O(\z_m[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[11]_i_2 
       (.I0(\z_m_reg_n_0_[10] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[15] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[14] ),
        .O(\z_m[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[12]_i_1 
       (.I0(in21[12]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[13] ),
        .I3(state__0[3]),
        .I4(\z_m[12]_i_2_n_0 ),
        .O(\z_m[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[12]_i_2 
       (.I0(\z_m_reg_n_0_[11] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[16] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[15] ),
        .O(\z_m[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[13]_i_1 
       (.I0(in21[13]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[14] ),
        .I3(state__0[3]),
        .I4(\z_m[13]_i_2_n_0 ),
        .O(\z_m[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[13]_i_2 
       (.I0(\z_m_reg_n_0_[12] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[17] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[16] ),
        .O(\z_m[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[14]_i_1 
       (.I0(in21[14]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[15] ),
        .I3(state__0[3]),
        .I4(\z_m[14]_i_2_n_0 ),
        .O(\z_m[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[14]_i_2 
       (.I0(\z_m_reg_n_0_[13] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[18] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[17] ),
        .O(\z_m[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[15]_i_1 
       (.I0(in21[15]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[16] ),
        .I3(state__0[3]),
        .I4(\z_m[15]_i_2_n_0 ),
        .O(\z_m[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[15]_i_2 
       (.I0(\z_m_reg_n_0_[14] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[19] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[18] ),
        .O(\z_m[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[16]_i_1 
       (.I0(in21[16]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[17] ),
        .I3(state__0[3]),
        .I4(\z_m[16]_i_2_n_0 ),
        .O(\z_m[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[16]_i_2 
       (.I0(\z_m_reg_n_0_[15] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[20] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[19] ),
        .O(\z_m[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[17]_i_1 
       (.I0(in21[17]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[18] ),
        .I3(state__0[3]),
        .I4(\z_m[17]_i_2_n_0 ),
        .O(\z_m[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[17]_i_2 
       (.I0(\z_m_reg_n_0_[16] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[21] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[20] ),
        .O(\z_m[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[18]_i_1 
       (.I0(in21[18]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[19] ),
        .I3(state__0[3]),
        .I4(\z_m[18]_i_2_n_0 ),
        .O(\z_m[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[18]_i_2 
       (.I0(\z_m_reg_n_0_[17] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[22] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[21] ),
        .O(\z_m[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[19]_i_1 
       (.I0(in21[19]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[20] ),
        .I3(state__0[3]),
        .I4(\z_m[19]_i_2_n_0 ),
        .O(\z_m[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[19]_i_2 
       (.I0(\z_m_reg_n_0_[18] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[23] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[22] ),
        .O(\z_m[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[1]_i_1 
       (.I0(in21[1]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[2] ),
        .I3(state__0[3]),
        .I4(\z_m[1]_i_2_n_0 ),
        .O(\z_m[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[1]_i_2 
       (.I0(\z_m_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[5] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[4] ),
        .O(\z_m[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[20]_i_1 
       (.I0(in21[20]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[21] ),
        .I3(state__0[3]),
        .I4(\z_m[20]_i_2_n_0 ),
        .O(\z_m[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[20]_i_2 
       (.I0(\z_m_reg_n_0_[19] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[24] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[23] ),
        .O(\z_m[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[21]_i_1 
       (.I0(in21[21]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[22] ),
        .I3(state__0[3]),
        .I4(\z_m[21]_i_2_n_0 ),
        .O(\z_m[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[21]_i_2 
       (.I0(\z_m_reg_n_0_[20] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[25] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[24] ),
        .O(\z_m[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[22]_i_1 
       (.I0(in21[22]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[23] ),
        .I3(state__0[3]),
        .I4(\z_m[22]_i_2_n_0 ),
        .O(\z_m[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[22]_i_2 
       (.I0(\z_m_reg_n_0_[21] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[26] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[25] ),
        .O(\z_m[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4440444422202220)) 
    \z_m[23]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[3]_i_5_n_0 ),
        .I3(\z_m[23]_i_3_n_0 ),
        .I4(\z_m[23]_i_4_n_0 ),
        .I5(state__0[1]),
        .O(z_m));
  LUT6 #(
    .INIT(64'hF000FFEEF00000EE)) 
    \z_m[23]_i_2 
       (.I0(p_2_in),
        .I1(\sum_reg_n_0_[26] ),
        .I2(in21[23]),
        .I3(state__0[0]),
        .I4(state__0[3]),
        .I5(\z_m_reg_n_0_[22] ),
        .O(\z_m[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6464646464646444)) 
    \z_m[23]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(guard_reg_n_0),
        .I3(\z_m_reg_n_0_[0] ),
        .I4(round_bit_reg_n_0),
        .I5(sticky_reg_n_0),
        .O(\z_m[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBBAAAAAAAA)) 
    \z_m[23]_i_4 
       (.I0(\z_m_reg_n_0_[23] ),
        .I1(\z_e_reg_n_0_[7] ),
        .I2(\z_e_reg_n_0_[1] ),
        .I3(\z_e_reg_n_0_[0] ),
        .I4(\FSM_sequential_state[3]_i_9_n_0 ),
        .I5(\z_e_reg_n_0_[8] ),
        .O(\z_m[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[2]_i_1 
       (.I0(in21[2]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[3] ),
        .I3(state__0[3]),
        .I4(\z_m[2]_i_2_n_0 ),
        .O(\z_m[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[2]_i_2 
       (.I0(\z_m_reg_n_0_[1] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[6] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[5] ),
        .O(\z_m[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[3]_i_1 
       (.I0(in21[3]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[4] ),
        .I3(state__0[3]),
        .I4(\z_m[3]_i_2_n_0 ),
        .O(\z_m[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[3]_i_2 
       (.I0(\z_m_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[7] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[6] ),
        .O(\z_m[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[4]_i_1 
       (.I0(in21[4]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[5] ),
        .I3(state__0[3]),
        .I4(\z_m[4]_i_2_n_0 ),
        .O(\z_m[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[4]_i_2 
       (.I0(\z_m_reg_n_0_[3] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[8] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[7] ),
        .O(\z_m[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[5]_i_1 
       (.I0(in21[5]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[6] ),
        .I3(state__0[3]),
        .I4(\z_m[5]_i_2_n_0 ),
        .O(\z_m[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[5]_i_2 
       (.I0(\z_m_reg_n_0_[4] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[9] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[8] ),
        .O(\z_m[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[6]_i_1 
       (.I0(in21[6]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[7] ),
        .I3(state__0[3]),
        .I4(\z_m[6]_i_2_n_0 ),
        .O(\z_m[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[6]_i_2 
       (.I0(\z_m_reg_n_0_[5] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[10] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[9] ),
        .O(\z_m[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[7]_i_1 
       (.I0(in21[7]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[8] ),
        .I3(state__0[3]),
        .I4(\z_m[7]_i_2_n_0 ),
        .O(\z_m[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[7]_i_2 
       (.I0(\z_m_reg_n_0_[6] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[11] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[10] ),
        .O(\z_m[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[8]_i_1 
       (.I0(in21[8]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[9] ),
        .I3(state__0[3]),
        .I4(\z_m[8]_i_2_n_0 ),
        .O(\z_m[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[8]_i_2 
       (.I0(\z_m_reg_n_0_[7] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[12] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[11] ),
        .O(\z_m[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \z_m[9]_i_1 
       (.I0(in21[9]),
        .I1(state__0[0]),
        .I2(\z_m_reg_n_0_[10] ),
        .I3(state__0[3]),
        .I4(\z_m[9]_i_2_n_0 ),
        .O(\z_m[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \z_m[9]_i_2 
       (.I0(\z_m_reg_n_0_[8] ),
        .I1(state__0[0]),
        .I2(\sum_reg_n_0_[13] ),
        .I3(p_2_in),
        .I4(\sum_reg_n_0_[12] ),
        .O(\z_m[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[0]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[10]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[11]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[12]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[13]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[14]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[15]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[16]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[17]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[18]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[19]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[1]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[20]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[21]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[22]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[23]_i_2_n_0 ),
        .Q(\z_m_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[2]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[3]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[4]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[5]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[6]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[7]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[8]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_m_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z_m),
        .D(\z_m[9]_i_1_n_0 ),
        .Q(\z_m_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[0]),
        .Q(\z_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[10]),
        .Q(\z_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[11]),
        .Q(\z_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[12]),
        .Q(\z_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[13]),
        .Q(\z_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[14]),
        .Q(\z_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[15]),
        .Q(\z_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[16]),
        .Q(\z_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[17]),
        .Q(\z_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[18]),
        .Q(\z_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[19]),
        .Q(\z_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[1]),
        .Q(\z_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[20]),
        .Q(\z_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[21]),
        .Q(\z_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[22]),
        .Q(\z_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[23]),
        .Q(\z_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[24]),
        .Q(\z_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[25]),
        .Q(\z_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[26]),
        .Q(\z_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[27]),
        .Q(\z_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[28] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[28]),
        .Q(\z_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[29] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[29]),
        .Q(\z_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[2]),
        .Q(\z_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[30] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[30]),
        .Q(\z_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[31] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[31]),
        .Q(\z_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[3]),
        .Q(\z_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[4]),
        .Q(\z_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[5]),
        .Q(\z_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[6]),
        .Q(\z_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[7]),
        .Q(\z_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[8]),
        .Q(\z_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \z_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(z),
        .D(z0_in[9]),
        .Q(\z_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* WORD_MSB = "31" *) (* endex = "4'b0011" *) (* put = "4'b0000" *) 
(* waitAck = "4'b0001" *) (* waitRes = "4'b0010" *) 
(* NotValidForBitStream *)
module implementation
   (CLK100MHZ,
    res_reg);
  input CLK100MHZ;
  output [31:0]res_reg;

  wire B_STB;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [31:0]RESULT;
  wire Z_ACK_reg_n_0;
  wire addtest_n_0;
  wire addtest_n_1;
  wire addtest_n_2;
  wire addtest_n_3;
  wire [31:0]res_reg;
  wire [31:0]res_reg_OBUF;
  (* RTL_KEEP = "yes" *) wire [1:0]state;

  FDRE #(
    .INIT(1'b1)) 
    A_STB_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(addtest_n_2),
        .Q(B_STB),
        .R(1'b0));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  (* FSM_ENCODED_STATES = "put:00,waitAck:01,waitRes:10,endex:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(addtest_n_1),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "put:00,waitAck:01,waitRes:10,endex:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(addtest_n_0),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Z_ACK_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(addtest_n_3),
        .Q(Z_ACK_reg_n_0),
        .R(1'b0));
  adder addtest
       (.A_STB_reg(addtest_n_2),
        .B_STB(B_STB),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\FSM_sequential_state_reg[0]_0 (addtest_n_1),
        .\FSM_sequential_state_reg[1]_0 (addtest_n_0),
        .Q(RESULT),
        .Z_ACK_reg(addtest_n_3),
        .Z_ACK_reg_0(Z_ACK_reg_n_0),
        .in0(state),
        .out(state));
  OBUF \res_reg_OBUF[0]_inst 
       (.I(res_reg_OBUF[0]),
        .O(res_reg[0]));
  OBUF \res_reg_OBUF[10]_inst 
       (.I(res_reg_OBUF[10]),
        .O(res_reg[10]));
  OBUF \res_reg_OBUF[11]_inst 
       (.I(res_reg_OBUF[11]),
        .O(res_reg[11]));
  OBUF \res_reg_OBUF[12]_inst 
       (.I(res_reg_OBUF[12]),
        .O(res_reg[12]));
  OBUF \res_reg_OBUF[13]_inst 
       (.I(res_reg_OBUF[13]),
        .O(res_reg[13]));
  OBUF \res_reg_OBUF[14]_inst 
       (.I(res_reg_OBUF[14]),
        .O(res_reg[14]));
  OBUF \res_reg_OBUF[15]_inst 
       (.I(res_reg_OBUF[15]),
        .O(res_reg[15]));
  OBUF \res_reg_OBUF[16]_inst 
       (.I(res_reg_OBUF[16]),
        .O(res_reg[16]));
  OBUF \res_reg_OBUF[17]_inst 
       (.I(res_reg_OBUF[17]),
        .O(res_reg[17]));
  OBUF \res_reg_OBUF[18]_inst 
       (.I(res_reg_OBUF[18]),
        .O(res_reg[18]));
  OBUF \res_reg_OBUF[19]_inst 
       (.I(res_reg_OBUF[19]),
        .O(res_reg[19]));
  OBUF \res_reg_OBUF[1]_inst 
       (.I(res_reg_OBUF[1]),
        .O(res_reg[1]));
  OBUF \res_reg_OBUF[20]_inst 
       (.I(res_reg_OBUF[20]),
        .O(res_reg[20]));
  OBUF \res_reg_OBUF[21]_inst 
       (.I(res_reg_OBUF[21]),
        .O(res_reg[21]));
  OBUF \res_reg_OBUF[22]_inst 
       (.I(res_reg_OBUF[22]),
        .O(res_reg[22]));
  OBUF \res_reg_OBUF[23]_inst 
       (.I(res_reg_OBUF[23]),
        .O(res_reg[23]));
  OBUF \res_reg_OBUF[24]_inst 
       (.I(res_reg_OBUF[24]),
        .O(res_reg[24]));
  OBUF \res_reg_OBUF[25]_inst 
       (.I(res_reg_OBUF[25]),
        .O(res_reg[25]));
  OBUF \res_reg_OBUF[26]_inst 
       (.I(res_reg_OBUF[26]),
        .O(res_reg[26]));
  OBUF \res_reg_OBUF[27]_inst 
       (.I(res_reg_OBUF[27]),
        .O(res_reg[27]));
  OBUF \res_reg_OBUF[28]_inst 
       (.I(res_reg_OBUF[28]),
        .O(res_reg[28]));
  OBUF \res_reg_OBUF[29]_inst 
       (.I(res_reg_OBUF[29]),
        .O(res_reg[29]));
  OBUF \res_reg_OBUF[2]_inst 
       (.I(res_reg_OBUF[2]),
        .O(res_reg[2]));
  OBUF \res_reg_OBUF[30]_inst 
       (.I(res_reg_OBUF[30]),
        .O(res_reg[30]));
  OBUF \res_reg_OBUF[31]_inst 
       (.I(res_reg_OBUF[31]),
        .O(res_reg[31]));
  OBUF \res_reg_OBUF[3]_inst 
       (.I(res_reg_OBUF[3]),
        .O(res_reg[3]));
  OBUF \res_reg_OBUF[4]_inst 
       (.I(res_reg_OBUF[4]),
        .O(res_reg[4]));
  OBUF \res_reg_OBUF[5]_inst 
       (.I(res_reg_OBUF[5]),
        .O(res_reg[5]));
  OBUF \res_reg_OBUF[6]_inst 
       (.I(res_reg_OBUF[6]),
        .O(res_reg[6]));
  OBUF \res_reg_OBUF[7]_inst 
       (.I(res_reg_OBUF[7]),
        .O(res_reg[7]));
  OBUF \res_reg_OBUF[8]_inst 
       (.I(res_reg_OBUF[8]),
        .O(res_reg[8]));
  OBUF \res_reg_OBUF[9]_inst 
       (.I(res_reg_OBUF[9]),
        .O(res_reg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[0]),
        .Q(res_reg_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[10]),
        .Q(res_reg_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[11]),
        .Q(res_reg_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[12]),
        .Q(res_reg_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[13]),
        .Q(res_reg_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[14]),
        .Q(res_reg_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[15]),
        .Q(res_reg_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[16]),
        .Q(res_reg_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[17]),
        .Q(res_reg_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[18]),
        .Q(res_reg_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[19]),
        .Q(res_reg_OBUF[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[1]),
        .Q(res_reg_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[20]),
        .Q(res_reg_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[21]),
        .Q(res_reg_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[22]),
        .Q(res_reg_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[23]),
        .Q(res_reg_OBUF[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[24]),
        .Q(res_reg_OBUF[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[25]),
        .Q(res_reg_OBUF[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[26]),
        .Q(res_reg_OBUF[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[27]),
        .Q(res_reg_OBUF[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[28] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[28]),
        .Q(res_reg_OBUF[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[29] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[29]),
        .Q(res_reg_OBUF[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[2]),
        .Q(res_reg_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[30] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[30]),
        .Q(res_reg_OBUF[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[31] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[31]),
        .Q(res_reg_OBUF[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[3]),
        .Q(res_reg_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[4]),
        .Q(res_reg_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[5]),
        .Q(res_reg_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[6]),
        .Q(res_reg_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[7]),
        .Q(res_reg_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[8]),
        .Q(res_reg_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(RESULT[9]),
        .Q(res_reg_OBUF[9]),
        .R(1'b0));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
