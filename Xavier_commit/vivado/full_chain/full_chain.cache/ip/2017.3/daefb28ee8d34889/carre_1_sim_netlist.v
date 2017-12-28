// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Nov 24 12:19:46 2017
// Host        : DESKTOP-RAH54SO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ carre_1_sim_netlist.v
// Design      : carre_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre
   (clk,
    rst,
    e_dout,
    e_empty_n,
    e_read,
    s_din,
    s_full_n,
    s_write);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000" *) input clk;
  input rst;
  input [7:0]e_dout;
  input e_empty_n;
  output e_read;
  output [7:0]s_din;
  input s_full_n;
  output s_write;

  wire clk;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire rst;
  wire [7:0]s_din;
  wire s_full_n;
  wire s_write;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_do_carre grp_carre_do_carre_fu_58
       (.clk(clk),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .rst(rst),
        .s_din(s_din),
        .s_full_n(s_full_n),
        .s_write(s_write));
endmodule

(* CHECK_LICENSE_TYPE = "carre_1,carre,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "carre,Vivado 2017.3" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    e_dout,
    e_empty_n,
    e_read,
    s_din,
    s_full_n,
    s_write);
  input clk;
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 e RD_DATA" *) input [7:0]e_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 e EMPTY_N" *) input e_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 e RD_EN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME e, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output e_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 s WR_DATA" *) output [7:0]s_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 s FULL_N" *) input s_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 s WR_EN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output s_write;

  wire clk;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire rst;
  wire [7:0]s_din;
  wire s_full_n;
  wire s_write;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre inst
       (.clk(clk),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .rst(rst),
        .s_din(s_din),
        .s_full_n(s_full_n),
        .s_write(s_write));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_ap_fmul_2_max_dsp_32
   (D,
    clk,
    Q);
  output [31:0]D;
  input clk;
  input [30:0]Q;

  wire [31:0]D;
  wire [30:0]Q;
  wire clk;
  wire NLW_U0_m_axis_result_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_result_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_a_tready_UNCONNECTED;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_c_tready_UNCONNECTED;
  wire NLW_U0_s_axis_operation_tready_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_result_tuser_UNCONNECTED;

  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "24" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "24" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "24" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "1" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MULT_USAGE = "3" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "24" *) 
  (* C_RESULT_TDATA_WIDTH = "32" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "32" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_5 U0
       (.aclk(clk),
        .aclken(1'b0),
        .aresetn(1'b1),
        .m_axis_result_tdata(D),
        .m_axis_result_tlast(NLW_U0_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_U0_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(NLW_U0_m_axis_result_tvalid_UNCONNECTED),
        .s_axis_a_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_U0_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(1'b1),
        .s_axis_b_tdata({1'b0,Q}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b1),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_U0_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_U0_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_do_carre
   (e_read,
    s_din,
    s_write,
    clk,
    e_dout,
    rst,
    e_empty_n,
    s_full_n);
  output e_read;
  output [7:0]s_din;
  output s_write;
  input clk;
  input [7:0]e_dout;
  input rst;
  input e_empty_n;
  input s_full_n;

  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire \ap_CS_fsm[2]_i_3_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[5] ;
  wire \ap_CS_fsm_reg_n_0_[6] ;
  wire \ap_CS_fsm_reg_n_0_[7] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state12;
  wire ap_CS_fsm_state13;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state9;
  wire [12:1]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm13_out;
  wire ap_NS_fsm14_out;
  wire ap_NS_fsm15_out;
  wire clk;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire [7:0]p_0_in;
  wire [31:0]r_tdata;
  wire rst;
  wire [7:0]s_din;
  wire \s_din[0]_INST_0_i_1_n_0 ;
  wire \s_din[1]_INST_0_i_1_n_0 ;
  wire \s_din[2]_INST_0_i_1_n_0 ;
  wire \s_din[3]_INST_0_i_1_n_0 ;
  wire \s_din[4]_INST_0_i_1_n_0 ;
  wire \s_din[5]_INST_0_i_1_n_0 ;
  wire \s_din[6]_INST_0_i_1_n_0 ;
  wire \s_din[7]_INST_0_i_1_n_0 ;
  wire s_full_n;
  wire s_write;
  wire [7:0]tmp_2_reg_144;
  wire [7:0]tmp_3_reg_149;
  wire [6:0]tmp_4_reg_154;
  wire \tmp_5_reg_165_reg_n_0_[0] ;
  wire \tmp_5_reg_165_reg_n_0_[16] ;
  wire \tmp_5_reg_165_reg_n_0_[17] ;
  wire \tmp_5_reg_165_reg_n_0_[18] ;
  wire \tmp_5_reg_165_reg_n_0_[19] ;
  wire \tmp_5_reg_165_reg_n_0_[1] ;
  wire \tmp_5_reg_165_reg_n_0_[20] ;
  wire \tmp_5_reg_165_reg_n_0_[21] ;
  wire \tmp_5_reg_165_reg_n_0_[22] ;
  wire \tmp_5_reg_165_reg_n_0_[23] ;
  wire \tmp_5_reg_165_reg_n_0_[24] ;
  wire \tmp_5_reg_165_reg_n_0_[25] ;
  wire \tmp_5_reg_165_reg_n_0_[26] ;
  wire \tmp_5_reg_165_reg_n_0_[27] ;
  wire \tmp_5_reg_165_reg_n_0_[28] ;
  wire \tmp_5_reg_165_reg_n_0_[29] ;
  wire \tmp_5_reg_165_reg_n_0_[2] ;
  wire \tmp_5_reg_165_reg_n_0_[30] ;
  wire \tmp_5_reg_165_reg_n_0_[31] ;
  wire \tmp_5_reg_165_reg_n_0_[3] ;
  wire \tmp_5_reg_165_reg_n_0_[4] ;
  wire \tmp_5_reg_165_reg_n_0_[5] ;
  wire \tmp_5_reg_165_reg_n_0_[6] ;
  wire \tmp_5_reg_165_reg_n_0_[7] ;
  wire [7:0]tmp_7_reg_175;
  wire [7:0]tmp_8_reg_170;
  wire [7:0]tmp_9_reg_180;
  wire [7:0]tmp_reg_139;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(s_full_n),
        .I1(ap_CS_fsm_state11),
        .I2(ap_CS_fsm_state10),
        .O(ap_NS_fsm[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_CS_fsm[11]_i_1 
       (.I0(ap_CS_fsm_state11),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state12),
        .O(ap_NS_fsm[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_CS_fsm[12]_i_1 
       (.I0(ap_CS_fsm_state12),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state13),
        .O(ap_NS_fsm[12]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state13),
        .I1(s_full_n),
        .I2(e_empty_n),
        .I3(ap_CS_fsm_state2),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000030)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(e_empty_n),
        .I1(\ap_CS_fsm[2]_i_2_n_0 ),
        .I2(\ap_CS_fsm[2]_i_3_n_0 ),
        .I3(ap_CS_fsm_state5),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state2),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_CS_fsm_state11),
        .I1(ap_CS_fsm_state12),
        .I2(ap_CS_fsm_state13),
        .I3(ap_CS_fsm_state10),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(\ap_CS_fsm_reg_n_0_[7] ),
        .I1(ap_CS_fsm_state9),
        .I2(\ap_CS_fsm_reg_n_0_[5] ),
        .I3(\ap_CS_fsm_reg_n_0_[6] ),
        .I4(ap_CS_fsm_state3),
        .I5(e_empty_n),
        .O(\ap_CS_fsm[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state4),
        .I2(e_empty_n),
        .O(ap_NS_fsm[3]));
  LUT3 #(
    .INIT(8'hA4)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state5),
        .I2(ap_CS_fsm_state4),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(s_full_n),
        .I1(ap_CS_fsm_state10),
        .I2(ap_CS_fsm_state9),
        .O(ap_NS_fsm[9]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(ap_CS_fsm_state11),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[11]),
        .Q(ap_CS_fsm_state12),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[12]),
        .Q(ap_CS_fsm_state13),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .S(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(\ap_CS_fsm_reg_n_0_[5] ),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[5] ),
        .Q(\ap_CS_fsm_reg_n_0_[6] ),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[6] ),
        .Q(\ap_CS_fsm_reg_n_0_[7] ),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[7] ),
        .Q(ap_CS_fsm_state9),
        .R(rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_fmul_32ns_3bkb carre_fmul_32ns_3bkb_U1
       (.D(r_tdata),
        .clk(clk),
        .\tmp_4_reg_154_reg[6] ({tmp_4_reg_154,tmp_3_reg_149,tmp_2_reg_144,tmp_reg_139}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    e_read_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_state4),
        .I2(ap_CS_fsm_state5),
        .I3(ap_CS_fsm_state3),
        .I4(e_empty_n),
        .O(e_read));
  LUT5 #(
    .INIT(32'hFFFFEA40)) 
    \s_din[0]_INST_0 
       (.I0(ap_CS_fsm_state13),
        .I1(ap_CS_fsm_state12),
        .I2(tmp_7_reg_175[0]),
        .I3(tmp_9_reg_180[0]),
        .I4(\s_din[0]_INST_0_i_1_n_0 ),
        .O(s_din[0]));
  LUT5 #(
    .INIT(32'h02030200)) 
    \s_din[0]_INST_0_i_1 
       (.I0(tmp_8_reg_170[0]),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state11),
        .I4(\tmp_5_reg_165_reg_n_0_[0] ),
        .O(\s_din[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEA40)) 
    \s_din[1]_INST_0 
       (.I0(ap_CS_fsm_state13),
        .I1(ap_CS_fsm_state12),
        .I2(tmp_7_reg_175[1]),
        .I3(tmp_9_reg_180[1]),
        .I4(\s_din[1]_INST_0_i_1_n_0 ),
        .O(s_din[1]));
  LUT5 #(
    .INIT(32'h02030200)) 
    \s_din[1]_INST_0_i_1 
       (.I0(tmp_8_reg_170[1]),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state11),
        .I4(\tmp_5_reg_165_reg_n_0_[1] ),
        .O(\s_din[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEA40)) 
    \s_din[2]_INST_0 
       (.I0(ap_CS_fsm_state13),
        .I1(ap_CS_fsm_state12),
        .I2(tmp_7_reg_175[2]),
        .I3(tmp_9_reg_180[2]),
        .I4(\s_din[2]_INST_0_i_1_n_0 ),
        .O(s_din[2]));
  LUT5 #(
    .INIT(32'h02030200)) 
    \s_din[2]_INST_0_i_1 
       (.I0(tmp_8_reg_170[2]),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state11),
        .I4(\tmp_5_reg_165_reg_n_0_[2] ),
        .O(\s_din[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEA40)) 
    \s_din[3]_INST_0 
       (.I0(ap_CS_fsm_state13),
        .I1(ap_CS_fsm_state12),
        .I2(tmp_7_reg_175[3]),
        .I3(tmp_9_reg_180[3]),
        .I4(\s_din[3]_INST_0_i_1_n_0 ),
        .O(s_din[3]));
  LUT5 #(
    .INIT(32'h02030200)) 
    \s_din[3]_INST_0_i_1 
       (.I0(tmp_8_reg_170[3]),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state11),
        .I4(\tmp_5_reg_165_reg_n_0_[3] ),
        .O(\s_din[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEA40)) 
    \s_din[4]_INST_0 
       (.I0(ap_CS_fsm_state13),
        .I1(ap_CS_fsm_state12),
        .I2(tmp_7_reg_175[4]),
        .I3(tmp_9_reg_180[4]),
        .I4(\s_din[4]_INST_0_i_1_n_0 ),
        .O(s_din[4]));
  LUT5 #(
    .INIT(32'h02030200)) 
    \s_din[4]_INST_0_i_1 
       (.I0(tmp_8_reg_170[4]),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state11),
        .I4(\tmp_5_reg_165_reg_n_0_[4] ),
        .O(\s_din[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEA40)) 
    \s_din[5]_INST_0 
       (.I0(ap_CS_fsm_state13),
        .I1(ap_CS_fsm_state12),
        .I2(tmp_7_reg_175[5]),
        .I3(tmp_9_reg_180[5]),
        .I4(\s_din[5]_INST_0_i_1_n_0 ),
        .O(s_din[5]));
  LUT5 #(
    .INIT(32'h02030200)) 
    \s_din[5]_INST_0_i_1 
       (.I0(tmp_8_reg_170[5]),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state11),
        .I4(\tmp_5_reg_165_reg_n_0_[5] ),
        .O(\s_din[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEA40)) 
    \s_din[6]_INST_0 
       (.I0(ap_CS_fsm_state13),
        .I1(ap_CS_fsm_state12),
        .I2(tmp_7_reg_175[6]),
        .I3(tmp_9_reg_180[6]),
        .I4(\s_din[6]_INST_0_i_1_n_0 ),
        .O(s_din[6]));
  LUT5 #(
    .INIT(32'h02030200)) 
    \s_din[6]_INST_0_i_1 
       (.I0(tmp_8_reg_170[6]),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state11),
        .I4(\tmp_5_reg_165_reg_n_0_[6] ),
        .O(\s_din[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEA40)) 
    \s_din[7]_INST_0 
       (.I0(ap_CS_fsm_state13),
        .I1(ap_CS_fsm_state12),
        .I2(tmp_7_reg_175[7]),
        .I3(tmp_9_reg_180[7]),
        .I4(\s_din[7]_INST_0_i_1_n_0 ),
        .O(s_din[7]));
  LUT5 #(
    .INIT(32'h02030200)) 
    \s_din[7]_INST_0_i_1 
       (.I0(tmp_8_reg_170[7]),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state11),
        .I4(\tmp_5_reg_165_reg_n_0_[7] ),
        .O(\s_din[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    s_write_INST_0
       (.I0(ap_CS_fsm_state10),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state11),
        .I4(s_full_n),
        .O(s_write));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_2_reg_144[7]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state3),
        .O(ap_NS_fsm14_out));
  FDRE \tmp_2_reg_144_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm14_out),
        .D(e_dout[0]),
        .Q(tmp_2_reg_144[0]),
        .R(1'b0));
  FDRE \tmp_2_reg_144_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm14_out),
        .D(e_dout[1]),
        .Q(tmp_2_reg_144[1]),
        .R(1'b0));
  FDRE \tmp_2_reg_144_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm14_out),
        .D(e_dout[2]),
        .Q(tmp_2_reg_144[2]),
        .R(1'b0));
  FDRE \tmp_2_reg_144_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm14_out),
        .D(e_dout[3]),
        .Q(tmp_2_reg_144[3]),
        .R(1'b0));
  FDRE \tmp_2_reg_144_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm14_out),
        .D(e_dout[4]),
        .Q(tmp_2_reg_144[4]),
        .R(1'b0));
  FDRE \tmp_2_reg_144_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm14_out),
        .D(e_dout[5]),
        .Q(tmp_2_reg_144[5]),
        .R(1'b0));
  FDRE \tmp_2_reg_144_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm14_out),
        .D(e_dout[6]),
        .Q(tmp_2_reg_144[6]),
        .R(1'b0));
  FDRE \tmp_2_reg_144_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm14_out),
        .D(e_dout[7]),
        .Q(tmp_2_reg_144[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_3_reg_149[7]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state4),
        .O(ap_NS_fsm15_out));
  FDRE \tmp_3_reg_149_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm15_out),
        .D(e_dout[0]),
        .Q(tmp_3_reg_149[0]),
        .R(1'b0));
  FDRE \tmp_3_reg_149_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm15_out),
        .D(e_dout[1]),
        .Q(tmp_3_reg_149[1]),
        .R(1'b0));
  FDRE \tmp_3_reg_149_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm15_out),
        .D(e_dout[2]),
        .Q(tmp_3_reg_149[2]),
        .R(1'b0));
  FDRE \tmp_3_reg_149_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm15_out),
        .D(e_dout[3]),
        .Q(tmp_3_reg_149[3]),
        .R(1'b0));
  FDRE \tmp_3_reg_149_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm15_out),
        .D(e_dout[4]),
        .Q(tmp_3_reg_149[4]),
        .R(1'b0));
  FDRE \tmp_3_reg_149_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm15_out),
        .D(e_dout[5]),
        .Q(tmp_3_reg_149[5]),
        .R(1'b0));
  FDRE \tmp_3_reg_149_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm15_out),
        .D(e_dout[6]),
        .Q(tmp_3_reg_149[6]),
        .R(1'b0));
  FDRE \tmp_3_reg_149_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm15_out),
        .D(e_dout[7]),
        .Q(tmp_3_reg_149[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_4_reg_154[6]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state5),
        .O(ap_NS_fsm[5]));
  FDRE \tmp_4_reg_154_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm[5]),
        .D(e_dout[0]),
        .Q(tmp_4_reg_154[0]),
        .R(1'b0));
  FDRE \tmp_4_reg_154_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm[5]),
        .D(e_dout[1]),
        .Q(tmp_4_reg_154[1]),
        .R(1'b0));
  FDRE \tmp_4_reg_154_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm[5]),
        .D(e_dout[2]),
        .Q(tmp_4_reg_154[2]),
        .R(1'b0));
  FDRE \tmp_4_reg_154_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm[5]),
        .D(e_dout[3]),
        .Q(tmp_4_reg_154[3]),
        .R(1'b0));
  FDRE \tmp_4_reg_154_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm[5]),
        .D(e_dout[4]),
        .Q(tmp_4_reg_154[4]),
        .R(1'b0));
  FDRE \tmp_4_reg_154_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm[5]),
        .D(e_dout[5]),
        .Q(tmp_4_reg_154[5]),
        .R(1'b0));
  FDRE \tmp_4_reg_154_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm[5]),
        .D(e_dout[6]),
        .Q(tmp_4_reg_154[6]),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[0] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[0]),
        .Q(\tmp_5_reg_165_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[10] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[10]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[11] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[11]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[12] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[12]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[13] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[13]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[14] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[14]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[15] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[15]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[16] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[16]),
        .Q(\tmp_5_reg_165_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[17] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[17]),
        .Q(\tmp_5_reg_165_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[18] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[18]),
        .Q(\tmp_5_reg_165_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[19] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[19]),
        .Q(\tmp_5_reg_165_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[1] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[1]),
        .Q(\tmp_5_reg_165_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[20] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[20]),
        .Q(\tmp_5_reg_165_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[21] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[21]),
        .Q(\tmp_5_reg_165_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[22] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[22]),
        .Q(\tmp_5_reg_165_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[23] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[23]),
        .Q(\tmp_5_reg_165_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[24] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[24]),
        .Q(\tmp_5_reg_165_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[25] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[25]),
        .Q(\tmp_5_reg_165_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[26] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[26]),
        .Q(\tmp_5_reg_165_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[27] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[27]),
        .Q(\tmp_5_reg_165_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[28] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[28]),
        .Q(\tmp_5_reg_165_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[29] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[29]),
        .Q(\tmp_5_reg_165_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[2] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[2]),
        .Q(\tmp_5_reg_165_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[30] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[30]),
        .Q(\tmp_5_reg_165_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[31] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[31]),
        .Q(\tmp_5_reg_165_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[3] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[3]),
        .Q(\tmp_5_reg_165_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[4] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[4]),
        .Q(\tmp_5_reg_165_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[5] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[5]),
        .Q(\tmp_5_reg_165_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[6] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[6]),
        .Q(\tmp_5_reg_165_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[7] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[7]),
        .Q(\tmp_5_reg_165_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[8] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[8]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \tmp_5_reg_165_reg[9] 
       (.C(clk),
        .CE(ap_CS_fsm_state9),
        .D(r_tdata[9]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \tmp_7_reg_175_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[16] ),
        .Q(tmp_7_reg_175[0]),
        .R(1'b0));
  FDRE \tmp_7_reg_175_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[17] ),
        .Q(tmp_7_reg_175[1]),
        .R(1'b0));
  FDRE \tmp_7_reg_175_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[18] ),
        .Q(tmp_7_reg_175[2]),
        .R(1'b0));
  FDRE \tmp_7_reg_175_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[19] ),
        .Q(tmp_7_reg_175[3]),
        .R(1'b0));
  FDRE \tmp_7_reg_175_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[20] ),
        .Q(tmp_7_reg_175[4]),
        .R(1'b0));
  FDRE \tmp_7_reg_175_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[21] ),
        .Q(tmp_7_reg_175[5]),
        .R(1'b0));
  FDRE \tmp_7_reg_175_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[22] ),
        .Q(tmp_7_reg_175[6]),
        .R(1'b0));
  FDRE \tmp_7_reg_175_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[23] ),
        .Q(tmp_7_reg_175[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_8_reg_170[7]_i_1 
       (.I0(s_full_n),
        .I1(ap_CS_fsm_state10),
        .O(ap_NS_fsm1));
  FDRE \tmp_8_reg_170_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(p_0_in[0]),
        .Q(tmp_8_reg_170[0]),
        .R(1'b0));
  FDRE \tmp_8_reg_170_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(p_0_in[1]),
        .Q(tmp_8_reg_170[1]),
        .R(1'b0));
  FDRE \tmp_8_reg_170_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(p_0_in[2]),
        .Q(tmp_8_reg_170[2]),
        .R(1'b0));
  FDRE \tmp_8_reg_170_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(p_0_in[3]),
        .Q(tmp_8_reg_170[3]),
        .R(1'b0));
  FDRE \tmp_8_reg_170_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(p_0_in[4]),
        .Q(tmp_8_reg_170[4]),
        .R(1'b0));
  FDRE \tmp_8_reg_170_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(p_0_in[5]),
        .Q(tmp_8_reg_170[5]),
        .R(1'b0));
  FDRE \tmp_8_reg_170_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(p_0_in[6]),
        .Q(tmp_8_reg_170[6]),
        .R(1'b0));
  FDRE \tmp_8_reg_170_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(p_0_in[7]),
        .Q(tmp_8_reg_170[7]),
        .R(1'b0));
  FDRE \tmp_9_reg_180_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[24] ),
        .Q(tmp_9_reg_180[0]),
        .R(1'b0));
  FDRE \tmp_9_reg_180_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[25] ),
        .Q(tmp_9_reg_180[1]),
        .R(1'b0));
  FDRE \tmp_9_reg_180_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[26] ),
        .Q(tmp_9_reg_180[2]),
        .R(1'b0));
  FDRE \tmp_9_reg_180_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[27] ),
        .Q(tmp_9_reg_180[3]),
        .R(1'b0));
  FDRE \tmp_9_reg_180_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[28] ),
        .Q(tmp_9_reg_180[4]),
        .R(1'b0));
  FDRE \tmp_9_reg_180_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[29] ),
        .Q(tmp_9_reg_180[5]),
        .R(1'b0));
  FDRE \tmp_9_reg_180_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[30] ),
        .Q(tmp_9_reg_180[6]),
        .R(1'b0));
  FDRE \tmp_9_reg_180_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(\tmp_5_reg_165_reg_n_0_[31] ),
        .Q(tmp_9_reg_180[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg_139[7]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state2),
        .O(ap_NS_fsm13_out));
  FDRE \tmp_reg_139_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm13_out),
        .D(e_dout[0]),
        .Q(tmp_reg_139[0]),
        .R(1'b0));
  FDRE \tmp_reg_139_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm13_out),
        .D(e_dout[1]),
        .Q(tmp_reg_139[1]),
        .R(1'b0));
  FDRE \tmp_reg_139_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm13_out),
        .D(e_dout[2]),
        .Q(tmp_reg_139[2]),
        .R(1'b0));
  FDRE \tmp_reg_139_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm13_out),
        .D(e_dout[3]),
        .Q(tmp_reg_139[3]),
        .R(1'b0));
  FDRE \tmp_reg_139_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm13_out),
        .D(e_dout[4]),
        .Q(tmp_reg_139[4]),
        .R(1'b0));
  FDRE \tmp_reg_139_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm13_out),
        .D(e_dout[5]),
        .Q(tmp_reg_139[5]),
        .R(1'b0));
  FDRE \tmp_reg_139_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm13_out),
        .D(e_dout[6]),
        .Q(tmp_reg_139[6]),
        .R(1'b0));
  FDRE \tmp_reg_139_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm13_out),
        .D(e_dout[7]),
        .Q(tmp_reg_139[7]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_fmul_32ns_3bkb
   (D,
    clk,
    \tmp_4_reg_154_reg[6] );
  output [31:0]D;
  input clk;
  input [30:0]\tmp_4_reg_154_reg[6] ;

  wire [31:0]D;
  wire clk;
  wire [30:0]din1_buf1;
  wire [30:0]\tmp_4_reg_154_reg[6] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_ap_fmul_2_max_dsp_32 carre_ap_fmul_2_max_dsp_32_u
       (.D(D),
        .Q(din1_buf1),
        .clk(clk));
  FDRE \din0_buf1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [0]),
        .Q(din1_buf1[0]),
        .R(1'b0));
  FDRE \din0_buf1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [10]),
        .Q(din1_buf1[10]),
        .R(1'b0));
  FDRE \din0_buf1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [11]),
        .Q(din1_buf1[11]),
        .R(1'b0));
  FDRE \din0_buf1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [12]),
        .Q(din1_buf1[12]),
        .R(1'b0));
  FDRE \din0_buf1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [13]),
        .Q(din1_buf1[13]),
        .R(1'b0));
  FDRE \din0_buf1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [14]),
        .Q(din1_buf1[14]),
        .R(1'b0));
  FDRE \din0_buf1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [15]),
        .Q(din1_buf1[15]),
        .R(1'b0));
  FDRE \din0_buf1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [16]),
        .Q(din1_buf1[16]),
        .R(1'b0));
  FDRE \din0_buf1_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [17]),
        .Q(din1_buf1[17]),
        .R(1'b0));
  FDRE \din0_buf1_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [18]),
        .Q(din1_buf1[18]),
        .R(1'b0));
  FDRE \din0_buf1_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [19]),
        .Q(din1_buf1[19]),
        .R(1'b0));
  FDRE \din0_buf1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [1]),
        .Q(din1_buf1[1]),
        .R(1'b0));
  FDRE \din0_buf1_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [20]),
        .Q(din1_buf1[20]),
        .R(1'b0));
  FDRE \din0_buf1_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [21]),
        .Q(din1_buf1[21]),
        .R(1'b0));
  FDRE \din0_buf1_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [22]),
        .Q(din1_buf1[22]),
        .R(1'b0));
  FDRE \din0_buf1_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [23]),
        .Q(din1_buf1[23]),
        .R(1'b0));
  FDRE \din0_buf1_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [24]),
        .Q(din1_buf1[24]),
        .R(1'b0));
  FDRE \din0_buf1_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [25]),
        .Q(din1_buf1[25]),
        .R(1'b0));
  FDRE \din0_buf1_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [26]),
        .Q(din1_buf1[26]),
        .R(1'b0));
  FDRE \din0_buf1_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [27]),
        .Q(din1_buf1[27]),
        .R(1'b0));
  FDRE \din0_buf1_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [28]),
        .Q(din1_buf1[28]),
        .R(1'b0));
  FDRE \din0_buf1_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [29]),
        .Q(din1_buf1[29]),
        .R(1'b0));
  FDRE \din0_buf1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [2]),
        .Q(din1_buf1[2]),
        .R(1'b0));
  FDRE \din0_buf1_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [30]),
        .Q(din1_buf1[30]),
        .R(1'b0));
  FDRE \din0_buf1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [3]),
        .Q(din1_buf1[3]),
        .R(1'b0));
  FDRE \din0_buf1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [4]),
        .Q(din1_buf1[4]),
        .R(1'b0));
  FDRE \din0_buf1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [5]),
        .Q(din1_buf1[5]),
        .R(1'b0));
  FDRE \din0_buf1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [6]),
        .Q(din1_buf1[6]),
        .R(1'b0));
  FDRE \din0_buf1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [7]),
        .Q(din1_buf1[7]),
        .R(1'b0));
  FDRE \din0_buf1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [8]),
        .Q(din1_buf1[8]),
        .R(1'b0));
  FDRE \din0_buf1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\tmp_4_reg_154_reg[6] [9]),
        .Q(din1_buf1[9]),
        .R(1'b0));
endmodule

(* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_LSB = "-31" *) (* C_ACCUM_MSB = "32" *) 
(* C_A_FRACTION_WIDTH = "24" *) (* C_A_TDATA_WIDTH = "32" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "32" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "24" *) 
(* C_B_TDATA_WIDTH = "32" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "32" *) 
(* C_COMPARE_OPERATION = "8" *) (* C_C_FRACTION_WIDTH = "24" *) (* C_C_TDATA_WIDTH = "32" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "32" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "1" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "0" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "1" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "0" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "1" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "2" *) (* C_MULT_USAGE = "3" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "24" *) (* C_RESULT_TDATA_WIDTH = "32" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "32" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_5
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tuser,
    s_axis_a_tlast,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    s_axis_b_tuser,
    s_axis_b_tlast,
    s_axis_c_tvalid,
    s_axis_c_tready,
    s_axis_c_tdata,
    s_axis_c_tuser,
    s_axis_c_tlast,
    s_axis_operation_tvalid,
    s_axis_operation_tready,
    s_axis_operation_tdata,
    s_axis_operation_tuser,
    s_axis_operation_tlast,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata,
    m_axis_result_tuser,
    m_axis_result_tlast);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [31:0]s_axis_a_tdata;
  input [0:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [31:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [31:0]s_axis_c_tdata;
  input [0:0]s_axis_c_tuser;
  input s_axis_c_tlast;
  input s_axis_operation_tvalid;
  output s_axis_operation_tready;
  input [7:0]s_axis_operation_tdata;
  input [0:0]s_axis_operation_tuser;
  input s_axis_operation_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [31:0]m_axis_result_tdata;
  output [0:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire aclk;
  wire [31:0]m_axis_result_tdata;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;
  wire NLW_i_synth_m_axis_result_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_result_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_a_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_b_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_c_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_operation_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tlast = \<const0> ;
  assign m_axis_result_tuser[0] = \<const0> ;
  assign m_axis_result_tvalid = \<const0> ;
  assign s_axis_a_tready = \<const0> ;
  assign s_axis_b_tready = \<const0> ;
  assign s_axis_c_tready = \<const0> ;
  assign s_axis_operation_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "24" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "24" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "24" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "1" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MULT_USAGE = "3" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "24" *) 
  (* C_RESULT_TDATA_WIDTH = "32" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "32" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_5_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(NLW_i_synth_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_i_synth_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(NLW_i_synth_m_axis_result_tvalid_UNCONNECTED),
        .s_axis_a_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_i_synth_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,s_axis_b_tdata[30:0]}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_i_synth_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_i_synth_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_i_synth_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
eX2anAoFWfg/xle2XPpwkx2EoF71t++ZORLALwM6fS4kkkHDM0CRY+uAilYH0xvPHU7E0aUYeRZ2
Z6c3wqA8dw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uCfjUPzJhXsUk5brgiDq18ggMkhbYAIYmrJ/ovYO7zzOkMlI5ZJKtf5BJCRpjhs7iuOlgUOTs30y
jYjxUmfx4QBErxNakS/m3I6eRiqm8C+fT5bf6nmKHlbReX3KN8h/mZGWRAFGFhaaEGchccFUTPiq
GLps62qBRNHl9Opn24E=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XsGf/Mx6FYqSl1XhsjSK5vNajEzmUjNd8WWeV9Tmt8fiPwPI3JOPBacjX6pp+2+H2M/FKjUgiQez
3Di8oSwAaQKLEAZ+I3ROix/TtDNPlg1Ot/ydDMs0HGU/YR8ek3lX+qW727PfTudMs/xtMYa1lJ81
ovyFfQrU8jfw+Sne1uqruPvtllsuNLkfd/7ug4QFWYdYjLjPu5GbCMmDcpCJqJ0kqY/xoFvq1MuT
uaoAp5qNHikZunoKN9HMp9aA+Ev5TZKY4NtQV0U42Mo56D1e+8cGfYC0g1HuobWQdE7N+cg4wlDC
xrxvVAZAIwPQnhVR2XfuHc0pcUMgBVlSXwz31w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E+Lh5hOAzR+n3/u2cggRFUnvxAGvSY59HhbIQyA/qZeaPp4onsn8jGNESP8lTFeEtJvqJpHsYKsC
Wt8Tr6FgQQKU+2VYSEeE/Sd4s3L5un7eEI3uLzVnEuWZlhvV2dmau+31Hc897RxHAhgp9/6UWF0C
sb4GWD9hbryqOqJfyeQOZrJqmZPr7aKOjbxj/VF5Oro72bZcdIeG2ZzBbPFp3WDyiWM9S37UJ6+U
947R2kDqBZ3mqWp/TTm2for31uumvITwgqDEFuRKxKx8zJN0WiDoRLIN+nW0QWjpFtAKYk6LKQiR
gHOzKX7N4sjEV8ZAl03RqsgIAD6jh1lgxhDfgw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZDGBoyEHbBjAWB9UUnTaLqJP2f1dNxRG1DiSLmM90BZNa8bZx/f8y713m3Gwlr973vsD7/3IjQGI
ghE5FB93KAYs8Kub0cb+q/HpRO1HT5EFTc1NiRnyl5uQFWad3MuRAVwxWozzkSPVA3UgNlUJq1US
A2sgj5scmhpasuJF2er1+9vC7k5NFVoVeSOTQZ31+Tpy+n+EYXNqzP/jscoYKuqNLXNC4hn7Uv59
nDvsQlqKIW8hwp1ntoyWLSIULGzBgRxqqvDy2BTKV9rJQNGQy1BnH/56qe9WELroUd/wDWI5OaLo
DJ0t+tngwISGdl1cP1ddmZvn1ntN08KCm+LMyw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
EmA2D5PUTqq7mm2t4QbiX7uzwfFvAeTBCstExzA9OB8ZZQk0205NpDVYzDokTBW+8mfBLqdoXY/E
dT8kUMa3oGnTQ5MtF8/oimMNqcLtGnU8WTR9zKXA2QcUHRwCUq1Y+qmgsnSHQ0kgAh36fSIk9+YI
D3Ll1qp/Kc3zfdz0ikA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dlSCiEsHlW9JXVdtbFpwptSarEv35QEasVhQxkE15I3KOKO3bgk34x+7jMoTDgPLyy46XLD5LwTb
ZDp3ihYrIqGBRMBkGPEi46d5uuOrmUz43Adv/LpppEfqeAx6MpoywO7NScCOTXs1yvbmDHMZ6vn8
1M3kl3+/VO+2tKP8x9HApeWrQueYjS0gtPTLda2WwIvDN6AiDxUcYqWHYl/b1ZlRvdRsmse/FY1h
Uobcr2Ey9v3EbFMeMkOdqx4pGZ6l8JBXIWG0wDgrYASM0JknXyI4ODxPxEgWt0AHr6ECkbcn4TtL
jA7oF31RS/bQCx+hbLddLreUgCKlL4G7bpS/mQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B2sade07RO6/mVSzKGjheKtS9QEsJ7utoMmTslRrqMmd2YnZ13kkT9B6F8jJ86DXUj92Dk02ZqdW
MHAIyIWFiZfc/y4MTvOtdQWt8MOJA2dKB1974lA6+znMaFy2ZWNMPE/bJbOyAkPYIAI/IsIyhxhk
PAtNN8LO+5Bn3yP/VGe5pGCthsi2FYSVHyuUvU+QYhgbGPLBUQlm5K1nWdQFBT56VqdiDGSWb91m
xTh+aIbZ2h/C+nSg8JbIuiMU6YzfRNsp8ji5ME8YYjXdJPUWY6sSeV7IyLSkzVCXRJ9KCuZ+5ny8
0sB/1rZSf8smoCvNPtbn6KQo65EoiIfhXHVITQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RrZ7SVA1J9fLrdmDFDANYkRINC+twBanoD6qjqUj3lXneXCpXqXH1mfUAsEGXssJZ7v7N8V43isX
tDzDkQcjrinyv6cSHeaM4EEhSil0LekcoK1WT1Umz47i3vF/e5IOgxA9ZmhxSFxy2mBpqw8Z5Tjk
qRbo6ajHNMPqs50zxgnbE+kggGBhVNUNwmMQT6Q8lJG9R2Bwia7qsYzkH+xp9aE6UOSo225IvpC2
MBl5Tts4tk9YXjGgqHAZKUhSQMosHN4iOXK6L90cXF2UvoKZ16XfDuxhVN1xJuqiwZi6DIFqREtL
xYXBCl501nVKm4YyuGGhN8yd8Wzc2nuTePtClw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 81024)
`pragma protect data_block
qet+R/JPN8i//LNbLz+WsLD/pbBMPwi1E8p0HJUcUgNJMtyUEXP0Cr/4e1Rzn3Wj5y6kDTk2HucT
7KYeaLVak8QrJ6QxlpawnfD5t0Odp0fn1PlXYP0TDXs3mFgDPZhLT/OeZo5SLg8L+/P02Ks4b7sX
FiWLAn1y/VBb6ywy8YVQfkxI4rT2JoNoWPwNIg2rXilm3R2AtlAdCnG3HpNkBmTQ7TqCmpLKs0C4
WQvvMOCabSyFt4UHhQMFpErS0XLB5Jht1SXPDtRIm2VAYBnni3t6RP3AOlhxLQaL4YF+2MitGnsT
D3jweg/2QzXr8xFdEZbK/br/ATGMNiQjIMNsvGRQyORIQ6KBwPX7HWAI7AZawydVYp/dh8QDizoK
oRrezbzTuK0b3oyOq1OVTO5wso4uuLatYqnmQ906fk6dQ+XlG8+6XP07TZmBLRL4KAPs5lfkzprm
Zd6FgxgX9kSAK5+IJ6IcQxHRhmXh2f/9rb5SaCHs7lDno3+1OHKL3/n2CZamfuKZI3xyXVdJoMBa
8u5cjQknJ1ZCtHCkTjTP4eryNnjd29heGPu0Jqpgwi6IEXgLotWoQ5/vGerBu/vpSAWEZsjFgcxW
qzIaNF4wRDRx3fMpGwFo+HhiR/CIAG7Gb7UvXfk1/0qFvCiN42ReFbsF0x5VufHwh4zuD1uymCt+
GTVI1YOC67p80ZotCfuYXJv60cQ8CoEcZjUEJhFHo/yEES4MM/RUWTVeNCkx7FVUj15rSTWrEfYb
Fet1H4rQuaJDdSBGe42vWxxRssAcRbpvqHKgm/dMVG8nc2JGPJ0LR9Ktnl06opWOCZHsIidYffzE
UbV30d1W/AsNZ+NeysLeHKX+N0B/hqYfq5DgusEYG+yAEd1/jg3vkaINNqAhP/mx637plEg2bX3O
Jm6ScEQR/xGOVNNGzv7dQGfgcI16BYC/jL9laxcoWPacH9/IAe9WqVvyTmfv/vsxpFV+T5rBfxpr
WFB4uAAu/lOSsWtDacLQEyHS5dq0oIt3iPYgq677TSoreMAhXq4kPHkjES1RFgGRwcQd6V8RshqB
aOyX107H/JCBh7alJTQeB4YwGodp5NKuStl3P1iphuAjE2yJ5QlR/dc4p+oqOkSCUlteo2T/iqCj
W6p387uBS4SxiG00A15PM2uvbH2INieUB7w/K0g9uaOr7rvcchdA20xrpgUbFs42rAKpV8pVUW9g
B6s4pfIf3DTPksYwjm3SyDUuW2foUw+Bbb4ZhintZQQfG/YU1GJDau0NqP7MyEnTRTIfjC3CcEYG
wUWYUD7SCt+8bD/YNPtHfhKNxnp41jKiA+Wp21czcc6eRXahZqZepS2RGWxF0vd1K5AZS6cz+3dJ
l4a+MrgVpQ9MEO/2VHKDpsSA0VPCuF+cqmeUWbQ0lcHJZXirkYTgxn4z1OwEDcwOiFL1ivEi5JLW
oomYPhuGTjKuS+7IKCGaSDtWjb3ro0MUw+EizbM7JwctireCJbzjEz8ga7hZQvaZFCjcZccA8N/N
8TkwtTryYnVjIcMpJvRClWO++JnYJkCUsK6VB51M3Pw2lBs0V9B0Pm1EUOPg2vYSrsO+Sbn3wkUc
t9IImjNVl9ErlDB0FZ8oRv8AYuKKFDbSC5UF/KZOm4Aj86YQrIFO6v0km+N3C/WDPBsByfnmuhlb
W1VfJMnCiqWieYTlkvsRKrAP/GFnKCkzC/iocFM7u5lu4mZ+umpJoXqpNTA7MIOhBfhCGGURqCus
7SXT+NIYz6HdJClKaJ6n1qH9lVdt/w+xb/6B8lRGbBYNjeAMcWpI9InWrTh5QMzPV7L1SoT0ry+A
ak8gAwFF0wp739XyFJASKzszDnJTajmgywOkyO/ofjOdhqv/zdrTB9cu3swNsTU5YWCV/TexK3br
cn5HOSTSJN5gpZhVZsPoKYoo6U7DleSzfhtYNO8EwuqhBZG1DuG64KNotVWimsYO/g+yDw2dfWl/
nO3q6qK2M8crxBRKO/WKXlDvwd3tu09xNWc3WVXhQt3ilfsnX2Y/aBz0llb1p9+u0qi9I0qE9vMY
m5tCQbxKPIsZ+0o0zxzgU2hhyONKmibVdQEVguLOOnW1Ui8de4GD/ScRxKHYmEIlu5J3iBmbLT88
hU4rGDcqieTJD1912ui4y2xsNDhwuNn32Ft5AXittEtMHbuLxGVqlE+9R0NOhpk8KEs+y3M4BKMr
zyyj/KYMk6AjFUU9BDsl9fxjxv6fuCUGMBeWYgxylGIiKF5eq0rXVeYiDhghPFRLLMYb5RvUk0On
KukkVGUXSQa7nsX9JLCZqb306ET3NljvqZ7Yx0taBnEAy2b26p+uXvoNJEgt3PBtfnQI1r39f+wm
3d/8OA3gQXjcsfNVhcL+MU7R3KKzOmonbKggz5MpKKlmSEhTw9mYcnJUBspJK018ICx5yoIJAdbD
N/NgFSa6nPCxoq5lh/rCvQ3cNqbXqWBVetpomQJbJbqiCU1inMnZXIErqoUxoYsWIpbeD4HUtzxs
NlQ+gJZf3cJaYA/9PeoS4z9AttVWbXMBqRjqKHhbgQx+tMYynSbNKYJ6QaNbi7T9dgBpQk/DAwBV
56QlVixvhbD+pNFrs7TPkWrwfrMczvtlhXX2fkwgh0k49UKojCDIP5CpeoHLG91L4xHwQvOzMiy5
aN/nR15wd5rbf2Nuwz53XbkBFVxWZcdvAgzjokjjE4kNhtf+cJAJ1+z9NCxy85MLra9B40+84x3l
RRfGY1vFJVWrCT5XSArUB0h4Mj3e5Z/HIL29WPursY6tbMy4LS5iwhaCX4C6dITX7oFtdEV2afcp
npcgGLVLpAqVdHhxShmfmnY5eNNSdm6eRldGLz26emk7wOTmTuh7iZLqI3imNXuMVeLNlGcEoY8f
eFxJVKwPfSF0O+NSDd0ADyY9rUuH3jDiJr2omzs7NJ65q2h/hZW2qARvVYd6qPtCgMrO23tLeFvK
WTHIUYQkgzmcIs/5sO57wnSWWaQsfYgLvvmwi02FZ3PFsvyES1xSb5ga675XzGX79AZEuXh2nDIV
Mq5dAvvhWCW4IYSm+Qe0LXopCU3AKaRr+xo4Gw4TGRULqC35Sta3t6diPBjwA1tELCpYP2QsJt+b
zHnRBG9tiWDKtZbgWnrBtU5NZhTjS+sPDdRN78qeBLJNrqcewE+lHXJCmtWN2ytVy1a9A8Xh+4MC
ZoLgvyaOoT/Nt9/Lj/TLOKBKJWA1upgraA03V17di5y12e7LPCISvOTMMNiGCBL/sl+rFFpO9Aqt
yO+GkNeaa0jIkdxoKFuzo82ejwQ7DkDNQB7imj97YU7JbTEZn150Yal6mV468nfR5Z4azhL39+on
7HIPiNwfGx/HX9QiFoKenfC/quXyD8imHHVE/r/vkf5t06MSVMA+bLfK27CrYcZZdY5IYb4RHL7H
dkilLU0v35j3elwzwJe5o77dT4f79NL090OT6iA7mtJvjJfCMgZIMORAq4Jd9gbIfdgsObw3mzK/
ODg31PQIbxm30jkAsGfz2dte/slMPpewZ19pyWfbCkiMp/WW64+s+KursTGGYXPgs5vB+UxHwKss
pF33AMtzU5crHrhNgxyfjVyykK6kRKJgUyAnagwy9xF2gDfRshGEmsRcS44kyQyt8yHxhuP8oUyj
Boi/FvjtCZkrATLrYLy8KswrfDW4yKn9wrtPNnQLpUIFSm0J2J0jvJhhNcUWo/Tdc06b/0Of+3nz
yirpQ7eXhDaBR9lHTazQwLMR/iAJlbRTAIDONY2G35PdiUv9FMrrI0FRZmqmWa/CmuDnNg8dA0Yf
y6zfTmdv1hWQkEhjWFtQyMn9RJX+Fb11qevX45HDYAPPyZt8zltvoHZU38BZEK2UGxHKzA0pkEX2
tD8HnqP2WXCjtW63+tepRvztB5tOHGnBTEIoH/hnkLz+agtMDtLtppyJwT8w8iFyDTkxu3S7eW0Y
yuaVnW+wYOpAB2DsN9gvThEwlJosA0NJ+t32T5smXKCYijF9qkknunM3RFpUvgBIeaQnudnCxVyC
0VfUv5qly+gIE9y0jaiCxlDrMnocQBomW5cEh5wawDv1seKQt4CX6eNdfBdQv7Ra9Ehl6zgs0vDg
3WdbdWXG55esUFuzgpXbJlqiwA1ChOiRJ9QCk/IG6fxEdBiwwWgrNGEke9e8rFKad5L6UeyWYJyL
zxW7A+l8FyW03I8vkvdEzoiTfONU3qsX7NnojiTYg8E6r0CMhPhqT0nPi3gHPgBt+QAH9tQCvtwo
Ax7tzJ4h/jA29FMoD+xEimlJCpJkZUTztzfmDL0rDchFKe5Cv/mcF/XHxLtj9h7H5Pt2y8MjdCfN
ItQBDj16zMpWFmN/FopfhPgdCUqja1IiZZp3jGt+1XGUU/hmEo/SaTTmZUdbbdU7APKNP8QHOBEH
daiHA/aeMfuFWPVGr+j45qiz8oA7ZR90sw88nDQ+hPFWYzac6zs+RCKHu/wNVXMWPTHpW/hUBRw5
hw6RRvd7P112CcRbXMYcYnK/SU1AzTkBjjupQMHGRfAz1BBkvSl2F36gng/nS0DqLiKgvWsPEw5e
BdI2V753hLSloXfsyVHF98v/rTB6LgOH1fOiCDH3D3G37iyKfseKTj+PdiefrFnz3HRTozKBh+0u
kPp+X/4ZzKI5WiU2BJzLwq/nc2FzBYzPRvj3d/PZfaSjdlXTY8OvEdSG36O9u9eD8JTJTcGGR5a6
usBfy7XgOZcVGgtAWVIkK9dMOA1eyqX3uIbqENAobIVTGCFMHT4De/PQvOdh5AyUoPlrPr/dmqsP
KOMKO5xh8pxbe3VfuPYD5pqvRldb/zxsRv+sZ7elgye/7qGUBdjkoM6QbYE/4fnQ58u7tFWDJFQk
8JklLZvfoDyiTJ5qdNCm0TpOO27exM5VtV4ulW7SDVkUIqdcyWl0HOlQ4wdyg/BmUpMWF4dySprc
JYGSexCUvEExmSVqp4VlUSi6tCElgSfUD5nFVNwWjdR8NpzgZH+GHm6hd8JjYxhxg/2dppDx/IeW
AryBancAaX/osMEEZjBRk8j2qEAvi3ZVnF0L3PfwPGcAntkmQNnhKto4dr88Caszv4TjNHYte3pF
/x4mBxG58Nzg1rCTC11M1Dd07wrKg1GJtcOzvF77fZqR3sMyol3n9NkO3qCanAOxeH7ABRNGZukf
YXDDoqdO3VygbGvF8LU0D3g8VNtbTQcUqg5rAZRM0gUUMFbVcmzNwoaWo4Tp+rclL9eNJBS4/z4g
2naytecT8upKiD7ATVAbjNcitY5/SClcfw8QXY1EEKODw/aQ5ZK/8FHX0OO/IQyrRkeayqd8f4pS
gyGo5GWrDD8GZwv13SYoNylpOgKcvy2S/XTOV+RBY2UamP1DmCLk4nOaPCTPs+lJJtjKAa7IFXzp
Zx6/UYr597GpALaxZMLxclq4f93OKm/BdQ11tWg7xEXOhRQ1ssb3qv0AXkG7QwgbHua8+JnuReol
OOcmVOZP/QTyGQ8IDT1UvYNbMqtT3wzxgEUsEnMOuQzNYbQ98WNYiN0oboYFbu+gloxhhLxbNpeF
IhFAXkNbMdF8GWsxksO/LcsrCRLE1ec2STpBfe1nP+DSvKl8Yly7ILqt2EMgqnbH4oCUeC+vgHnP
5asZK/bE7yyvIx4LS62HWvy0/s5Q0bzbvatnHOI5FBDRQShs132+raf77q+MsptHwrtbLauQUgVx
s+gKxoONqeTXGwW9r5sC1+RU1mgivvP83MdKyamvBcU4OMhwyjYderlEPWUeBAUJkuJz+dGe8wvu
0VKdPLeHIshzt2zV2LCdAdasGOLkxYibPwfIs07OsHUbDcgLxpYKGu73qybCeiP8HzOnjGO91p/u
BVzjKfsBizj/2hLOM+/iuti1blJYlrb4d3S1aTvSICExH3sN00SwAnC3hH7iVtrr0Bl865ZD98l7
LPGkHpYymHhfMOgQuXurTsQ+gasiUB46x4tcZJusSwlWcBhh/QvOzVN6csSO8/6Wkr2dUIdZ1JbI
V1ZCzxSSfdqX0XpCjUt6q7HxrYOvb5yOnrq0gmF4SErURkwDdL2tpPQYTHUojHUamlK+Hh5BC/5z
dj8nsk+pQLGbM1evu7kKBQ1tLUAdYVYvjG2MB/u3uTtx1FHti54CPaYVE1qdEYES3v74ho1NFEpj
rMRB1ymOxKqYNmdCRvMJlCFIOB0wo4ueDO8KWzMgTpsE+31BwwyK7i8lpFq2hN0HKf1nAdGoV2BD
9aX5aoz8vCa7uSca22Zi3HeLsEqUjqtvEF14d27jrU58z94eAybVQdZwn6qhtK82/1RAVooPIMUI
uHIBLRwcSpGERh7WXU4rIQ26kpeygO4L+cViYaJG0IMswY2GPQp59smbGwvkoxH2tZRqyY2pXgIz
IWzvQWe0eoiwfV+bSN/YYAn3UCZIL8BSEZyRIjphUecbF2W2gkvG6ytxeaIhXwXSsb1vI7zBIUCt
mdCfqjpx4weMdl56nCkecw7HWBUovdeLgLKcgIuIFSCmh7lebZlyc7VUog5/C/FtfJKC7CcHA3ku
8qup0UY0i04Ihy3NR12/L/ziUS11BPIaeRO6awHhpdEQR+xO87SV0Bj4KJD+i7s19HuB6fGrGC14
oOW8mGi0sc7+kfaeRWDGQkWYufDgRVtjK+Z3jjbyQ6t0kqX2iwO8p/S3c+1XNFwsuIPexlhqT354
2xKxbEm0jTrxS3u6PbUrHvMph7L71S9sNDHZC4Ax6bxKjbUJr5lYmhMRVlwed5kwZ7X8xWd/asS9
zl4zF9Kndwimm4gpgGykWkk5kor/GnbLfzFYsfH0A4dT9OouVKbiSjR95GKI1W+j2Dc07UNqe+ms
o4Jsl8ySknMIRt5Ejqo+N6eVMJkL3BAKFKgLvXg4DiAVSGGE4tX16HuC8bf3W4VJzAvsw0ln761l
iaOLZpghm1G802eyDRJRBo7r7BSTWrIiAA4aCKE7gu5KZsamJfYrcMfpyLSomVQjj7z4cAUc0zoH
VRNUk//jLJ+gBib4Hy+ma9oij31M/gPkHAXnnWSt//eO9QyfRW8rSg0bZoQ6nfi2hIWQdrCC4zk3
GwjSDF/FEkvg62qm0W3FlCfBDO+KFITV+/5qWB+3ZhI63kTtjO8Hg7H8GqUrCZsP0lNzrMhT4vNE
eB1bceQvfym9to73LAmxpv4bQMV6uB/yUEsDDb7FAW3hHcfVGztJABCpVSQy/JlKiasJCFjiLf4F
jNOlq6fR3wdyg+kF5lGaeh1wVyil3YaqemorIoo/ZcV5W4hCYq2PAzWweOvR5xH7VuCMUkQdpnJr
2wKfKoH4yJ5MoV/5GNlVqpiknvA1ENVheI7ipwcUMyXCojxXCAoozqu1MsXY+uG58GY3DBwE8sG9
kJqXox6gZHQerwXEZ8Ymxv+3Gmi17U0n6TNzFZzqWdomfOP+afkGtCt/pO0C9qUEVFWwDqOow50N
1l9nL2n5VyU8HR3IvLSa4gx7rKKlzQ/LNfvNqocYskYGp6Fev3rnatbC2aSkW1FqD486jDcxqizq
RhdIs120iuUp5pprKJ3z+hITROSu5ZQJ63idq83kKlEzD3pWA9mJw4X7upEQ+CVNclCWwxBPSWve
LYli4RcWDXPx0PGQbk/kArA120HVYSV+9lkyXHxuJgARepwQ7FkqF1/6MVLB/v/iyzdTojyDdfT1
B7n0LTPPNEylPokg21Yby3lk23tE/8eEYJaBlmNImh7j3MZ1lLPz9KNxMuXFXw6JtqX3enwuwBn7
pAcAZVxriNNYeX9Ryg1gQR3WyFHC/2e8ajN9903MMlPyrTE7Hd20OdYTv/o8+IqHCWqO3VfwBgPX
D83KPDVZA12fLrI64j028nxgZvs+UG0G455cUuZ6NYEm1MfyN7vUoxo18azRhw3rnJR9LZQu1muP
e+RNzOPNJXK04WfKX5MmbcL5medwvWPOv6akWGJSXV4rIO+LhGipBDQ77fEd9iac+nweg54fUXbQ
S4EB273Yrl8IhQej9yHRLysgqJW4hvInaQy0g6wehv4fW1hX9p+Ggcz99wj62Wt3juyw6asup1Va
/S+ihhJVmk1BozW5MVQYmrZjxkYTsk/UQ0/uzW2gzFJufhxoCQrPEgPlq1LNAK8gjTRh60KG0GI7
qj/FcpBosWHHh2u4XUALAYfIxMxk2gzupEP4iDasLmufkGl3hGlq6NTwUaHQCBbr8u7nCGxxDl+N
36UeKH4lBkgadGfZ7FzdtBCI4/m3HN/RZ3LiJgKWRCLGBI1tSsu1l7l0JDAS7tJLp5ZqC2mSS+VX
nVPMIqUFueQdwhyOolJIU7y31Scmb9kw3rfCHWNz/zP4xHs/QQHo5mkvbANbAbkqN/cBq/eMI5Ub
0VnOCLoX6eG32SeJpgjg59T1mkRgGnmBGSqr/TyaG5Aswm35wLXWJgWoHP27dR/V/e31AXqoqMzc
tUiM1zhnxYBw6LFQKjLvI7s6bxpdYLd9zTR7awZrQSQ5gmEBwEfBCEkfnFvOljX8ewPyKyozu2cZ
Kbao59QNQ4NzrNowuLxgMOXkJIY+CQTRUh6Ens9NYjYnWe8C9dcS7Fl8hcP1PsdC/C8viXAYyMGV
6SXDnyrBRLZhl24IDDQnFGLg+dB3iStu1OyJ+6glCE+RB/pYH9p4fDgFULimC9iLftzfjvaHYztT
FEexsupjo88b+tNs2j5mVXXWYVFCuOcoCi5GO05U/Ukd7Pg0Z5ECc+CPaLBNXvOBWfMrpLagWCdL
Yjll71g3LotRq3Qn2uZxWNKXr/7cfe+1MV6B+eGhoJYpVd3qiO32wzffV7sao+V4UDnfFWOeRdzd
f3UP/I/sZAR0oA08IILDDYb0BmvxnSNZo8Mrrxo/7j2PUJtdIewBViHtduc7dmGUNCTP0QVkrBA+
9ZZENiBWKAawroxU4Y4+FJbGz4a5l6vuLc1U+4ChX4U8/w2zIwhjXOxtKAi387j29yA5psfdV7jm
JcNOROeBCh85joBb+fO4rFRzADsNW4pL/VUQXnK7lkpaTqO8taRLScWMkuge6YwXfS6ELrZKWO6o
HishB8zJu/0MlgVZta26Mz2hWWNjhnEVkC6Do2i3jKPAsOFNbazqZy1h9AXQa54h5dsAiQ2Y2tjt
7wtOxPWBH6rYRkr1d6KEuXrJWC3YUhCIZ9UDhfwvuQz/fxsuIoKmP8U81q/+u5Ey8EPt9yIqDCt3
3mfT8WRgHH/5rSP/9M3pjV/yIPx8iuXkox5SUJMLwzEhv1czXxpd/U2uFlASulNtqOEdrFG5jgX4
gotMxmWqACTCC9WZNAvMICNoejFA/P4O2PVEdoaeU6MYIN6Cn2nhoRtvcnRK9HfN0BXZh6G4/vvQ
7DoAxSAHFQhdmvfwZsO/N5+Tbv4oaLV0vKb2oJkYQ37eZgmZ66/k6hr1A6xS5i3eUajVCR+k91xV
UzsJo61QUVISGR2hi5cXV8XcvafZ5+L/WkEtc4NdZ+Wxc+MbQE8s8gxWfhAY0TxXpixsJVNsG4LH
6XcYmydX1EBTt1lJ7TqS5dToBgYb8rO7/PzjnLV2Oc3LmNAvXbsF6wW/KpSf7ujRp8oJD1Qt+SWz
i6M9OI2BcYaOeo6IOvyiBIJDbQZ+jjf6qJAtivm37j5GdGnkWIP9RiTljrSUw+S5y+yrfrGKJ2s1
khZIfsC/VPb7ro2UtiizphhM1ffRY/PUl9w3cgHz3ea/JwAyPJ/eGtsMCE7Dkqifz961v72P3ayL
VEKuG1lbJmLROr8p8pjr5ESb+qNP97VoJGcxeJKhWkdzG/Tc68qIY3aXgFQIPIpqaGwdbhm3eRmg
PwCrkUpVgeIhsZvlJO0cZv5shYBl3U24gQ1JA+MLKA2GK2x3jvrtjDNwUe1UIp9ToEKsjcHbpftW
rMl9rqKWI6gI3k61cQe252XVBid/gLAMOoSwWHIqpizNrsJHv9BjhlOp2IDsSu65Q9YIVBmFiwkG
xQhAxUpVJOd9F1vrWgVlYuyH+GlQUO7LgbDocB5+bClq9Ec8A+TB5PrtPlZW0rabIxrmbME661BJ
osUinapFXDJ7keF/9TTl72MPMe1zz81+L/6DPJAfXCpVWzYAOm7enu6BVRABiRbpfpCNcR9hgkgE
V4KVQBzaaTUHp3HKjhQfAlfmGHguPzWOYjjuS88Kc6YCFZOP7TorH/pGDa2+JWi+OiYu74LkoFAL
ZSrtC5J1XlMrI0oY9yv1I82QSxNFKjcT1j5onaq1QknvJBRZytwoXBcEa/DGMa0jCIB+ifUUNJ0M
GRVouGprS2w8p4dIvMkYiLnckAYgwMqOhw4ilb+sTxLkgHf1hEAeuS0odqgrvE+F+6sd2vBbworP
6EkZZYGXHdtgboAzWfqSEBontm7HhZ8egbdHUChxyMbsprCWTZv0N9eZwGRGOAqU6K16TZGMJD7L
A/kkWT/9iCjycWs1UGyeo3MuwNkwcX6GgeO9FbtjL0zMzGWYgZz9FKO4MMM7tmkSeXpbFLdpxPhQ
PN3bcCpSSGrSoO2bnS1OhWbmlnmVTi3N46jP82qk0QnqWoskZIcdsRVykwWKLpAA6f3F71jRCe+T
Zxj7rnr0fYH43time1h2N5qsZA+LO7ckt6hpbkMsRCcQHVwrnom5cxbh9jkkkXYboZTZlE7XP7Gy
HLmgxm2N2VkAI6ekHtyh6G7wUDqvpmLOdV4M4CO4SBGOuD/HH3yfsLvRAokKk8ZYtZrulHHKkkpv
yZbo81uxlF9xeXZqOWO9711Sa/kFGRk3XFAfPkreD6vo8j7G8cxbZBo7KtHKpRal+Ts/O4ShsCKk
75LISud9aCBlLLqAfUFVWLVpGtS7Bm190WOO9Fz0mcNbIrKkF5oHxjIkn5HGrqTEhiOsKZzzubni
Uj1NVmG7TkdJ1yqpZB74px8BkX/N0XtJc5kaJcusxglGhNnNAHSt1tmOgpC52KUInewVbUaM+3jw
XL+UtUFu5jqzNYvobNOYqJzF571MMJ/d2313zikkastW+O7CRbRWiuKvG6I3q65aJmoECHTrLiwg
Ujkv2XSc7Pc40AnrSmB9ykS5ew/YsnDT4qSPTUVIomgTkk8SwUNbJJ7fl3G/TIk/Z58CAJYbcChI
Vri68iPgFH8KUMZCRJDlbQ83FBmPjqOww9EZnSMr2UV1TonZaW/F5z8WJTYeUvs6sZrTnFt8LYDl
kSnDtbIm+QWIFwvDtwEFhB+wHqziiReJnru4PgqMzOwYlJcvVsHssr0bpB1JxRzx3g/HwxjFmi3k
ANJcA3NiA86G9/4AEOxoCu5q6IDpxqWiDs37Jvxhlhl7BG6CtQHUCExguDKppAxLmgiv7aJyLqmq
WbxJCfQUiZFDNpdToX9UxUfpnnLNrpRJs3oXT7N0uaHB0XSRPwUqDQynsUhYhA+Q8ut2V1EXBN18
0yqXzGgkqoiJfEVrTJeHPumsLPn5wd2fSg1MV4XjHhG+PQOhKccLJDf7VSnEYjoYMbiZGPu9f9Tp
Lw4pybHhDmzZPoXGu6yViBX/20XysS6XtaXYcyGGSX2T+6S+72ejpfZB5+u2brDr4d439KTsSKfh
IyYPMxzyyosPRz52KnIlurjZJsZt1XY0wPhW6Ku+GIx0dZ0c+pCrrk+/lX9EkLTjil91HeQSyYlt
TeZTq644JRxw1R2EAXw779TVEV7jF5tDkNZLCGTq5j6NKfLvWi4OfoHOY3n1oAM2EsReVp5TU6gP
GQIr1f7vVy9nDEyLIiY8alKwCmB8ytB9mxc3VqEhSTaBzknEeJmmWWjsRpYJ0d/TRiRV2tMEM4hr
NxP8yxJqefXvfvwi5ZeKiZV0lnX1ceCpOk/mDPVTYsD3X0ohdzOtRo+/hIryE+Ne5niA3yT7whop
JmK/O07xSp6fg5EEgrCt2k5BCTsOMPCqQSqLE6oRRW1H/C7ip3CyCQRX1WnISkZdyT+aDhyd1/yN
5jP0zZMrT6TFYwZZN2lbFG+8BEbZ3lIADsSxIkcDvsQOEmkTsR19HDthgkk/6m1g/AwBxKCcaA0m
wCrFCztJQO4n/qlr8z1AkCaQwWTYlIwZYjtRyN8+6TgNMSE//0w5jKPzmmzv2k8YSXLAIzpyiXhs
cPYQSSc60qnypqj7PqC0ngG9YnVZDJIyPJzRjP4M9Zv49CfiKoMHnsjC4vwjcp50kjqbnWDARb1l
Fj6NrCNlSqhAx60I9adm1Ih0SwygtA8JUkiCDdZJ4hdmgxvmyO3gg/+uLjMOsgs2zx/yTMCorz37
vcjiXjwplKu1jPBQrVlRrJBNPojxmVivv6+Fnue2tBkTD3aKin+2ziWJj/ln7uIwGN+x57BqNqU8
Mxey73bXiMM3ukxbMJWVDdVlBeTMp5hIMBHEJIxW+f5vBTqclQ3JvO/L+cl4vIEU/SnDG1HiaS5N
mr6s0V1b7vc1ushz0h7sVShvvqY8Ru8eZ0mFmUZJt9HfFgfeqesXIeq73CtnSjvTLfU0A5YEFsGE
pOBYVOHGyXVcqya4FPVMNgQGIgRpHHQ1B/srq8SCOAFXpw4tU54C/t2SmXNACkkW9uSgyiwXelYf
HhUvw3iP07qE5vNns7s4gIkw8bImCRuvGbeggo1oUq3HHu5Ugzz3f2vFz+1ojtf4kRYlMxNjX+WY
Kv19uPE1bktmCNVCMkBZPehRrcHwFkhxYRot4mtazPFnAyqvcfrbDjPy9Cop9kZUFUtKnifhaLYZ
j3TeEVLp3fSD6zySWNs/vDIxR43FIn8ZZM19fFvRRWYssIgEs2TTp8qd50z5rjqayG/BKWZ/b8OQ
0ob2mr0as2JohvhhLEClfWhTlmtofynPTF2RStDAxVMLeCF4hJtX8+bsiv8kPtko1+OFtTzi5HL5
uocjTsZdeIBYPpINnY0PIQOyj3x1m+67/XuYN81vd6cxRAOnji0okAtZWyaXpi1mI3A/n8JLDhQn
UkyIpMUTMEO0FYANIg1Z6SUt/GZhli6dM6g3Na7Awe2NrMEO+hpZ9PlxXEysGtu2QaV+JkdUDpLh
28tryrRvGfq6+xrmia9HC5Ha/SGUvfaxSaQIO2to0uDWQkAnsmp8J0XT9g1UEV/JbRqLxta7tC40
ZgOc7PnrHbYAQ7IoZuYvfxkG/Lyak279exkRJqXZ/NWgpq333kqWy9QjkitGxd+GE0eYs1eiveMU
QyYrac+cKtbBzPcPpYTxJuD/DXZFq7/ldV2dHl4L5LoULG4cNoLfbKH1c1Mm+Ag91X5HLEZt7ygY
gMzA2AyQP9g+SJ0z3+UmTZLAA6RFcxIQ4Drx0U1y43SLBgwCrdbvmnhnbjn0RM8QWq3JuOtdK2w5
KNpbo4X7C6FQK44ePai8ZnSqmMumSZVSFHk83js0UODpzbHiicFYeKTkvSrUOIpoqcaStugf8mCI
STNelhNhoDj+b+PJ+02jpCKy0+xXFsNh6dpFOzQNHj89KuhkntztMYdox3HqMYvsInMpOAlsVA2J
INwNc5L/b+BQeYH4wyzkGtPj4Iq5Ud8WafJXylLLAqQyweOIe952T+xSrRl8C7i0G0T1+61yY+nl
ufFwpD2TVFY1QFwiNnUQPf+qJnJVCTzJRYbILIp2+B7zXoZHhGoqOBVRUTtDqs6TedyIxGS+FBBg
Ij57+Jh2a5M9XwcWIRVb1PT/CkPed37yjrRaZO5DcVfNyHkbtY36pmYx/6YQ+d1sX4CEBHNTHe9W
z0qYvhDeVQVJFywfdED4us8Vuy61YYDOy+ajNSArgOE9K0NuzJxsYaxP5E1GBeOJEmGyBAsoJmpM
a+3VboaxGOP/v4Z7TI6SivtJAb4hvxaWRKWs1tELsjbfa92hw5qsqhYn/PDH9Jo/L7o2PwDg5u5H
cIAb14b/TrAu/EHiic9SE/Wjt/0bvBXZkBqC6v5Gf+uYsPf+NoNBb1Az8LVHTjA9Rg2Zz1AUlJXA
2wMNGFh9JjgO2fIaygAnuWWXT10/8+dl+P0PYOID6YWeNwZ+7CaJKfiJc/KYupK1RFxLLJ2RhooJ
YRNfwqO6Kpd0NydrfeCsy8uljsgce6Qv4ZrH3DDnSkehQe3zUoZRmHFquBJBU9QispHxqsYxuJhd
1m/LglaxjGHcN0I0uPF9pWwLsHzfBjFFtUMbf6pO9aqEt7MZ3ShdL497GVlWqJ2d+PPERuGPF20m
VcDFoZTZxuvTvdcF+VUrUBt/XL+akRaUK/LkctNnyze/lQXqpgWFWHrrjA1nvQDZi7/+R1betYqw
fZKnVS1NJ1dXs0FxqEDWJB+/ZdshUxBE00PwIbqnQKUdOcTvOtfGo/vMMI2iipwn8Qob5aQ/Hi8u
0/Veq01IrDXr1MVukE+uJOWEIaLN0ZTZYhfnktSij/+v3Mwv9JyqEfYYNutDCsYBo6to+2x/68/K
UP9eWu+viU/HmaA1pYPpPjnqColzGqWi/ctpvggEidVmSzuthEopVo70VJEON4U5vebHEXUSNkdG
I6GMHO49Ex9+rUWb8KoLiSR2MYlVaX8MigaFqeOJu6HVoQc4GofFialZFBJBuS62VRxzRmrp76X9
CNgzgHJRH+NLJbTIoZX1g5UyfM90qj0rVjq1Y+YYdfqY3P6J87UTOfq85x5XqQEA+pqCcfWF8pk8
hi88AVv1YmHfkUoXMBDsVc9VCWO/CwK5zXE/GfWO/Hido/ZuIUzJ+mqdMywWFie5ZfhphFfEe9Ai
3BDizKf8JArHosX62AuvzMUNGflJ3aQ4dmZX7gGmKuTON6rINANNo5qOYgR9y2tGZNUhEyTyUzqX
vgpiiGCd2raD0MncsAsExTFQLbn3caBAhVJYRMGKbQIMHR2ma9wIfT1FpsyFcoqP/EMcA3rj1/IQ
LT+cNpyCTpMVBMkFCuNl5tzVRH8IWslvrww/E0VSVP7leqD7eMxVUoteCFNk4Nw3KY8ulSLcAJRG
258a5hyszRqnlQoB+PD270IaP+xYIOqL002jS4Ft8xUf+R1HVkrVcXbetMM5uEjjpOP9xuSUxz52
qNitvN4uAqJQJU8/PH9P9bLVfVWR6PTycyQynM0Ik+w0CKpqsqeUrmFuvV0EVxFfXBj58i4gZpqi
BrxbIk4JBB/3/9DRS8n9RvvWYb4Zn2+vtcglt757/PimQZBjsoV1KVK+pMkloLuE5ofVjTcrENvo
gvs+StSac0lWK1R63cXtvHbD3Hiyyry9HPWWmiCLfrahR1LoeH23/knzzFT19O0kSx9wozH0jTjW
S0FlO5t1814CqF0nZi46jNOaJ1CG5xjR6ZnbGUg8c8hyOLK2Q+c7fJ/+M0/uSbpzZ2/2x0EwDnpV
2SFeC/yT0IXppfhxkrjC5AkcVYDThuoNntMjMuQtk2ukIQT6FsTTfTPUgMvPh2GQHDPKgAKc28gH
F3f4h4F2GndmvN/MAEvuOOIR5nrSrcjMqkHsxAfz0Z71KrrgdOqoODCZgSkqeKI+aNFC0ZXk3TFA
OYbFGGl1YCOMO5VzDDgJ51an51bVhQ/nHHnz7HuHs9g2aKLJmMn33bsi8tHJv8q/+5FunSWvzvOG
V/MZxT6aesD5U+giwR89AAs5zEa2Tm5HuHyhkUMC/ZYWkauHkwvcjX7utfze7/keeBuM3/ChWsQQ
BEHHGs2ETeAJZFm+Tm2rtyghe3Vdfmzv03b1FFHRTEwUr838kffbvZI/tVXh2fS/9CNsc8fHyeCQ
pDl+h4unS+pmY99TFNKb5olszgueuqDFSEF9UdAC/PrZAfCMtJPLdRI17IcIVQoRnlqY4nty+lIi
02zAtcRLP7oGrMeakhIrxUZI+FWts3Ylyujqb0lrrXOPrDrgglRI1t+f5mPeC7xqNvi/5dDdia72
6s3HD665P0ETKTkrfc3+vx6TRj+e1DA7LlxiM5G8i0v3aRGWoGf06KqsQA+2bPekUPXKvUX9uhnw
7jdbRc9r6ejIiu5UPkFULcoE8BeDSJOMJeG0yxCzrZ3AbhNj9sWY4WgHCgiyWjL6DMQTa7S1opNY
qDXOpaIYDPfKfP3fg/vtwO5K1Wza/swuexlgp7fbbocdCErk6IBVi+z7vAjN7qEWZml8mIR53nDF
zVYbMXK5RWwcjLSbOjetu0b0JTahUCs7JMkSTAc7o63amfANEBnf9Evd0XPKuOwEdro6Nj6Zl0nl
X2mnVksj9RZv014R/JAOlOhKRG9e5GsIqrs9GQvOhuQR30urZ4n/wnQoFE+zVyQXaMM086AhDuaw
kUp6a3lyVfvLx325XohEra7J/+Wqt5g0XrjEx53h4ajtcVduOkT1yp+/t2MV7yeZqTiL4tooCjmC
CgjoqtyHehE5oLjvnHVf01+N2hp5IG4BuaFQWnb48zl+qvImcQEDv+JV716iUjvGlyY7pshV1MyR
IIFdaOVLlvj0b3Vv3lc6IIBAHrG0vkP+NqoEKGLqWhK2gMHEL6wsDTwbTxjIGxXlph29caPq01UM
LAMWBUoX7lYRd6H9hk6UtscCvlL/js9kqRPiRkthTrFM0pyJBRQ1u27Qu/TE4h9xKtMrVEVGtQv2
jW7nnYIbTzEWu4OUWBEQaAcNkEHQ4vjtqjiqSNlRyJWR+FGKQKJA/JD9vOdnHJKB04W+OH0/64AO
uZw6RmuTCjPgyjVOFx4UPb48GkznYO+GFjgrvnG0pDpOZH96SBuoXnkGdtf/GLIKt6Xo3YwpNkgz
5K9oXpiNV+D0qgUhcz8x3EYSwL4Qtebw/Y6hU0qmmjfp6rDGbkTmXo7j5hqj1uqnxvfyRYuONgDW
uD5BQEKMSf6AYbz0k/I9e+ikMieJRlns5AMzAoz8DZnAzeVcZOFsCN9jvttTsKctDwXrlMV/eKo+
p0rukw8BMdeC86kYNRNrDfbCEb4BbPZAUoQyuv1Gu/itWayDqvWuWVJE8Af1rY1DAphKzFgd54NN
xZ6PEhYX/NlNHbW6qHFFHs8CAn0BsccAkrGcnPYdi1tK6Sukd4F3ybGs15SZUqTHFHa5DpLOIbec
3y6WZbr2vsXUXGVU3+da/Sc/d4RdDfYFc/9sfSoen8EcrZGCXYPIJxaqd189cHVjoRJyI6ErghtS
2jE3jXkr9+DxxRUOqc8j9eHV4KEVmkSXDB9A/wGlHOfjbZd6Je/vLm7EiQlLlE33bfrzTuOYM9Cj
32ZoGeBlYnspjKFUHAGZeVuK9/b/O9O0pwvzHfOKFUsPbOJOEuEBVI3qi3w0iUMJbIawsyj4b4VJ
s0fGxeXwaSyuMhsD4OeU8subjw85WqFexMPYOZlAgzn7vorFhb+NzX4iTkFROpfqUTEAy0bRy6rk
32IBFnXI2jVwxK38gAFjY/jDJgtq440rdBtipuPm06rrwp3xPjaKX3gJoi794SvgApIcZTqXqwXa
jWhoirOHO4W5pAj9Kr6yH8ZjYchvvpbwI2pyM/EAh+pmaYRUI/HLDh/DJNyK1rw86u+As4NXonhk
NHt7yP49CvjGa0jNwZ/XCL39O2+E1d5IVBq19jQINy6xfFvpPmKEEQoEJkeqJ0cA0C7vLnOCS/dg
MvhXGF+zn5T2YbQ1v6wHTQTbVbEKXmm4E8tSNmstqF+66MHiYy49h1wke1bdgPptxDk05E0Z32gs
CsmQwXZgfsAt9NAjKl/MKNOFmrzY8PBv1zbmUMCbxqAe+a4ExN8JTAaFUR9yw5m2eKYY9ojPSBgE
fz0ruH/bXQJi1Hn6AyvkAJEkK5u1d5a45VLQXpsFqYk0FNXccrNT9Zul/XmykDL21IgJFs//gsjM
LhvuYJWBYou34kyDAk3plj3kf6VP9DYPaIeqdwtBSkvl3qS6562sGL902aqqcLVJxQ8ih0vL2PUh
ENSVTuL69tKtW0PEdOQlU1vfydZu5caVZfZZiysjvrvC7r46m7dUxG03K97iPeMT9HexgSE2xll4
5DiyzMW+ZIRbleYGcU/Q5Nee2v9r72wPnc3ktgYsqFrBQSqLNzrBjtQ0YmcUUjC1ATgM1QVHy4Mg
qJuNnvi1iYyjWZiMasUZAoB4Oh4iPN0SNIa/85nMhJLNfpwdjRwd2vEMJp/TsWHysZwd3tW6IO8D
asgMiJjsAKbhlIVzEMIKu0SHzFpKIw/7DQElan5kbo+iJz4ySxTHMlRfDWaOV0WRyZTWo9r0fikZ
WToVlhuXiGaooqxeTYTGHZTgGB/LRCGDdTFmhjbqZ9dB2ozab6wP4VdJSxmcfB3H3BusDq91tdWk
Li/6lk5sAS4FlBBlAeEmOj/0ze7N7KaT/1xgD/oFVylUD2q2pJzOzXdjt1rXLXac0H5YkwsWxgn1
LPgB2f8r4KrazY6y16RrOPYXIZojFDIrzTNqf9eny3e8/dYGlQNQ+wVvkbUzMCYFGl4uzieBQAis
OGmPytjSC330P5zHKokCDmGgmSdn+kr2FFarhhYbbRbOKx2n08ahTkGXWe4vN1M7cBhqf8uYHw6R
tEy5uafAnUUPL+etgIAKaSZUyIWaEHCsdPAdzpJEgvCFAzIQiUTMqxFVKR7p+q/oR790TGosO46z
Bvj2zoR8y+qTWxbv441VChNxeMKe3qmACLVR22MTX4zqV0Rpsju55NRywMztOQBNuRSqMMmbqhNI
h72kq6NzQgWHdcwnGN9xTWNEwQd3T4EfwDG8qYawAwMQTsymmxdhSCu6LY0rAAhe5GjKt7EVgjKU
0NSd3SodZF2UxMiA2S2GRymgm0HudXvw6Muzm9hiLT0XxZJ3Rc5TEscDVdPdsY7uiylhBjj1+MH2
PbKdmJ/wXZ7ZKlF6ugdmt/gskoZt7hyeYZsm0FnBYUgjRDYuMO8CbAyUo2TRmqSoanRCDyJA99xe
97k80Eyl3XUq+rp2EtSrGMEQCyrqXgAuHZcqBe1YtaT5pjmbbsjxo2dCg883rcWNqa4pFKyDy/Ek
dNA/h/dcQUSI7hKHLKcNusXTnoAzHTBBsf0oRm5b0ibD9m23y3SAJYWfE9eNNmDl1Sl4eJGCQv4Y
Hmw2q2FWnREUfd2kzIBl6RRWxXNakDAEyxuAa2eB374qc8jfclFKCxmGYZP7cs7qRwTcka2CPoZe
SIk58bpwYEF8q4G/fGOFb8MRGVJfcbT9bvdbztAgcyKnrkbix63r04WRDIKTWe/2XMkXCO9D6PeE
4N/CozRZLtVWnVO0D/SQF7KfPW1PYEKFZjPizmjHHO2IZaxNtM+hrGsugXCA963fIwVNrNe5MOjV
KeiLhBEHdtpi8faKxeEqryBtPP9BbVZG1EVp5IYWOkPWrMdvJJQ4UybhmvrksQY9tZ3qc3IIdslr
T1QDjs3AbHi7h/qzo5n/OY4soDSMjB9B+jAt3QP8oyvDcSUvo8BnfF3V7I5snKOU6Dt/7M5ggEuV
d9SPfkdJDWA10XHMAbBuMLSzQ7VZy6wCAXM48VBaiK/9SjVbM9J21H4d8XB1XiuuSX1aHTbcih7I
7VMKZLtlir7m0HOvmKEaWxk3Zrlax+Tnk8Jr9FaPRyASCCihQtRdHOXjSuvc8lEodO+Dt+gAxmhK
2qMzLh/vhEozzmR/2imUsFxylKV3cGtuQiHC63OZoEtqkqfGJ7ViFiAzt0hxR43yfVEox8jpoOlz
UspG4hB7216dhLH+32TdVVY5ybgLxg5wctseuRQewoSTGt7ERlWi852wwSl9CsNRBuQLuPetqfJK
VsSUqYxlbwJifZZY8gvB+DvH63Ii0kFzCnaRkpA9Cvr9tz5uxPoJlmIyXaLEuDWL9GJjpBJHvLXb
nJz0jLnuFcBb79nYYPCnFYirLYn2NCH8PJGT2PDmaJJdZwMGag5WiTRAZeC9pof2ZO5Y2AlSXdZ/
OGN0TXFWEnhYlgXuvgT5HliUEuy536wl3Sq/NSZkX6T9cwThEKsP5RmimGFJKIqsGGQV7+WsZerM
7vhsCTBTqgtcSazXbmidpXx94Pg7p6IHiSG41v/NdQfgQS/q5RPoq6hmsyGCEbw0+IUU/S2+UE0P
LyhrTMDGZLrSANSY+AUCbVw37ipGsmGwUHruhXl+keNs5oDGODW3e2tD5mrpCpqhNumXz1WuQ2oC
fDvMXbYEG1e84CUQn7hLb4hBeSJ9v7DiWxTaAH6/CAusQfQT3TpusSwsxMw1Hny9waulbOVRDvRr
DFF1Uk2M7WxopNThU8Ox+ecR64CRcnftnKnjdpv9Ku4vgmDp9BlAaCOi+uxb+VRYutFkFG5AIBCz
MIJbSbLMeE8+LgdtkrOatYuTdDX2rRTUbqlDV2R6YcUgRwPQgZB4251EDrFabL5wdGr6rtkVdxMf
U+BgX+at/vy5F7djWy5PCBqBwtrB01BtX0BwNjfumdKBlPW35RKgj9mK/4vfFdZLPPxSpih1vKw0
3g6bZRJc2I/0p753WHX8ol4m5O1I+k1/RtaIUubOpFxtzLPZfePVhCT5ikN+yALCLGiPtooabgwy
+GtrM44pepuwOEy3vB4x9G0Fh4e9l9MsI2mj+jyoAauNd3GqqahH8xOyPfsUOlLNPWCdE2UqGfTK
mMGMn9wPWmkTb5TLA4lEEGPv2h8tv8OgDhGZhm3WWux1kmHgITAJTDu6+VKqlzpMco3BKwyjzxZE
iOw0C7z8r0oEBN28/xsExYpAL5O3nyo/jsmd9MC6zlBu07HSHBGGw0LEeKAGV8K58abYgWcCboV1
TGZ2IASR5NhJi+cnMdDb5RMWJrcEY8VlRfDD7PIX3baizHvM/V8l5IYX08urnwvcYYH07eHQbHvx
TuiBQPfXghuoAaEk17hCwl3QjRQHivpJvS6GyXF1kyKQZ9DTRnibMLhJr2IYPYDIfXb0A/w/vzVM
ha2noKcLczFZD34q5EiNV6dGPxOMZZWWlRGMYoWf42yZo0M0A+LWvLO5w3lvm5DwfZHW+mApA0JF
ew2q4qQWWEwVCvty/pn7kOm0g+l7VwABIPJNAM8WavSYVNlMFu2i1k9AWwOw8asXa/7rLPqR4dKj
nd4G2GNu1TIEXU6l7UGH0eBvB4H4nkwuWofP3TjlFw2XHlkZxd4cVDQQZjx1caFjQgofJqerfarD
K+PzMymimAl8aqaq2xEJBPGgbhTW8NMTg07J1R7oeY5HcXXipz8d5p1QxkFGmQUVDsA+yFWTsbWq
j9WAYWr84ZPE/VouLh3iwUydTxQ9cXB22H7AcLsnrisDZWzghs4yVlTNUte42r4HE2ufv7AGHJ/3
gWXVpPh4F5hA2XaChrRE7mXOuko5jpoDyNK6N5yUIZZGONJXXluzZgSZJwM2qc77M552dKzxgJ+6
CCQ4W8lUNMmWosCVmObM9ccdZJ0jFy1+B+yRE9MzT9T22sWwc22ir4eQeugsSqok9CZ3uz/zVwtQ
Wlxxg4rh0liYaVxhyukM3SIrXgrykF1gGJlL5pWMl1/bxDixsDDEL30DtOKpTJKI7ZXX097vC6+b
YKDlb+qBJgGqnajWmYdR7FGeKsz6+myOCJHgFYAuuM4EdyV7DA0d1V0pgjOVeRTQU6wl7PN/2So7
nR2m/wC7iZTo3rFJ/jTE4+fec1BYcMZm8VxozI5ydHl2KMmOkHdueCqt+XaWEdl/acI43d2P3E7w
x9ID5hHwSynYEF0feqOFVagd+zz2XblNYG6QSuA6xZOD0MeqpiEf6AXUe8sUq0XPMRGmt3QsIGnG
hxQH5or6REFlvl9dTRgDf+LcVF1AoP4+oNUREd7+PdGPicDRGjedpwKYQ7OOd400wLEVAZVmzFLi
vjfDYZ9NwMYUIXUx5k8BxefN6EwRlEIKgDX3p+MsQoNmr1vJI9PRKMd/p6gLG9A9WsbBN7+oLTBa
yTVVXLSco2bFdOdJuaP7cSm7FeRngZMkIQzK4/Kr2d3Eo8J+CiOtzlypz2mclW+qsfhexAWdtvYa
eJkLNJCUmdEAamGqBO/DacQPHFjPppyIA8NVS4lXO9RvsOm56b1pGCBJLqdqvA/2an7/g2amro0d
KEY+bqJuaodArMjm5V3n35DKlCUutQ+1AVorIK3dra1muOrLsMNM1VtFw/U1WYlLZJm2gnJcAHJZ
3xHB0AlUQ7anQh6KEELTFCNZoniPKc+wKAGuFxk9a8+2UFTbzxwqebstxdfE46XEHGrKLW/lJzKq
XKkg4qDq/C7rKrhgKcJm4Snk+jUMyA8VgUjnGhnqrxRrv5HpRJkoVtSHRx57IWxHHWH/uMcQtfGO
1k4ndKuig+NqRBLMf8kOoaWy53jnSeFITnhaoYBPA9PGooP8DQz5/MAlwohrzbk4oPKqSETJIuvj
kRne4MnYcsR1WEpPZmEYqnZYvwYztrqZQBnvKY90rfv+XLq1asVTrRGa5RetfSNOMOKBLwaP6ZVL
lYQFpYHfz8Bnh1MlAX7RYRaE8sgzNpnKHpK0mOTUZUQEHP3KDdRkxAaqNtlQj4C0KCVRLhUTWxyk
aVvwp2VPfvPUadypT7zQHibWMLSHPab792nKQHVanY+AcmCqPqz7M7YrOHGsD3h3iG8thHGBytdr
fTjDVeDyrk/S1MqhDytI2T+ksyILXDUlJZBrs0kVDhWTDM+6cd4hVVqRj+caFS6j53u1CMOYnjJW
6NOJ2PnmuN0Aw/aaS1BfrB9tdp4QYrPMFq54tLtN4l3tHza+xdo9waN84gboWUehcBc+QJmDsqwM
my/FGbNar2o2l4Wfz9hSF7z/u6lY8vX1nS6yTrlNSspSu5smldT0yhhPsvvE48Aj3le12kQIsxyN
Q95sdrCD/ZLThyUDY9oJUI5eLo1GmoX9m8KxTdFdGZ5yxLcVFm8G8zf0DR6Eg8VijLB2K3nt/oMY
P4DyLJTwxpgkC89fF5yLRTo7/Wyg6DyQCEWnhlUFrA2okWzCeBZDnr/hMRy+9UoIg9ViqD6Jv3hN
d8kK0gP8Kwl/TBWc3D3T7r2dcn2wZkygCRLc05TBy+NoH1zTnRYDNlxTfARCBjsrtm9ivT13e/sV
SsR9/9tyQQsNr9JjUfo6FX7n5qYsiXGNlEfy6wuvd0v5AeZTceQP0nNyS3pvqU+euWvO0Wm5TgQA
exw9GBkGURTGLsofiESFvsDBnmbIdz1UZRMqe700gfe/DKJI+c7GHR3G/4f3D7ul90OGO9zvQ3ak
cjrfIINIqAKknWaGc9Fiz//++djTkTSInI69gJf2mQwxNm0jBzw82tcVfoem463Ow+nL4lOY/tJg
TLgWzJXYEXK4GPbnlxVaLAcCDrQm40dyGypKN2GcYhYEQHpo6eErqHA6CRMFB4xUhztNcdEI6pON
KJ9mCKQFLGwOV36XXoMf8FFVmX0rhr3TnyqZ2whcBIWWzGzODfks52j93vt02IYA6BRuTZo4HPjQ
0dEAkYJ7VCUy1xsAK/EyetFhZKdWSX5rpnUdsh1QfLHJ1q6lBiChPX+12Z7cYL4/5C0KIBNSvhNf
i5FsNuUyILHdNcXhyt+bJli3Qrt68xOpwtd+5MkH8LFecktudvVhSExyEN1Nq/sUzZzKaxFyrlD/
kCzTjBVJkkwpeToi/fhuxbtegQFIXmtXcpFNB/+CfAbBV67qKdFC8obWTGoLLOnA3+BHvUVSyDVK
NGkYLyoC3NV5YcVxY7vxPCgJi1GE+8KgEHcDYXzbt9z7EN/2LMTlQ4ni7Nf/3rSn0/AjmV2PiJRc
vuyiEG8XwLZUiUHrDb8Cqn5cBa412rpoH8fIx+285/Uds6zY46HnS91x4dZKWjkSNcHkviSf9lml
Xmm9JduyaoX+VhK/6yKq8FUnNgrNZmJ5mNfl74L7zeXMrOikJj+qCw+9fWfDyo73NmwVGTioMfsh
b9lZFTtl3pC4MMI02D1J5dt9YGWJ5VB15eCzFbFkajRSrldul49/oJt2KkdOILl9Xi8JYlW3oVQn
nCwPOO16AZRMzK0p+g7zZQvxA74KRud/vAPaE8YK9r1ioLxTiKk/xWg6nSuqoHemYrkWHe+cTW7R
cyryU+u15b/B2GTGo076W9sNu811Cwbfh10LWDg2np9VCpIdCDY8DZYSNPUSTumzAaEe+3iMPTyl
Mfngxj17fJqhFSbbY5kE2TGkP2pu4aYENIHnsNznmIc7Fu6Z8oimj1f3tS/m/6zR9c2Qj59qO8uZ
f6XiW8HjaMVBFAnnxqALiuq+UBJg8f5zjFzLhgPY+fD8yN9m3CJoHtBhI0PTLdgcdnmhn7NOu1R1
MEwsTSQhQkXnmMHmWwYJA9VK8ZUfGYRJnAeaMo5N6XmZJ0BmyNC0KqfzYiCxs3aBbTJ1CJZogpXO
/KyKP8h1y3iGBXTXq4CqWCDHlxxlr3nv03cEI9zs2KnkTWcBR9DawRUqyMyFphGNCqjHYbw6KWNF
X7Th1u8t89uFzD4GdOkYipw53fSGEiSkO+dlBj1B4FlX9qO52uIjFb55hUNHZYFxoZatXTbf6Y1m
/QKIk/Wwcb9EP2Z3yItrVAb7fBxSB94ys6yR4FTi6nn/UxoeVPsWkvCGIuwICZ6VGxtlXmVH2iXP
mDMFwr0scTDh4NID5fCGqpaWOPko71uvQ5ycDaGdXYqXeUio7TJqHJw71AZVTPK8pewB2CLLmkjR
VYdxdWRf7Qpsmd/xOo7NMKpb01lZP05UxaS2lptHI7jn8P/lN2EyXWv+SP1gReYZUm6+SDvC93wW
dy2C/fspVG8vNvi5skFW9kSe6ounEEFPdJWNykI7oab18mwDOCaE+K9VG8oAWJy0B4mxkqXW4Czp
c4GrCOXitQOi6W/uruzQaFuqoutxnZy/yZlG7CoJi649nbn+Xr4qj6x85EglL0RD0p2SlDlAj4/z
g8wIj2iVo0S6RPkmhrgbdidL2yiqSfGJGaP/OcoNeZMU6vTug+MAZ1GnD+Mb2g8COUGvAqwJlEgQ
WPnMb8qLb+70taPs6CY7TZkKkzx9VWudUNGeu1i3LfPOG+CGrqLPArQ4AU8FrPyklNLGXKUMPtTT
FF0s1Qla/5n6gqdT9sKtkC+pQvhuCBf6U/D9bqVseAhdVpC55zph6n5Th/u3v2zn/hI+KZppkBaZ
jGRiAVsEGjlh/k3poAxu8LwXoRXjDsKJ0lIhZGqQFeLvnYpztNuFqgFqhOgOQaABJ/vVePJ65LE8
LI/6xQL/SOi/2WzwIRErnaJIBz8wqKnUkyY6lwPCyCul/YKSNi/14WP5rRyGp7/WFppBbB5KBNV8
5bkNjh4lcgPDL+469/G7YJ1mFkict+9uGM6Ci2V7BFibr8wK6nl2VHuvjRpnzlMKF7xNkzGrRw3f
rBMAM9Sjo8BwtkWKyFvoXSUrCtO7QhENO8EsKK1WlVzjrptlarZiJ48wlJac/AHUCgqISUNfhZY+
xV9NmRi35W+v0BbR0lis15vh0YJu+fC62TDgaMQGLsj0CvD0qkhdwynCgB8wkqsD2CZO/q/zqhS6
Yrun9SGTHu9sPCB7koIfV0vaUM7ngzewnElMAIuGZaxfXeZ+jKiyeAZZXoatBRMKC3orvJQO+m4C
KI0suug165I8GLhXKB8X0uk3cf5rLL26fqvSr4madrU2Z6tyK+4wjg3Dm2vD5m/YSOMHNoG8EfVL
MbnX2nrnEBVK4odZwwgJdybLlW73BvrQlslFWqwmsajc+dL8KaZkySif0FSIYWG8lmqXRM5hyoHo
IFJ1Z7MB34YTyCF2EoriWk/8/TptAMxKzNuCDor4KpKQoE0dqWu7zaKibmKtgKQ8pSSekAHN5L3n
cHnl1Okao6KAaICvv7UwegtuaEIkqRuNFNxvdoKCaaG6FdGMbAzZbuOxTsBBJmia82e83NKSR2Vo
WW6LInoZSzpr6J2zidfD+GgbxwhfGVBQtunnaugzDp/l8X91DQ+Rfto5h2zMg2NB+1D9iIQgIXw4
bqwYiixvqQHiL4W/ufgf3gWJwRWqWT7KnAmrl/nqyvg4C1agt0EwEeU6JR3cfJClCUgaIF6QWkpg
2UrcDgvRhgpwzaTtA8mkf3DKY3LpqoU1CEQ9Qr735FezpB+zWtQGm+9bWXg/ASz/+7yAYKUQyf1o
0tcieBDm/kbSXNAFhJlaLqAuALZtnFTk3qYyEy6vBgKkDhpO43B+fUPEYRCOb2EDPA7wT25eQ9VH
R9AYUpqZ+Jl0LpUFWpgYxabWL/TyqdM3tTlhdlCvb5FHzoESgJUxcNke58FeVOfr83cFfLMD1EWT
kGvMAcN/0IvZa/irp6PKGsSbdEm6LuLzlyhSglDTNnJvdPRlMQhWKQY9I6TupRvvAfHczRZ5i+OC
pdiVzVEZ3HioK7ARJU8tq1cUMGfFLVpmpUx5nKNQjiEvpl5YBLVprhi9ZbS5TNrsKKt4rIsWoG79
KK+5iWhJl8Wx/UkgM3vNRMOgllGbsU5Pw0jTgV+b2Soj56P6cBQAFcdN5mh6H3xLOgxScbWYQyED
4tKWmHfBDtwq1lnn8SFczU+exiOuiyAmYjsMyMgSr1SuALY5qazNOwrHs/IZbPRy3Wk/bxcf1s/9
EfyVqdeYt7SFtkT0QpWXllf4FgHFOAqHcqr4Gl3sGMKQSdH5aOSggfJPFzUbzWAZWp9gKYwR2YRG
BuDidGRgFmYK90TIOXZ35umyGEuRCwUMg1sGyzXbMc9PhLg/PRY5kAZezyGtUL4hDpSr/9TEj4Z4
3KuSubg9EucYxYaG/7BELYG/HU1h9wSrLLUZNL5/Enw61y9LYJb+EhS9nqf4A4ZON9sP2zrbl2+A
tispRWLvJw/5GxeOwr+OgLm8Gf4swvgJtzPyYbgk6LbScNugKtqxeVltz/sbZsqz6dAOE/Gwt96i
ZI+fo3fkzOSRKCDj2iM15y97/2b0LlnbfuAx+fV+dizXQe3EF4EHY20yGY1NY3jWSYcHimaSX9WU
LMuqImZY2ifoz60sm4An7QBslhFzp47DW7iugNLoWdGfqobQ9wdmO2XS76r/nTYvtlwUZeEpmNo+
BtfYqzJuJWHTLB8R5OLqpWng9O+GzhhphVZ2FIBSOT5ltW4hm9OODHJix5nzdS4a2ptxXJVkrwv7
LQ9oBgyMxux0pM/ZY7vB0G72CmzfrjQKbV3TAth3SKX3FpgQHK3QrMiCm9pUfib5jjI6k/j5etQo
YFhaU6o26gIWqRls0HEVyESQNvHKkoeoRbGjKiIG9uxCJlYbczRn7oJEZY8lSzBa/WG129Dj32ih
8+QT84OoZZNPr3Sl5ho0YeYppM2vgBHcF6L4hAB+gzvA7tMMT3cNSUXXc/xBLtRQXFpE1qnYFODe
LQeuMfDbjeCgJB2+6G2/bNMYGy/d/UQjQWrFnQtVdQ0de+Lhjpx8lg3FnbqgKL405cBtwwvJpL1J
YolAcu2qYlrUOEe99MmjVcOX5jmhDBwDSS0iwEy2QdGFBlPia3MImKaZH8ikJP6597Y4W9OFyuUu
7YkhA5CcdKvx/VAT0GXh7FyZu00IMMhfnDI5h+er1Fr1CNYVyyNk5VmGvlUixLeoGb5RfLaPnA8M
R6jk48C86l3ED1tEpoZa/3gOGoq2n6Y8eRhtVVYjnudN14l97BORVHHmCUOJyCNGEtUbpAg5y9DA
Zi0B4Ib5V3+tQM5pl+uGwf3ployfnkJQ3sm6uRFIHjSvNgpUVNTQ6Oe97gOTPWCMZi5MIvkI+SGF
tPuRV2schwztAOAtGfIrtYybHWnyU8TANI9YykDTopH1RztNqjFb/C9SByuXJYYUBi0jbP4vXD2t
EvpR9F5CpcKcpIcmiKCx/hwl9CtIY0ApuE4KWVzVWB/G71HyTgeBQLz+AUfltV9tR1olCrpbGYQm
j1+aAiPz0vDu5THHexziu5+GDl8fQ1Ol+tWfqIN4PLMZnz5SwkADZCdL7uOD4FCViBVw/M4De4YQ
h85RAfWSdmbAlTYDaYHRAzDlTKFqKPhcYkOjKt9FLt5aAyaI/WnlgSU8nDpO6XCh5O0iG8SM64Hr
aXrIZz86HXPHwML4pA+yd1/DPwUf3VWcyre54I6l/pK0UtPAxcIiVkJZEU/28rdtg+kuwiC1wZgJ
cPlpO+m0C+dhYGiPsg0arWJnZpQOQuIBNKTnTzNqw6NU1HG+P7kiV9X6uwRW72iy7fg/EKuT9V0a
2vLlYj/4juoZ7CInfLlFLyF9CWNvmStB4hucHMFsv6p1o5WKXZ+E+xyEAXOMv1sSl3FTM3r+y2DT
hzAKsJ6j2+BwmCX9BgnA5AMkBYmAWtWeBCpkKbpCtL5DIL2R9GrQ+VFmT4D47Hl+MdCwTuVOyBrL
lLmOqWKvGiVhIiPGzmS9Mf+jwfSrz6MZBbJIZpoVh553SGdbNLFqIsI9X3auNso2weSvhwJEiFPI
bBFbQ0fNMtLx39k6h5KnQK0/F5lviDZypCkbezBZdURShgmoWKfEUO9PBiJquhYEf8El2ETwqJ+Y
y5MJ26xTXbVhEtIADTw6UGhdUzmLNCv9/L4Y0kLHQaadhcd+oDPDRyi5X2QGn4NjG7IgDqgvdFNL
822UkLdrF5VVLkawRQ1h5X2+A9QnWszWUyHxKCveCI0eCe0adUrahrhIwJp22mAQaAlj/zAhI1G0
ZIyr7UdH30Q/5S9DeNojW2L7j43BghQ3A+ubkavFf8ar0GSGtmGqzttHpHPRoTCk9tSBpdrFut9J
Oi3AtZmevU1p0u/AJRuurhnOzgXiQGiRvRfEI0P7pFs2Q4dpJ+6G56qP+3EnQvzRSh+anD6bFyLM
E72mR5VEmuO565pxRLulOyU4I8SEJKBVcbeeJETNfOaJxCtGhs5kN2X+f379wgXqoZlgonNOTy4y
/stnwKejxd5vghKXHbzy+zEQ8NxyZYdJH3kUkXSouJlef89uSxUoYxmKc1GebVCtwlbC0/888Tw8
B64GEQ/cejU86Glyig28Y3VUOjpHoNVBr0LeyE4Y4L7lPs3+yZW44DAj2/b3gVWOTd1AEo2+SLJZ
8mOTTBQbIO4JOVhYLMfSm+C2MhIm4j1AK6XXiAyjswtzFvkKoCiFBLtEdMfeXfvPRgeRvikdtqwe
FC6w0sOvDuvaKXEV1x7+I5dzPfd2GStBxdpbPf0zc22hYELj2rjbZzoqT+WNd/17QMwJj+7Ge0Yn
PCO44DU3L6vo+ANkgoOiIT3wJRpN9Wm9jPGqamjT6RRd0GkGn1CO1RNXTuOQE9IoKmQiwNanqIrm
3/iVgb46BZJJwVht48COis8mOogoDYetzsLrXdNTTyVCtOIZdnyg4wpqOTOcZQRcUmBKQiuMFgcs
wt3RXU5vRqLboxFGZRC/+Cf2D7kGHWCuvRaDe9f2/Oc8/ZFHRV2I9HM2yUOvSYmtVaPzS23LSNfD
gp+jLjc9k4HiL849afgzM9FmTutBRySPOpETUlEnUqIOm2PF3ByVScNXf3nK9r6T5JYdTkAkq3wx
9pksqDnubxSC/+eJDUHq2Y/vVX6aBFSgVE6WCUB6BeDNJzrX3KZUK8jgJI7IIRWzP+JEhgCe7DZU
3W9i4dM3ZW+bRsb6xjsQwAx6K0kQS5FV6hmdDkH422OqxzQwjoCJAB9wBbKIuNWqW6M8dvfggyvJ
YL/BPdNrPRdfsx3tjoAc6Fn+H0tKODFr5zx8LQqSaVfmeBY2rawfjPlZgLFhQ1r3hRPtSFTVnrNr
qxg6fbCPe/7VBMsfhCDkvR8Nx6G1FxT4QEJ79FjU257pN8TzoYfxI65EqoRfn9+z69885cw9pIAs
Rq84IoAB0jNSMn0k8i+b1Gh3GsXDq+86tiLO3qsSQpzGyCNIfRQ1erU/mwErsUIIpRf1wynugVys
qIwvFrhui2rz/wfB4muizRxWhEAsG2cbPR23+pc+WuIyrIAKZ05TWOLsuYIfzGXYOj3/zKpXA8z2
5SY5RuVGdsoZKZklFpHNpAQWyg4XxnvEN7Sz6m+i5wDTSVKvYLEAAjLvmdJLyHbHCK60+ttfuX7l
sbH7oYwNdZAEpc/qmNhsNVTip89Mihb2BINrLy72WhGwLERWhpHSBnO35tw2f8pnqpzyLdBVlyJm
z/mqAZsZk8tuNJiO4Py9WvByQTT68nA+/p4u4zDJ7d1DRKzxuPUKnS8O8K5P3MKy0lblMSnCaQXR
I8PCqLVZLHMF00mR8Ls3KSWyH68AzOM7U3FmvjYxdpWFe687zQnJJCZKyyQdnU1Eh5YruCgFlI/H
oD+Is5UePVitYhBX5+1ZAh83wtLGc8N9+PonF0stdMf7iZiI4y3qQmeTeinut/gJxLihHumK9UBL
hiJ2kK7wpsBAmwYwwu1GVRkgVucapWgVhNfKO4EnxlVNl8U2X/Y9fWVXaeLq3g3KPvtQf3+97wKj
TIekJQVpkg3wZOu4G13E+x/51E3moajJi7VfA5axeokhw1yLyRr/lJNDFDlGaRCmT3f0fBuBIBoN
mtrl8RIV7gjfpkSSSmKgEvhMiQ1WbMdKLfjYsvz63iYzuV4bss6DpmuqeubBr30k3xaW9NJd0Tip
a0dzFcgDlXErCnkvYnU9l9mumeKtIBuEy3q18j2GcHRz3U0ZCLxloRkIIRtmGKK724xhlJjAgrNu
chgoyBbi0JjjhQp+pzr+PQ9UT4cl+8ArQtrAKu0PB7Put9VVmXfnrHRwmp/IT8dvopW6+eSno5sh
nH7Y8K8Yxl24PJQdP13DwF1CuXipe/drnWhZPcf7c+2esmHfvV3NGNBvwDKad0sN50WxAVlWgPlk
AD5Rupe858LNbkSV8Mg+chllTiiYjApiFqbcqlXUlnq4f7bRRB+b8uoEDx6orFRk3pxGaZdi5ZWr
OIz0XeHCAaVdTVNqMNKjat8OwAeEA0HHyx5hLR3wXtylfHSCd4kt/oWR/c1MU0RtIas8IG+VQJwo
0BIW5qsHKFoklR0xRKTQLTOcB8g906NsfbcMWx55FydFYHazXeylFPqr+PfwmaySuEdhiDDDSuPh
nQDPfxsFRGfPA07GOTnptDO64/yGD8HB+HePSLkW3kHUmEoAcXJWHDwtJhAZjb9nL/sBiCAlXCv7
TLZyU8oujwre1Hklw33LZhfmU+8bgVtFRSCc/jrWd3W2gSHOPnCNXPKgWOVJuhaU7ILyRBtTx/gc
5qiV4u6d1wA/Op93vp7fAfRDjRzre+KuO9eJWRiQJ3H0e/uPvEmPC3LDgC5neoA8ykUAe5KrrRMP
B0lkuTZK8D+Gdqz5k8oOLqjMTTpDILbLJHW8sn5PbOXDHyrzmUgequBU2fRECDziH9nhcCjshdEQ
rSt/0Ntwxt0nd6aqbwZTkiKCxnOTcBxLtKqSqSAUrYmYQZy/CinolcWa87BLNn5YqY8+8M9hkQih
i6Ysl/rFKG/nHcmO1pH5d6md80ICUgbHqV6h40HzDPl2SJlGOg3LWeeQIVjEkJjyMGW/WPMKSjGG
bsJuTPWwd0LUhay9OqyGqt5mZhbwIoVpPJ1FGJjfwx2vcjFzv/Cvn8Nt46M/df7rcdJ9SXzEFh4Z
Yo5eWKX0rbWGrankqkCSJTo8LZwCSAIIf6XuFhr/sUhc/stqujQNraJGZJQj0En5vCF6gbrxq6Fi
5qFuW88R+jIlZCJBZhYlhiYdOv81SakVweUCXevygDLsvnvpJ33d8HgMj+u9wNgmvYpSEj+qQPIe
vWw6k08wbjWDlbvbugRuPGznojHzaIWvEBN8ny/FpUhpcdyJaYUVFdKP484az1UzUPfrPGSlaU5y
CeINI938eGoQoTvlrJ761KhTjqiaWpUsFUmEGisT1n4plxBFGzHf24w1jRu1fRIgONh8D18Evr4Y
FsoA5AgAuD2VM4IBqcDVEiGa8gZC9s5YIfKt2wr5YU19cfbj5glUpmUzn3sQH7mi99hZ/cY4xlHj
wGF7tYeWgYp0CvTmfRsldh/ImE5BPvDla+rzDKVeP+ARH2eBcDZSWydmoQ4ah8sQiv1URTDL4wCa
nm8vpPeEG820H1BKR9dTn5h/tsLqLbBM7fGg2eKQ9lzhSt8cv+gfwVKKMYR+5IoLXV41f5/NuJuK
MKAzjn8U0yJDUAvVg43PfyBEu2c2Igzc61NjDLu7Y8ocgNiQ7F1Trd8VgP7W7lo3CLmKjy/TRDz6
cRiytckXIkoTuiyjzAqstJ0rxzWcRc3TXrfefmRZRwZnIrLsedwVFUmn7XbFx/H32Y59JS5qFsBl
LskaP5ZEJ5uOKK76q7wW/JSv9HTQuSgI5iMrUNx+GsqqmraeIIGqnsEQhwClZ/iKu2IBl0yLH4aA
8YPuNjuJKiea3JqfXEVImBMZpbHB0u4oDIrLjOX3zl1cw8i7M0HRXXvJQcDDoWIpwjllXz+OKIoh
29W+yWLH9pOBuDJQCSmNOmF0bzjOxju1PJ1LimUZDHyE6DLZfQq4PFcTRQR3RPO2zxj70ZY7RfsT
Huj7b7DV7BpBN3iAb9JvUZlz/Ban3lYcXXEpJhEDr9mYwuFZLCtLCTczLSok9+Q28FmqeRs0nVf1
mj3d+Ab7SezR3X/B8apBJqMZz5mz4MY9nGPnujRSKeScAmGcXyhrfDMvqwJ5+k0+s4PL2n/Cb2fQ
z5EzyYMU9Zqulel9BIlajaLTO3B6pc9mG2kfmiYKcNrVKQ2M3nliDi+AH0coIkU3Wuw9gH8WNrNQ
iINE/oIv6J6bf9ohLh3nEcz3lw2/89GUmXzhruwEzrfTD4hVhfLtb9Jzypf/kdL3igA9/OqoiS3V
SRb7pu4KiGEsE30fXWaiPP6kI8lYanvyRNZh3TU6iuCo2bW4vXQ/WteqPwnyUKJZWCylFpq5UG7R
BvplwUStdT1dWjHQJ9Is04P88EZGqOJFiqskDn8HtNpaUfL4799lcqNPxLLujNggCXmxkfqNVKsN
Xy4Hp0sAFPkeYD4iCFH7z1f2yh1yfKXIKHyoesnM+gw/r3WWu1tJOLEa6apfEMkGpSzvekwu+EW3
ZJvn1c2MLkNogme7kOSIr/hMUe21r9K70n9hxBXjbHLOhjn5sFO2pmy1QAiUFKsZHwnrmjR4tm+E
dznR4gQGAH4sm1GXlut7ei1FtbcOSfsbWUF3uYHIccYPn2owGvUXkEtE8P2Mw7wx7UVSvRGnap13
L37mCP1XVCcmyHWdy0vAemDpJtGVRUWI/wTF8rdj7+BvPuSyNBiF17YouE450AP58EVtja0VG5jx
fFKgePg3VqbHvJW6UKUKFyLFebJNdiE2oriUiOKbXOA6Pja3zCUoxxxoNFfANBXYTdxUZD/e/nLg
3T0lW4pRFhgSwX2+soYYtQzwGGWR/v6EnoIIl9vNVHhlum+MGoq93l1yeTsHBf3mL/I5TnJrMRLB
HGe7iUw7OFnURXurQRw8Chw4MbG+TWtr2v6/9jFvJoZ2qyqxopM3xgmwm6P6pCq1xvQ2XHe/PnK0
/CqE3GVrQlEdr6LdpV+0mvXc7ZU6ismrNwTVm/38OBi39x2tgEUIT4BkVQs94cqivR9xEOd/otCs
ukC2BRX4TWXMF1mrN2kH6T8CrTb+YdpM2W2jZF4HK4yLZyu301xMQ4dTjxkIrZjqnuj8WFjjsh3X
yiorRgQsSL8uTUpckFAShZU3j0HZTCQzzGfdOMm2mrPEAibTtiq9i3uFHexlOKei7gTciIPkyTQW
/euG/5iV8+8fG+LGPvEFYgrHOKUvzOVS8HIzI+dGFo20A8Vm0e+NCwjzrSFChaiAiOmRFecUwbp2
tEEu1hqZi1p1J5EsNitryb+JzD2oOKHrOPj5KbbN+w2HqDWLKGEaEYhHptGh0LpvrpwECLIFldsm
Pqoiucc9ql7iIW0YZ4lYSdDhp009pjqHAW/2zr02IQZYizD4IIClnfiwUDiyyqwraUktGZqKvwwi
9nRx6997xqn9NBMiqoaXTsN2dNyhBY8cVAlZsZ87HlJxMJlbnOoJqAh5pdg5RcDxi8QO7m20dJKk
YnSzBK4YSKF69ywyZYB3yQ9Du0N/T1GO80DFQypB3w1eAx/eesz8+zI1IgI8rB6krbzk4YsgwLUn
IyTU6SpJW5LB7YcH8+3H7/hWb5Kp4dYAGol79mau8Aw1micTFkeEX34g1C2Ldy6hyImPgK9HDGjF
LFXSiOQ/EygsIuMmthrV5+NHsbX17bVUStRlllXyOaKZKiWDwmX+OUqbKxme3Zmg4G9Kch7SPYN/
vgsZdzDCBCcyHsz2eslPrKsNDxYsEjHVDtgKVGzq7hNGA0BXZd2pCRMGOd8sqZMYV9CEiXA/ehtB
hqGscvQfxTr2RYYbp8VrErrYPyjFfm7vMPXU1E2CKzMmjQrnnTbtoQf7rT/CEbWDVZBm7puBMMHH
zElTrbzE3+zgQ/poT/9HHMLovmaoB2ijJtGwxYn4zxfLHk3QU53H2zUWDtA2aSfF12DxppYRujbu
23EqwKtWMYegVu+FSExskSsFHCpCcwoKIRWTc/EFKCjFBiw5LrZ5igTzD1nEgS/xYWlICFsojSWE
YHZFAIA2G0Xv+9rj+EYQgS3pqcetafZpF9sNpI+WI0B6joGi2WhJLj7RMlR4lggqJ9DUHDzWeaHQ
cnJOpSLLgBdz83Td9KDoSjmCtyfnwb+80SZzJNwJC8yQkZBiO/HQ0n5j5VR9U3/YL+1M02La7N0O
LOZDCHnZABdtuKfh8bvB+DXSyylVkJljC+59U/BY9hKyb0g39L+I7IyDT2hzkBhY5NFYqD282Wvl
7upHWRbwb+BCY5b8vOyK8T86KBCBTXz7mVOGkV/O3aPqlBOME/yJWmQuKWRB1PNh4rN/LdjXXG1s
NCv/3a0Vron4KDyEy5QoFzNRkGSw67GuCkywWjcBeYXIYi3TuAZHZ6CfbwS8rhSaG3TGJkREnamw
x5Rgb6BHNlZn52VMiZILY9tc5VFMqnaFWuxUHf3xr1FHaQ3EX//hEmafinuBTmR1K5LFaTLant4e
TazG5eaI0ftz6tV6h1nuJ7nGkMBuKGfdEtr7QJ4TkGYscdxSDxwXPuu9MoEzZuaVJxfPSw0Cu8E9
Q9jISuJg8qYREjwvkwMkCdU9x7FaS2L/l/lpALkWiF2Ej1OK37sqFV/z72knetmq3988e7t7IeUo
BCu5xL41e2cF3fKtboRh7O0o1oDVeXFM7xTyaDyi+ui18bz/xYvRpw0sUe2qBteSSCZqqNAa2mVV
hUROtp60W1W40fMUFfAgg3Yhf4M+D/MtW9Q1FmnJoeB1RMI1CJPC+HnOJU83ZXAgFfu5dlI8wFHT
sHD2EgTxjg8trOP6/4Fnqm4zgnpcahgdWgNPchLfSU+KY0o3BCsPesZyW2+onsINW397lt4D25TQ
g5nq8UQ+v+XwrZsTlF1wh/Id+YKsEVsjglgUG0F62Amr/e22rccwnNYlcAXoZJ9YecWU/kXqOpw9
+Gbde2X0VTEe51OK/+diq0usNvv8W8Zf9Zpj6u1bj9pPN7y3ZJ6021x+XuwU4b0OkOfNEgyCDsR2
ULZhmvGpTqrrI6VTNc1Q5t1Wxa3u8ahMv+DjxSoqSA9OKh2Flo4q1nE50kUReqL4Rpo5MoEGknbt
OefVDbOvhTi13tjbUER3GEjTGPNqgZNDTDYbdewKR8dqJq/3POrmlcXHywOPKrvPB9D7N3k8MzbV
wqo+XjKumoGf2CMVpLicldoHuSSDOOSXzl6ZW2Bm9m9RRsQ1RVov3NQUR8wG6J5EGSZLhgOHfjJN
6D+iJel4E3XrQZqENH6Szuco7uQo/QjMxaTKnqHOXO8Ymj2NrxWye9o9GtbbvSSnWX2H2tISaign
XtsKxB/IujpWcrDR7XN1MQ5j8yvEbQv7aIuxPHbhlwlkBM5WtYuXaqtfYi4/0zbzxhdUxbAZ6QMc
OsAXGrcEqPk5aX/Vnvy8Z1seyOCW/z9JFUMZv51d6nHrQvp6nCRQyJasq3YHH8n9tzCiNs2mb+We
Z+VXvgtJ0WXhPeJujDtbgys9nOVzPPWXZIHEYIEHvFgrSe+9xY6ldIrVb86tJNVgk3ljF/vLi+Nd
VX27kKVBWqfngW5pK8OJSJV7ePhyZwjp2VmeKq/RhZLzNNN4pvWVYBGLXhsk1ZnaTLwY1JHqY8KV
x3Z/FyFH38ANi5S0m+agNtzAeqJXDUgQfmb5RoL5Sfqiflcsk4vu+b+daRbvMjQuZYN6r0ct84s3
eEKWdqv83w6h3Gi6AqUGmRik5DMQP2VTDqvq90MrdaCAtaZRSt0zeW4mez9RwFiRXUZBv309LqaJ
FCH5NZxubyQz+3psJrtxEH4+OUPm6woD3dUEbA9pey7Dn54l1x4vHQ11lXA2P3O1y7Ad8wvZMt/E
4HxsGE/Ci6iwKktSUVVgufXQBiQD/o5ZXfAC/u2E7Rn0b8sVcyXOnaPZ9G4Ml9GwLqhs9fV0WMDp
HPbcyQxaHVOshLLgVzfwGor4rR+B0vzWOTv2I3XSJhC00xc9YV+XUIYJK0FdxkJHPjDzrDuYnRsy
IQ2xG8T0sIR3n164ZFd45vhuFHRDov5NTrm2PWu+Rl9wQDxu+UHFERv4J56AF5VhbSxfeEIqSsck
pCNzzKpxtVjLvYwGa92/6S9Tn5QfD5RMLj1Yw6rd5Dh55wWyxnkYZjNukK2j9nnlfCzsmqSYoADE
/2c7hA2il8Oy4NEjE8GXAgOgDWEXvT5Uo4yodxvMNmfSNx5L4onl9JHRhxIaUXYt46Z37JgWADaW
PmrrhdEQfBW+geFaVQXBkL5EdFiqXc0IwJW4NL1nB6bKGW9be43Jw96vCfOkEZcFauQkg23BIIrq
e3LLn3yFFAE6pgxHyUOaqIKbAG5BIDuP0SWARXDaakBL1R/nulpTTYxXX+m+ocFS/9wTer/4RWNz
EmEdSb+k6b2RRstSBCk7AKj3RX3mWzkGw5Ci9kAGV89+5+uyfLw6K0ufLhFync6aNm4wpSrrDCLn
PevbKEz/RXkUhLFiae4a7TKnAd1nV2bhtof2ln+SiATfp2587iRaCnaursCowHtP+H1jpHr9DKUn
okPZ2htZmhDUJqec0TY0wC5HbQy9UOSuJtJPbZTXZSA38I5DLkn9w1ReeghZ/g9twcg6gUzw620E
NSDUAGFGGk19MS+Ow5jfc3f+YSgaI/NSrAifDT1WuJLd5eG5BgbfKjhBoGa5lSOt5WpALwOLlKLF
1Z6yhxc/gr4sTIVRKnlt/VVxRXPmCIbO618/iyZwEFHeuWUYfUXJ76Y2McP0CpNqPU8lsiSCDmvi
SYhcTIVhfTTdK/K3kkn9EJQlh21Hmttr8S0w+tl7EakhEPThny0AknIyB3ha5iYeardS7Y8zPksB
rL1PvLKUJbDwcy8WHVpKuoYaswgndjjhdk/5yH0Xkh4XjdcDGwa7AgKsM2rVwmgakvLCVUEMymQH
BDl5GzJDfHgMVfpjRgra0pykwMQiss3tAmQdPN+yzj22JuxXhl77o1EErG9N0n6ifMotA11P+LLm
oPchHWBhRjMUqXIhgvBP50Mc8M3Z1HWZKrisu+bEADsNFYAlI6nVQek3QvqOS0ADXKto7llSGAfC
bT3ZyqIdGs/fx1HpgZ8O0NgyXmhx82dXplRuyG3SZfhSQHDhDab1t4LGNbNmgDktcYeAKVW3XL2m
bRHduZ4mo6L2XtEysgm1j28D3qgXCgAxk0OIYnl1m+KHrWnLt0EHL8Oswmdvk8kEMxNHslUrqnqY
PHjLmUSRAbCadVjVcX5UlmoWOFiO6oatBJlQiZY0qlH3pL5ljpVgEM9k7F2MnjkmFWc+7Fjv4W1q
nhZqf3XGPTzj6xei4Skf1aK8ux5HKpd3EeCS6ONHLyV6WRAlcsjEYOFnypfbRxlMJo+aRRjC92zs
MoayMHUA4FctSbEgyFquBh/Sjl2UT767D/lzu/eaZShksWB17gbvDMSu+weo+iDGfmHIn968VW3V
R2eqIBuuYTuv6FGJombK4wD/la7ezSJTVOMd/uTwcZ2Of0TgYJ+tNUHoiVdoFL3zI4dEDezIzm/x
hqK6i1YfwB2LR6qflR6MyaFzVADcVEJGS0Z1gF75lpWXI7EWE6dqko7OTQsWlDLShoK1OewSpFEP
dAhTUszKtHGo/wKK29Dy/mrz9UvnyyGIy7k3YtGU9avfNYCIarPEbtZImLjjfMd6nIL7Jz4oghAy
Eh7754I8n/i0iSg5CQkQhsZBGfNucbSw1al4ogYYmYqVRr0w4Q/U3YiVRyeHe/Zsj/T2afUtTHz4
JFfVrj6cv9f1BpfHAXQXJGMWZlUmtBDAamlNMld5Uh3eC6zHwr58eotHXVyFCNZM946fWcHdC1gP
vKVhicEaza4DHXwi0oDtJ0k1Js0IkRVPxdQGdMHrQa3x/JYobgq1GZw5Ib9QQ8WoJ8zLSWua/+BF
f5vEXYGHyFk3sBtT3Ag58+XGMOeczkCdrWPmuOAN7WXjZ5nq87/BJA7i8wHY8EB0EGhHfJY3v9jc
sYeUzLE9D4uXxvxNOK6iKFk/bESu48QCAZ8JjJUGGFxdHBxYDcCm7ofk0N117uawbHqws1iHb7Qj
26ca6QL/HI4HfQRXz0afB+LRXHqV+WK7KlARZlTv2XPApQsX53ZhrT9AjXrdb0RCMWESJOzYOqCb
2wUjFTusekrCgie4yQ+2Yx+buCYjNVWsRxF9HEG763VvivFLASbNIaIQNq16KSN/dtzxfpKTb3Bg
EiV8pcdDKlGSVnI4U/R52F03HiUCgq5csC+ioZ+Jm7MQBz3cVtH42XIBCQnTdfPCtPoNK6AteDPa
uFFW+iujQfu/h5bU6IfwEtPrNau8R7PxWx1oxJ4e1SKYAy3naoW6MdrdtE8ikKoRFYca+fzbt6X5
/lRsxvhCg2Gj1hgIlM16TvszyrBYmqMS6bWU7b5I5v2QsTAhnns1xGqXr/a5tshE5ka/PzKwLpM9
3Mzp1thg/hn82nRmnnSubwLBk/TODwAkX50OiXpcZO961f8AZffzgwUPPjphijNbsHZNWunEVNRC
gpGNOVjBJj/q55psi0QA62NMuV5h9I8aIetaK0beDxjGXQW7At45U20n9sgyWaJACf7FAimXX5gy
DDFtNR79REx10jiiANbjLhL2ni89xkV0RwmqkZSa/1cfgDPkbwI+toq3HkiW9B/mAi7O0hd5yPNH
oxzEO4EHtLKEyFAE2qwen+N/rVwWmNWM6ICtquH2zcg9GHrE0fDV+P6gAbldHrWx9w5KN39ANojX
PnIsk9GhIixN6BgH4NALAuwimg2yBp04D4JAOSwgzoGAFiWQhZ5xT7XaGI1RThGxCb8hU5J+bVcg
n6ZSvHX9pOHu/GfOBcCT+/jnSjfOnj2ToJAqd7rI2Td1H9Njm/+bY1taZZljahYVnsCvAEAJ/e/G
w4s5UORactiNp7bGgfF0MVUUYjGWYTumFbUEDf/aweXgCb2eVXISAirWScb0VLSoACExgRNvfVp3
wNdXKwNb6FdKhOzEkTjGpijnuYhjxc4lhIiinx1vTLgfZXCeLhjcvMoIQGYKp07MKZlk3lMbjN5k
IpmJLIRbMDumDHZrE+dHh6C2TfOwpCqP7TbZaNJi6tVGlPIcpzBKmYoa+VYJXbzytdVP/v4URV1N
cA7DVOBmr1xvdPQZI1o4j1hJ6RSIZleOm5ZJeDx9NnxmahtAtNFs2nlS5cCiO1bgDsmtM12xF1gS
4LWSFyJr7A8vT10u4YiHAD/nDxT6avpsBUj6W8ZKFkTb+/GwyZhXJIq0zpABsvKWOW8Ui7yKuSXx
vmiQkVFPyxbeGxajWHrlLFWonu1PJ7YTwmicrYyV9URZU9ta05sSYYDpP4sUYEew3tI6BriOATmB
bmrDa1bq78ZkIsFFkKJU7taSdKycaFeweStbZ2YqLzHMPfhgDqT7h4ui74Yeq+dZDt9qB1wFhpUm
1HAyVjp4ZpTDB3fSvWATwdd9SzNoO8dhewrmFok+VJqn6e2DdWN2MgU/WM+o6YMQKAMknsz7l9Hz
9QGBKEBXs7/fNR/K4BPCyA/me/q4s5szZwzJ1ja7IAco6+eImVtKDn7EpoAVGLU+mjeRZi3KFbiJ
FzFMDg0l9veMTc/tDKwb0VIynSr7dOG7pJPxyLwsBs9NVO7JrtrkOlVqY3SivQXVOmX080YzTbdS
R1eIKOLt89C+LAZImzs7TE+66bccZvci8WBM8g8ESl7LMoB/QCrSHhok75xlMwRrSN3F7sEWPlk9
iFtFoZsaglqRC4D7dVBR6Tl4TCiLb/Xqn0q5SR6R9y6yqGrTktEEFAQV+F4m6ljRgnGcFDN06rsw
5LCnGrenxGZbUOEr81f0p9Ytw9WcupUog2uXSObTCEK27REpEVKdfL+cbW76ktoSIRG5KuVRLlG0
I5o+21wnBUKAO0FDRXhPmjyqLbw3KPP+6684B2aNKYE6/t9lHfPO7K4H+x2JCGIB2msal1WmoUgb
BHQ1xbHaXBvxzV8JS4Y1XJWNShW0V00ndzcFOWZDDzz+it07q6ggA612XcNG0NMyu2r+38R1gtxp
I9lRaESX/J+EPa550tIqI4XyX1Hr3b+vdvlLJZn4l5ptPwAtESKdk1IA4pudQVOm7NiURIL54gEq
udK8pqt2IhWsFmbYblPDwGf/m5vOX0T39j5egRYnYNfDNzwGiMwqajcvLjZNHsitvjvTAR4S6y2R
5PgbXBphyywqmkCv0Gg3sWy3RlQeLH3TElf+g6+G3SUR/lL3nXVRlmVBSr3nOur+C+BFWlZGX7H0
2JQ2hb4KGqYa43fqsaJuUbkSXLEGiJzwflWkEZqaO3wlwMA9xMoneY7u+xB7iX4CPy22feXnuT63
JBHiGTN4rsyddD1WWbIHUhjAy/9m/6sSaWQxznjGVCHMmhBrls6zkFLwJUteA8/2j+HsUbH2FmiM
xuHGo5Y5BSjSGpdJtfkUVam7/Jl7jSKMBFKyKzlqsdnbTmbhUxcgWkssNzImI095Bl+eTL2Mx8Ze
Ng6WTNiQqHqnikNs91CskoRkBNoIRkv4oHbvLNWLiXT8/FFQyQ5w45iOtAENT3tzsSn8Gs672yud
bjTsTwYI2GZgR+pJbTzPLH6h4fpzG41OHcecyiSH52sdOiDaDX/WEjyn2nkp/r2l0w5g0o6GT0Av
A8qtJ9BZQGVWpDhMHIY0eBZ3CWLIqEOwEhftANXvoejULsEz1xaD4P6NHua+OGSoXD5765SpO9pz
hfvds6+vMWqANLf/32Wf/5S5J3a6XFsHrNmWQIlTs0+PMqpLnsN9UMXdc9Xdmx4g69DLGnTVOLHf
m5hA4ry6GnFg/fluKMNmPtOvHUTSPs6AURKYi4IQuHtAEdo5v/ObaCOhs+I/a/59InkOaB6qs1kg
KJd1yNxHnkkyHcF4CXuH2Z2GO1+tLUf1CXYP7UYSH5vR+vpqNs5E4pRGY4nOk/7oS/PHPqPc2xEb
9l3yrK1akXYgkYr/d9CEkbKf3pg13gw9hg0xwrwZKQ7zpR/gRoMUrGqGYRyNtJ4Hkw/dKukZWzVy
edSrB8PRuIoh5gqJC2+ZAnCAXcp+X+Fu9f5n0tVJRFzv9H6p8e6F25JNdsyfYLiicDZQndAGKgeW
Ozr1evhDuOQPrNDyQ59edHqo/1G5v+bD/icXbXSdW3mFp+MpQjnc0Gj9BOq57T4tlACzfYixl4g6
sMuJnWlnA7LVuSXjFrhtRiopEfIpuOJ8Ow9uZOuBwNJmfxokIFkkQHN+yjH/0PsdRdXHnGQrs/Ip
MSvpJvxF+xcNYiAbRMDwjxV73/1EcD3AkhrYXeTUo8ZKqCgS6tpBF53yeutMjLS5Np8ywMbfx56g
V/FTaTPGToOjtZVV26agtSSbzFm/XdJqFsHPE7bitwpvq38ilIVWJDgoOs14lHspo55UnsNPQiog
jd4RrISJxx8dhvC8X/MNn4Y2sIif+at01n3nxEu5BjWI1EpMyNuNJWSec9Z5ggniXQnM66AJVZh+
moNpw5s+euupI4aycNPI1/R5KWOq7m3T/c4uxo+f89CKnJ1EBL5AQMBBeK/Kd+yyZdUBQISA0IAc
yQ2mG8bBX+faHA6HqdF1ta3uJVbcoiKE+ramAUBzTWpq3IIwA72C8Q0mkeazhN2UK1Av/tZRQRjm
uoYynp0FcdOVkqW3dFJ1JoUiNNTL+34rHGcKiuj0n5FrUSCVrFBCstVKhEgddkQlJ8P+Br+vmlBa
oty4WMPN/r8yfEPF8Ce3F++/tQZvkb1O8swsS5M2KRpHZfO7oOuHLWlVChp4IJFeCAYj2it2Ej22
LGbSFADGvFqpWddv1zucgoDZqB9QEZyaU0YBOVokPsJxt/3riyC+hzJE18QbCSjjj5L5rL99Ht6r
Ns8mxRx1NWoHaodhSnGlVpZ78/vLFwA3zDNlBOLpbZRzVLW4eAPE+x2y3nGnPB9wxqmmGuwX9pOw
9rr0Ns2Dy8r60OeM41RIrFQnfdH1vmOVkcc5QIuEC5hQkp9rFT2x2ZE+csdd+569RYAPOeu4oTY4
zWISf9Erk6vW0s+GPc+8QZ8jdWkexGXYUgI82FhANB8t9rUezaZ6dpNcfqexqXSI5uK2f+QiBWiF
+O3z3kFHNse5knR9Z+2tZVoA1Ko4mEhW2SaGLqtWGHuFWhCbi/iIO8vM7pp/bTkq7NWwvGkybOS1
UO9fc5wx5DtsWjQJsEAlotmuPh+ET/rqp4HIN6TSHRGa55WzhMcI+ZeIC7+RxcsnRUuv/nJMQdpl
2Sn3Ig13xTiE1momRMHHOd7zQKwt7KqoKHL8kVfCs970PiLwdqhB/9prVuCFJARjz+1wzycFdSGR
+8WiDCxOmOW0b0r3szGVavoUb/AAe91AcNgzFAZdtTeyWcSU3MN1LnsjCjOI9HssPo8/FL7H2q5+
Y5ydma6vImrVV0RNG+kGI485a+pfoPKtXrX7NEpXiLJPVrghLIMCOK8Ea325IgePqQ6FL9cTDxpM
swbvGFBkfvawWGRz3oms6PFS/0KnvbFxnmKpjaXx+uiGwkk3H1IK/4lVd5oQjoQiixv/4J9DGwdf
3K/FAhUaZczX/WerZRLA0qWY7GODw4GiI7PBjSR70BiEUxoR+aVxi8MiNHESWjkYHsQ66KaR6zuK
UrKiVSYJxCEUm+sWanYgDQh4loCBOIdXO3V6E4ntN2oYGlhp1iJWfJOTmz5JQIW2WINxOLLHByL/
hzl9CY7H+TKQ53VZ8+ezQ8A9OLDIc1rgZ8gY1nkZINCSfyT98D+1EA9iHbnNBFZlggzgOQ1hDkMN
zHNT78Y4eElqpRPCr/dYSwMoJNXzUEO1L9EFPI0+fM9v/WIIZDppEqn1BIgudEi8TbrMyt5S0l72
72p683owFDqnD3pCUD2NgaLdYBd4MTRwlTaNU7+u9gciTYidOBEIsa1ylFewvAikwSq1user1/U/
C9F7InKoF3LN2LMaAg4aTYC9doL2yk3C84F4NSs6YEguJUzG6A+sQjZ7GXh98776oWZt9fDHRWS+
N3NAFiaHZ1vaOhIicGkw2cYgeCKClMUzfjFBBU13yc8AGDAhO97AB2KwjCq7avITXOc4cfMtDjSE
O0fXpb4nW6ykZU7V70F6lYwt+xsh5yc8IjSCtF/NPh0Z0yIEQvOrI0Q2Uk3LugEzak6CB6x+bJNd
wc++JgF6VNiXgbnu3vDkDaHdeqZgUEc0zrslOtc+ZmjjEpuR0b3cxFBIHTAl3xgJqOdh0jinw1UD
s007/1F2Fah6VW3Ecywf7qk7KtrNhFPWAi6DbH1wgYSXrEyKWlrgthv9TbfOqwdbNrLfNQz54FxE
nMS7otlkjWz2JQ3D4OnCqep7ClwAUA+++XkgQU1c44SsFPPuGNdyPHqIQU63ndWuUbX9P367G6IV
9Tj9YqC5oet2UJqfB2hQzt3JQEWh5xM6GVHv8xilzQHDF9V/eU/38U2vFTSFmVnriFza3Ylkyp0c
IfAlmYAidsSBQ8pmgPhKd+dFQVnPXHs4tkjqTrwB0HZEyucKD53kxPN8ZFxeFD6tTklo7MUcxjbe
nSLdMtzIEk8vIKABDPiT8UIunOuIPd5aVoiRacpXFXOvexBvte44HXihCzb2KGsPz3UfR93FTuD+
3ECGK24ROANAmEkck8E3y9Jg+aB/A+T2IdPr49qowIZVwoCEAw/R9rRNOYe9gzHxDIfx7UnyTwNQ
zP5MXdb0ns9PAslFfsTrdNUtPo62GhHypEKQab0z9VnVrCyVclb+iMyI3f7Ha015Zn5l4LJkXm35
//jlfGR88kaYBJREIsWWKuWhr1lQbzyjkBYA2YYxeBzI92jy6Q7WRVfq1SIU7r4YxDSO6OqNvGzA
C8iEpnDAQb2JhAh6nAsb2r+Pz9wIoqc6q6QtSWw/p39DWL1UzO18QCMxzzYNmIe5tZSeuKBxplJU
wRjG6bkX/CPPDDIL1UZrOwKBnHNaeTxY3AnlgvYFX90tkwrOpwTyaEMinJ494gKXoYv4gtD7+cPR
GgOORPwch6hAgjqKQStidnOnAy3NfrWWldhXIhIZdMFE2n7DtHfCoWpO+ydqPN66rmwc23wmPhAI
rlO4JU6JBWnaxt2c9DvDOjtjzz3MAAMoKoOdFs0AgEsyp675fC8FGx0SfkWz4S7/zYiGWbxtLH/v
YANTFm5IhhxJoncPtj6gsJiAF8giW9B0j+NRm2ezVglF/K/hSNWOJfjGovd7NM4s3BsV+PlD6L7Z
M9UwGq4zYac7mgHo3ds/7UTXsYuQrligx2R2eusPm9psLLfIgMBzqWOPgptQ5YZkCwAKAGXhA5xP
fkABXBjHNvx1F9K9/kBxz16+5I3eUS41XV6OONZ01TheWFzZwG5SfObh2udOFY9u9ahscU5MVDDQ
OjZZvDmSFOiOpbRRY+ISrXYkWfCA88jbM0+ckTWD6H6bLXUSrVRw6pa+VDSXuaNiesUZfI+S5lqM
sm9KyjOUHx/YUTo7+lMgYc+/uuJHfqjMfP3qvqhUr0356MaecU5MGvXOEyl4klW+lAtHxpCTJ2na
/YAzgmPXsFklMWVsdPD90O2mnw82iMzdsDKREA1hP4BD1tnhhczPYE5ak43Objs3GU7o97Ma98x8
r4wBsEpKszhQw6JpJ8Pa0xfvgY5Hi+KysSOTz1Vyl6GU9lZDwrRVjRtk8BJ8oRlwKf2b8O94WSyY
hdQJMCCQ76kKSUjGiDUIhTSxop0y2sbb2UbDCwn03Y2ps878TtmknZdf25MvuBDrQjbsNZfkhKXI
5mdP2VstC5rvImQ9oDYhURwsmUbrS4rDQGjtLIA9loFgnOpa5xK+sgp0hwH0nPJtd9HJarpz+gfh
/bvWZ4oGLdrLsQJeSFLLwNK6VIX9hDUQ3wJAtGNq/UG3NXYlFTpgI9R+XpYNb6x+0o4xtgBM7crE
kObiZFb8ewuyzJLP4PkJbHYsXGc/t9Z8zIfXfQv3PzLxmmoCz1kNUQPeE77IihU75GNrpNMmfvfd
0NW0zoFKLj+fNd3e4QVlbLsC+g6Q2AL/RpxMisJuZERXc/5DxfEf+4WC8LizvqKl+A2SaBEzSqAc
aqregfVZsv1pBhdCJx9OtNYNK6TIRrX0MaV7qXuH7vFR+bnViTVYfpbhuzG2S/ZGje6xFIQXPggx
UlMKeF9oCQxGbltviEKKZyNT84dbjxBIFoibw6HJUBZQMx7yfDlksMlvAbgOsqS97sp5BYDaHWda
ejv3eqCMgFSQFuioaAvQfEHcKap0g9AMnxYaP6fUuPH97jGeJ0eYERXn6BVnt2vUXEI7HobbjDoj
+koA50aJuO/bOMBbX2XbMp1wd7lLbaIeQlAmN4Cn1SAb96wplQyY7Qe6gmHr89Cw6/M14pFtNlDp
QSJA1pIWiqew9bxwEQvaTaroNmvvsLimyxWsLll16x4IhOV900J6rwWvvsSOjQVPfZYToEXYjoIj
0sLWhyYaLsiMkNqkt4MMZMiVq0SjHgz3tdHfV64WbEZXn5KD045vvyEfoxKl9d1ZZfhuV+ZBJqSw
3o2yKU/VoAfeg7o0n0tnonhiTH+wryz60mkQDa1PxUMtFv1OxtHXHkMQF7+6DGbcAxmgtJ9tZVxn
LkLFT8gx+w20dmTul8Ptc4WTByqyH1a9t7ETcm+LlSeE+pFjpe7oAQUiyJthxxqy5Ms4s6vpJZZb
H/a2bGOFg4roslLYSGDxp0lAQGoCtAbU79qFHaiF9+UYpVfKO5el4dOjJtu4R9+W/FOFe79r0I09
ccbvX0I8QnLA9nNg9QRyiSAV2b8IXO56KAM9JRQXiGOgrD4KotIWtaOXuaYVRGJAZRsOABtRV9iN
RAdx1lf4jQX7i+av+NuMt2I4mNzPGJAidc0pccNVgdyx581kHw0kQAgkSWGsJQis3WwkRNWKJg51
e1TvdrB+SPvQlBp7A5Bfqf0AlLl77OJQnBsL+Pqtk6GRDwDQQahITfzLARVNlknZPAxCyHK+jBsi
IuHuLTQZdGw3LghEI8ChFAfb+BrtZ7etT+kzPORSPmLSyV8dZsOWLQiXZ8YP2fyhrKsckGGKL63D
gLsODKq06ZjsGC304dPwSilG3q15Y0elWe/xvhJzqq4tG114aiZjA1MCm0VnpgI4vZ4Zm1O/idYZ
YTO2dmrPrO9bSDj0/KOSOH0efUeOoAnKVAS/W1ozeYKQRTNS6VdylLnLrMEraT+NgIfL9VzwDA6u
PqO/dOX2PPxRfdiRzN7UOzusbhXnz9X/jpnuBFGRjXUQbNVMSGU17tH1r3M6WSwgzMyEFQsYpt7F
yUwUK8rJFVC80rwUkH5MW16Uv5Vn4PET1pk+fpgHI1qQagrE0kGZrkLvjREF39vyliM8ZeNGt3pR
9Xm8qA5iR9OkLhy+WIlpf541L4PAoAVkfbL05/dxNWsIETeUcFXW8qRGImsYzPrdtG3w+pZtCz6n
jgFyhV7UVh01N9MBIXJHIsOIuoXMQBVxZY+1q9aN97dw2yHuqV0F1wlqMWd3vKUu+8shIfeyNRIK
8+j0/QRi0KRu1B3eJZ/gc75hYPNr9S4VN1XlK21yqUFA4WzqATiqvEFM0Wrr8aix8mrPDO35iER6
aBUa+f5hsYn8l0yfI4PXHTQodypGX50CO8KJRt2dPa4pXvC5mW8RcLpnXuce8f3HgJ95mvieNOO2
AH4zcZnlj86r9oJMUbbBucxTmKrMNvky48gj6qTvVImCOr+ZE4njNQ3MTkN56swwMhMW7Vw472ao
ANJCZAkYVX+Fm2V0G8b8GBV3t1MflyE959w0X3KQ061kv4XDzl7SntRd1zOl8iWdVeZW0LN92IZ4
S5CX9WNknrIljUD61S4ZVYGoQzPGY61xBVrV9TOsa/OcOi3PeA1Y9ESlHnt2GNmI8z6H27vT9+jY
9DM7apH0QtVlR734XG+/zhkFVmiqTAT1xgMQxEZtCiquIMumj9bUopV2r84P4mZ/7kw1g9jDcE0G
YRU4aj8fnTYbcMN4sfBzcQVOgVvA8Ur8ZABjL4iqrbbhRK+3gjck/7bLWKfwSxzqT4j3Rae527qZ
smV0Wpp42eiSlul/Rj308b0S8YM7P+RmxTxnKVhdxKHAonQMf0eoyCACdz6q6UPiJAvOF3VWC1eg
w5uhjRAS1ga4ig0nRSKuYi0VJQamENw6t4rmxZoM8Th+ipV4ngEOdH4aoVf8b1R18jjXmoUeRh4N
oTQq2P2TSiK9OAW/PtTFkdbh1H7bAyxtZL6KjLjWKfViytfP4B9E6b1oh7lcJt+Kwgvvt1EKXJ3X
OuVexgouKQEMnWJ30rqvQcxxFU3qY4yo2PzhtJaIYzil4LTsyEiIGtZiz/K/UMJOdWjiM1HAlXeu
mTOXLJQqXHhsgorWQQDTrM/n+BqJb//ADqCCn3uSjb43IllYB0pyzX1NDt7a8qeCmh8QIXhHwzK6
YSgHYkBP+eEbUvcUT6VQ3inbFsBKQzO4aEiqhdfmLymUkBbuWfJ0l9VuaPKhui9hNe4Co4X15jHW
p+r6JdTYjcsYJloiAnrtacU/Zn97yopEPICG/dsB1opIbE+zS/S8G5x05dQFoKO40IqWFb8ensdf
xXDQoL6NKR3DKazT49y3twnu2t/FycOgnHyzoytPTUiwA4AQPfSfDxLFaWsCXjrKx4VvpRiqEaOU
slLeqHTpyo0lmVT+MOrA5p2TFyn4tR+gfx4+H5eoTKdcuNIzDQbYnlLhER/ZsROCe4+eo52znsVD
S/FF1uzuxD8YhzXoEdSPtTqbvCaVIUiLDrkiO9XBlaq+KaiYMP2TsUorT5E5UDPM/mxHUAcrSZin
5wUU3hzHY0OkrVAXdGbgKQ1T1epHNo6XLV5A+q8VJMc6CZ4akp2g9NYJ+YYxyYkjZdLQe4RAkZEp
KG1qSyxEJbfS7EepC/iI1YA82C3q8oDXpcFNpUjOKS5nMXmkjGMl00e/bboljkKB1JZtuoPcuoPp
CPgFL+klICQ/1vKxwFbQG2rJXSlLqB8O2oXPDi2p1i8l4MBGTMv0+s+HejBg36pm0BRWFBIDniXX
aMyEtiVKb2Lc7P6Jdq5eltzBdHHNwjUecPpaetdQkwI6MBBqFI6aaVBWDuJzGSMcJyqOim9nQjOC
tITnT2L+rID5A4Et5M0I1FqaqzkLYjG5EnOXjJ1LbZr8qAK2YX+/Xz1yihly/MWeELyFfJZyAP7K
JaJA6jZOgBIssLg6hNCGotHBUvowIC1qQ7mWYnVk/6BQ6spwXv9hiK4bpROMkPkX4kzhDzCud/34
Ze0JsgoBIsZxwtQH6iXgJlro2xVk7mZlvFQ2NiK7aI5dc5JYVKJ6PNAf2kZPQbtEsk87ULTPRQgk
uPqw5LHE9vM2ppBefg6JG1sk3Tt6AxmjFryi5+djDy1pMzKRS1k/x8Qsf2smDHWnHod+lnn/Hm45
YKWGyM/1LDkF2k6oHc/1Um7h4cf13PjYPITJ8Cx6lggbAIBq9MIt/N4+bvCAlZz9oSURSMeFWidV
P/OCJnEiy0S1YPq78SMh84NPpjxBnA69qWg7xEH8YrA1YT/1J+fModRNMDtDGlQuPDL2amixXsYg
8xhlPiSzjHBLIjbtGDoXAgZPsZMxKXAJz6yh0taMS31+kY2fnHglsi4KvodV1229Pfj+fZ6I+jev
5UtIwqvX8Bd7RWRI9x+RdCZujSylrKgWMa5/tgA3v6idareb6G0WwjIcN0o2Fc/u6bSUpPt/YoDM
xQvz/skZg5wJ3Yoa+mxsDuRh1Aejdx3ddRil9PTN5xCnDIHCH49DFPgr1M4UYXGzAfhyXPqi79vN
DJxX4NQ6Az8QU74mUtociN9eFF90U3mzsWq0KDYK3CtIF4fLl/hOEMuCeMi2ReLgUXEzgwjGZ275
4Fiu0nCEiZLrJQWUZtiCV+s4boHMOh/LFJQIAEIfQMujujWFGDKryS6gEuLkMDo/hsVRql/IUKjk
L3e4cpqqu36h+ob10NDXQwjE/FIvXcSHagtAJEw2Bw9Al2H7SM4nAGX+Ss9kxD69xFq1psAhHjnD
H3mIxnKASIZw4MaiJabZLJ+WsAXIvPZdd/Wb2HEnpjtgf58rV8tv0qGniGIlLXzKWCj1xIuztJ8g
AahxZBihc8Vrf2IhPJn81BTc/LKR27bVl5I9WJNAhx64OQ5EozgL/N9sCkpMvZHwshjPoWhEIN4o
UuyscK0xEGsn2HK5UHW3OQwUwOkJP5OrvxWpfYiKgfz0uWgOrdXQcJuSt7XVJBUnNduculSzbmWM
tljry2U6bgrzlXaJLe21cKQyMNaRHoq1YmVvkUOrcsEsskU0sKNhMp6F9EFGAP+4qs1sVv7R6Zw/
7lffs2xYCX2PHYydN8ONm/ArTL3jRpf9WCaVUWKVZmFx27KDMOTQo4oy5xzd1QRd2/rY6XHn7cCg
SEw2Z02MCvdLi+uS8GL7AenA8wPVNX7BjDieAsh7XK8SjIfon4VSwj2FcVvwSbbb0qat78VAAtfj
NqLbN4Xz0OIt2dIAYhTDc8ASOZVPQ58j3fAEpAEWTBnhXS95gO4ypqHH3brWFq6w+iiwgVQyPkxA
AKTJw69xubngFLqfZSU8IWpQZNK/YllLyKYq7RIFqvXb60WWBzewQU5+EKKbNYm5PKL/fiBjfk8n
zVbQRU7/WmFubthZH+aLkkOJQiTDaDvz5BbkdDA3OjV/7RGw1Hy/0x5xgCwxTQMYJTXeV8ry1fvm
phoRmAIqTDerGagDZKUU1IzvuyiX649Mezv+t1G3dxEtHSJD76aARfsE5QL8zwJMLb69lCOrCsMW
Ox8zpu8fI3AT5WAy6TDsv5vUSNFA/GWMN96bN6UAvyPKZu4ftySURvVbMMugABjTfF5krBIHXOYn
ZnwzEGkCXyOI2UzABIswyNcrr4b0KMVEKCQ3ICXh5eQ32lP2J4hJyVKzYRuypdbdyu24Nhk1vYaQ
6+yEP9WnM6xnyyJLSfOUb453PaOu5LiW3QdDY+fh5jYK03EdlOA8ewo5U9tXpM+4T4yReKQXv/Q6
bueLHrHnDUoBL2kTBeAbFVYFT8TQHWhdjdUX92NTwB6j6loAUbLXd7hEDn/V642Ilv3E8l11zZkx
8+hTVTI+40caJehieDURxIZg1Rjd4XAaiqZnbXrIg/q+kbGhBnJ454PYL/YonJqnz0xGqZqRAp9K
A2fel8EuWv86mOTW1qLM2VYO9yBI9qvd6995/JUNyjjRFk20lFqr6ysoGxjRmDTvxp3Y9odaasDR
WKvvp4QD0VU5rJ0HO05uPAce1sKPtGLzYSeiB2Rv6PIXU5tBSixmMGKhRNmDMRSBwtCRRF1s/uqH
7/eWDvBwpIPq6OxPR3GsARk1QFpFeqMj7aE8BZEaMJC2a1iRdGOgen8jyTfVkalKbZHTu4963ZOO
hucJZg1D0oGZT8JSObl/32hi8TI2oA7sQtHb3wVQnoATAyEIzMO6pfnN0eyQgSdV/LaYQsNNi4x/
VvIoDV8iFU9kYAI6TWqWzZuyENjBrvtAOPslVejresHhrPRVqsptDMOQ77tVsDEDIMn66QYz8r24
aEN3m1qLY9wcQzbYIXTFoPyQ9U1WT/Q1ThFGg80zroAR9uD2Iu2afnh9LWZQUBFti0Y+hdS30vxw
C5ujE64OC2viD3rXQH9vm914wWWlltDj1Xb/N1jPRpf/U/VUoUSfmI9YVqJUwaX4tsau9RWbq3/S
JYuwxWnnFelDqsaAbQeoP9Xlv5bQKWEw8hptsemdWlVItvjx5EKP3O/9mr8U0C8EmzinqrJ6iR0S
g4pbPxPXfnXvJIVsih49hwnNaNFWV3+Ogi1F5go6MEOGkjEuz3LiLvqgP8RCTwj/FeDiCOxQHIMK
KbY7WUJUyE6FgM/ujhZ77Vl7m7png4nfPpdanIeOyx7p1qIuuJEZpTQqpV2gMFblkEYcaQHtlu40
hA2REReR32aN8fOwDsO8Dg7O50mgLTqJ+KIneADsMsve8OBbfx45b+iC73yM1wDyWykb5+xtXAcS
jawdZcUYQyNqWFjwIeh3VxgJAMnpfTE+k8RpaoZ6HP/UUy3bRn0rGO/pCKnLZqDnVfkMmpwIZJWM
ov8igZe9dQKvBscDlOXKR06aiCIJE7xv1vB2niIYbtZdGA/gthRFFC1QeOMvwA+y4O+Jg5tE2/Vz
K2hlr/52Z4nD3Kx1CMYtHInxzBHysqKoYm7v3vF2xsX2eWQKLoZ2CGHsYK6+kjHJSIN2gLUz2CPd
HUAjwi6K4bAzSc8qbCk4B33KMUHvpDYfxgxduIBVoPDMZQCWIUwcVQBP7ZL6Hv+wokd1ztLTeS/L
8vCUG+mPCzXAguu2lhVw/0HaHTKYBoG7PquxiWSfj0Xi4UYOvpJfhowshsF377oQvZojTQbzZGtE
pECmXq0qbZbLjpdlaSS5A2v1qQGXfCgHUb9xy2H5Whz9RlywDFckXeixqw0z4Brbr4QgAIWe80ez
T5bg+O5Sv9+E5MRiH/mJzsIcsQGGWYzoBy1FgUNw0LL14raNkpxUZKtNCEcJUSLafQw8fG4YJDOK
3/ThgLCgc5vewzrEuFEE+W/aiZVBvIYBP9SXBafo5Amd3YZbZ4St5+rmPPbKt0x+3srzMzQBGcVe
V9GfQRuBd5LlRRTxLLbntHA4vI7SfuEscxulUSz+bqL4X5J9i3hD3vTDTpzl0hfgJGJ46t2pMXXk
jWj3+Y5ScEH3QUKQhTaaHFk+wmBufEkC+AbWtqk4WJVvVm2lKGcmAH0Gf6UdjB2yRuTCbYVxjOJN
vrg4Lp5HXFRnPOnRkBCdPgGCChKI5YcO0IcXqjKujW4zq127d1mSyfmJVjSv/07xQBkGnJN6+ii6
/NgdVJaVYOftJgVoNW7UpLr/Xmb46Pg7eSHNfGRcHYYNqY9mCeXSV2InNbPsymX67nJJK62T62su
h5gcmqCqTliUV45uq/TCew0Kd5r0pe3R9K8CNOyhW3c0Qf48WAZFU7VAQx1P+335n62oQay2BjRs
lP7Y0JhmXQjbrAFCZdSNPGm0/E34ZcieCeZwIzb5wCg0/6IYTcTttMZOtncPBY0ILSquFM3jKgbx
94xXLWEYiCsT1g+kge2emtHIgYwnaCSzdR8Z17XPqT6gByy2kGqDjJHhJm9yddK2DL38f0GD4RO0
h/R6r0A2BsZXUAAnQRHuTC+GPMW45pQ5SU5cXBnmpQFgurfxzEZYxwpTXP2HeMn6aGtBpMXI/4MG
diR/NwkC0UqSDFaOWiy/+nFx230E7sYBK3ahooCkrUiP3/UAlHHz+ZTsrGxjaD2ffsv1kjQRHiMV
dRSZEi3WGcJJZ/4WnG/qD5FMJED8rekaLQ2ddicwZMQlrcc/aqdbtuNgXNhIUVYYZvK422l5etoP
0qO24mYzEoE8OYjotsqqr0SnZYhiQuvip7wkf8u35s1W3BJASdw85+g0/sPuXDt+3aFs30ClpBQe
Mcm/sHdTRZyU/cZIqG6iYkb0sNmByp3p9TmZ4jH1/CEj8t73MC1N95lpPKT8k2eHzOPbmjly6aA7
GGAblJ9J2hdPIvFWvhEW2yYsriKf8HgSVoy+BG3jGMsPztqy/Wz6AIOeS6N7eQpWSriF4KJboh81
knu4ESA3hwxnDDfxMdJYwL8ORzt/bNlPdLdRcm3MZoWEuF8CiY42dmlNMkgXbUKuSWzqc6K00Hmr
s9Rf+3jPf9z1AkS1vzDwuiUhuPQvBOGhCAK7R/AsmsD1IKsjJ8KVKbXThqCtrmguaL4zZA3edIqI
47Rs9JM1oVCTYbW0KQVbNP/g3z2slaxQ8M3T83qQPkHexj0RBh6lsq6SI4J5lfYpzSPZSGYBkM1f
afxqawDjl5f2V4fWRBGM/m+uecPbxayrbqGEV6I2/ans+vtBLweQGlOiMYaX5zcxfDvhYNiwZj9N
ledx6LUy7ouQw66t8wjnMlXZuUN2eGMkN2h0eT4nkHQbY1Mpop8T+8ovIByiQTxNtSHdBxCmPIPU
TfNO7NgeiCal/SJnuxDz33oG9LyEGtHKAUWNoKxi3a0XOPZvJjiVwarQWiVbTI2eRzkyBdqeEf6n
9Cm2qkcHW0G2pM6FfB6Bg8ladxEc/eVY6i9In95JY3fY5JCApP8iGPXDfVUfjCAGTl+yW0ax/Ypm
Xclbm1aXGl1kKFWpEf5KPxA4kdDU3cl151NbRyNEh04/IcXEcSbQqaDdxSNIXWE/T/bae7VCvtmK
09iO04DjErZCpmrvbf3/4hfYL+CXs4FhgicJUDsifmVsbjN7FS1bsF3hkbtHTKh/xiYaL2RodAhM
50pgGGmZTfqrj9Nhfmel5rfg18t+7NLfAUKeIbMdndGsSUxkhZ0w6lRMnPuWztDx/fGYmwVF/jow
bnuBkvfJWfAmU7ufgbopXwmefIBahmxiRWsZ2GbwGYsCm4jdRE2E1fNwJHzuN8rGYKsnPYLdHyeq
LfZlhmJeGWdAEoHB3UZxzWzvtYjaFFgRfsBT55EttbuKui7VXZCaQ0m7xZn1ODkxUDxEAL62s5MW
e/MoBDlYqWFXoe4x2BlnfXDnuSjyXN5bttAuRYuOA5fLLdcTMFxX82xXPCteiVw+FFAMZWM0IMce
SCfSCS9XXIYWhwRIU1acAFtjZTU7EAyPCVJCVxkGuHaeqwUvt1V/CZZnE/dQvz3pnH/iQtGb/Lv7
vzZbHznJuRnYblvzS1LrMEJfJVKdT21/KxsW2vvKP5TBVHFA2c9/HLYk/LABEbfmNznYegXOj+Mj
SQLMPexxeSzKtFmSPY/kSGGRS2ZziGjch1F+ThO8hCUVozMMhvHMi1KlQKTrfg9S3CwRwEcOX6Hg
UPAoSXnb0UclccfTiad7RyHBX9gGrJPcu+28gndZ0AEgciWGBh0BuGhk1xV3XwqCPINSct7NiUiH
q6YfflVuHupawlkC36z5B/Fehsx8q3gGz1Zj3ycpiJL1vC3qgFUODceUQ6AGe9ah82E3AycWEMyN
ZXBZuMjVYk3z1KmByaPCTpt63JCgLpYW+ZxKH3iC2c73EJfT0FpwwL05ku8GhSIFjSCVwSiAhWLx
EAILCFCwdP3M3ds5ydrFKhsSMlWcIIhZMDLAlyPb5QwO05xebY+PdUtU8bD8XnqPlXfUm3XZTXGZ
86MRKXWkVoX5QLkG8Ml6xIRrFTMGQe2uAJwbF1h/NyF9a85MC6lIMehNtlQt1L2Gi8pSBFuuvsb1
BgfQY6ei308J/qAqu6v32+VEpgi9hLLxqFAQO7R3IxAUuyce2L7MePEdvVFVd+jfgOm+U/UO3yJM
eZmMb5OXrNIy72Emgixh2XT+GHHjgzeeYAwvgzHp5ZLrVAkgVGEDrLhJXieLqIiHp5A+CZZmJ85d
aekqMZNLOAxH7raHo1Xg6/dsllGHHfnvwpIzSU8Fo0jgpjCPtwm7EhCjOmTq63v+8zR5pi/1lqJp
A/eAloC4ZM92+trDatxnLViz2dJm5iVw2pToiJuDr4d2jcHapCI6xq/ckkx9lrADz+H/KpsknrrJ
ch/SD96enIszI3sY+9FhS0eruDFY6uzCmy9oYNyzGb5Aj3WouA/+qIQAVLp8RlHHGDJ6sLLRvU3H
75HFGPQFy3VAJihRsPv9aonQthATwUiXalkmaqykMqZ/41K4RyOD45XRNtNHrHZirTY3LhOS83pw
Nwpsb/kRpkWlHODlMtkWHz/HFToiwC9AqMZ9TJhguyTsMBV4qAszVmMs+Ok+FK2EqV59egmB60ja
YFY+Iz1AMIeEDfP3fGYO5F9wjz9AvaF7uWp1Wo1MybcnNEddbsxlJ3T2JJeLVtWR7PIRRXvQKCZO
4UgA6VlQFt8r7DSS83/P45oZHR6tCiM2sOMuQ1gpJblPdVQC2wDlvN4mjauOY7RM/0AUgHIwEM8T
FAPnn1dW/oYCInNsB1O2rVqYDy9cw6JXsNmTOaT5DaljqcFtKLvvNMQj80A+EJO1YTErl4p2vOvw
mjSfkqfsQHwiNejxDWNZ4JdGjMuSxKRTmxsTO3vI9UBBqtWa7Pe6vYqVljCUOIWlWOfQZQ4ggWM1
XSBEI8/yTaGVzmgsXwn80Eho5gy64BKWRBM+mGqA/785SAIdHeH4RJGxGjU3ZHhnKAVWs/yTGIPO
Ts5nqNxfWCOczpB7uP+OEKyGXwAyEvJOQHOizPvBlH+mWGzJYkI7nRbUaGQkYl3HvMMAnl8uajsk
uZBLgu88+czesvsN/k9kN5yfilyncP5X4m5sbAp3qJuoD+tHIfsq122CSsaj6OBBOrg4t6oMBkeE
FAKplG03q3kCUIEjSKopBynFVI0GXpyPVRz4UsgCfEVZ9ugyAWP3LCXdkVWwA/fPPwvfvmO2cxc0
Qul+S5pDmJBc3rNrnktVEKuS5lxKntZv2x0zqwMpqex9klwppAVy+kuqIP/w/CM+PzacO3NXvx1Z
Wse/wKY2cIF1WmlPm2zHxRTB0Sl7gtKVmwfKDLgYPdtaDb6UZ29fVtO74VBOOXr81gONaD/Lz1FW
g2URbqO1rexTXZDQg9HPX/qL/d0jSoZkXykEQJEZrDfd1TJ4n/h5D1gVTi5T7SwqZOJll+FloNS7
IxvTIWLfeQK/BrI1OlZ0tHXVhSJEx+6jq0UnTLP3aSxePRQSsCmj5aQZ72q4B3XAUR3PbyqLRTMQ
ZvvA0nCW/Wgx2eKKWKLl67zV3rdfVF3PyePbe2gqXv5z2U7uTVTn7QxWjYPIQa2OhQjZ1ikMpb+F
KwVlOxrWtJS5RTapz507ZHb9UvD4ehG8YXLEgfabhmUKKSZZmWihmZErowUKefsnfU+XDI9MR9QX
KFoSbCyr26UUWh1QOXuxApKqykmDnWJ4cW9VazIA02J+7s1jHM5SLKbrJ3upw/qjMn5nqSIxpDKw
sMynqTiNwDbLv5VanPq1lXXdVMoDe/7MftgZmyi3+tIyFxB8LzfrLkQqmMgOSGSHP5sFaUGgIzAi
PqEEdyHjcckoIF959XlCkM0Aq8WJyS2d0qWolYnhd3tx7tWaoDUmBkdf1eBCvUXv5AjL3R8j/hz7
qr2e9Hp4jPNXPaf+HQROdwldtbKkxdW0AU0gBPjTLUb57rwUbJkEsAqSQICDAuOF1t9iTEdT932D
qGL6BVJEJWiltPBDkRJGgt0eiEq9VXlf7oXXrYNJFEkY7D6AB7L8Sp07QttQvYKfGJ9/PAL6S5gG
Vv2efgJ7ZmNrWhKsC2xwojKCC5FZ19ZPKRWDXW++NKibUS1kXEVFLTI+JeBpPUisoYBTwmjaKxsw
DkXmmoZOIz6iOogyznzD1U92Rj1HiPHA1jmkih8GuHjjC6XLFqPpZGtKNDsSQpcnNlBkZJOnkNJ5
ffU60o7ZlcBS4co/g0SwBWmeFwld2LHOlX9wZyxRq8PN/mudyetz3Faile6+L+1A4gq/WzhSU+dY
Uop9lUgBoOGTaC3kBccWhPsO5xouPdDkLhKNIzTVSwrp6uNL+tKCpkNETb1sLnJjG9zjTFxlKVlF
8cMTG2CF9MbGOSbeUGvQXn6tc6kUduncZRlUt0LPuKp5TpjNeJ3xgqftBRjsxaM78ITaxHEptBvp
wX/Mf142TnjsM5uInIhoe0SYsi/jr7z6+QKpz/QaqGflVYPyJz5qZ4DxwJRuwtRRFgO8bNFl5e/o
k4jPOf+q/nXBPOMWeFZZzwTmfKLTculguZx+FYkdo26DkqiL+B5dXyVtzoUXJOG4tGG9Fvy8mNHe
w2fFe5bJqhxFbes/6HXSs7k/02XVCVpwt8YgRRAyotTlSol09SLY8ZgCfzrTRg/g45P4H5aX3vGV
M6KtMYB0fYxnB0zjXS13efspMZY02sW21eLQxSnoeH7+b+R5zpi3X/oCt+aoZCLBWQiomX76Bnnq
0MhmjWDJw2EBAuQs0BoLSH9xaHf1U7O5VB6jJuQvpZa6hASGKOF3fz8VONy8im5XbdjGg0ZfqWQQ
DbI6s3P3YWeHqWQgzNzj0SEo1A5osyEiy7xnBCP06hH9S8FWACufl6RmSNPAnLUz0ROEAHp2jtfz
TtEv4yOphzIbNE4RAS43dYnjxcsTHzkvSbaE1BT0yHfeWTE2PW7FFi47Lpz0eLmjHaTDGFNr6KhD
7kJeUATkh/9LB9E/VWJfuZHQhMFYiZI3DYATqRX4l3vQYA8xg48MnNMAFk+BbWWKHWzo5Vgycz+B
jVDzxcVNvicAWaWGOADgLfR/1FMafYAaAQ3TYMNCEHddmybWl693AvzZoIG/c72Nqy+q4UFR+LBO
Z5InIGZ4YXXPRDrOk1i2WiYu37VgqoVc0YgWq2TxIx9hg8Kkd/n6W/QXWRHz38xUeo1G7S2KbnNh
pUeWHs2CuBuG6Vm1Kklpp/R2sBXpPgCuCw6fVHZJ8B6wgghnKMYIeK3ermtrdl7ispwqhX4epB4W
MpXOI9EEwwa0OB3GArAWLn5WgwHIEy3Yp6rRSOtsxAlfUL/BC6pzgaFSo7IfKz2jV+dVunPT2Jif
kGl02hp3EYWh1HxWYBxgCEDiSSCPoJWNwUswerdRZdZImi8c/Jc0YFfpekvuZMMJZ0Om8VCuFQ/1
9dIHML32ZNks3aigzWD9HUAf1Mi286NRRy/rH0vm4J2ijdHpLaYUmF7mDCQxdaNgwavy0s32crR1
oJQsMZpJwZZGm0KYiQyL8OlJEkuv0NkSBRjWrCjzQqXsCOMf1lOtwbtGbib5YAFW0u2BF/gBgkCu
9q7Qdn9KEbTf1pgijWsT6E06FYyb59R974DJ+y3ro9wK5nReb7S63/CVgdNAtuS1sUlDG0lpYWtV
bBGQFXs7gV9q4uuX9jj50Oox477LDlCxcMnldFTI7W5urhdLO9N3ml8wSFNa/Z/Eff8RggJcQ9VI
Ja1jIEgwssxUBm/bp6GANreSBpmT7+9TW4a5NYVVd6w8tFjomfjylPxk7A5Z3mAm87xldUt+Syg7
bNjC9Y8WWLQeDje5KVLvCOByCxbrnRLWXHbqlICz7q5ALwJKEWzYbdqkIBIK7apA9qGdUk71n+hQ
dvbYL4bWmq6tQMFW4MatlIYfTl6K5h6UHzIaWnDs38JypiFjlvpeUjSFZMbhqZYXSed1TFuLs9aI
amsB9lHwd1W1KHf4+O/2oFconqb7iTkdLHR6c6NUBto/3sJJViWBKskLY7QLi7sPVLm/R4stzY7J
1/tqEvAuEU/+7rM2sDCvE6qjUx8PTldEhPvfYC662pf6qI1gT4Yut6eA4bEc9PkxjdyD39NcAAIK
/j+nOs5d99y+6jvEeUacg7jYBYfDJubnieSsuKdUVxCLYujnlb19q8cz43zW39wEBfokY0m0ectI
P5WStZ7vGmCt6+3GbmvIcEBNgl8TvdrYcBvcnayIVxeF+exBT1NnCtMDLsbjhSQD43t83aHBiYUg
rTd8Rm58LsoGVpNe642f3FFDo78bHXAx7ossfvm4pedUF8CDWKsZXxLGli8JAZ1lzv25kHRlGL2r
iXXOpXwc1WF7h0y+nlp8Lq7ewmTtLsRVtKV+qP4UhC1cZtVibwn2r/lg56+N9LdWR6K6ukn6PGk9
vlXTFRSr9AypIz8hZALCG+d3fb46Ac2GJ4+N5/7o3mDoTEcCQw/IlFirqWFX+5YIIs4ldaXpX7Fs
FlsGVe9neiNaZSX6WATlpiw/nU3SWsqXTUl28MOlXyySOAyOfsLDUOwy45WdaE3r5Rkq0/rZO4ZO
cXddzOOwMSgWsJ4zx7XQplc86Y8LMCKqR9imY9iWQWYDHV6XcIo5LMxZSuivAkV7xtRELY5TTSt3
Qrk+rx6tEd/6s8+xK6OkbsVOiImYey/hIa8mDrmWsiYzQH/xQjxAUVcbVdlINAd/dKKHcbnT8mRW
RBhP6e8td39O+TgSSFhJVwvtDmg3A2rL3tDSe/GziwIPJ5ZJgemT3L1+z/mFQTPeUSWFXPojpg97
961wwiI+rc56J/er/vIpOzh7np9EqMZTZ9mZBXLv7WshZ/AF4CD57DxSPmH4zxSAs9OTpb3gcC/A
vG3L+nx9RuCBoTmasO2DmFZLcXYQ5EsmmulOIXMpWjIBMeX355CqRtJ/G6E3wFdMtm4fClgrPniK
p99ucEmNWHEYmX5hCnANBzXNiKZxocQnMjEclkfqvCs8p8kKI3/3+My/mi2Hi+vOy+oUkPPzXvCT
T6HYN34JKNSzLDo64U48rENKq7qgVjcqLqL3adn/v5XYog0+jUFEpCC5rYsilYFKmR2QGRF4mLdc
nc3FQwVHWmKF47poqYehbNuUut82LHAzg17FAUOogsQ6ldSsSxRo49fbR5B+pf12TmysqYDhg/R1
hzpIj2QDU1+Qdro5/NTiEy/mtL/OZG5FbYjqGGX+kZGlIrnQgYWF0ue5N9k2/c3OqMVsikNAnCp8
n77KUWs5rig1znaxQ8eoatyXkzk0i0cOya9pxycg55UcfquAbFVgqVbqFkJxIXJkW4bulA8xMTem
SKDIXD0KucC4S4htpDqM3LCQGYQw4LtA1rY6K/Qk70h88vaJVFeMalecIL9q3X/ZXUXK4NT/htcY
dJ3W2EjG/uefUl4M4KGk0qmBZxbDBR0AYSio1YWrXX01Yoqvqq43bJEHu/bkF+UQoF+QCjHEAwVY
xo8J8lgSvUM+HTJwkxQcS0mlUHo8NJAP7u+ZpQ+QRzS+XX/YYut5PXWLtIpx1RvbAG0aEf9eHrBj
MiiWkLNyYYuITImoPLWGqtXBMffCRq+Pw/vlRLBlVKfosyRy5t+lkCBpyb7GtuYlojEURyOwL5qw
UgfYksFz2oAAVq7qZMLIGW04e/TQjXOIMo51TL5TtqBmAI6TtI6j+NaDXnEYT323yUnlzcUCNtL6
kfEzwHsqx2ug9sLTzs+DMrs5f5zIXYZ7qPev0EmPY1UyUR5C0FbfqgHDjQd6tLatmD2Xm0l2ZDA6
haIQpuWzcglrGQvAMTXlIhb9PDdQ2Qawq0qYZK2V8oZTE4fLVM3UWp2nGAoYawxE5QR4cENRqu29
oNsh44G0T1E5C9iDZzcCkd4/hVMH9SZndD+1IMCcegbXpXikqlAHLw//DDdiPhQ3V84Co0K3CZR5
+KSBlx7aKIIg39qLFW+HTo/rrGPqY8HM+380CzFgw4QoSfSuqQkWXKn0CunjgXVo8Vjhm+qonR56
TlLQ+VToo4/Hy+oZj4F9wOfgHyWNW6gT+coBTN8iimcgBRSKryUE+WGhE8v5+LHYhkpsLGtcr804
43j47vJPVnJ/v4bywDVudHWHloz6kIIQNj97Q6cTFiFJASHZdCYaavoKF2hJhAcb9u6FpwoI6Y7R
05/H9pR0vAGhSy/9A6HHKF2l/0/rKbKZB5DI7X57QI+lDBM1AgxIUh19OCV+SaBrU8s0r5ATIQKx
12lv0C6ioRtiQ/kIwF0mBMbAfmClENkrFKEThnJ6qNDleb1YiaeMKfBYjf7CS6hQOMV8vARrckWL
cv3mxE1sln6lZ2o4xX8nHMK6dsXAPltgTZFUyOFtzKBq1k1nfYgX1h2zkafoWlpVnpXJrktw08dO
TncNGuivP+DBGr4Q/vUpwRevqBres6ueZ7C6YmGzsRllRvCx4o1R405Zkb5lXjljIHUT/OwggAAC
1vkTSTniR+Bxhph8PfQ6V4+y6u4HPGA48nRykg0Eih2euJlYG3bApg5Egm02I8IpUgRfcU07PIQk
H7bQb3MbZ9kIFZkq/LHXrHJ71AaihcK0vw87oxJg/ji2LZZUM3vphQEhKYBEnPoMh62u34kyhQaQ
98Jd2ZTgN84BOJmieJ3k7hPsygiKzjCY0glqubPaypgWX/iWPJmXdePU1l8pUMcjFHcDucveFiF9
VObBinTq01oHfkIrUi8wTErY/sdMx4mjGtQVyDpGHfQlwCP0ijN7dmOFbCTM+9DGJFodcz6N29cJ
j+8YHSHc+td+i6V7U2OTWwdqLx3+wzzAnaV8VgSQEoqfzOJScDo7zpxlKlvbTemBTtDgNb+6CyTW
5KIUV9krxZxRza+C8mByyl+OVZvXkhQ7d5lrjC4E3F/S1KzoOGLtbgstFIPG/BURvALzJaCrM3yq
HHnE0xVDuan7QUapwegEzCRisS7xIz/MOSC+Gd4bog4rckoT0sNbfMHoW2U1PrjkN+n8ftygdNxa
O7SRNZM7UC7vyYF3tX/nAMQGqHqGrwEVm2KvBMSJLryaXxvR4zwb5ZCNG5G9WsiKqtY20axQ/C6X
CetVKbyML9kCQlLg50MX/Gz8M2iqDFWgfUGDuC+fXoRxo9lC3bKMSVg1AQlKl5utULdHe+Pey1U8
qNNmMDsTVgaV8znHhas4AhpyI+0THRuXIFMP8smt7M4y6q5jPfe/EYbKZsQw7Fio796El412R9gY
qjBG308qOKCE2lZOe0lDFfCgufltI8fxLhRYNr3EhBmpXQObivVJBVlG9/WIkTtjhXu1BkUDRQ9u
9KlPy0ugHw3ZlbXYDeVJQU6+O3JMuVU4zUq6SqH4BeSPTMqjYWP2FGGKCZBLdOEmqs0FFSaV6bFM
lHBihQelNGyH26xiB/BBM6A1b2Qr6PA2Np5jqwq0GCp6qQNr9steLZq3e3+W8aSPGWwkvaUPUtN3
ByzWGJiJs2O8IK41gEcYzJrdDZJ9NxkegiwCpBsZYbPHM0aJO4+r5MewUQ91cPUSNdix3HKXE2Nn
SPqGfwqgiERu2364KEBeJFo0EBqtd32pPBnkQaqqp42DC9y9JNcuMJH4KJNU7C/GDqOcsxnEAuLL
qCrVVeEmyMwruGJSlS7mRPLjviQPggrt4z42L9c3dVmRhxlhlCL6KUtVM9Tp6+8wQfhnndMws77g
sj2sIxFSg5MvExLYWRmamwGTGRAMCHnk56Wzk8zOpq8NodQaQBwLeOa7MwH2iKs1gSfSR7Ei4/JR
1wCL5MjC6Xiws8pFAiFDy92A3C4OdvEHL3N7IFipiQhsA1N4bfk0wNO9KqcUiog93OM16udsw3aZ
IZC/l7PtT5qwBzHOp5g5wAAUxFXmxHiuIXGhWYDD465KidXIYGHrJUqnmAjOLCALbJj1r0tsKo0a
AWwXJJiGpXw/YxKc1LLXwIseAT+XFRlcBDgPhGvlvbram35Tq2C73chCJ5SdrSYg2jucaYMvr5IM
C/mFUObvntHUx2TlJaVAF0nINXSnL/+0LC4Ysyb9QHMykBngJhVs2fYViK9KJFoCZidYV39t497C
oq+oeJgb0iUBHXuq+WJb2VnZclhjghouRjnVamAlbZCYbu9ZwBkU08aO/qftCkB5F6DyzB9CekPU
/PHJ8StVvglioj5V9Xqly+oupMTblWXVl2p9LB7Nq/VNW6Y6f7hEeQWs/AYeFr9ybxjF4KBv3iJw
0JHUo7s+sLidSQPEYvZRSRfJkocl/reGdXzoz/ySlMV/sQA+DgIBH82BEHDReb3Mnsjw4dD+Tfm+
uwcDR8OPOJVMIsQZXb0FxNPHT+BCknE7XMkHTvA0fc0D7dWa5hBb3rbUH3pjAsAihuoH5aSk5jbo
SOYRqcYb0/oixHxex/EZ4VWoDPuik3s9/fVPLUybBFnJoU/N05ZBGqMfHx/MyZwLlirB6dlKwmHP
1llF3Mn2TL8Sg/iph/d9S0Q3trXeTDQcGaFDGpuu6x6SNaWeT5CBFKOnbzqdsFzE48zoL9aenE66
u4dHWaVIZbQe4sRY8WVfC9B6MZY3jmsk9Dbci8tTdDRWlCoQYjOc/zHL8/wgjPzPwZHHLfcc11zJ
XVohtxPCQhh9ABZAbQNYPFH6cLgjgm+Q1WBC224BoRFQ/FeBY9Yamegf8BHI7Vz7auy08yifFh7R
7RofED4u1o61Rnx6UtzLUVaa/ccm9Eq7Qn32MjJ/WaObs8p3dHX5MNTB6P+paXWrF3C6vTh7E3at
nyPWj6LUYZfaXwMTevy6+4fC7BWyvBtdpP81aP3uxtdnaWxSp5o4scCe+OVy/Tf4GmTaKerQOAr7
Yog8VLzDIRMBgwd3e5XpXNj+rXGEbdTUOH5NGS5KdGASuzCOCwbSxj3YPalSDIlVFfsTYBB6xTrn
JIXJAQxZm2UTkqL5zB0x7lKCQwAX5guX1iH8IcyNA7HDtAYHLeTHUEJenVxYcNvWtkr5GPno13mA
9EVvvNO9rE9YBFK6F8mHib8sEee/Uv7NMEbDxPop+VUDnbkEWEg/Iqy+e7wqYRpoZHZHWIJjPWnx
y1gDObBgaBcYPNRoYSs/USYimhVUiV0lRlXxMshmoWrQbWrFMYNz3JSWD1HrL4rWM7vMvZLObg7b
0oHKI1YSyi7BSJgsny+J45thg2FNk1lTyj9qTC2KCdtrM44FjdF6pqp6fugsI3RX3sd3lXV2OLyk
W0PoDX9OD13yHf68P4yTqeMNE5Yv5/ViLJ5OBj/ITAR20d661tcYmKw0RKYzSV6zlNd50c/PB/HT
mUpouoZBOjcuvoeYIvLK0APWWviQh5QAZtI61nocMLz6JHlu5G1MMOyIFL6mIdxxFpHoKmEFOTCv
NpTB8UpUK4LMn8yKgrnPsL4Bq9QjtWHDdDbUrOprga2Jn63wstBmZe1qGCosWU1Jg1bY/sRBl68b
c03EouWtNQoAUlcJBV6ljzgMYwFu1rzRNxHHgLzOYgvrVlKpzuzPlIIbtFtEwT4NxtaAOtgLEoWJ
ygCdl94A1QOTjl5JArwOnwG8Lpmtivv1qccMp0EnNFqZGd+JOzsvbFrbyl6M/XPa5jSDFtWlAMkP
rndSXNmSDw6hAZF6mNEg4e1ZrYqvcBZLw5amHbeWDLLTmHCq+BycDbICNg47e6suL18SoS/F/FBJ
qwx7SSPUGrKLQyZ24qZ9Bgo7K6vr685RY9qnS3Zi0cT3XDZYj0465ibJHfZG/5wKVKsDM4tbf1gw
tZHkiH4XIxICLL3E07ET8bCBjxAJhYqgBvwLmtANviaoKjB0ijG2st1gBRkk8E//7MSV2imQsrAu
v+vstTDjmPzQ1S4hyHZByKLTaHbrpNAGLP1Kbp/PsgmuYZGsuIzDnSHMp//lX8e+1uDsQDD2wFey
MTyi0RRMUq4P/MBBTp6zCLyBtiAijgTJTQ2OhhWxN7K6LgN/xehMDTnFCcFmuFfPNSgvT2i7E/92
/HuocLhhfkKjvoZtUFGDw2H+CYP1QEqZVU4+hj5J1tZDBrOShjAk/uMPD89omKXTDjQsut8X5KSl
KpPU137/IlBHtDeQlscXb8D+LqGp2wM/A4dbUJWF0J5EPowyFQ6oFKMvRQAm86iVzGVAf7/8tjyx
k89pWRdx+GnieZSSEvJXMXBYHvLxhf/4y+UKyx3/TaDXahKdDtOx4HFal6guWNX1ipOWh9w6VK+v
cTMZVGNtmF71LqvBtzfEqYweSEr9e8YguyEC7R944Y3RK5yuOALeVDOGCgjqOlINnv5BE7zunoPc
MFuXaKrEcCqmALEhfwHQWz68hCglCNfhjqEsIA2xq3tTy4KuXWcB58GUqUK3GqmoAupwPKPvFfrb
ZbcHD+umxwUX4yL6DQM4m3j/WR3Z1G6IPTsxAUtJ9Jl5WBm2bmMPJ5NI/fgujQ0opvwSgkZIqTt7
4thV9CzpvDU+FVvb4R43mL228ZEbNg2CmEGtHWbZhC7fWjiW7xTEOgIUZrW0JUCC6V6Tsk6G9hNs
aDA+eKdVzv+3GV+49wI6EgejzlBaxqTkYZyfl6LxjxGqmja9oeY8RXrKdPNqVs6tBqdQicp7dS9g
C2+4/hHnraeme9PazhsVoWe6/40B49v4+l+YHaGp+Q5MKL1LvCQYi3AIHM+8UUGTKzcIvN+Wp7DT
uOyzxDV4TwtQ+CMAxo8WwXwx+wOzKa0ffswhtUFEGpzpDwqHw/ByO8C6dLAezsEVB3GR6zhPm6Ta
+1Le1TDbBNPjFR+K/uuA0YTD4T7FEJcqYVrGWhJ7DqaqTkt9WgTMGDCjwws3+2PEloaSkdP5DDFt
R2lxPxvwC4T8HWPRA7sKa19+j8uxux11zMbagDmvbtE8bm2/wD8/wlJWfMW+NaxpPxtNLlvLiLNU
98Y7+/R34Qg86bMv9sOBps7TslUrjSGR3K67cWKkzJhfX4GOyd1t1rRtBt5SKK5ZvNF4HT5R5WWr
VmQnr7z+wvB142m25YSmSI+NjsZqbZa7NLV1Nc53nZBOB5RS5sHsp38zSzOvkKpwdI+i+p44BFiU
k0RZpHolgzGFdtpZQ4f2NxY0Dzc7h8H/nCGe3P4ynuY2gtahbP7vxLH1ozaXmG795bnu6By0su9W
rsOEd6y3LRDR8NuskO7n3XrZa6iv+rjqhMfhDZvgTh+1DadOU3N2rdm16OdIUkFmdV9+JL16l3MA
REEnfdbTBw6ODl88FEhBDt4m9TbMMZOxuJX+JPq3Jy9KvB52Hcc0RTEV8LY7zEPBdo1pXODVBUnP
0pBAhEWtzCVBJJuR+AMXCXKg0yvqHBbDbFiRupNyFjl3HrPweFPqic/TcuMXxrtngjomFImBIxvQ
8KbxNJprVX7JbUbPrCfoajAiwg9iEJgLVuXYdoh88drec7jlYvorelUUFpAUqyUEy6yPwQNPdJJ1
rqqwGmIfogzWo7fCrLcZ3DWqpf0CEU/2BNdUyiwQGN5Hj4KqfleRqSuZPqP9p7J/+Et1u3l9hEnB
mB5+dQ4jt5y+DeSfq6ilOt3dyEKeq2p3VMluVsm+wGWD+jG/9eJdAt+UfQv32fBHPxuFkCmOsJMt
2lJyTxYWeXLZrX0VT9P3FmCu/NBeviHMaHlhXriOzBbI1zdy5P3BNzkw+d1SBTtH4TFH02ehw+zP
f3g45Q1jbKnchDKxem6051/ZhV8vmjw7Awrj/L2dDaBSQCZ3OwEtN3q8Bcf3yvyhjpDBajuHZvbb
sarOmBJDhAsIK6lRCNwVlNIzvdciNJERR0tr0B9nhex6zcYy/hyQ2pZ1wjggUh2mtmdJJ0NMO/Xs
EySZ6vbinrD1pKNhRM1+PFPLWYBjtTmSqYO9tMxVAp2xdhOs57sUTA2WMzaxPmTd01OdtvwZRF0m
JoYCSKvV8msQrEa1MYBp63yA0XS6dDCuOZKP29CXlFamh6sTnsnVBMW1wqt2+/7HD2gVJMICyFbh
WkVMSvsPp6a306LDl/O+cjJwyyFD3WiNZeFBxYgBLF+CdbZhgRbp9xk4jllDhvmANm4JhXpkcV3L
n8h4IcFYOk5kKItxVOGyv/gHqAca9z/Cq2Kth+g1H3W/2kybmrEs3jmPn4Scm9h99DrF6MO5/9+i
nPdj0mGXwkGSJ9LBjUi/ZRcZDkfra6gdhRuWwRVjA7O8EL23MRP7+cCKivXLIKzccM/37nCNIEZo
JWBY1Ziwph4dhHuMJ2ruyezktN9RPI2LDb53bPulcOGKA4ddXCxvvVlo3licBx5XL9GZCnNAsof9
z6NguHNsmjuYcQYWFhu+uUp5rwyLsa3Hjy83E7WcwT5AUF7DfIz6vYmUwulMmLIGqXuvJWorq8m3
AkaqkKNho+oV71GBilUXKeiGLy6JaGZcrV0ar1JXJR1sUcFG/s5Gnfaza2P6j0gRYJTz1NRKIDtb
DcZAChFJWrlNwM2G7jD2sbOq25K9Ujk2oQSls/TdBYZuA0gb4roaJzOk6jtRHytrD3PTUDly61UG
aCgGO1TQEYiMC1enZzNc33sdAO2tIoHk2gEh48bYZk3xL7gWU4L4EqG4yVH8QeEOIx1KmSx0zelB
rUOAjFxcjCqASKTH/yzkgPlxSnGVMk/HSTOaS3f9gL8lQuuRk1k8Gg0JJBgYbVWfsxs97lImEcZw
SdfJaFYkbzKj1WS4gAMf9UReHHmEW21eoZ3EXdrVA8Ia3R1Nzi/Ixxm4taUx7MVJaXcl8e29KuR1
qvPjwOpODdQ5udFz01lHPJIGkpOre0p1xHd9/w24pN/Vc3IskVqtEA9108mjcFZKbGq+rvRZuKX/
bfsYn2pTpPXieooS4DmxPjnDEYv6n+lCK0YATGtmycVtcdRBXlmkMA88z9UlHbv8AvdK6HCQm9GW
ScuGhp/OcFgFyrOXHJ7wf1B52AbwAYeIxih6Kl4maejdbnl6b9A32r95bi9501D5Q5B/Ga9djwOd
0+nFBumjk9ATmDc5Dfm2mzCi549kLmgPptBMwXqfRTLuZxv9qrunRBuzdB4AwaI4pkZMP7GTYchS
HOw6shwM2iZShCFFivGumMucC5z7cqct06qupHmJuv+z1l+jVzVVZE3pMJQOD1r0d8fnQrIRE04u
8dwvG/XKobZhQgqyAvuT0rUFfXsrO1yDpnJrI0CHjcZ0/UxzyV7nCOOcuiOmzEVzl0ZkVRg+YT2a
CYE11LC2H1PRQqAGe0fesw99WwucUWEyAUgNXhSaFxipn027kpOgV6xk9VvP+JPOIVWrJsjBPON4
aTCbzGTnjPpMHJKsfq4GpbED8vJOjfXi1InSCIMLPgFZHRc2zSID/OVwHZCQtwyZhxBAZNZ31t3T
a4T+yHiEvtW76hqapnQqWKRc4f9XbCZeUP9why9Z8zocSTm0M/vWdaj0NhoYD11zGEwgT/rDFH5Y
ASCJ1MxWTcgSE7bSMxVVBmAhtX/anY7bNgnx9etkLWRf/HUOPnUL4rS2qusCdy97AYVlsOKeusTM
5v2+wXT8fzw6hd7kjzcOISNlH5qKJ9Z+v6o2YEvAjOeFbphUEG8BzzgVC9o5iLf5SSu8brEZ19HM
cyPuLOc1fm0fQaqa8xfJuBVwMtkyFyKkvTJhWomUDvdGB8o4OTmhwDPBV21POWDEAbE+5KBgdQR4
86T7/MskfxkMYtxHffnI3V3ikrrFOpmPbqbygRmzUBkz4NhFxiOGEUqFDdzipC0fcGvu+2ErJHjJ
uzO2uhoHBci7qwNd3pgd19+M69YQf7PQG7Cy+d0z4qDuW9rwinbGVuLhZiwnfkcjKtJoLCc/we/3
hgmb+wmD4UqgZpa1FqZAcjQ3j0QMzMFejl23rtQOCORJoJbtrxXqRFOrINoDd+zVWe253ZvQvXsI
bIY163fbeKDrbpms+M00Pv/RCoBxLbcgEPn36uEI1geGGNvqewx7m7smPagn3ENbbz+DWRsBXLj0
SpCfUOQa8se6SfENDqQR3klOMVSRWdsDJCW/U3M9padz6Nunzl2w9u8kiVrpFBBRueq8aOZGJkdZ
FC+O/pgz/Rdx9MeBOi1Zq8AZxPn3MDY6o0qzBTpELYJw2YfDvkj7Nn19cfk50YCTgMSOK9+Tj1zy
6xlKjvQ6LkksDOzvGi74HDlo8Ftsnz7N5PHmUXW0XVS8f6nP2ETV1RHm1tIRH5tc11qy8EIrfRJs
TwBQ/kicRsCPgi8lbWHK8FiCVMXweFI4M11wi0tsql+vgx+EAdKUA0c0MxCazJT45UNw/W3qz6i3
L0Q7PHKqz0VQG1KNQxvVJyyfBUETxeI0ow6LXTDw/lejfX5fp1hbV0yi0aG56nTOsHgQgHOsBVaD
4mo581pvF+fDCiaaFzowH6S9NLMDDINiyhDf0YC++DTWD2WlG4LT2wCsQ2If+tK9zY4OV3S1G3TC
aobRJM5mnYVvHvX5GtDLhZCRoZ34f/vDsLsZuL0gVYCv7j02KPZXJKAiJY+G0L+BLv5Hf0mdTJu8
QQd0b02VDtT3+QWAphr5w9zgADK8EPb+1iE4hNWrLQRue8sNjlyh+HR76wgz1dfzHDQ5lMtou5cs
ViGYclLD5jFXGh0w9301/2gAhrgwqYc0kY9j5Y+8VFKTNAVx4uElFf56QQmkotE4HuvxVSgeiwZ1
iF+ckbEk/Fso8vPwuN0HUJWBuGKgVPSuZ+s7ngwJEWbmlGj9/GjOX6PRYFNOVjYYcjQcs/HdPMYz
s8R0ExLrW/wlexvFca8Q8YKSBbcCUuQlAG5j0HZmfpjo/uVRG3m3bWCBTTgkjeew4KBxLy0xMsau
IQwqj2ARJoGtatGisa1zE2nyee8ErGkPgWd3x51E+qx0MLxL35+JtnYe7vJmxQAft+cWQMV2dDtF
UB5OlhXlBdLR21z3xYMOF/eU06smVAWO2Ej+dDZh8ObzS7avWmTiAFMWdSXFi1FoWEJcAG1/3Tps
rYKzJkoQOVTgBvCuphp+230nAtKBsIQOzvfPXec8YNIL7HxfQ2KeLce+Ix/oGqrEJ+IMImzpR+52
bTytQKUlnTp0Fq0NK+4BKa+zZbFdNmsuHu62Pv/SDyrnkh7KnX8gdDhzs/6q0CIV/gQbq9XK4KsQ
i8Ihy/tdEBdCFUoNLJEluP2xtBGutcie58bazsTnC4I5ZMr0hY2MEdNrBFvMQy0PFKM1gy8UiryM
t992qmMZ2+CtPNqs0yv/9gckM4iv9AHW9SOrf4QIga4zzQhNO5+lAowqwhyUwm4VGCP26zsMrhLF
B0Gey28TFYg0tBNSMle511Feherq6gjFCHErU7z84kSeVFT9uvuPbE89FeRjUZGR9yK9OAJcnv6w
IeEx7B9XywFi3pI6EjVT5+GpQoT9NJ1UlBImA95l3BVI6RNZtU2Ecdg7w3W2jwuY6jUoRLqKa8++
4yWoz2ND+AA73sG0pTVPiz8LQ1fqPIwd1fHGCSspXmdN10xwA+A18eR/BvnmJw7HhIqtWOqQX1tR
ARDiC+2/rUN/8RiRzSykggqdmffO38+u0qhwk0VJbT5PjxxpVNtvqJ5oBn9PSekZi4USU4wabYXB
QK71iPr4yDPwuCXF2ICZTOeLH8IM3cIHcel7VCDDttTr5+Yr/5xe4t3WUI69LkjCC6TN8dgrn0ok
/1XUnrUlaKIWnuTqsI0w1WBYM5r2Y4WAbAC93dDzfg+8LuQmMp6+ta3CMVs7A3YukFUZI+9W7SxM
a7PiUzp99pLqV2Ylh8p6svOG9qe7IhxG8bG3OlSkaPHR95glACbwnumSaVBmEpBZktSsoh1ceMSX
jOMWTP1K6SuVl4boBaFvjsWiMqdKVPRre0AOZGGAHvbxVtBM1NSEVIP3ehYhl4ahgyB5y+Fr9qiB
XB8DmDrTnr+HS9YqGXHYgmc5alpuo/T2Q4oJ3MkaOcWzMAebqZ+Ap5ELxJ7WEbTHN8lMzwCsG+i+
rMz4rD/B/sFan8JbvsUxQTUstrNFN2YtEiow0zLjYdR7Wuij6wq1llx2gJZAHypKogbeiHA915w8
YZwes3bdEN3gmgks1ifag0IBQyWcHSNe+jgg6uU+18IGQAcYGrg4SQgetvieiZDAPeB/6TTu5hD4
R6BC3AlAIp0QDCLiwLp+MtY2bKZWWZ20ghNN6kT+QCDvrwbVc0UJeqNTekBotc1nq3ei5gN/fpKu
QDjEv3191MccBIh1rz1/EF3BcVFI4EbA1OzJtMX+AwJhh+ZUtTuYl+wHqHFHS5hzBcesAbb4rRrp
3L8V6oWhm6B2a+ws+Ls01tvAqjB+CW5JjTv0Bn3TvgNCGI3PoSorH3PdWsFHeMhVP+q87BKv3LSw
XEttN3OZCJ+rioWsOPGlheFBLrrdSgEnQkmEY96HWtSiw1FHjUE5bnjODSadSh0Hht3w1LU9OZyD
+pbYA0UNxw8OccWWu7VHBXCuZdSyrww9siMnyE41ClIq4iyuxj/q6+NQnR95nKeRHoDbjCeQS0AO
RtZEZNr2UQbyJnrziZYOdwqepcuApC5yHLUiHMzRLnM8A1rpOhmJv2Dl/zXKfeTWS6P+djSNh7+R
Fx3ZgDjr4LGWxpvuq9odITQNRsIe9lULYIIDhVVbY0j06fJg+c37h4zS892baHolNXuTlU9tV37S
wjBtxfCoVV6mSb/5ripj2r3pR6SxNTcl3D9Vat16mnVfOaEhwBhhLLcezHWy1AbnnvnV2Ge47l5X
i/DVdR9RyJyvnIlVFjYnCXRlpjKNpf82zItTYtCGsIBcOeDlOGRBB0lrrHeotqN2P4T+x7O/Gh0h
FKCAQj1Vw1zNO+gULfCim+Jxv47sIDE019TcYWD1PNaTmR9KA/NIeMMxsjEfp/8S10wJN7cbNe7Z
1+oJLWarWHreTzsoBiOE9ZfGpjjlLnkEV0ka+4nMEBT4vmZTZdd5bO4WfkA8VLAiD7mTuF2cO8z4
Uxx7rgS9ydmxcoUyTnGfTeihpcavu78TheF9qSJXly1zOdrUTkLIEsM0oy8Sp12/81MwtKSDTUZP
lzkdaLAaMK+u0zV0edHOLF+xo42H5I58eFsdJIPmJEJ71Ogt7hil6Ri2QDXHVXEu0/yoOoldsTOe
7mMhD7qJ/vgGQgDxfuxAmAqrTXYl439LpsrUkORePA+AVTzPfIt+Kg5DAzTSyW2lC//2QjE5oFvJ
oB40ROPa+2F5+kRpV0ZCzTU5WcoXZ7xb8x/RYMtNzvXDRUabd6As4QQGUPCoLo6SdNN8SjCJJL+0
ts6XK2XFJ8vP4AajTo933GWnS4pkMOI3jwtsG4U66cIMTkFBgCkgXvdGh8O+oGfLoxh/r6tAYZeR
fprqwO1QJ4Bt4Quj+jefTZXA6bULWX0iD+KccVMII6NT1WssoPlzoxB4T3whCIud9ImfrnOBgD8v
qU8/uOPFPS5mZ3LNDAXM/uGJcRlTwI3Aez4D2V3sUtjXn1tjvaBV8zzpi9kqeXFD9XbJi1r9iv5q
1FdxYO3x8BXdenoKwt9nLDlMOcfJM9ADZo88wmPd79N6a/oDLYuMEHqQWC7o9TLAvyqjtNfpVJc/
i2iJh8N6tO5vq8zWR4JEOBEEOdAEh7KOA/UetzgZ6juiEqeA6bnQxxrvMdLY99cTbyDh76xs7Dtu
9qwz7QB7JkNNYrjhcPDZ/S7r5SGdvb/Mw/VASzKHa4JILVIu4qwKlvH5JdfLBQuZ1A3w9daRK6Ba
VvTr3DEYcJBE/7GAVQD+GeyvuyN0qN6xdYfjir4AqLgyos/cR1/2ZjuQjGKpDI8nHKv2Fbius9L/
+Oe7ViaziI4SekZcMD6hDRIViSTB5uC6gPiE59e7bOQsojAA3LlPtAyhQql+Guz6kOfGSCOLpo40
ATlo94kcF/tmhFo2/PE16BZZNkOVoxmm9kp0Eixa2uBPpW5E+GvkVZwNF597Zr4J5edBmQ8wmwng
3SlZU37QGO52QAN84jr73SKbI4crNv/+GBIRv2ZVftD+8GIc6E0QEVZhmmEvbJ52Ne+qG5UkxlXn
9qQlSFfzBq3ViArqRtGykL9tfzW1gliVkd4ciyt8Al+oenDfI1X0kdm46iRBhdhNdqJELCEoXSL9
M1LtvB9hQ11CK0hbZXKE4uUbbKWRjxWq2gv3B9NY8UzvtrQ/S0TQ7SkLc+sfwp67F56lCtWEWHeV
eibBt1JD9ILdPdoqOZH0Xo/QJeXvQH4eyHQ6TSid0lhzuWyS5M6fSR8JvifpfgEJOa0Je2zZmxZh
Uk02UH+IJ6DHzcGMH7vBMBdHMiHN+WqU7uxgVE+6c7xAGmkuhNByHSflXd2+umXRdAK/LQzfGlsu
jOrJR9RNPDwYF+Mxurn6riKQq3BuGP8jQO1ddL9As9jlD5K81phyaeksCZH9KztMsrwJhh8GPiY7
8P5TGA76owBI/xWIAHAFKZVcA5vIH2LipDToLRcqxMqhjfLIedYGnEgNJW1NhbbBvj2QZNAavIwe
Lxabpv63Wf8QHzUbK7fUnYmMunrYddTCRM00U8+/kmdVbGZuZVHMjGYpRXi3lU+ybxT0TXzKQnBl
nxP19V9DqqLxzqkBlhN9cM/cd2JYqYdKhCJNO2qfBhMIDfKCsk2AwY0PjkFwM+gtupQDZHHtl+lk
jTlxys8LF2LUVuyu76nwSn4pMCK/oZViO9rUKGd2k8xZCN+PF6e3WAygoJP5Zzco078Jcws50TrD
8ppTn61WzhYMkradnuUNfJWo6RLJgQrEkvfRErPJRQcGXL7oxhg2U21mTA8tw+8sOxs5jtgDeCIS
l1X84nvmCCe7E9OqDZMxY4a+Ev5X50WrkkN2CK6wtD+pqwLYc+rrivoJTCFBlvdT30NVF2wi9SbJ
5ZedZmFcXwQfh57VL1teIfI52xtktYOUlmh1rw+CKQvV2ZaJ51PH3ZSIGKA37Uxmm7v5b0ygUBTh
aGzBb0JdJOaacTk86YqdXsNwUGHKzDUaKV8UyNBr7wPOC3NTzbQJ0esgvoprK89AhzgbcOGnKsqn
4On5MSpf1My517PKqd6s24HIHaKQXjtJPoBdO8F3R2FQs97/gZj+0suroUIK/scgsqZxe06ZfnLt
3WaGkrXRGLyiuUTeSKxzEoK2sR/hw+n9KjRBb7sia7vPs4VR8DMxW3Rzl2K5Ocgd6diPmy+/REUl
XPn7ic2vxamuCVIHWUhg1GdStPTpQSTOogjAihA7Iqq8U934od5r/A2qbU0gYy31Ay6A8nt+n+Gt
eTrvhAVg62RGnjHJX5wgs4zAZDzFSndzC/o/1yxqS15oMQIXv9P888OvIJu4rKXPCYxHZ18TM2Vo
CU/8cgJMp+DYW2rTnUQNGDUQDjm3ojjuya5M4nzN7ZmnpeA/s8aSKQNXRk492UBA/2i0tA4jdsQj
s6fp5UcW8D6ZwKpOmFjgxxdj5xA9GRUzZJs0slbkvAGq4BRLrBxV7tcINjw0vUbYfmuA8ldr8iy2
QNFtIdgVf4sSPJpAeDhUJIhRYydWkBQmwaxaffonQ9+x3ESXaZTYN1l0unN4m26rhZ4UrnGCwIPA
VLAEeHDSKMDNG0eg5UW7jY5WoTG92n3W4jbleciahjWEwGf9sxYvZ335jJIyh2iUc4dcMQ2THF++
vUqfybLtStagrjX6gPOcYyrmNwitZQsqofSbRIxisacshzRcyxVYgEcVaVw4dNE6JNmkzo+ykVKR
iZeFAbhKSTZ0mZRBYGQRrpj7kQGeTXj7J/Z2nbl8DGI5lyie2+iaivE2nzj+Q4LNB7/v0bZ4NSDG
kBUtiWUZr0+jCwpzL2Q5wajsPDSNZjTK4H5OeunGAkrcmUd6QU9qhYdpjVz0R99nUzUYLNmq07ok
KiRzg+i0ha6qJHsAXnH0ZnETHnPsHdEsbBxDIEczlTzsKdFqcgtgVZGz+3+XyQjQhwhVpL6v5aXA
Tbl7dhzF+g+DjerAet+eA8Dc17K4sFkxdOUkycvaRack//ZviBQEa2C0aHbIwFQ8KJZEstpQVjKb
br3Tp5IdPWxPdfMktz94yIz/x+sMLwUxy19R5p0Wuf5n0t9/yUKRcwvIesKG+SzNHpU0CADeql2p
EIEHrKmEeCH8VQSDsp1NxiKCYDnXgoRJoMHf9bdXp/DECxnTV5/UuN3yTlCHmFZ/bl4LTh2LIuCG
+wtfTRlrr5EgYbRBVSUDmtCumu0Vxs7jfF1a2kKVZtt3IZTW7ySkv4KKdkQPWfooZVVIuNJWRiZB
ljKrr2c6AR5zgDFGHRnUYNOpmH2Cpr21CxL/N5yDrTifGFX8hiXELfcvm+qDuR65sJ3/pZO9zaBW
mzehs+Dfd8wI8nVp7+mJ5i+fd3Pn0UqG89Jl8Q7t46Wwv6GjMghNOyx3VenlF+zOsGzQDiixpekD
RUaOROsdFXY4q3Hhq+PjTObL8OTZCxPBwHHy1FYvtnd9/C3urPidmPpBtgiGU6jzR7ClrzbcqJik
pOjisyFEJRP4ejH7X1Q+2oH0j0HyPzJNH7KS546VsHgB81ObHnWimC3twvgN5Sq8zDr2rbWjNYmp
KHZd7LgQdQVUuR+VJX5aHtrws0J3THSFAQXi95mMd3XAj7E+6qm257/fPOXH37TFRb8s3iFIqwiN
fek0QvYvNpstTf8+9HKKvtLQ89jIplt5Fc86YNzmJpyLGGZdyngxPSd6md9TwW1wWLejjGCAG5wL
rPxIbBFL+aQSo3n6Fc+nnZKuyqBL6+4WFn4INCj64BNCX9+jMLhqCFV0NtSHSESQKauLi5gS08dF
bIUPqNv84SF4jZshZRPC7wfihgx6029749wgFo7rgbKuHRx3NNhxrYRyg5VFl4KAhIN3kj9cAKXh
1XNq76wEf6wZt9HVQtBpYqYU+ZpUNWknpPo2hipkk2DjD6z5vxP7ZrVNC1XS1YBuUAKOw+9Kwubc
/oFW7m1P+3BHvuLsblqh8iO0wOZJXy9C4gTyW6+bHA/oq1uV3F96kGbKjjc5UuHjeih6OXly828u
ODcBck1rsinQLd4brfRyAXIPvfebNAcm+xdGNg6PHsgFWWjlJUTXwFwNKWqPNSmsf0oI0nQZMkPk
iKUkL4KK14wVki++EsPuLJGpV/RSdfa9RiMf/jG7VNO4QHhHCOtYCaPkyE+rfO379aWPGpp5SOmN
rVSy8yocfyHdoUKo5ChpF0o8PxL7S74JuzPA1OoKeU3XbaWMb4rW80CRBxB0XJ7fn3RIWNQnLy5I
/RrwuvjQHK+5O9EkpRMTB7C6jFFqZi5nQ29NgayxP/CHEBWFhx2hYVuqOTj/k6KuMSx/TRkcn8AH
+OWHe5HUACnN3GT2JWkblMr9ckzvC39B5/H708ezTO2AeLlhtpYDr8aXTQaMIJqvqA6zDcs3YKUg
RykQ9hOj0JSdUF3ZdGbutI8T4SANikYTIjadfbshDDsdhZ4mX0MPLXCouIRPLkVptub9elFV+vZN
EXkvURGfJErlWvN4p8DmHv+se7/lOsQE2M2/eAH3RHf+KeXaIcGyyJKr/1mZZIKGJLRgkWNhnbiI
893ObJ8ls/A5Bhnf2g6BL9U0Yzc0YErDxYyV9jiKbM6QUDJkL4DoTWKuKDeH/hAsEiTs0PWRBqSM
xpKDf02GqYBeYs/FHEgZWw4ADqJMGg3fe3ZqxJ1cVmsBIOJzsHoRLHm3mAt+GacFjcmZciSp63zY
3HA5Exq3kDNlCqrUruPEXFWCaiqWLkxLMm1YOazOjpRBjA1uJ2CMmbIKUdU6u+pOgtKPPAhsgrzc
KLu8pPaJWu+g9vNXelQ6hlrTwJ51tq/Dz1rlHuYDjaXZpgQniL3AdaPYomfw4NLmdnBnpOYodKGi
eOqO9Kp6HpWwMlFeh/4LBsRMjH3So6UI6h1H1h1pbkMEmEMTlBsd0Wwv92RLD4xGBUK5RF/84B8C
kFAbIpJ8PB2lNOnZLDasyaDPw2SkWK8SwrFYgwZK/zNkZb2xc0EUfxFiIRLi3v+EFhsEGrHLJqzq
37Eu9DE/DVd5IguunRSkshpsd6/XFJBWf6f98GccQ0EWnmRngwLnNMp8iOnOl2sOESaHdTaa4lok
zlM4MJqj2js6qtb3RRYYDqS0ftGXirCt7zjfnWoTfB7r5Q8e6l+bvmUO1yPqzeSFtMPQzk/iPlZD
MasKXgL8e7CCo78aNg3qP+I+NA/gSxSd/1+8uVOYaCMJAKc+lvkXQBEeoUDyNnHXtxGB8sE7jt9g
u0bSAkUcmQxXfTLg11zuVrlG7DZft8XMJvmnx7XAOn+ONrs17TQeZUyGJLWn/9hw5TnG1kLN1tou
382zt/4Ze+oK/yZROqRCBlQ9ONHSPLJFZvdVBZegpHxBxDUf5ZAkiJAfo8sZwxz1JWF9Tkmf1xsM
yRQ6MfZ3jWaLudb50ysqxEZ59vpXVGXndG9K/c45aAzefaYOpyiMhkYGG/inXyVR8UtAJZnnYVYt
R9cOsbik+hScaq/tEJ3mdlCThSyH3+xBVEQqXMbzVWkL+0vrhuZrZ1okMNTMsXQ+XJFm3gq4n00C
rsa6MUam8M06hx9GsagulrXaAYGfs2UGbh9YSv8UEHhVT0S66exJZWiN6trAcE1zx8hphPMnhBGL
2bid42xYSY/Qh/HUyV+34rMRSKyYAw3o89ckWxfyZtpNa+tkxzzEc/tAytQ8pZIXiWst3dK2BFcA
A2Yf5fNeoR/rlPFegtxFz69sz+PygkZDtdWtwD7aSmXUR4gCISNL3F40/kY5jPmJ6ftL3QjpIGe+
znHaEsWzbB4i3R/vEGk5rZwV08J/yFcIKMI/nfJh7d6R93BaRp1SmR1pFAl2KQJ95GKipi5d2dyp
4WXyRtqQvF1z7aM8vmBMLTAwseHIIxW/RgO/WDcR+YgoARMGgrRdbpV3XpY+EtN/CTEjBWF/+dUb
Q+WCG8Mh6sfSUF4oNJ8VVzPJXFK9Mosxqvpi03TWi00eb9++HMZL3nPTgPRaNh6QE64NB3JqNPjT
bIoafXzQ4fYJHA7l/MLJ4tGsGv3n8JrtsRdaQ02LW6471Pt9nwovqxoXR13oUAheVncXLhTklWJz
dZcl2eTn41Q7aWwdQHbqbdRlLRPwkOYSFNitZCMMWqMsqlGJGKOLiah8PbdhPRe8/De6GMCkrrfN
1YK7uY+++n7UsFkVg5Ce5PRTlfUg2RIkj8dJiXtoaEVV6yjJIYtJF3cTmIfP70jjrmNGU47pGmPB
kxDneRFtnJ0PLq3CPP3eadkqbkZ1QhhJ1zdIRGTnQiU7hsTY+FDZZQ2inkOE+M4hfLCQm4Kzs1RF
vh/NiR/0Fw6nm9m2gFDUP+0rpdFmP4payR6aMz6icMOQk2wsCECqpJXQyVGTkn93xwdu9Nn251Wd
QV382jVTQzMCZNiH+pd2S+jwA0Z1vWvgtmGnWHHXNGUUVLzOlShdBetWYKXSEmnOXu2nYkuql+CC
6gO5zftCKh3Gul+Z1o3E7CzQGenEoNni+0oGD7MaOnX3hxXcOpXLiM9wIZ/Fr5RdKqiKj0HbCb/0
Z6c+N4NB+jCIm/nQTuxcROS4kg8KsfV08CAcA4ms/UjktmU2EkpkPXg1Ajzu4COAX/rGv5uOjfN3
F8vu7Bko76F2A0EfYawxchugeaBDnk/bjQJ5Koe8lUJQ99gxsN5ZylL/RUXMNCb2gYN5cyFbBhUr
AGhc7pEba+Xt68C8YegJ0fVLoU9F/QRraekYS7KIzhLl5GiaqOp8quVSfqnvGOyANqxML6lcEaIZ
7K9vYrEC9EnixGzLxGXIfrH9BuKJxAiA1wdrTzULif9R+HvF7QZSBMgKExwa7TlVw95NHNg6WGgi
8Bf6M2YWdmxf/kjEdSR8ueWToi++rbnHoiFPieU57FTzxglkTRIOImUkXhjISJZznNMyUbv5ZIjD
1sewQe+0h9YKVMvcWVrKbpd9wHHWrLByvMVEodZMEbMH01r4Ubwa/mQUQGtfupfNGaiDULh9/N6S
cMD+uE9U5768nuLdNyo+90A8DKNwC9/y7Tvf/LNtaRCphYuQ8q7d2R6WlMQAG/+IOQ7Z29I8s33w
zKbbMPF0lsganrcAWlrspF0OhPcYedcwlFUcvy9Ee6ZnDYfvAqetJa1u3QQv8akXZ1jj9limXVIR
K2qmsxVDe+L7o52qxDIUDjwZKRBOtiomfL20aCi5rpLGRHT+Ly3QTQhzqYGILOZIKvTUMdd3YdMU
q67aPBlxlGFZBwmBK4bBMmatk6NrJ0FINTwcJqcLZWsM0ik5KG0OHUFJqzKORXurLmWgjKFNFR33
cJeFfxdu8EMwV0mXIpueQ4IrxKzi2qoRB/AbumRryx0lAcCf2O3ct9v3bQTrXnD8tblqhzd4KkcI
YtThDPsYVkdE5sBl6i+oYUWSaLySzo9YmHpcaQlLsGgh0EJBi0wc3R3L6HdmzQMTGysWlO6TFpcs
tMC9ZsTNDVr9Hjq438WOOsCcIY019lddgoTKXchE5qu9MJCIcZvrip0TVfdZUulRxangTZVoothP
KD30JdwH8xRpfSfGd2YUmdabYoq1D9PSoeo0JYKMRYg37X6AwMpIJDxID8A7AjGIdaj0/ppEFBTn
4puq3+r7k3A9ppsPzlTD3qRZPoo+TKIxuw/CEO0QPPCrRzcThzvmUAnIjKzAtmYOHyIBuP1i5mZI
AofWPXb5Ige/Ds/EWzQYTxkAJ4rjA5Q68GKWnD6L79t+eNWro3tuzoaiC6+dzyow+mSxGM/JxlHf
LVvdJZNWxMFkLUZ1MONU8qnCBGAb6xrAymYnbw1RRWLe+df1sg+W+d+NJVDgI6idCaswSH86NVMD
9pFS7LaSbn8vBh7LTPYVSrMGOoz76F2rQ+sw1QF0rFdsli9xkupggcxEjIIaIdIZUs4aPEfJb0eN
BKiTfH8OqpSVNBKqNuqiFN7UQ9dXl/7B5H8gauY1CtMGl78m7SzIhZxlYb9Qfnr6Y7q4Os93/ux6
cR0+vjG7NzYHIXeVbdKR/kHHp2bgMpXNcakAKeq5ly6OlgzKccmMTBtNEgISB+TmtMNlEs0MS1Ne
1tRDmlHiSskRPTK9HDtralZb3El4jioDDudvA2dYHn+eWJ0d81zFinQKQeHg9tg2HizUv8yJ6ArL
JgNF6cnD/xt3pzKoQ6X277Svl+azJwoPixUNgixCWuJO5j9aHPtvORZjq1WPefK3wZqe0R/Zvs+H
hpCRGjfSpaluCN3Y2N0/wT6vjpAjimWCxleNfd8Kj6K2cmQjwHP2t7220ZTJmaDXmqdpODB73vES
15smOj1gKPn0u1y0p9iYucg0uTjwOJNDmqoc0UdnjfXnrm27yfKkpF9tu6Yuv4J5GvdW5bJjswA6
Ryj6xC+pEqtvYAE9exq1GhNnvauQg/jPVgjgkdt52CZbg08PhjqBZwUQVuMS4nwFsqKN9FoG9mb3
pHMrT32R6AabFncVMFrjrTeChuOMKaX663sFSa3iNPhM/9i9rh5Ivz/OEDDyO8ofsBkrPgJFbmq4
PCoVnu/NDffXa21/n8/zA5mZGTBhzR3SCWg2qLkeaXi7QAA//Y9XdSEW4bCgoO8n8YCtEVEfnXj/
FRemQVDJlBrlXRA19R6drPH4dpMGD7c8jfZv11sINOm+ZfrGtSiB7QnoOMstp/9UCEq3ZNXXz0sD
PrkNpEV6fwKAx5LUek/iK2p2jP8s5pqhYcOxv3S7QLdWuwpIop1bAfF7EtVw+WrUOa63JPuLeTT5
Iixw0ru6/NSutwYWWv6ZZYyXP5WY9KrehM2eohj4jt+tdoJbha3wTKCs2QMagBwmwWlufg7EzhSy
ohoklRGLN62SluAomhlRUPKYzwDYWHyRI2Sshq74N3vnwzwifdySRZYxI0UvbUVcyjrvlFl6gIYJ
6ymgInd0Uz/1Sg2OQFn84FFk84nkZl79Q70EkDV/1E+cWPzI74IhwiR4e6jgliT2uTbDV+c+fOc5
z2A1CIjqhFOYY+LLgVisOg0+1q1y0Y0s0cDJECuZDctRVEvekELPrBN7oS03gmsYZcO43POrezpV
1ozDFya0fA9bQmG9c16ZKET3xv1RasA5+q5SP9f+Dyxhx0n+7X6Z3XD/ufbBrLjzLwP7gdq1zUN3
Ws7hCQeEwLdHNu9H5KXd0kwq8wUQmm61gJnzzDh1kLO15q4wwi2NVJwj6w0dHUjl9Qag9WLzUsO5
56bARAFUz4rApMuJyu+MP1XMt4ZFDFVAB4Xl5ZNYqAMW3B21g2loU73KCZhjfjSfsrRh5x0Sifu8
GtDRqgJPcPQOpf+3rstU+1CEifMCt94T4F57QqJZiN//aHr/Mw9qKJz/B6Kv9oUnxPA6fXGyasWV
apZnsOYYX3BRQjJwCl+RyB9/zxM8xngrtvY7n9NqeJKbHRpWYwC3Jz774dazxzwqmHsWwdY69b16
0mH43GiZODluh1v6xhPqOOSP55zW/GZgWQ5xdPH6xH/cOLk8XAJux6dl/HZSbskGHqPo2Tv788lU
r9vYsrTlP8/gz+9hq26iS+kZvBhlzxmHZMw6oTuvCs1Kfo76fHep8jMkUmbCg1ruDgdlUA/PrvuB
v5YQueVPuEeTLjBFQLkuj276qozrbBZfeOG4y0dgvgdJYnCU/WYQnOV/NzwsoSdopAoUQN2ZwvZL
YTc+Ca0ZnB0ug0mi5I9KZjke0gvaYx8hLRlQzYeWUkTJx8gl6BpJ1UXYu2i7WT0KaApDcicBxrK6
zN+J5/c4eiZSBZm2hgFB++vv8sqSmgFEcNpI8rHb+pxikDD3J0veeQV1muJuJf8CXdUzz5/IKKGp
m0//Bj7RLLZCbZCvXeZkGdfDOttMeIzs1ZU7tqQRS6Ikd5elQSeXrA58s/Dm1O1YHFYTBA6Uriwo
JJm3LAQrlBVe5u9uVe05UFFL25HQqvgmwL7I5Fm2cZZXID/nvHKHosTaS8eGSTMl0quFfh/b5qAe
b29xh3Zeo5l7hDcdB0cG4p0FaD84SgPVSafqm0KdPv7tUwroqKZVvJyP95Emlk+C6ABo7cYo7bOK
lcJc0Fvst/6ftNpNVFwsTbXeI7IxVbqb9dnexitFfcOnYXvqPX2FIGmAn6UwsS1+Cg0Op5P0Ptdh
X4QmdpeKeCx6yvDkL7Xtv+/+V8K4Kehvygm5xHSsptJianbdUhknjOwJ5Yr+pcg11JCb3/0e3Sj/
29f14+sTCx+2VLtUzY707WezuyoC1b+vbmkPv65Q1QrCRGV8fuaQ3TBaUxWQz3blAnHHplh0QNnd
YhrgMKp8lUS+OYw4oM2ltwDn0aiE0qN8NnABIM/lcTbOhcPjh0yjbda9Cwg2PHCtFbnE+VPTDUd8
jO3Afr2thxT14IknIkD+WZ6a1xaIR1QkKhuUBJ+ZioNRyx5bKrsTPoXgPI/USvrKd2Ua4VHiwruz
tX3DmjKAo8j+9JpkGvojE1RYthjuh1X4YkDWoG4DQZbUoesJwQ0Va57xrONsTIPM6BNLelzEFGLI
1Pv8LJ9f2Vp6bBAj+7d0LWMD4M7oS/kQTtpeNd25IjKczfMMAExsP/n77oZuc9twwUaB+5EJzwqU
UbY2NBS+xsTxysWrf57W1sfIdmsTSTG8pTU9orFvfbKEUFLV8qJNPiFPQcniDZGXoUw2d+Kj6VYm
JWTB+fAezf4cMXVGAjvsp1MyfTNfzGmAFX+paD6e9kwck02sESe6ZOFBiYfJDyjb8yrddwEwpEGy
tp/IhNkAxPid4JVErDOYdZ+grE7LX4KWG8tHdgmwxcgdoaGZLLUhF2koaM9wT+76Jd9bPWIlakXF
mW4oDl64+XL7VGJA+mJ3NQZN6SWbAzl7BDC/3ASFRbQaDnzcCGbIkhjmwVWoD/3V87ucUhjIXTCf
8EyIaXaGuUdCQc/6wg3nND4t8dTy1GiS7AOHWJev2WjF2ofIBNqVQpx4L0Q7VDvTJI7dTOFLzdwT
wn6ZifsExwW2yqJDpeb3oqA96lV86Q6QxJjoJJbt3jDOHdsx0Tr4yxOYb9fkhghg4XbojGkPSSuo
FRkgqP788aauxKyCvr+LfGa/i70r6FNRh1jJrIpfJZjTjd9bHX0GECMRZ8WMbapV3tQmCwIOqkZ1
9IwOPKtDUl+dTlnTLhdlmrRjJos6k/IPGOUCZQEPu5H2n3nj7Vj9rPqu/M/yeOrBgXdg5Fhyc7Xh
UH44ZJh3AjBKC8UlXsvnAM5b03H6hpW8yONiUWK5HsY/iFcYP3jPHgE9UF4WiB3N2LP5++jvwqYU
k9KEXjjy++gz5SQWlQUmRtvIvgJsQObiLFmvd3Gpct+bkafrjNsGUYCiFuzFnUt5b0xKWylgOgpR
ygB/m/YvApCU/x/GPqnrkCHN1zJxOi0uAM9hvmvPkw9YRf3LSNWE9dbZDVVqkJi9mz3cNSLIqmWf
pnXfvmQ7dIYkzTj63Vgow4kFTi2Ajpw01gRoI+t2ep4wX1gQvEYlCRfmHJDt4WqF8c83Q+nhvlWE
/VBf11EvCGlpiURZl29rtuuQK2MUzwwkh/zGV4R2luWU65mJcEUnqEKs5Tvuki71W5BbF/zCDXht
CSCOH02m3ZN9lZorwWVbXKJV6HOv+sYLWgESy9VcvmLUQzUqfDPUsMH2K1laKe5iW9C3u426UpRM
6Jk0Y7mJVv6ds7AqcXDR8uxDCxaGg+nIfUV4KM4Yzjns4+BVHu2Y/zgzHcr3Ll0tVT0JSYqB8abA
9H5cs88S8mQBC08baDKgWlYzsXbMFwVV5XKhXzP7jF21COQjlL1255uMwnpeCTIc7GMLx6wXVX+c
cjiE7/SdvQR8/xF/3Iv95bziudY1CPsFeNrMwTvLnkNLWgUvoW1wcLkXMkTDEnJSF67hPaaLq2Q1
LZ6fuzk02MAFB0+GooKDtkPzOi377bFQQUlk+V2vwjrpVulVPf4sdsfEpDIXUIosX0V7e1C+0eAL
yNDwmtDeIAjgrjgUZUTm1x0yvkDH8euBgJwr6eCRGgM5Rv95U92x4FHpJ0nSU501aZF9WAIcKHX5
W4Brd3sHL5DZB77BeHN41svFCqfJ+mEzgb/aAP3pJfXhs7mp7uL5sMboejg1ao+EHBnyJDX1+qHY
CM6id0B5IYq2AWRFF6aKMaTa5dwd1KjMAZ4J6Em3eAAyY4i76RvFF8MyST5fzQBwbCl9EZgh4qnE
eXgj7wlH4B7EIU7wRUTWbYb0FUmwSW6JbevMP3qhbHwnjVpIIhkoush8BsnKZooGde3u+Q8w7Fxm
Oi2eZiVctE52A4rRaMP0DtfAEIlP2FaNWn/pNnnhsUppHdmdv3TYW0LmbwXLNjEcFMPziMkaXv4J
GPSbvMvHoFSg/jk55twCOlqPBxqnsagN4S9IJ5EBBJk+4JBHmlurrFNMKqrPFQezqFnRi6bDeqYq
HxJXVGq+5fWCljTsC17xNiFtCWSfDWrnZ37s4zwoMGR9IX1fNmZfQD6bY+RRtWPfKAFOeEDUxFYh
X87CaV0Qp1kQXSFf0JM5Sfjm/1R6KUwtLJmWxqUfivjbkvIIbr9KfL23Ic396rX1aAHcPbYihNVc
r28XJcYzQMDkcfxmWqqKhkFEhKNp2qrDGY9uIFxEV8grsXbx/hQphk0EdkhHVD4lwFbNPpsmMa62
sLfKtfHGhuO2kP4agWSDXFuu74ez4qND2UOr36LT3f6r5qV3BqyusSbqRMkDsu1QkHOim3ZHotLN
Ms3CimodUJY5CBwRAG6GiE5T9yGP1IIenCkkuaOK83fiC3EBqq5CEby+X3Ln1T16Y+sTS205B1K8
wXyW8SbwG/TBKbqbydch+wbWQvmuTb0xNUYy0xSSeBb24CHl3rwBFTrWkWC5V7pRLFwvTdvEND6k
D4JIiFitx0FnmDNA+VSkEs6gzKpv78t9w2i3tYQzKgHa/yhR6mWg5EjN/uh/0pHJxA+oTOWXgJo2
ZyH/in0BBx9XInM67hzKcYzgdcp0o7kYD5Pin4EqG6odhFH7Hn7SRXxIIuXnoqzFaUARD3yf2zuS
OYkOX5cj896Y6c+H29P86DVzS+l6gsfHWVCNssDWpVucaid3cRVAyw9CYmss6CCgtBvJ9VKZ8Eb1
BFR++NHYKn1Q/v5MJemWG8OGYmee9rV5wSNIDYjZ/EkhxojwORfYolHe7MRXcz2XVfESW8hln0F7
58PoX/6DFbER7iOa2JRMSwMRBQxaiurIRPSXP6ZW7N2gzflu8qZWExFh9bz4eD6LBOKYCj6ywxKu
n7ZpZZ5XgII5pLc9F5o+nSAob1H+Qy20NNuRjWjDwkBUG3V6dx5TLEzlmNLZUyGbvLd7cziGpQf6
2t+Ay39/lmrgZPBvXXfqo13WsljkbGdtzQNJRiukbF5IgrXR8ag3CrNHTky58mpZOT4SudQRJt87
XbrahxgXwhUTEwbK1U5wiYDPDwcVt+dsjzkc41WmRcqkeSZ1jdvjaZpLuuJbdRLdyiD+2ARIA/Pp
sWDebfiw9me+z3pEaJd1PR9ZbRr8J49xn88n5x6HVTgoFj/16qe/js21bQCtwA5ri2Dk4/6llDNP
WNaNd87x8VscenR7yT+ng1TCdjhonEe9Wttb+FAbKDDREwPfxlqw1Nts80pbgp/AnP/A1go/lqOm
3/4CpFfPpQIV0N8QRAlyZOGAmNsXP2ExmRW/wQcXsXJ3kpTcbXqyf1ODrD/7/oYWszq5MQMNKFRa
O0Rgsq5NOZvCGnrkVoNnjl2vf4ety68R4x2Et15kF01vuAHvQcxe8xF9xatabp0RRG5O2YzpX/FB
HNRTgpSrcdxo4OAxQxXdAZmcTKhoymyZw5YeepmUe67ee2WEGhkoVJxi3AC8Chxj1NPujzGvC5wK
/hUJUErZaUBnTO7BjfpqT1YCDHASbtVWY4Orn6mwhgg9r4baKqq8GTZdwPlONRzFgV2Hfua7DjiM
y+akNar0hHh3fPzjuGB2AQwc9xojN0yFMTpUFlk3CDE5jq56lPdnZCgZbXyXI8cFAKQser8fPg9B
q3RzRv0GMccZKvGVJ326fUPWlAzdWs7GJOEpdSLa63DFD6ksDjMaiRkg2NfWrIjp1rwffKSwIYPR
uOriJX1dvoDGs4On6rvmRO6pF8bc/h5a6hej+3Y4mHnRk3fhq2zFznnS/3xHkPU9aWl6InF/EQcQ
e7KY8ydYWTL3yYpRCsf6c7sXFnSDTEgHEO00YQ53rWyLxhPzRIJbDGl+oePH3WwQsb52tk48Hqs+
APrwcf5SCDE+zk0sE9AfQhfvMkX/GjAUteBvZI+dsMKeljntnwct6szoJQ8eikpjrMHN77SDeL3/
K+AX2LaF2XbSozbVTUuIGuG54yQ/xvijNQnOZJ/BuDAV4G8JOfEfnR2R1MfmCEmTOHWYkW4O/Z08
gv0eBO7mJu0Af1yY64XxI95cplqBg5Dpt1iiQjnoF731aHvje0B4eHcHcJoH4LMzpSO+EsbXJV4n
JQeDgww56JLGktAGkRJ/sUrAyOWhRHlvg9OxAVc5GAM1/ZTv5yR7XHM8PuR3QjZ8z20YKuNV3nZR
lMQfRdZMhia/hqdnCncGUHH1bjXIb5SrZMlkVfg6qStbYmItWDmO/T4aMi4LQOKf9i26FndfV1iw
+Wgby03GxI87bk4yx/EoDrJY7RfIkCkhJupUbTT0Fub90AXeqnz5sIQKvsoVIFp8UcuDdhoZB+v1
hXqhPBb3zAIqbwyLQ+voRMz07bmWgx3InANy26bEKYG+MkEthzmh1BS+vXQnKs4d3lFM2mADJpmc
8S+Q0DwfFIzlImtiHlbpPLAdNnBxbjS2cdvLpRRQWJQgT6ho7B3Kz2koJF/ZC5ER/cipxSRX2nvN
9GnQk1RAmxXxFNjigUzrnpE1FzWX3xR2sYr+q/xxRzUqIuG38a+43CO/rnErewRcfgPvSjDJ4Jye
+6eWaHL/GEXM8z6DDvIU8ur7puN3Afr5z9tthF2Eqe6ZUPhUiLMlSxJ7QFDTg/1hob983JQMgGoK
ypvZlh2sqpbotCL/8rRrXGsuwFMbiMVsuqP6CrXynh2LcfCCIwvfiPJgFulQJ6LdleXyybwtrK7T
BjDzBM3d424QgJPHY4vjcFtYN+osJ2GMR8gQutYsIVSFV0HP8infdWk9OjVQjS7ZB6JXNkk2MvRf
iE7+Io5X10vOHUri8lHQ0KRLBRfqeBvJYndTAlGzU+B7FJwGKIJy7Z8UctIGGw5C9JUNsCHHbG5F
b+e95Z1V8BpwXG9LLiVPw15ZCC+mzGKeNV26tINL1NrqzbF30C8t220N7PVkfmY8eLUaGa9UKVld
h9aADVBSsLX7p8PM+TxCtgsQfRiHN7LVMOcaCBwyNY/15PWlYknQCsq1GqNtFyBqqBkVK+ma6hoW
qPwd7gU1Zj5fEZme+8XNcZj8m1CwgFxG0PHibATYEdDbE7l5aPn8euJSq19mNEThg5jWdR0WM2pS
Dax5knbHmr5mh4oWz16PhRSqljBEN/o+I8kaDKiUSftfewbD7kV4eTHWWwxa/XH8mgZS/NZSll1i
bm/oN8fU8RJrdBZ01iuxpM5Kk2Kc/Mn2oWQS2ijL6ChEVMXH2L2xRwvSV+b3r6zlIJeSqEZwHp7d
bMvtS6z/oyBYOpHLXxjKM7I7HdQsy8qbe+TCiF5lV73iCbyNElp4x8sEdvCjPx9qsh0owYU6pnjV
VpZ0z8NDDKOYamR2p/3o3ibIiydp/XDYHWfuSbsVE22IijNZ9S10TMYUFVq4+Cq86+w/DoGaG3Ko
vbv79fiqt6+z9Nbz/2AXkbSY88ak/Go4cTFFjM8SE8xcmEWLEy17BjE674qyrGjJuXF5dl6us+Js
IYYHsoaBYto2dvPnTdmKZCn4FdyoKYRldbmBUuCHqhaT+20vQnI6H5YzsM3TVcGthhcIrD0Hdgen
OysTHmtscHwQHeqY7viAHVgGCfDSXHkqrjngvq37hwgvES8WUcIAL1hDGM2NGtRd/omzMGVrBWMf
w1rbK7Y3wI/iboYJqluyOyrXrt9o1jrltCnNJAtPzmWpoU232HJmuPh0zTfDikEygbqvWRkdV4c1
mh2liYy3/3RUlyvdzXSdTvPjBJAauU3ZP4X20GuAXWR/tGCnNOvvgPsNBRAionQmS2oOZGDf2d+m
xW+XCf4dPJm3xfd+O4zHncgfxQkDcvMvf4DA5mR8AQHnrxdGjUVt1kjKQZ/UiNRx4fWVEQ6GFluk
6FTKHZuJCsgpVRLr+LquIqT3UX5mxGmLFsvN6q6/YWJjfERqkFIeLsnkDqTdSHMHHPkDw8rzfDeT
RWmKFgHU6c6N+3H9mjE53dwyGnQ3wfcyELjj1Uww7bm761T86/oJrSCpWeHPyrFfczOwo/6fgRGs
QbpN5sTNuabkrTDbSrVVw3ij6hE+EpejKEhQ+ZbNm1uPJJJxbJcptAs8dreCgGpTigXKGYHPSmoQ
rbdY01NBjDvkeCh/Gln4NnWJg2yHDRWgaHZhC49a2enrs4saNbtSikb+Pf3tHwYfMJu/WHlLOKhA
OVJ5F0cn842/Cbn3OzKWUJx+7/W63FNF0e2uGnEp9VdSU3OTRqMgk3dAbPABWBDX64x7UC1Fum+G
ZvsJALim64yuHMbmekPdVGUcgX1X1dOjCAbgJuahuMEPAouVW19WJidLJ+MpwaHcd7F4eOp808f7
yeG9BAy75pWH0qlezmtz/v/LqxHHmU1LOMJo0ycRtffD9yE/mOWbMCSvxPUm7lJFp/6W7AOHgAHe
BIDd9au4fLgiJCMEq4G49y4gd/yRGoL0iZ9b16z7CHiCYKyz+jAxYWP4V45ZGn7aKRgoWsnckkU+
FTyyWe6NLs1uhr7Tk+Lbe8p92FP2gWgMZd2lJ5uHRd4YyHJrqsS5+tNQKTUv8HT6/2weUU6M29rS
m5kWsyK6VnxIL4I84kikb6dzzCZl/t0qInguz1Gard25Cm4vTjCRkh/Mxa2ZOv3xzfx7bHe8QqnU
2zJ8X2w2bb7SA0/XKGh3Jog5KsK9Qeh513/6xtxYLGuHu5Gh7IwZ9hVyib6cM7bvRIY3Pq9AS0pr
e67LOl864b8wq3wvPaYQPPHhteuAbRowKjanCmc89+LW2A63RtPlYpVeXDStfW4+lcCHplIL1OIa
rRljMLb+DTGIF9Ax7dry3ZV7p0E1hhY56EshQWn1jJcvrt6hQwv1izI0vbfh06kaEMbDgktS5Eb1
l47x2it6PFFUK14/3uNTo9sPMxCwcwUKtyIn+Z/ywdVkS+AHBQ5FzsmJKwiz82kQAZgqRi1pXOKC
Lx+5GsjyF+nkCtMffmd6bNP+wE7Xk24AXvlwIK6a0lyed19pLHYbaHLhqQYvGrToj6MoxQ1P6e43
DLd+VwrDK6V7ac3JwXI8+uM2ly6CaqS+2RXXRZnVkl3S4PdRV3Ecz38dDOTSGshTMdAUf5fiqPm/
4RiV0sVMYQ8rIW2P+/2LBw8xTBUJHmhN9r2AFf3jENIQBbG7q3Uv49EBeuHxNyaOiNhh5GcNqhZn
9ScFx3dlQrkzMjqGTUXN1DjwX2SNmfFP+EWXimHbBOg5dNuON5vWnKpnPZmtb32e+S17P6ShzWbq
7cZbKw4KzowU9GFFCkEzhqTPjXn7EbN12Pq24gye9ZZtx2/c1QCCVdyaI4T7pFbtNLyyt6GDS4vc
CEHIUXmbsO2o/FsClSpOhlb4yx3UKUVfZ8gZjDOA3QkXOCzmG7frpRToPW6tmA948kZgigXE8unU
ubd5xIwEk09fKzHTcvd1OHBsFP07gDbMGm6gVtvBAbCT+tLIwtWDDcb9c3s5drGN9QBJEUm44Jt3
Rw/LOGXtP28R5T8IkDw5zPw2tJO14wymFVwKsG+MnRcitGNjHg7NO1tBkVDacXwL33nRA/tQ1YMO
xGuZ11FmaETuEd4ujNp17DvCOFjR77L8zpyWnYLvJl236S+93gQj2+9RYQ8VTpSxwtFqtIhqhVsP
vt4YaK+AXJXaB92h8WII533EmvOdAfweWtk7HF9mhS/62w322QyHIbZc65UFeFefF2SShimMT5e9
kRde1UYQnY64FIxUdwje/1ODA6052W+yVifeWoC39mMJG7FCsQX1f0wwZKXMuXbYIYQmAbGHAN4e
ax2HpFqCOz3EkEJt/A/abuzffUBWAbtuVJqwK9iiOmlenynYPaD8M+pKPqtCLQrSbzWFB1A1fNVB
n0t+GPLZOqHfWYerH6RqAxgx8EXrVTnWSH/1jBdXGmKTSwl+ADOk23K3plOJR0D8CqH+SYb3+XyK
C/7v1ctLPMqIYHzu8RLsmMU65igcJZ2k9qfih80fha+QomsVG6XHF8deVZQ8JfjjNManxi/Ijps8
8zqmaijWFiNJOhk2gUZbWTcyCk3lEq7kBmHXwa0rJTwJMbtWb9pSFszB36H5i+QaZ/U9P4SgH7pB
eRqsspkcaaL0JyaXDnywCmXOwu5yIYCYR/Gsdg+NnvrmXiCwoHdwsEdgRDEgshx3RBGLC/Y5kG0f
70mWeBF/B0WfHohq+Bkwx3gEtvrhhumkyjBsI3Ius2YscgN66gc6C68R0V8JTk+Re7I3a20yC3Uv
AypCh2pRnKxlGVakKSenTQz/u6EQX60dq1QfSk8H/DISxkUMbj8t8ZCSH1eRTao677mGwjbBMDEI
4LxQLrye36AzEE+8KwchXzq6PsvWdYo28gI3apvQX3L2ZGHJMviVgP4GbS2QVt01tcXpjn1jxbq5
+h5783I+uRTzkNWFSkFkKPFWLJrQqZINSKcKfqGkufh91eojGSoB/9PRfzJGwbccYdX3WRu+K1T8
pksRmWAmSHRvZZuoU9s+Ubsi92Wg/SmMsSSEFYamwsWGOtkpLf1U+wQ41Xj1SBpdLMHHZfyWB4Ye
nmyr/7sgUlM5ZrJu2wLMxhdGvOIJxV6yF8SyWp1mUcaGiASaeE/ZZ2jggBE1KGpqeQVvijKfZpPY
2ulDOb/sFPjB3/Hw5FBSXrP4q7x+idwH9MHDTVImaHUFd8ogWaW+De37TUDV0/6gMhx1YWqrb70F
BMK4bLUO+IUctbxQT4XcCqSG9o900aHxI2hDf+d7QUa0tCFbcSaNFYVKv87bpRFVZaSCLNph10Hg
U4hNTDUjRmSBApV9zACKSzXBj4bnZ4pKOUqY3cSUYXJ4GZxHw8bV35SsBs1ZnaHmg+94s8bcU3GY
y5q8rAAGDY1eQT1x2nmiSFF1qVLuqMpIi2spk8VG942k/FzFFQK28XVknrs+h1vGTP5tOSR74BoM
YYXEj5TuEbdDBeCQdbiYIwqYJagLcExGeDfLORq/j7gnW8Pdri6kzRxH2A+ONv8nLmPdwSp9dBSl
YyNfUiQh4eEvWorxrBNP7epGNZagCOcKN/YoXGNcRnkhgda9g4BPSQe2dy2lRahA10rfpaA/+bL9
zm45vOfmO5A2JDsjzPKLr7iFxUTXKhNveXDlASE9+/SCXfmQt2+f353sr56+j/VDYrK57g62RMSq
1UaxzRolZzL9fN6Jfh9YMMtPTanPbckP8iOGFC4gi2HMBBraQ9vJ1DKAJTQqKuSO719coR2ztN6l
ZeWMhMKAQVlL3/IfhiJvY2r1brNy6LATGYegLks7GhMmnYhuqv9vukluSKK0wBCp81Uqql8OaABB
KaaBaxfqwy1HW27m8XXgrGoYhnyA2hCsKZiWPsHoDtSuSL2/IcxzQ7ZOnvrwMGZ40AlJ+N202yXA
EpUtR1+K92FjYG8DGb3MPxQJRqb3frGNNVPoqRHJ9c2TBEV01SmfLMjo83ozFiPaZKDc4XLzAghw
ABrFUZgrmPpIf4Gvp1P/hEfvjTaC/aOeZLQqdUI9dtjn+LdMq9QYcSXd7u0eeKqOqkKZg/msguAA
aI0A1U3lHdjY2JDBfOhDa46BR8qWtaktac9yHxJxVDTuy2qLHmCy3tf4oi6mkXbCOJKcZUerFDbO
xbkt4yWcCp4CHqZsng777mlnwTNLBQy/a6nQJYLHzDaEDlj9gV4Fj92o+Qv2kQa4gpgU3NrE7vF/
Qr9azi6BZiCj1Nz43LYLJHLj2GIE0Oicwn44gJjtdIkvLYDjz2f7RuqbjQaUWiTWzb7qfyj05RNe
pEnp0PsD45JDHY7KN/F+9Mdtwg6KD82cJgv8U1jRV19nDzdu6nV07ZZ1bOZ9LT/ixoIlv8QccfiO
II6IZZGs54gSzq1bFLa4ge/jJ3OZ23sfa1t2k+yqfz9WDDiN2r0R1vzGmU1IRZdiCmEvpZpoJxIQ
1ZydERTMfkbpLqHluUiqEBm2Q3wyRVr8h3pn1UFTDrGSo9UaOn5Ft/zE6aZWdhGpogqDYBjIrigv
Ryki0zj4IGojWlRv5VI6YMQKbG1rhn7AD+OIEnvxa4M2awvKGUA97diHhr/8Ipo190rUoDNKvyE8
krmQFRPr7i+HkNfvj40F/AxM2zvBmtOiLJDze5gx9vXllIYMc7keF9Ue8PUbIw0KWj++9jpUh6MT
3Zc9aAq4Ilx0obTBp3rKlQqSOy2ozN6SwWfIaDIiU/AC8FNXwMVR0REHJAgljn8T/2l8mB0BQdfp
3yUXCFhwf7XKbl9pQi+vTAPSDyw8M5I/c9x5zN31r2LDBPxEYb88nBgoLdYmq30zjvndTtAA+Xsr
6kxcb8ETgbKubV3wlJ9vkyfuv2NuIrpE7qOYnS6q/R2mwns4eFkPas1lzpbczfRpOfVU8rPBel2i
TPF0ilESlWGcHsAq8Rp3g5AiaL+OfNd8epgsnGo5ewzuAnl3O6TBc6xnWXZlQN8Y9BA12zVXaaJ/
ANCZ/Flan1/xIpff50cIQpFQev8rEOzmoP+O3Yndv3AJpNveiS+wWkATeZe6+4UtobVOv0g0rGjY
eBQUCvY5sh6dZTwiEsfXrkZsQeyQRbXTkiPcdjaEYmtZiGPCaqZGikJ8dob7QD7JUoOslK65H6Up
J81XjnGIOfiBOo7FgT5xUyAd4HfoBlW5AlM8Do5y+ymZuOxZQajRAYb44HZbkw0SN2OsMvtl4BWQ
VtNftFBA5+WhvjkonGBugVxQwNaQMAqm1YEXsb0azCtb3/R1iF7pV/fHrMpyo0e4uLIDao+XfQVc
/WjebpkTSJuiNIfAVi6j85/5yTe/jdw/j3b9/07n8bs5Vo1xBMI10ZR1yo2aPz8m2GdRP9tuxd3p
NfDDjZbl9OiF2rRdDGDPh57xQwOoLh202BUQx1O9BDqXfNAwSJNwyLL0b7wVkZ1LFAGLGjx/w5Rg
VByJucMgVdivHKz8WsDDBg4ubIaKNibKx/1prHjzs+fdopSIgFEz9ubXk6Nl7io/H9hmLNeUBkQv
X6ih2kksQV6KDC38IPjRiDR3ndrKsP43IYGP5NbhqenkSEdAJu9Rr2/S5/7UBq1a77AFtLHj74Lm
irN180uODQlDyoYRORlHTRZrnVuNwBNuphPTX3oJ488zPUbSwF38qteIf7HX12gUH8QIbRbPXolP
YlLsdr9X58vypuSuF4B9l/1gY8vJXbgQvN6D7C3Q2kWn6iFrV7WcMJlw06cRXYteOFjXomzuZDNC
EZHPKNlDBkz68dixZPLycRAauQAVihH+o75VSxPzprFC2e5QlCffjTslWkWZKNJII6LrKWMR+SpB
XOgmVWNhemjEP0U/Cp4bkBF7yNhonIrCS5iJWe0l1PfaUCZCgHBb02N0LUrifLDPx3xyavy4lpSN
PW8U+OJACwwUjHNOhUrEXmYeuPwienhqrcZEVW7HlXBz7/fpGIrKnGnS5kwWIqbsQfrFdp+Vp0iP
FKOWXaaXMm/5WJSpaVMzvO6Z4YP7jK4v9yf8gcXrP13C+7xbsaUqCHuxHcF4oZY9fpmFiyqPWenl
RcDdFhThHqcBw8QeC1LBt537YTbcEsATpyVk1gksFXQz+TfdA6KI9zVu2/GmJz9M4rXHBo5cGrTT
QhlgH5Y7BoTZMmDU8SgUyPw0n1HdYhoiqZizDYDUQNQxp9/01Tl0EJtfUg2OCWHCjtxKQLTcdO64
7gOePUpCcJjedpif/dc+NQ0LFiEYRkf/afCjS9n79CFQkVDkfO/L3XqLjVkRMCH9Rd5nIkyQDBH4
arMI2n+PPQDlhG1bqwt2IHCpItGb3AncdFe0PklbLOC/gIPAEPd8y4+SsWIpKnqcsBlJknD+2muq
7GJDJseCErtgYL95Qw9VvysJfZtreGpfVKqVg5wvcdaPgsZpGi8F6dQqG+KTgLhxIK6vD2Bl/20w
x2ewbsKihl4s1sel4lqJvUzyN4+8KSoeHlM0Jos7L5WEahVMUlB0fSgFH5XHehow3MPjIV+oMtll
1qz1EUBdwm9WzT/T0qPgUiqTkmwdRyaLVcBNi73t/Nmwkw7OlmIkCbhzz4M1OgzexaBqzEmfnBrj
NxgMtILgQvELrPY2UTa1B6gZ6zBNAWery5l/1PQ9auHfj8IB8Xe++0SGMGqqoJ9RPDbvXTFSKgSl
e4rJJONGKlJx1KwO8+605twqYbbBI66fduMIUxnz/0bQhVkwJtXghebNs2dqvEW2/Lfl+kvnzVZe
T8MPSasf1CZbPCZqKHwUc8n8ukzOJpv4QmUcLiipK8YynlJUAieUwWh7wRA0Ltzyw9f4qC+di10C
Zda87nwphbwuA2qyr03QqoP3trumNMhmb6BgXoiOt60tL3PGTikdgbQLC/Oy3nuJq6MfRJ5c77RJ
2+AXPt/9NO5kjt61qdf6U7YUFkOo16ii4V0Iv6vnDHpu6H4OWEuJpKJF1oS/1bT7PPH5ytr4KDgm
ChEkMYE6WoAXfFsStMr9v0q4yrqqcsAhqrw4+wRsVW9cFjY96Kuia9T7hE42w2zASa7P1DDvvh9p
lL/huvIM8UtfrtoZEZKOMShf3u52fv1a9bcIID6L9dHU8sc3nfkZA9TCL4PkURJcpHC1RjsjQTye
IMlPvBIcBQD+9xUnwc2VMUPCcfKVCPA9AgNUfGOkSm2h42/npzD0r6AMk6qM79ZYea2RLm/IZNFi
nkPAshkL22y17V+uoV2DBdVL46ck2FdGcxcjI4ZaH0OyWSMaMB/NQCyU1njEYq1+c4MVbXrRnaYu
rEzFqUL/L2JJNNn+T8b5ItE4naisg1r/2134Krm1foLsywRp3Rjkhx/d+YNOA7p0fMLKdXKMLCdf
dz8ejpr/3Ojn7UNGnfXxZgXjA9nj3OqU692u4mY1h7HYkSqR9iwgoaX1q6lbb9TtZb1T7gMwyo01
7cIRc/95wj4aiYbFDj8PL6ziRVOQ0mqRpLtiCxgk5OME5SQCD0OiEdpMvq4O9wSE2cV0yF48eUKg
2AMxp5hi31BeGEf89aps5oMo3tv5csquW6kl5Z/6BbaEoQ5Ex4S12wEW/1uciM6hb0yXhLO5zy/a
mjkenLWd4cDex61yD9Em1avHU5dHd1GOEYTJoKLJATGzsE9Jk5/Zhb/WlavhowzwSuc/4vnYntsT
kkubQ4UUqTYo/VkGCIZbB1NbIUw+osTPlKWl/QzrhDWzk58DaLW+AJFdrtOuQwOdSpqk4tDBiziW
/kMuk9HdatcE0+MCtUjqxxpdSOvakNbq3KyOnPG5p93wUJCScTC1+Iwms+RWUqfHEL6rT7OpTbEL
OJl+kB8DNQpCISZWDN5XS237f4+1OFggWSJ/M2qqcCMAMReRA7CZzBEAa7PxKhxYY2QM6pC/naXV
14Sggl7a/usm+Mz+yN0HGCecOronXPi9k+riX1iSA9SoEg6FwyvTMw3iHvZaClJXw1HUQTU9Nyx9
mZ5xDhRmZxnt7DXCD2e6n2mxgtVMl8LeQHaBEjBpKpJ5Zco/FHtBT+M+SMrkndU1TNd1awaOxSKv
vAylHvta0hfzUHTMmiuv9zhN9SQ3366tW8f8pMlcPfxyrRtRRRvn1+59yN8IfYomYX3a10kourTt
alz9jWm7awtCJOvyMeIbWpWWh6fAfVcmih8xt/vUtxaTfLxXg9LcLBvyfg2qV155u4RUBIgweFOi
sMFRUvGtKiqyTEWdgwpMAjKMK6UmmZQ9x3E1/GWyK+SoS1StOddUZZpcJZOSOgEJXPWi9oFpIVCB
OWHj6xX5aHAdQZ9eYcfzR53wGLZIYIsJHYrPmX+NPJ67SvUU0ElU6Dn1GSrO9hNENgGzLCnfLKc9
gaaAErs7rgj/b67cJairfSUaMup9658bqIGTMWr+3MdwcIOqs8n7z/8tRSyGJNFR96q54EuDW3CG
7KpBElaEV21mAxAVrWh/v2CJZiyTKzYVUxDIFknL2CZRKQL+xcyC8I7ornXAzM8v3wnS8OAbwbcO
BhL8o65px4IvOemJGfadGRnziRJ7H1NcqS1gKLPEqBSRf9/+K8mqIvuZ6tBdqopqPEHH9nTRsAgY
mGs8XZNHJh6l3Qaczfw/+AXNfcAFweF4mXHf59665H2cJLOwJCfhoxSWvFA1bQNk/hTtXoVMauRY
OUt2hOoDTXSI0jxs+WVjOzuafLLF/GmhOa5METzOWLBTZlCHNIKAVP0g++dkQuDgIAcvDoervI6p
9bgsLDghu/oHmx+6XDu7miTYrugtpvl8eQNv7+uRtbdncdYfpegz4/UmCr5BavoNWl1EyaKk1yXv
/wBUXGz/Vd8HKW/rq+Qgw5yCA+3jOKwHk4ao5UmlpLJVw1JMUrcvhU5EAbT2rEb8trqnVyzXgk6V
N/yF9x4s2lSchEK40/wFagqUeopTGppIyHHumBoTgsDpnabfLyWpwcYRiXrDkfsrf68QvcFR2ger
eW52mK64TVGhcVVd3QyAbOdYnCOEoRiGvVFxPO2M2YDkXgSTwqQTuQyNq906AeY5ZDw+zUrHCgCr
NV4fE3a0QObF2QDzCOwyd/pdLpzgonCzNSUpQdk9BPXhS2Dgfxfn5YCMbS28mVy+wYKI/cpLMOC0
3zdkPnGpDxn+xrz8u4A6s320HuqsPyxqhJSaKPLmiE4gddI5HmNBvkWWJxFH/UHOkPcEMpu0Ev0W
Koo0HhdYvpKj8B7MY2QzwgnF17AYlPPJFnSEOEuZcxZ8/jEx1HuGxIdWe0qviE+DvfRNWo5FMSAt
9zD/n2sk+TnEAxrjvzUFUGhlfwf1EdUcwhyK14nkkE3U5Y/ifj/dQtvfzke7scj7M0jFFaLzZLWQ
DhufYK50VhAWVx5LiePTWyQK6q7Ly18yYl5WIPP+PP+YPVdTtwx809V+9G4Y4szBywh0kM0DdXKU
227/+JKLGWw89YLVJnXt+JzdkzRhUpJsbYCmzXoBBnO9axGyarEIeXWtysMutYqvVg4c7Gn0LbKa
GLHmSHyMSKu3pTg25OcrEAdei7J45upjUXLgOGDxUF3ejomoFaRxYfFWXJrcweYljCx2+G9EED4y
ISkxmpK7eiUjSqc/iaap6fCCdTUo+dxpDJs0M07YdCFVDbX8xFwx6w8YFzI0eic5JJyUC4uSJCNZ
ldHaM3hTGlPYkRpT2h4oy0mNBLuJ2bwFYb9f/vV3Kx2Rmnsmt2VawnghQ1dI+ZphJ+EpP8vQyEIX
+/d4C7QrxpRH+trdV1GPKSEovihSHl4UEaY09FRjPzLnkk1s7LKkUtOLSjt6x7C0sFbFAFrkE96A
O4najBXlbinkj5j0ba0z4QJeN8tOfM+oQOfx9y9hMCQ+0GYEnVQdvgV+9LgAEPYgVUT4Fq7vqHR0
6je+XmwW/EVkqWZahozLbiJJ4tHS+gA5Q02+/A+OohJpZU/Er32XioMqd77IT7fWqEO+zhVmiClv
IcXr4Oqm4AdFbppG9JBqU6z9ynAAzQpUROn/w3iIYZxZKKANRyE8E4rFBq1Gh0HJvpuejFDVtcFj
C1aa5d8bk1SoggVo7hfa4WWbLuWqXaIVElNPNFc+RSpSbl10UOuVDO/bbfiJnBNmqMaRmLzTw2vu
3DLL3XDcTkU0gAlwlBQr6U/cEQlpu3Ygs2u8TMgqYR8v6YZglYuFRRzPIFyWpYyDffE8he0W2R4L
zFTFZl+x4CNcG744ERFv6ZBGqBvEM6vvnAprweN+fpPqYnzWnJgmRPsT5gJX2OfJqZkEOG47mRpX
q1HWkcfc2tUenamS7ZkWwzISWjqgqydUW5VpJ1cd/7LBsS9lrcP7PykXqp2tBc31P3V5TV5Yf8IY
4q8l/TfOofEp4rXtToXM8r8vB+Fpb0K4iBjq5fME+JtFWzm+BxGMssNykV71XeAkYfDL3Fp+gAX5
NRe1c7LoKlI0fLGXeZq8buhPvWr+06RgRN2LizeGO66HJs4H+Mi/SAeBgi1wK9FSQNH8vZOiMtTn
LbwcsJ1M0xhlBDpxSwqW7N/jycpnaf6OZfTT9fJ2RwW14ltuCKP5FL1OUtZqRPoBBtkxrh0Sps8Z
OGH9YpPiCoN60jdjpHTkqCD5/eoq0jU3JQv556KsMWa2hmrj2p5iZRg6XFRKPTyWrwQqUfN9nIft
wJqhxrwN+pGtkuvchiXUggA5fTYDZ+WzNZtPLzOV+tzhZWHA0qkzFTs3iK8d0xZzFJ4KvoBHJQGh
gRROUh9kmRpoAl4hA3VJG9sZImi4wo6Zou0Zg3RKykhnyfKn3qReyT/E85Cef6XBadMbswWVTxhh
IG0atSZRQZw94U5Sd48L8cvKc2gtZL+SSfq/oP5OjYfT2cWNlULSfFZvb0Zp+mU6feAjH1p7gQlN
35ijD0bTdY8FGCeGeEAtqai+/t4WSg1caTapp8qWqElXCRsQ3KZz6aTQQclUV/G2FBV5vixE/sbs
5mTcftbJU6fwO4+MO1jObBW93zgYDcHKJsitIKs/o7qBxUUtJaMy+ewmkIUhed/a6z6/ZRTMSAcL
1nuh3NXNBCAgFiCNvtJ6AbAeEVmpg9bfXWxoGfl+oI7a+qllBCx34hG6c8nrefQg6dvVYBMjVweR
Mx6xlKDec6r40pEeVIvXiB+Jj5Jh5Nn3qzpPY9Kb29IP4W5m63clPOdFJT8OaKIz/cenbk8dTGMj
voNPZ/O/8sQg8y9TELBRZHrTgPU50ula4BBSXVViyM+COyqnvQDyqlt7qwKXxHEup0kx1Opqy/Bc
P3DMqLpEhOE1Qf7UhocjHyrCiH4gT4jzaNbGVHximaJEUPzv+Nw06lbewDUzBxWrWY9K0i1ajuxL
ZbxJJuH7BJFd6xAhH6gjX8EkVwDyxmPzEY4/qjsw93Mt/jAZ2HLSjQZVaL7hlAdFK3hQgBFneKYA
WxgSQq+2EvmehJd0XEdithEfOdf2JFvjbY5j9Uf/lfQicmiqaBdGQ9tR7iItZ8TLK7kKnbbnmdx9
DTQnHslw1RXdStz1iNwrwK+h6Vl8yzsy86XZ7gDZimbehdQ3BIbNLjf9VD5XHHt1H1/zHGU8Ocr0
nwFWjpV5gdTsSnR/K1rUIqx25uQAXkCWQlf9HtqCkR6fHgZ+yw4gc1knFGfbrXBGH/gQEosOHHfn
SQ5DFCQwvkdIgkknWiOFQvHgAjcMOnc4EX3TXkxVFm3adsOZiad0aYoH4vJQk+ya7Zw4cTGBdp7Q
YgVtalAk3Tf9Y7nIAvf99FvcXDvEWo094YKOKRJ/2jCEocLIrcUyYvv02vsw4Br++q+c7H5WJS8w
ucgSDjkC+CH8mDqmijYllgsXc//4jZdML/nVNlJfVoMsMQaKTqO7ZS819smzPxCW6XLC1HqXwV3h
/lWsdy/LwBib/dl6/hHVml2zgqsYKzsgNey2k/Zv/8pvkX2m0B1UPyhaNUEudk2Ym7SiTOucfynV
83dWWDLc2TaL0JATaHC1TwsUIFVbKGx9YBemkzcpXeWUvFDU9F2f4Xs0v+pRd45O409J9YOLzEcg
ZVMbx8MbMnQGG9+v08SJ9ZaI9b+WrrnGv6+5KRQz88T+Z/EmF5NaSDsuBYnFf5ROoHBECVD4Io9s
/pAMrb2W/LBW54opc7aNyurEfDtPtxjFngae3QHUQxdbMr85kjP3UKLc2NM4WavkGYZU6p/GV3r5
pCKVLlQCFlIn6/YCZc2getqfw1QIOKu2ozjznUuVpKnrKAZffOWTGgpPRciG2exwBNIC8Tbhud5I
U9qw1vMquIUuTm7gKTXv9yhWk1VB2+VI8HohY6tdGS11X0EiU9v2jnAw89HC9XL+/Zitd/87c1Q7
te7+U3P8yuQjKBi93U2bHk1O5nBG9MTd+P4QMtq+PTh9JOnsGRz6SCP4KYm9bUE7qXzYhdIcn5hS
7HdTDkSDrwee1/f+nKIxfY3Lw4IN59ioQuCmUO3rVO3rSb0yoEIgRk/RxxUi/q+JtxY0Qk5pVC4m
YCYbdjwC5iZXjt3p6rCibG58UtmY3K6pLyEvOX8IQLSFJYdc/naaSgw256CRsplmtmOozj0nFmJQ
8VOrmaEuEG4ku2GUP3WFf0qVYK0/dasgI0k9TDZU1bE0faVkfMQT73xH10e4md1nBuYF7353pTOW
1EpZchBcmZVQPKqrtvQHjECMg9uGm2fl1mykFx9Zl4YiJ2vCV3nFEFaagDeNfMLDmF+/1K48OG9R
bVBtwc/3ZuwArvDMGJlx9rBfL+yHdAN9XTTIWVpcTO8JBCWgNHBtu/YkWyKzeCPaoYIBTd4ZuwOl
4/JEKYWPSdr0llwxrXW5I84M++xa1sRfCWfNqOIAmcUxvawhxzX8gnk0/QPqqLiTzZYncnPYp9nV
+V+2z0n/a9F5QbT/ftRYF8RENAwhH7VionbAwIAfhzDuLiDQ2eNbDZt4w4XdLIl27LRPataQnyYk
Zr3MOWbq9kSo9G5avaE7kBqHBO1ido+k3CPGhEwqsUxjxd4IDa6sUGP0PNBdB4van+Lb0Lm1DScm
7dtObAoVneQOfGWqIZSvWOsR+ZBgOBt5PnCVI6/qiOfYcBP8z3I/pSeGPgW2Ggyesawwi86ZP+sz
motV5J9qvvNBMpsqGx3qd4F4td7r03Xj7Oh+OaukYzZzWjNis4aQGyULrdyQ2PYkaWKSq0yEt1Do
aNxZB2wUwGG7rEzY90KxorfUZDvVDTVMIWFGNkk0qpXvus26um+9coya9G675fF4bzwwoi9qS0yX
VivjjXt8sCcQWMRMVU7xrExj5qkBIXfgdBexJUE5i6rxYKJwhOheRBV/p5Mip0+pz+kKssnXT71p
bczKyqusP8/NybUy3wm65ZKWukCnPTTrGA+Zvdei/DUisS0SRLy/9UAzo+XY4dZH1cwEPcsWfMXv
3kjL5d8jg9dPuPjFgsGRamj1qYlD0Bj9MmIrM5ExS+3TF8S9Gy86BuiUk+deR2cm961VcNSaKahH
ATUlm1TJwYxlf01ZlYv7Zc9z0/C29jXFCwDdGX+mr5ih9LLSBfVBEnjkMOBsce/Mv7qurGAASFJx
JG9duR+YlFjROsYniFcT6YtQorruD9MsKo9F4av+vuo20p2g4dCIBgYBV8oIDnA/Tdw78rK9GIwj
XvkB/ooeJjT/FvUTADxfN1qQ1DOznhwr6OEq1iDkKVkthUfrDRB/krO3IDq0JClo7PGHsWPInwE5
tybgEg9YT4YPuO/HnHLNLg8Oo7ikwzvsJGEedjIdWyVzLW7pfu4wiDde/W99Ihe/Ys5Bea43mWcF
OaEPyNTT2+KSrBLI8RhyuyyTfvaD+j6BSoOjm2/y8OVUlmiF5Mm5RS8/FGUyfzSWzV3GxfyGeXOd
LOURZTwj+QB3ZyOh5iTvwj8fF40MVh0jKypwu5tEON6Sbawo0TwCkTT9XBB1e707KMPMDNUhEmVW
xAPeukyfuOxYdALGoEibpafKWw49Y1LPCUq2n6mAuC4GWIGxsN7Tn8PvvqB2Zmkn/Ml65oIqlS1h
hOWQTQUNc759K7/kUjKemsCLp8IhppLAnuHxZN3TG5Np+ObO/KWSXA2tvNUc5XQuz3Y6A31HGBAi
lpfej5mpeQuIH5KM/MWFpuhXKXIQoHJBTCKOmFGs8fO0KIBHKarpqDWoYeNS26lBtPulyGnVG8aY
IsZfABOiTs16j2jNuFRXJSS6zjnyEJH39l5xGhAqEUYcNKTj2SbtG9hidjcxsDPo4Ey4XJlwUfZ4
DXLUbq+dUOQoHL4c7bVdqCmWWJChItXF3EhEt6+his/WXcQeu5YIlB3ttVZtw0tKxt7sSJdN/qmE
hWXr8VOiWQSHHoQo5Aphh4q2/oQy0zaRSyTUg3zperJUGmtVzGIoU7/Ujtq/MHbF5iL604TNp6Rp
wxvU5mzy+6d9Wb6fqrgolWd//6Ut4XLkVtZSGMsmxfvqRmx4aPp2Fgo6QZ61GgNo4CoTY35zR251
XigSGqNRWFmh+TiNmyrFMfgvTDUYvkLv8Y+K5JxFwZq3LsZPDwSwjVDU1xsSKZZjAmN17sg7I9eO
Gaxc72edc4w4LzaNAZTkddiEsdqV9Y8Pih7tIgq7LN0k3oDxbYwY3IMzVZRZCnolDRmePIkQwdxv
CFJxuzHV9AewfoUQOyyK8+DFYl66RgFGPYeCeg+dF1riwq2lnXlKrnZ9TYpGjYQowUDS+9XSrgUH
Z2Oj6XBm9hzS180+CvpudiefrWbMwBFMU+/bC3kTQR9HzrTNcJ1qGS5hdta/HgSqlw6GaCoOf0Em
jJkb/JG0gaynIH0FOj/dILEKzZYDD2y7e51gNQLB9pNbX3X/ER6UMZJCX7Ncu4psBq7ZIeKW6cGk
8DUItmshU14kUAXyR8YbpbzUYAUfeljd7y9cjRg8otqK14kPvMABcz6D3LRq09WOEY+GVJM6EOnc
uVjwxAkWNec0XQYUUDQf6AESeQNpFo7ikiJTCRL0O5Ig/B7Q3NfSJ9GKwO0Zu65Gq0D3+TlvOZlK
9J0Pd4OjNK0QzOEWkpFxeACcrOxlJXrTK+lwFgLIpQ5u1708N168eHINYBP9IKBIjYynTSM7GWst
kiX8uyzOEwMN1d1EiGAMP+rwedEc6IGfyj6pEry4q8ZloZvuGPQuk2vx4SKTfD9GqhH5BKe4rsw0
jdUrWMk5UQPD8QWOqb7Tw+Y+zeuCtdeWwVN490vmiOf6bRf8A895iZe8kKBzuoLwT+TMSoBmUdLF
809OUphoDtu2Aq0h7gqaIHyyCjuF81au9XpsTO5ebpKfFXotr/GrlYTshnjeN5qxwxNJrfPEYIXg
BreObPh+jrcCUmoYpi0gaH2DXA07sDw+Ie4u1CLv30G/lVyLOffdFHaErwklDwX/9p/rYf+TugRa
KV1wJSRH4jqPXbdfhwqr6Nqkm6nPCYBJ+sboE6/2CzQk/rKarPtzvNwavWFLYOPFV0F8gjhdvU8o
Mzi4L7dBwTPfYDclONiY8E4WKNW1v2sYoAKvfWG5iXowK3ovLe45C2oa4m0R0tVdSDcLpBCVDydZ
6xlFRfRordcGvl0pmajRxljuA3J5fT1oGn+J7mtKQSSdRo4AdLbAHBopbUseQXC54GyX2FZSzakb
cpdOCnG6Xw5DffvHY+MA1QlGz3wa4CFJRuPLu/x9PDinRnEd7ZtrzT7fR8hJU4KDRwF5KGdoT1ma
kjXITdRYKgr2Fs8P9OglssonX6za1+2UD6yzA5nQiLNypYW6xvCCOFICcixgTmi9vcEuk2aLkIvk
cI7ihA4cA8ofYoeMjGeGvq/35duvayT09EaRC3SdgkVoLNie9BKxhsjkGEC5LZGrikfl8eVJWO1g
y8LfwKRbGAmR8LnymusPxChPLTqeuRL15N5Q1FpzqqvnOqjD4mFYwWYSYnyw/D4Ep6d0yvZdHFRQ
hLjihQ4l7p2EXqXXHc2iubdQNp8oQN+jOVgwmY0LL8zvUbh/JoQTEEKqPn3+A7BPKOFKwerHaJBa
5E0ZdzSeJ560uMPikZG/SRFX3v0P9I3VxsE5yVDumUnoaJ8tlx0BDaPfFCE89h298hlKTTUObk+D
lz+9C2L+kllhGdPZx/wyf04xcrhEUoU70+1sh6lj/O0AmSdSRPGMpt5Mi76AVb8/zl3+sG7Fioyj
gKMDessPfUerbsYPJ74a5l+Kz5IeWAJkZmL5z+X/Lr3AiAlkyxZ+LE36WeumzBWWxFPKhrnz2eY6
UmTb3qg0Uio5OtjsJ9iqLpqBU+QzwJFa1rgNBAjtflysxLXaL6ath5Z/8dEHRtiOTneXt+oze0Lo
+pjbwy8Cdler/DZR+k+ArWT5s/JlkLIrA5vr6BlhOuoH2/Qw5/9GqK2tt1hnB4OGtF4rZBTeLH58
y2Q/qoxXugQuXVuEtpJf0RucNYnM9zhF1+Ug0mcehd8kgfiVgk95iES4VhC2ExUOYot01hJr4H82
sfbm36r7RsBmg92CFn4dID6lRGrnMR3KQXZmXEdaGbRhzvs62NAPJ4PLTjnCOz0RYpCnME+NXDGT
swue5sQ633Alc+fXxZLXS7OLtgUvCtljiW4bkMRPvr23Fc4NC75vZq+iEynX7R1ijK15VTyJCOEG
3mHxX6aAE/qfB8HfWzAuxqTA61GDvVO0ldGutITXrp9QiksBuITlU9gDetQ3NDATggoaMIWaram2
qbvWloTECwjjjpe6GdP9y1btm7iZLVtD51KZI2Tbbm0D/+BSQcOz+ljz94FEWTP6PYCZo1nYggaa
wakNQKV5dkzImuaIOCbL4sodWr9Ic8yW+anHzcoILxx6DXGx07cjGbAMFBdzkmWUfRHj3z7SbpNU
MGq+6J7ZsPE8ARR22d71zYohsNmGOsp7CeX90m+qUE7aJKS0ZivsiNIOKM0emOv4vVYEY/jSGpHP
2TW/e7nNGJXBKsaIf4xYLzejBAe2wABcSLX4duqbtplVTaLB87gUWy4i4F4zmxv1hEe+Tmg8g1rS
bHV8bL9U7GDWAgvZ+FQ2QuOMdZz/9NCh0zAQjEwX5zKrnbFsKTZXTSGIoqhpo3OYuSrdCn/G346m
NFxenLUgGwZE1scoUy9NjDSyRX66XUdEUkkRiZ/0OJrAYC0slk0NOFnNPYrxUU6DWx9D7ISBDuYk
HiZSg2fV3IUdJu9ML9qrkoyWEN3y6yYt75umiJTBDcAZ2LekTwwVpwzyk/tismfjIDRXtfCT6ooO
ybqAH4C9ovPqq6IRUgSPiXegw1nQxZFsDCI0XzvCdjdyts34r5VFX24eS0AMZd7ZXaQSCxDu0VW2
yH6rodWhqTQkH6EZeumMKW6PlZkWHmLCJy7/X4DeM/wMQ45DnfUM11tJDbPcynNcU2FCW+jXTzvN
urK1aZAMQolmj493sjDwBSfVcjA00kszwhEhrxM4YkIQU6I53C+ZIHkTIzudXfKnck+s8PuhUXrF
vQOktIesfSf2e8LGay8xA18YKVI4ybHwPeQbXNeT9KynJNSAr9j1XS5xrWSA1/DSPozF8vZwDjRz
NQqvMpgImZ1PIUkObQgERBJ0JFm0ycMTL0qZyqqNYUOgbt4mPMBky2Ac2d9KyxXrCjH8J5BEfdgF
iKfnuF9XmuVSMvk4FX6FVfH2SYJl/WGb24xRjK9Sp40MS0l/rwpviBI8/JO/ezMT5lEPmTLg2AUX
RR1TW+xmKTkgPEOrAOSumTyOlcnWAzT/s7DhJ1bYJLyYnpC0baaBVqAU25naCBe4aw6NFmtxuXHK
aRfDvC04WOMgbghxsSojyPl1xW/sg0GLdOlgkpLivhC5Rl6otgk5AfqWegkEgtoDdLwtvDcorFfu
c4AkuTBSnqlpNfSxRaNfm/r42wI/mTdZAf3UuD4gHqltUcUAmQxUPAScdTXhH95giJ5rYhrs0bw9
0eoqQiumAtMIyEmvU91mW22VDm9LEsdn+++IozDMqORxVSndEIexvoSI7zQGiGtu38tayz+1jvAZ
MIB2vog1EnjSm5q8arCkCLTM3W9bNfpRZi00dduNBtX55/lj208dkrI7QtAorwiBF4ZgaJX1GASN
41RHgQo+lsO++2eaV0IBv+h9Twajnbz/kMycLxyhSWvcJ5n1jiY8+tmHTJoAgLIMfqZVHvlELD4r
wycvLZCq4s5zq7NzNnb8ovrro/9tE3Y/tdmfogSdwygOj5ZJKubem2ptsWWjwCa7+F72cMYQBgIt
QUq0gmDuhLI8t8HF79NnOV0Nq8Wn/S1LQB3PuV7zD2C1Uwk05t033HcZK+E9g1qDk8S7pwTYT5g4
BCrLJs2traITfwK2s5XyTFx90nsUdSWHZpGRFqwn70eB+fCjXbu6nDGngPr5tgVsIrxSDPRO532d
OBKghyfNn4c8iZbCMcZwbNWU0tbYsiET+EQVFsKuWfi1HFS1KKjGwFly7CvtZyfoXuqAXvoMCWw2
l7OEMIfafCTIfTwl8g8v2OQb2mfOSoX+WaMOlIyWuR1ryQ7F7hh4uyW92iH7WUQ4zi1sSjWBs+xz
YcHSRwNPprlVOTZpyeI44yAlKhNyK9gaUAY6yqmiKTcF1DA+sr4jDx34eF432w8jDcP0q0ujtaj8
qP7WqgJyahrOD9m8mx1pWSFxPGKxrKwmTAIRpzapomqJ1+lu6RfPIIn1QSbuuhST6IkSVRRy9Wqs
VLYCuO55LqrWZ7K4UOwL4eNaChiGEVMuzTSwmrs28PHb3hurX/gGkOkzf4Mje1rHRpRK72k/ybfQ
EVCJ2ke+cKATa2Zv9hC8wn9YgxRqRlgE229TTU0CE/k/HHRUxIhA3dQVLZpFtaSLbDU60ozl5Gsb
XrwbzyXY2dc8gAV8s+lZbooIvyYZAjOIJxyshvBaUWWKLScaJxi2+N1iRuyLst+RGn/JG2yDlDiS
4viBIr8nbG+9D6m08dTPQoN9e+vgrMoRJCTbL+kQAJtcArn60sMbMkK2sYI444iOuG2v1FXdN2US
y+dU5lj0zH0a88huwpfpsnufupyYbwKSbsN13YR1HNDItXwpISHbzprRH47OPFPIai+HX5fJSAe2
OtqRBZotAHDTLIiOZInvCGN/rAXLf952ZmGhGHD8A9FdbEpAR2v0lXnLe27gevqTZq5O3noozvfB
yyXuW+R8TFEO/bo2ZKA8bFCcFD7avHXZKm2a7I2rdHDVwPCP16Y3SZEGEPtMLGDe2djNmk6S/EoB
izakXo2uLfs6Pj26scX3XExv3nxS9R0/uU7eIUC4MGroESkYLUtjz8OkMGsoY4K+c1uQMwwOyI28
LZ5snhSVYAuZEWMMuadAETn1sb54fAVvEfmhamslNS2t8zlxKT1wmUqNH8XeDOQInaH+CHLPxswp
agBFpwGcIp7ubfX4qyxfQEMfm4tkn8qkiY1I1Qr1sMrFy7fAo+3fq3fUPw81Xol0VG00wXVUzRU3
eIn+aRDZpTzHkiSYd8AhwNkh//Kat9rT8eqrCosO3ejD6YX1VwXtptsTpRWkVEVSxx2E97VmUVMx
kM13bVn9inOdjKG/NngnpZKRDV1AqDBVn1jgYRl6mKi37y4WFl4eMKmqBWWx7VpralopmnrmYCtr
63gtPwC5QBqmJcn8OUEI7qrqQkerJBlNrBkap26AzHVX0pgqVRR0l5cPvtftXnpz3uq/6AmNx5Sy
BIwlGok54gpudzBJtyL7OsNsqnV7pcq1p6cqd7YI7YSw7BgI+3fxyZycP2REYFyMT1BSRbuobqd6
uR8QJjU1QZYzzDOrmfpIjUIjAOJt5m01i4MYQMPwjwkOHcOptMU+BjpITmlLR/X76hiuaQahWGea
K1EM8Q+kbtGHUqvSoawqYZ1cEMS47xlVizGyi0nHPvEr8mvnHT2AULa6CUG5PFMPy03kMogpDxg4
Yb+nRt/Gdbu7tZSCx95c33vpU7urXWEe2nSICmSvQmZ41yB0q/6KcQt2TGQ9ctK6PeantrjyDrvF
hK3rWjgEbWiR7b3AExd08megGkue1lQJkmacsa5LZ3mwdW+ylDiiF/uCH37bUAn2U/FhmiWSv4YS
1Yj9bqD7v2L5NxAm06s+qoMNq/0uw9ZMKVLEehDYN07mn9KkzfUWPJzL9NuGSqABpAyEYSnSOHKO
C1TrorG1Wj22K2k1/OwNWjEWi/c48lP2JBbc79bibGESW+ECe1Vq2LvE7wNUa0MaAheUuXrZ65vN
Hs/kpVDc1lQmM9Rb2zI7sQZRkEyuRVh6Q+Zzp0uqzzHi2zqOe6qjdGFxnU4jR/vVDJWg1uYyXZYU
nBNw8zxS9xkzObgmVkA73IkIXbEDmDQIeQ41UXIkd0XKK9WLNOOhh0+/mX+wHMx9PBZV5tMaRwI0
B589yVHc4NDUNbBjoTqki+EfUOFSrdoQiXho3ZWfMrlT8GnxyoWRFVr1Iq+8tnBJFXovLvPXMj3m
34LLdxYpQy3b1JYgbDdCDkJkPz5VypXbPcaRthcv93bpU1DdW14nXwhvLUneEaEuHroOgFJD/pXH
Y7yDAGpD3t5Wu5eRZnvim9SrP+CaxZMSi76OA9M695OoCVqFoEtgQMKM4nElXzQWkT/ZCShGkH5e
7Dv+TeTdlBFHNeLfZMLmUNjUo+Ivwv1+3o/+ShtgsTza1HM4mRbo+ZGqqJ/5/l/H2qrJ56Ai0Mo6
5huRlEvaRqkO8BCEUfhKW7s3i9RbH2NwotAY3bkJpwx7bVbUcbDmJtV948VmT1cGSze3eH5D8V9Q
sJwDDM1n/jSW3RACbuhS49leDyHaT/5uZPf7qdh4yh6HUBfPQXnFIE8q/5dDZM7+kWOHaheG2AYe
dX0ux+9CL/fKVqpApP3PkVwxIJsD497mF1aglsGNLWcBFPliAMZuFYehEqkjp+pbLf6SI2VmWEpj
Xfkxundc300SBrUJwIwUxkRAresTfxUmblDqD3f6G9RB2xRIIhuZdQPhIGsI3ESzsGsfXSDYpBtI
AdGw1S+dQJpbPpdp8Bua0U9JaSgACMpOvjJwtSJ1Nxawr3dQPPllt+TWrHut9d5AQvMG/s4NthF1
QU5rTXS3IIxhj4r1Hd5OGhqSyycOFja+nlg/B3Qn8JCYer9vvgHh3EklofqgQhvWlMtaMyF5nBzR
VQTlnRVhnLooHHjBhXprYYP1RRAr913hQehm
`pragma protect end_protected
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
