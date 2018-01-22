// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Thu Jan 18 11:18:44 2018
// Host        : XAVIERMARINB4D2 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_wrapper_0_sim_netlist.v
// Design      : uart_wrapper_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre
   (Q,
    WEBWE,
    \q_tmp_reg[31] ,
    clk,
    E,
    FIFO_O_1_full_n,
    FIFO_I_1_empty_n,
    D,
    reset);
  output [1:0]Q;
  output [0:0]WEBWE;
  output [31:0]\q_tmp_reg[31] ;
  input clk;
  input [0:0]E;
  input FIFO_O_1_full_n;
  input FIFO_I_1_empty_n;
  input [30:0]D;
  input reset;

  wire [30:0]D;
  wire [0:0]E;
  wire FIFO_I_1_empty_n;
  wire FIFO_O_1_full_n;
  wire [1:0]Q;
  wire [0:0]WEBWE;
  wire clk;
  wire [31:0]\q_tmp_reg[31] ;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_do_carre grp_carre_do_carre_fu_58
       (.D(D),
        .E(E),
        .FIFO_I_1_empty_n(FIFO_I_1_empty_n),
        .FIFO_O_1_full_n(FIFO_O_1_full_n),
        .Q(Q),
        .WEBWE(WEBWE),
        .clk(clk),
        .\q_tmp_reg[31] (\q_tmp_reg[31] ),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_do_carre
   (Q,
    WEBWE,
    \q_tmp_reg[31] ,
    clk,
    E,
    FIFO_O_1_full_n,
    FIFO_I_1_empty_n,
    D,
    reset);
  output [1:0]Q;
  output [0:0]WEBWE;
  output [31:0]\q_tmp_reg[31] ;
  input clk;
  input [0:0]E;
  input FIFO_O_1_full_n;
  input FIFO_I_1_empty_n;
  input [30:0]D;
  input reset;

  wire [30:0]D;
  wire [0:0]E;
  wire FIFO_I_1_empty_n;
  wire FIFO_O_1_full_n;
  wire [1:0]Q;
  wire [0:0]WEBWE;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire \ap_CS_fsm_reg_n_0_[3] ;
  wire \ap_CS_fsm_reg_n_0_[4] ;
  wire ap_CS_fsm_state6;
  wire [6:1]ap_NS_fsm;
  wire clk;
  wire [31:0]m_axis_result_tdata;
  wire [31:0]\q_tmp_reg[31] ;
  wire reset;
  wire [30:0]val_reg_80;

  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(FIFO_O_1_full_n),
        .I1(Q[1]),
        .I2(FIFO_I_1_empty_n),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[2] ),
        .I1(\ap_CS_fsm_reg_n_0_[3] ),
        .I2(\ap_CS_fsm_reg_n_0_[4] ),
        .I3(Q[1]),
        .I4(ap_CS_fsm_state6),
        .I5(E),
        .O(ap_NS_fsm[2]));
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(FIFO_O_1_full_n),
        .I2(Q[1]),
        .O(ap_NS_fsm[6]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q[0]),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[2] ),
        .Q(\ap_CS_fsm_reg_n_0_[3] ),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[3] ),
        .Q(\ap_CS_fsm_reg_n_0_[4] ),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[4] ),
        .Q(ap_CS_fsm_state6),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(Q[1]),
        .R(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_fmul_32ns_3bkb carre_fmul_32ns_3bkb_U1
       (.D(m_axis_result_tdata),
        .Q(val_reg_80),
        .clk(clk));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_9
       (.I0(Q[1]),
        .I1(FIFO_O_1_full_n),
        .O(WEBWE));
  FDRE \tmp_1_reg_86_reg[0] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[0]),
        .Q(\q_tmp_reg[31] [0]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[10] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[10]),
        .Q(\q_tmp_reg[31] [10]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[11] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[11]),
        .Q(\q_tmp_reg[31] [11]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[12] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[12]),
        .Q(\q_tmp_reg[31] [12]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[13] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[13]),
        .Q(\q_tmp_reg[31] [13]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[14] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[14]),
        .Q(\q_tmp_reg[31] [14]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[15] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[15]),
        .Q(\q_tmp_reg[31] [15]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[16] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[16]),
        .Q(\q_tmp_reg[31] [16]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[17] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[17]),
        .Q(\q_tmp_reg[31] [17]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[18] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[18]),
        .Q(\q_tmp_reg[31] [18]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[19] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[19]),
        .Q(\q_tmp_reg[31] [19]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[1] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[1]),
        .Q(\q_tmp_reg[31] [1]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[20] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[20]),
        .Q(\q_tmp_reg[31] [20]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[21] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[21]),
        .Q(\q_tmp_reg[31] [21]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[22] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[22]),
        .Q(\q_tmp_reg[31] [22]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[23] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[23]),
        .Q(\q_tmp_reg[31] [23]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[24] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[24]),
        .Q(\q_tmp_reg[31] [24]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[25] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[25]),
        .Q(\q_tmp_reg[31] [25]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[26] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[26]),
        .Q(\q_tmp_reg[31] [26]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[27] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[27]),
        .Q(\q_tmp_reg[31] [27]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[28] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[28]),
        .Q(\q_tmp_reg[31] [28]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[29] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[29]),
        .Q(\q_tmp_reg[31] [29]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[2] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[2]),
        .Q(\q_tmp_reg[31] [2]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[30] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[30]),
        .Q(\q_tmp_reg[31] [30]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[31] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[31]),
        .Q(\q_tmp_reg[31] [31]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[3] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[3]),
        .Q(\q_tmp_reg[31] [3]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[4] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[4]),
        .Q(\q_tmp_reg[31] [4]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[5] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[5]),
        .Q(\q_tmp_reg[31] [5]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[6] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[6]),
        .Q(\q_tmp_reg[31] [6]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[7] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[7]),
        .Q(\q_tmp_reg[31] [7]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[8] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[8]),
        .Q(\q_tmp_reg[31] [8]),
        .R(1'b0));
  FDRE \tmp_1_reg_86_reg[9] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(m_axis_result_tdata[9]),
        .Q(\q_tmp_reg[31] [9]),
        .R(1'b0));
  FDRE \val_reg_80_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(val_reg_80[0]),
        .R(1'b0));
  FDRE \val_reg_80_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(val_reg_80[10]),
        .R(1'b0));
  FDRE \val_reg_80_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(val_reg_80[11]),
        .R(1'b0));
  FDRE \val_reg_80_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(val_reg_80[12]),
        .R(1'b0));
  FDRE \val_reg_80_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(val_reg_80[13]),
        .R(1'b0));
  FDRE \val_reg_80_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(val_reg_80[14]),
        .R(1'b0));
  FDRE \val_reg_80_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(val_reg_80[15]),
        .R(1'b0));
  FDRE \val_reg_80_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(val_reg_80[16]),
        .R(1'b0));
  FDRE \val_reg_80_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(val_reg_80[17]),
        .R(1'b0));
  FDRE \val_reg_80_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(val_reg_80[18]),
        .R(1'b0));
  FDRE \val_reg_80_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(val_reg_80[19]),
        .R(1'b0));
  FDRE \val_reg_80_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(val_reg_80[1]),
        .R(1'b0));
  FDRE \val_reg_80_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(val_reg_80[20]),
        .R(1'b0));
  FDRE \val_reg_80_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(val_reg_80[21]),
        .R(1'b0));
  FDRE \val_reg_80_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(val_reg_80[22]),
        .R(1'b0));
  FDRE \val_reg_80_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(val_reg_80[23]),
        .R(1'b0));
  FDRE \val_reg_80_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(val_reg_80[24]),
        .R(1'b0));
  FDRE \val_reg_80_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(val_reg_80[25]),
        .R(1'b0));
  FDRE \val_reg_80_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(val_reg_80[26]),
        .R(1'b0));
  FDRE \val_reg_80_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(val_reg_80[27]),
        .R(1'b0));
  FDRE \val_reg_80_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(val_reg_80[28]),
        .R(1'b0));
  FDRE \val_reg_80_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(val_reg_80[29]),
        .R(1'b0));
  FDRE \val_reg_80_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(val_reg_80[2]),
        .R(1'b0));
  FDRE \val_reg_80_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(val_reg_80[30]),
        .R(1'b0));
  FDRE \val_reg_80_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(val_reg_80[3]),
        .R(1'b0));
  FDRE \val_reg_80_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(val_reg_80[4]),
        .R(1'b0));
  FDRE \val_reg_80_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(val_reg_80[5]),
        .R(1'b0));
  FDRE \val_reg_80_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(val_reg_80[6]),
        .R(1'b0));
  FDRE \val_reg_80_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(val_reg_80[7]),
        .R(1'b0));
  FDRE \val_reg_80_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(val_reg_80[8]),
        .R(1'b0));
  FDRE \val_reg_80_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(val_reg_80[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre_fmul_32ns_3bkb
   (D,
    clk,
    Q);
  output [31:0]D;
  input clk;
  input [30:0]Q;

  wire [31:0]D;
  wire [30:0]Q;
  wire clk;
  wire [30:0]din1_buf1;

  FDRE \din0_buf1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(din1_buf1[0]),
        .R(1'b0));
  FDRE \din0_buf1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(din1_buf1[10]),
        .R(1'b0));
  FDRE \din0_buf1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(din1_buf1[11]),
        .R(1'b0));
  FDRE \din0_buf1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(din1_buf1[12]),
        .R(1'b0));
  FDRE \din0_buf1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(din1_buf1[13]),
        .R(1'b0));
  FDRE \din0_buf1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(din1_buf1[14]),
        .R(1'b0));
  FDRE \din0_buf1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(din1_buf1[15]),
        .R(1'b0));
  FDRE \din0_buf1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(din1_buf1[16]),
        .R(1'b0));
  FDRE \din0_buf1_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(din1_buf1[17]),
        .R(1'b0));
  FDRE \din0_buf1_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(din1_buf1[18]),
        .R(1'b0));
  FDRE \din0_buf1_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(din1_buf1[19]),
        .R(1'b0));
  FDRE \din0_buf1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(din1_buf1[1]),
        .R(1'b0));
  FDRE \din0_buf1_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(din1_buf1[20]),
        .R(1'b0));
  FDRE \din0_buf1_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(din1_buf1[21]),
        .R(1'b0));
  FDRE \din0_buf1_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(din1_buf1[22]),
        .R(1'b0));
  FDRE \din0_buf1_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(din1_buf1[23]),
        .R(1'b0));
  FDRE \din0_buf1_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(din1_buf1[24]),
        .R(1'b0));
  FDRE \din0_buf1_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(din1_buf1[25]),
        .R(1'b0));
  FDRE \din0_buf1_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(din1_buf1[26]),
        .R(1'b0));
  FDRE \din0_buf1_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(din1_buf1[27]),
        .R(1'b0));
  FDRE \din0_buf1_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(din1_buf1[28]),
        .R(1'b0));
  FDRE \din0_buf1_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(din1_buf1[29]),
        .R(1'b0));
  FDRE \din0_buf1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(din1_buf1[2]),
        .R(1'b0));
  FDRE \din0_buf1_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(din1_buf1[30]),
        .R(1'b0));
  FDRE \din0_buf1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(din1_buf1[3]),
        .R(1'b0));
  FDRE \din0_buf1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(din1_buf1[4]),
        .R(1'b0));
  FDRE \din0_buf1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(din1_buf1[5]),
        .R(1'b0));
  FDRE \din0_buf1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(din1_buf1[6]),
        .R(1'b0));
  FDRE \din0_buf1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(din1_buf1[7]),
        .R(1'b0));
  FDRE \din0_buf1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(din1_buf1[8]),
        .R(1'b0));
  FDRE \din0_buf1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(din1_buf1[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper_ap_fmul_2_max_dsp_32 uart_wrapper_ap_fmul_2_max_dsp_32_u
       (.D(D),
        .Q(din1_buf1),
        .clk(clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d192_A
   (FIFO_I_1_full_n,
    FIFO_I_1_empty_n,
    E,
    \val_reg_80_reg[30] ,
    clk,
    D,
    e_dout,
    push,
    reset,
    Q,
    e_empty_n,
    \ap_CS_fsm_reg[4] );
  output FIFO_I_1_full_n;
  output FIFO_I_1_empty_n;
  output [0:0]E;
  output [30:0]\val_reg_80_reg[30] ;
  input clk;
  input [30:0]D;
  input [0:0]e_dout;
  input push;
  input reset;
  input [0:0]Q;
  input e_empty_n;
  input [0:0]\ap_CS_fsm_reg[4] ;

  wire [30:0]D;
  wire [0:0]E;
  wire FIFO_I_1_empty_n;
  wire FIFO_I_1_full_n;
  wire [0:0]Q;
  wire [0:0]\ap_CS_fsm_reg[4] ;
  wire clk;
  wire \dout_buf[0]_i_1_n_0 ;
  wire \dout_buf[10]_i_1_n_0 ;
  wire \dout_buf[11]_i_1_n_0 ;
  wire \dout_buf[12]_i_1_n_0 ;
  wire \dout_buf[13]_i_1_n_0 ;
  wire \dout_buf[14]_i_1_n_0 ;
  wire \dout_buf[15]_i_1_n_0 ;
  wire \dout_buf[16]_i_1_n_0 ;
  wire \dout_buf[17]_i_1_n_0 ;
  wire \dout_buf[18]_i_1_n_0 ;
  wire \dout_buf[19]_i_1_n_0 ;
  wire \dout_buf[1]_i_1_n_0 ;
  wire \dout_buf[20]_i_1_n_0 ;
  wire \dout_buf[21]_i_1_n_0 ;
  wire \dout_buf[22]_i_1_n_0 ;
  wire \dout_buf[23]_i_1_n_0 ;
  wire \dout_buf[24]_i_1_n_0 ;
  wire \dout_buf[25]_i_1_n_0 ;
  wire \dout_buf[26]_i_1_n_0 ;
  wire \dout_buf[27]_i_1_n_0 ;
  wire \dout_buf[28]_i_1_n_0 ;
  wire \dout_buf[29]_i_1_n_0 ;
  wire \dout_buf[2]_i_1_n_0 ;
  wire \dout_buf[30]_i_2_n_0 ;
  wire \dout_buf[3]_i_1_n_0 ;
  wire \dout_buf[4]_i_1_n_0 ;
  wire \dout_buf[5]_i_1_n_0 ;
  wire \dout_buf[6]_i_1_n_0 ;
  wire \dout_buf[7]_i_1_n_0 ;
  wire \dout_buf[8]_i_1_n_0 ;
  wire \dout_buf[9]_i_1_n_0 ;
  wire dout_valid_i_1_n_0;
  wire [0:0]e_dout;
  wire e_empty_n;
  wire empty_n;
  wire empty_n0;
  wire empty_n_reg_n_0;
  wire full_n0;
  wire full_n_i_2_n_0;
  wire full_n_i_3_n_0;
  wire mem_reg_i_10_n_0;
  wire mem_reg_i_11_n_0;
  wire mem_reg_i_12_n_0;
  wire mem_reg_i_1__0_n_0;
  wire mem_reg_i_2__0_n_0;
  wire mem_reg_i_3__0_n_0;
  wire mem_reg_i_4__0_n_0;
  wire mem_reg_i_5__0_n_0;
  wire mem_reg_i_6__0_n_0;
  wire mem_reg_i_7__0_n_0;
  wire mem_reg_i_8__0_n_0;
  wire mem_reg_n_16;
  wire pop;
  wire push;
  wire [30:0]q_buf;
  wire [30:0]q_tmp;
  wire [7:0]raddr;
  wire reset;
  wire show_ahead;
  wire show_ahead0;
  wire show_ahead_i_2_n_0;
  wire show_ahead_i_3_n_0;
  wire usedw14_out;
  wire \usedw[0]_i_1__0_n_0 ;
  wire \usedw[4]_i_2__0_n_0 ;
  wire \usedw[4]_i_3_n_0 ;
  wire \usedw[4]_i_4_n_0 ;
  wire \usedw[4]_i_5_n_0 ;
  wire \usedw[7]_i_2_n_0 ;
  wire \usedw[7]_i_3_n_0 ;
  wire \usedw[7]_i_4_n_0 ;
  wire \usedw_reg[4]_i_1_n_0 ;
  wire \usedw_reg[4]_i_1_n_1 ;
  wire \usedw_reg[4]_i_1_n_2 ;
  wire \usedw_reg[4]_i_1_n_3 ;
  wire \usedw_reg[4]_i_1_n_4 ;
  wire \usedw_reg[4]_i_1_n_5 ;
  wire \usedw_reg[4]_i_1_n_6 ;
  wire \usedw_reg[4]_i_1_n_7 ;
  wire \usedw_reg[7]_i_1_n_2 ;
  wire \usedw_reg[7]_i_1_n_3 ;
  wire \usedw_reg[7]_i_1_n_5 ;
  wire \usedw_reg[7]_i_1_n_6 ;
  wire \usedw_reg[7]_i_1_n_7 ;
  wire [7:0]usedw_reg__0;
  wire [30:0]\val_reg_80_reg[30] ;
  wire [7:0]waddr;
  wire \waddr[7]_i_2_n_0 ;
  wire [7:0]wnext;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [3:2]\NLW_usedw_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_usedw_reg[7]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[0]_i_1 
       (.I0(q_tmp[0]),
        .I1(q_buf[0]),
        .I2(show_ahead),
        .O(\dout_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[10]_i_1 
       (.I0(q_tmp[10]),
        .I1(q_buf[10]),
        .I2(show_ahead),
        .O(\dout_buf[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[11]_i_1 
       (.I0(q_tmp[11]),
        .I1(q_buf[11]),
        .I2(show_ahead),
        .O(\dout_buf[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[12]_i_1 
       (.I0(q_tmp[12]),
        .I1(q_buf[12]),
        .I2(show_ahead),
        .O(\dout_buf[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[13]_i_1 
       (.I0(q_tmp[13]),
        .I1(q_buf[13]),
        .I2(show_ahead),
        .O(\dout_buf[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[14]_i_1 
       (.I0(q_tmp[14]),
        .I1(q_buf[14]),
        .I2(show_ahead),
        .O(\dout_buf[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[15]_i_1 
       (.I0(q_tmp[15]),
        .I1(q_buf[15]),
        .I2(show_ahead),
        .O(\dout_buf[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[16]_i_1 
       (.I0(q_tmp[16]),
        .I1(q_buf[16]),
        .I2(show_ahead),
        .O(\dout_buf[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[17]_i_1 
       (.I0(q_tmp[17]),
        .I1(q_buf[17]),
        .I2(show_ahead),
        .O(\dout_buf[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[18]_i_1 
       (.I0(q_tmp[18]),
        .I1(q_buf[18]),
        .I2(show_ahead),
        .O(\dout_buf[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[19]_i_1 
       (.I0(q_tmp[19]),
        .I1(q_buf[19]),
        .I2(show_ahead),
        .O(\dout_buf[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[1]_i_1 
       (.I0(q_tmp[1]),
        .I1(q_buf[1]),
        .I2(show_ahead),
        .O(\dout_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[20]_i_1 
       (.I0(q_tmp[20]),
        .I1(q_buf[20]),
        .I2(show_ahead),
        .O(\dout_buf[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[21]_i_1 
       (.I0(q_tmp[21]),
        .I1(q_buf[21]),
        .I2(show_ahead),
        .O(\dout_buf[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[22]_i_1 
       (.I0(q_tmp[22]),
        .I1(q_buf[22]),
        .I2(show_ahead),
        .O(\dout_buf[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[23]_i_1 
       (.I0(q_tmp[23]),
        .I1(q_buf[23]),
        .I2(show_ahead),
        .O(\dout_buf[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[24]_i_1 
       (.I0(q_tmp[24]),
        .I1(q_buf[24]),
        .I2(show_ahead),
        .O(\dout_buf[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[25]_i_1 
       (.I0(q_tmp[25]),
        .I1(q_buf[25]),
        .I2(show_ahead),
        .O(\dout_buf[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[26]_i_1 
       (.I0(q_tmp[26]),
        .I1(q_buf[26]),
        .I2(show_ahead),
        .O(\dout_buf[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[27]_i_1 
       (.I0(q_tmp[27]),
        .I1(q_buf[27]),
        .I2(show_ahead),
        .O(\dout_buf[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[28]_i_1 
       (.I0(q_tmp[28]),
        .I1(q_buf[28]),
        .I2(show_ahead),
        .O(\dout_buf[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[29]_i_1 
       (.I0(q_tmp[29]),
        .I1(q_buf[29]),
        .I2(show_ahead),
        .O(\dout_buf[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[2]_i_1 
       (.I0(q_tmp[2]),
        .I1(q_buf[2]),
        .I2(show_ahead),
        .O(\dout_buf[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \dout_buf[30]_i_1 
       (.I0(empty_n_reg_n_0),
        .I1(Q),
        .I2(FIFO_I_1_empty_n),
        .O(pop));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[30]_i_2 
       (.I0(q_tmp[30]),
        .I1(q_buf[30]),
        .I2(show_ahead),
        .O(\dout_buf[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[3]_i_1 
       (.I0(q_tmp[3]),
        .I1(q_buf[3]),
        .I2(show_ahead),
        .O(\dout_buf[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[4]_i_1 
       (.I0(q_tmp[4]),
        .I1(q_buf[4]),
        .I2(show_ahead),
        .O(\dout_buf[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[5]_i_1 
       (.I0(q_tmp[5]),
        .I1(q_buf[5]),
        .I2(show_ahead),
        .O(\dout_buf[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[6]_i_1 
       (.I0(q_tmp[6]),
        .I1(q_buf[6]),
        .I2(show_ahead),
        .O(\dout_buf[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[7]_i_1 
       (.I0(q_tmp[7]),
        .I1(q_buf[7]),
        .I2(show_ahead),
        .O(\dout_buf[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[8]_i_1 
       (.I0(q_tmp[8]),
        .I1(q_buf[8]),
        .I2(show_ahead),
        .O(\dout_buf[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[9]_i_1 
       (.I0(q_tmp[9]),
        .I1(q_buf[9]),
        .I2(show_ahead),
        .O(\dout_buf[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[0] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[0]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[10] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[10]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[11] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[11]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[12] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[12]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[13] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[13]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[14] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[14]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[15] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[15]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[16] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[16]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[17] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[17]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[18] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[18]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[19] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[19]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[1] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[1]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[20] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[20]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[21] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[21]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[22] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[22]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[23] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[23]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[24] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[24]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[25] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[25]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[26] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[26]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[27] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[27]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[28] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[28]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[29] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[29]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[2] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[2]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[30] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[30]_i_2_n_0 ),
        .Q(\val_reg_80_reg[30] [30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[3] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[3]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[4] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[4]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[5] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[5]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[6] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[6]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[7] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[7]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[8] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[8]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[9] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[9]_i_1_n_0 ),
        .Q(\val_reg_80_reg[30] [9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    dout_valid_i_1
       (.I0(FIFO_I_1_empty_n),
        .I1(Q),
        .I2(empty_n_reg_n_0),
        .O(dout_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dout_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(dout_valid_i_1_n_0),
        .Q(FIFO_I_1_empty_n),
        .R(reset));
  LUT6 #(
    .INIT(64'h7F7F807F80808080)) 
    empty_n_i_1__0
       (.I0(e_empty_n),
        .I1(FIFO_I_1_full_n),
        .I2(\ap_CS_fsm_reg[4] ),
        .I3(FIFO_I_1_empty_n),
        .I4(Q),
        .I5(empty_n_reg_n_0),
        .O(empty_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    empty_n_i_2__0
       (.I0(usedw14_out),
        .I1(show_ahead_i_3_n_0),
        .I2(usedw_reg__0[0]),
        .I3(usedw_reg__0[1]),
        .I4(usedw_reg__0[3]),
        .I5(usedw_reg__0[2]),
        .O(empty_n0));
  LUT6 #(
    .INIT(64'h0000800080808080)) 
    empty_n_i_3
       (.I0(e_empty_n),
        .I1(FIFO_I_1_full_n),
        .I2(\ap_CS_fsm_reg[4] ),
        .I3(FIFO_I_1_empty_n),
        .I4(Q),
        .I5(empty_n_reg_n_0),
        .O(usedw14_out));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(clk),
        .CE(empty_n),
        .D(empty_n0),
        .Q(empty_n_reg_n_0),
        .R(reset));
  LUT6 #(
    .INIT(64'h55A8A8A855A855A8)) 
    full_n_i_1__0
       (.I0(push),
        .I1(full_n_i_2_n_0),
        .I2(full_n_i_3_n_0),
        .I3(empty_n_reg_n_0),
        .I4(Q),
        .I5(FIFO_I_1_empty_n),
        .O(full_n0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    full_n_i_2
       (.I0(usedw_reg__0[5]),
        .I1(usedw_reg__0[6]),
        .I2(usedw_reg__0[0]),
        .I3(usedw_reg__0[7]),
        .O(full_n_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    full_n_i_3
       (.I0(usedw_reg__0[2]),
        .I1(usedw_reg__0[1]),
        .I2(usedw_reg__0[4]),
        .I3(usedw_reg__0[3]),
        .O(full_n_i_3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(clk),
        .CE(empty_n),
        .D(full_n0),
        .Q(FIFO_I_1_full_n),
        .S(reset));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "6144" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,mem_reg_i_1__0_n_0,mem_reg_i_2__0_n_0,mem_reg_i_3__0_n_0,mem_reg_i_4__0_n_0,mem_reg_i_5__0_n_0,mem_reg_i_6__0_n_0,mem_reg_i_7__0_n_0,mem_reg_i_8__0_n_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,waddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI(D[15:0]),
        .DIBDI({e_dout,D[30:16]}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(q_buf[15:0]),
        .DOBDO({mem_reg_n_16,q_buf[30:16]}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(FIFO_I_1_full_n),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({push,push,push,push}));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    mem_reg_i_10
       (.I0(mem_reg_i_12_n_0),
        .I1(raddr[2]),
        .I2(raddr[3]),
        .I3(raddr[4]),
        .I4(raddr[5]),
        .O(mem_reg_i_10_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_11
       (.I0(raddr[3]),
        .I1(raddr[0]),
        .I2(raddr[1]),
        .I3(raddr[2]),
        .O(mem_reg_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD0000000)) 
    mem_reg_i_12
       (.I0(FIFO_I_1_empty_n),
        .I1(Q),
        .I2(empty_n_reg_n_0),
        .I3(raddr[1]),
        .I4(raddr[0]),
        .O(mem_reg_i_12_n_0));
  LUT3 #(
    .INIT(8'hA4)) 
    mem_reg_i_1__0
       (.I0(raddr[7]),
        .I1(raddr[6]),
        .I2(mem_reg_i_10_n_0),
        .O(mem_reg_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hA1)) 
    mem_reg_i_2__0
       (.I0(raddr[6]),
        .I1(raddr[7]),
        .I2(mem_reg_i_10_n_0),
        .O(mem_reg_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h7FFF7F7F80008080)) 
    mem_reg_i_3__0
       (.I0(mem_reg_i_11_n_0),
        .I1(raddr[4]),
        .I2(empty_n_reg_n_0),
        .I3(Q),
        .I4(FIFO_I_1_empty_n),
        .I5(raddr[5]),
        .O(mem_reg_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    mem_reg_i_4__0
       (.I0(raddr[2]),
        .I1(raddr[1]),
        .I2(raddr[0]),
        .I3(raddr[3]),
        .I4(pop),
        .I5(raddr[4]),
        .O(mem_reg_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    mem_reg_i_5__0
       (.I0(raddr[0]),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(pop),
        .I4(raddr[3]),
        .O(mem_reg_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h6AAAAAAA6AAA6AAA)) 
    mem_reg_i_6__0
       (.I0(raddr[2]),
        .I1(raddr[0]),
        .I2(raddr[1]),
        .I3(empty_n_reg_n_0),
        .I4(Q),
        .I5(FIFO_I_1_empty_n),
        .O(mem_reg_i_6__0_n_0));
  LUT5 #(
    .INIT(32'h6A66AAAA)) 
    mem_reg_i_7__0
       (.I0(raddr[1]),
        .I1(empty_n_reg_n_0),
        .I2(Q),
        .I3(FIFO_I_1_empty_n),
        .I4(raddr[0]),
        .O(mem_reg_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h59AA)) 
    mem_reg_i_8__0
       (.I0(raddr[0]),
        .I1(FIFO_I_1_empty_n),
        .I2(Q),
        .I3(empty_n_reg_n_0),
        .O(mem_reg_i_8__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[0] 
       (.C(clk),
        .CE(push),
        .D(D[0]),
        .Q(q_tmp[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[10] 
       (.C(clk),
        .CE(push),
        .D(D[10]),
        .Q(q_tmp[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[11] 
       (.C(clk),
        .CE(push),
        .D(D[11]),
        .Q(q_tmp[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[12] 
       (.C(clk),
        .CE(push),
        .D(D[12]),
        .Q(q_tmp[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[13] 
       (.C(clk),
        .CE(push),
        .D(D[13]),
        .Q(q_tmp[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[14] 
       (.C(clk),
        .CE(push),
        .D(D[14]),
        .Q(q_tmp[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[15] 
       (.C(clk),
        .CE(push),
        .D(D[15]),
        .Q(q_tmp[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[16] 
       (.C(clk),
        .CE(push),
        .D(D[16]),
        .Q(q_tmp[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[17] 
       (.C(clk),
        .CE(push),
        .D(D[17]),
        .Q(q_tmp[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[18] 
       (.C(clk),
        .CE(push),
        .D(D[18]),
        .Q(q_tmp[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[19] 
       (.C(clk),
        .CE(push),
        .D(D[19]),
        .Q(q_tmp[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[1] 
       (.C(clk),
        .CE(push),
        .D(D[1]),
        .Q(q_tmp[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[20] 
       (.C(clk),
        .CE(push),
        .D(D[20]),
        .Q(q_tmp[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[21] 
       (.C(clk),
        .CE(push),
        .D(D[21]),
        .Q(q_tmp[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[22] 
       (.C(clk),
        .CE(push),
        .D(D[22]),
        .Q(q_tmp[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[23] 
       (.C(clk),
        .CE(push),
        .D(D[23]),
        .Q(q_tmp[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[24] 
       (.C(clk),
        .CE(push),
        .D(D[24]),
        .Q(q_tmp[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[25] 
       (.C(clk),
        .CE(push),
        .D(D[25]),
        .Q(q_tmp[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[26] 
       (.C(clk),
        .CE(push),
        .D(D[26]),
        .Q(q_tmp[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[27] 
       (.C(clk),
        .CE(push),
        .D(D[27]),
        .Q(q_tmp[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[28] 
       (.C(clk),
        .CE(push),
        .D(D[28]),
        .Q(q_tmp[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[29] 
       (.C(clk),
        .CE(push),
        .D(D[29]),
        .Q(q_tmp[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[2] 
       (.C(clk),
        .CE(push),
        .D(D[2]),
        .Q(q_tmp[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[30] 
       (.C(clk),
        .CE(push),
        .D(D[30]),
        .Q(q_tmp[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[3] 
       (.C(clk),
        .CE(push),
        .D(D[3]),
        .Q(q_tmp[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[4] 
       (.C(clk),
        .CE(push),
        .D(D[4]),
        .Q(q_tmp[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[5] 
       (.C(clk),
        .CE(push),
        .D(D[5]),
        .Q(q_tmp[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[6] 
       (.C(clk),
        .CE(push),
        .D(D[6]),
        .Q(q_tmp[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[7] 
       (.C(clk),
        .CE(push),
        .D(D[7]),
        .Q(q_tmp[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[8] 
       (.C(clk),
        .CE(push),
        .D(D[8]),
        .Q(q_tmp[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[9] 
       (.C(clk),
        .CE(push),
        .D(D[9]),
        .Q(q_tmp[9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_8__0_n_0),
        .Q(raddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_7__0_n_0),
        .Q(raddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_6__0_n_0),
        .Q(raddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_5__0_n_0),
        .Q(raddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_4__0_n_0),
        .Q(raddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_3__0_n_0),
        .Q(raddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_2__0_n_0),
        .Q(raddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_1__0_n_0),
        .Q(raddr[7]),
        .R(reset));
  LUT5 #(
    .INIT(32'h000D0000)) 
    show_ahead_i_1__0
       (.I0(usedw_reg__0[0]),
        .I1(pop),
        .I2(show_ahead_i_2_n_0),
        .I3(show_ahead_i_3_n_0),
        .I4(push),
        .O(show_ahead0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    show_ahead_i_2
       (.I0(usedw_reg__0[1]),
        .I1(usedw_reg__0[3]),
        .I2(usedw_reg__0[2]),
        .O(show_ahead_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    show_ahead_i_3
       (.I0(usedw_reg__0[7]),
        .I1(usedw_reg__0[6]),
        .I2(usedw_reg__0[5]),
        .I3(usedw_reg__0[4]),
        .O(show_ahead_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    show_ahead_reg
       (.C(clk),
        .CE(1'b1),
        .D(show_ahead0),
        .Q(show_ahead),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[0]_i_1__0 
       (.I0(usedw_reg__0[0]),
        .O(\usedw[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[4]_i_2__0 
       (.I0(usedw_reg__0[3]),
        .I1(usedw_reg__0[4]),
        .O(\usedw[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[4]_i_3 
       (.I0(usedw_reg__0[2]),
        .I1(usedw_reg__0[3]),
        .O(\usedw[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[4]_i_4 
       (.I0(usedw_reg__0[1]),
        .I1(usedw_reg__0[2]),
        .O(\usedw[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h6A665555)) 
    \usedw[4]_i_5 
       (.I0(usedw_reg__0[1]),
        .I1(empty_n_reg_n_0),
        .I2(Q),
        .I3(FIFO_I_1_empty_n),
        .I4(push),
        .O(\usedw[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_2 
       (.I0(usedw_reg__0[6]),
        .I1(usedw_reg__0[7]),
        .O(\usedw[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_3 
       (.I0(usedw_reg__0[5]),
        .I1(usedw_reg__0[6]),
        .O(\usedw[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_4 
       (.I0(usedw_reg__0[4]),
        .I1(usedw_reg__0[5]),
        .O(\usedw[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[0] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw[0]_i_1__0_n_0 ),
        .Q(usedw_reg__0[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[1] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[4]_i_1_n_7 ),
        .Q(usedw_reg__0[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[2] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[4]_i_1_n_6 ),
        .Q(usedw_reg__0[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[3] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[4]_i_1_n_5 ),
        .Q(usedw_reg__0[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[4] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[4]_i_1_n_4 ),
        .Q(usedw_reg__0[4]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \usedw_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\usedw_reg[4]_i_1_n_0 ,\usedw_reg[4]_i_1_n_1 ,\usedw_reg[4]_i_1_n_2 ,\usedw_reg[4]_i_1_n_3 }),
        .CYINIT(usedw_reg__0[0]),
        .DI({usedw_reg__0[3:1],usedw14_out}),
        .O({\usedw_reg[4]_i_1_n_4 ,\usedw_reg[4]_i_1_n_5 ,\usedw_reg[4]_i_1_n_6 ,\usedw_reg[4]_i_1_n_7 }),
        .S({\usedw[4]_i_2__0_n_0 ,\usedw[4]_i_3_n_0 ,\usedw[4]_i_4_n_0 ,\usedw[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[5] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[7]_i_1_n_7 ),
        .Q(usedw_reg__0[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[6] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[7]_i_1_n_6 ),
        .Q(usedw_reg__0[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[7] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[7]_i_1_n_5 ),
        .Q(usedw_reg__0[7]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \usedw_reg[7]_i_1 
       (.CI(\usedw_reg[4]_i_1_n_0 ),
        .CO({\NLW_usedw_reg[7]_i_1_CO_UNCONNECTED [3:2],\usedw_reg[7]_i_1_n_2 ,\usedw_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,usedw_reg__0[5:4]}),
        .O({\NLW_usedw_reg[7]_i_1_O_UNCONNECTED [3],\usedw_reg[7]_i_1_n_5 ,\usedw_reg[7]_i_1_n_6 ,\usedw_reg[7]_i_1_n_7 }),
        .S({1'b0,\usedw[7]_i_2_n_0 ,\usedw[7]_i_3_n_0 ,\usedw[7]_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \val_reg_80[30]_i_1 
       (.I0(FIFO_I_1_empty_n),
        .I1(Q),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1 
       (.I0(waddr[0]),
        .O(wnext[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[1]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .O(wnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \waddr[2]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .O(wnext[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \waddr[3]_i_1 
       (.I0(waddr[3]),
        .I1(waddr[0]),
        .I2(waddr[1]),
        .I3(waddr[2]),
        .O(wnext[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \waddr[4]_i_1 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[1]),
        .I3(waddr[0]),
        .I4(waddr[3]),
        .O(wnext[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \waddr[5]_i_1 
       (.I0(waddr[5]),
        .I1(waddr[3]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[2]),
        .I5(waddr[4]),
        .O(wnext[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \waddr[6]_i_1 
       (.I0(waddr[7]),
        .I1(\waddr[7]_i_2_n_0 ),
        .I2(waddr[6]),
        .O(wnext[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \waddr[7]_i_1 
       (.I0(waddr[7]),
        .I1(waddr[6]),
        .I2(\waddr[7]_i_2_n_0 ),
        .O(wnext[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \waddr[7]_i_2 
       (.I0(waddr[5]),
        .I1(waddr[4]),
        .I2(waddr[2]),
        .I3(waddr[1]),
        .I4(waddr[0]),
        .I5(waddr[3]),
        .O(\waddr[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[0] 
       (.C(clk),
        .CE(push),
        .D(wnext[0]),
        .Q(waddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(clk),
        .CE(push),
        .D(wnext[1]),
        .Q(waddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(clk),
        .CE(push),
        .D(wnext[2]),
        .Q(waddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(clk),
        .CE(push),
        .D(wnext[3]),
        .Q(waddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(clk),
        .CE(push),
        .D(wnext[4]),
        .Q(waddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(clk),
        .CE(push),
        .D(wnext[5]),
        .Q(waddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(clk),
        .CE(push),
        .D(wnext[6]),
        .Q(waddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(clk),
        .CE(push),
        .D(wnext[7]),
        .Q(waddr[7]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "fifo_w32_d192_A" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d192_A_0
   (FIFO_O_1_full_n,
    FIFO_O_1_empty_n,
    \tmp_7_reg_142_reg[7] ,
    clk,
    Q,
    WEBWE,
    reset,
    \ap_CS_fsm_reg[6] ,
    s_full_n,
    \ap_CS_fsm_reg[1] );
  output FIFO_O_1_full_n;
  output FIFO_O_1_empty_n;
  output [31:0]\tmp_7_reg_142_reg[7] ;
  input clk;
  input [31:0]Q;
  input [0:0]WEBWE;
  input reset;
  input [0:0]\ap_CS_fsm_reg[6] ;
  input s_full_n;
  input [0:0]\ap_CS_fsm_reg[1] ;

  wire FIFO_O_1_empty_n;
  wire FIFO_O_1_full_n;
  wire [31:0]Q;
  wire [0:0]WEBWE;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire [0:0]\ap_CS_fsm_reg[6] ;
  wire clk;
  wire \dout_buf[0]_i_1_n_0 ;
  wire \dout_buf[10]_i_1_n_0 ;
  wire \dout_buf[11]_i_1_n_0 ;
  wire \dout_buf[12]_i_1_n_0 ;
  wire \dout_buf[13]_i_1_n_0 ;
  wire \dout_buf[14]_i_1_n_0 ;
  wire \dout_buf[15]_i_1_n_0 ;
  wire \dout_buf[16]_i_1_n_0 ;
  wire \dout_buf[17]_i_1_n_0 ;
  wire \dout_buf[18]_i_1_n_0 ;
  wire \dout_buf[19]_i_1_n_0 ;
  wire \dout_buf[1]_i_1_n_0 ;
  wire \dout_buf[20]_i_1_n_0 ;
  wire \dout_buf[21]_i_1_n_0 ;
  wire \dout_buf[22]_i_1_n_0 ;
  wire \dout_buf[23]_i_1_n_0 ;
  wire \dout_buf[24]_i_1_n_0 ;
  wire \dout_buf[25]_i_1_n_0 ;
  wire \dout_buf[26]_i_1_n_0 ;
  wire \dout_buf[27]_i_1_n_0 ;
  wire \dout_buf[28]_i_1_n_0 ;
  wire \dout_buf[29]_i_1_n_0 ;
  wire \dout_buf[2]_i_1_n_0 ;
  wire \dout_buf[30]_i_1_n_0 ;
  wire \dout_buf[31]_i_2_n_0 ;
  wire \dout_buf[3]_i_1_n_0 ;
  wire \dout_buf[4]_i_1_n_0 ;
  wire \dout_buf[5]_i_1_n_0 ;
  wire \dout_buf[6]_i_1_n_0 ;
  wire \dout_buf[7]_i_1_n_0 ;
  wire \dout_buf[8]_i_1_n_0 ;
  wire \dout_buf[9]_i_1_n_0 ;
  wire dout_valid_i_1__0_n_0;
  wire empty_n;
  wire empty_n_i_2_n_0;
  wire empty_n_reg_n_0;
  wire full_n_i_1_n_0;
  wire full_n_i_2__0_n_0;
  wire full_n_i_3__0_n_0;
  wire mem_reg_i_10__0_n_0;
  wire mem_reg_i_11__0_n_0;
  wire mem_reg_i_12__0_n_0;
  wire mem_reg_i_13_n_0;
  wire mem_reg_i_14_n_0;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_2_n_0;
  wire mem_reg_i_3_n_0;
  wire mem_reg_i_4_n_0;
  wire mem_reg_i_5_n_0;
  wire mem_reg_i_6_n_0;
  wire mem_reg_i_7_n_0;
  wire mem_reg_i_8_n_0;
  wire pop;
  wire [31:0]q_buf;
  wire \q_tmp_reg_n_0_[0] ;
  wire \q_tmp_reg_n_0_[10] ;
  wire \q_tmp_reg_n_0_[11] ;
  wire \q_tmp_reg_n_0_[12] ;
  wire \q_tmp_reg_n_0_[13] ;
  wire \q_tmp_reg_n_0_[14] ;
  wire \q_tmp_reg_n_0_[15] ;
  wire \q_tmp_reg_n_0_[16] ;
  wire \q_tmp_reg_n_0_[17] ;
  wire \q_tmp_reg_n_0_[18] ;
  wire \q_tmp_reg_n_0_[19] ;
  wire \q_tmp_reg_n_0_[1] ;
  wire \q_tmp_reg_n_0_[20] ;
  wire \q_tmp_reg_n_0_[21] ;
  wire \q_tmp_reg_n_0_[22] ;
  wire \q_tmp_reg_n_0_[23] ;
  wire \q_tmp_reg_n_0_[24] ;
  wire \q_tmp_reg_n_0_[25] ;
  wire \q_tmp_reg_n_0_[26] ;
  wire \q_tmp_reg_n_0_[27] ;
  wire \q_tmp_reg_n_0_[28] ;
  wire \q_tmp_reg_n_0_[29] ;
  wire \q_tmp_reg_n_0_[2] ;
  wire \q_tmp_reg_n_0_[30] ;
  wire \q_tmp_reg_n_0_[31] ;
  wire \q_tmp_reg_n_0_[3] ;
  wire \q_tmp_reg_n_0_[4] ;
  wire \q_tmp_reg_n_0_[5] ;
  wire \q_tmp_reg_n_0_[6] ;
  wire \q_tmp_reg_n_0_[7] ;
  wire \q_tmp_reg_n_0_[8] ;
  wire \q_tmp_reg_n_0_[9] ;
  wire \raddr[1]_i_1_n_0 ;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_1_n_0 ;
  wire \raddr[4]_i_1_n_0 ;
  wire \raddr[5]_i_1_n_0 ;
  wire \raddr_reg_n_0_[0] ;
  wire \raddr_reg_n_0_[1] ;
  wire \raddr_reg_n_0_[2] ;
  wire \raddr_reg_n_0_[3] ;
  wire \raddr_reg_n_0_[4] ;
  wire \raddr_reg_n_0_[5] ;
  wire \raddr_reg_n_0_[6] ;
  wire \raddr_reg_n_0_[7] ;
  wire reset;
  wire s_full_n;
  wire show_ahead0;
  wire show_ahead_i_2__0_n_0;
  wire show_ahead_i_3__0_n_0;
  wire show_ahead_reg_n_0;
  wire [31:0]\tmp_7_reg_142_reg[7] ;
  wire usedw14_out;
  wire \usedw[0]_i_1_n_0 ;
  wire \usedw[4]_i_3__0_n_0 ;
  wire \usedw[4]_i_4__0_n_0 ;
  wire \usedw[4]_i_5__0_n_0 ;
  wire \usedw[4]_i_6_n_0 ;
  wire \usedw[7]_i_2__0_n_0 ;
  wire \usedw[7]_i_3__0_n_0 ;
  wire \usedw[7]_i_4__0_n_0 ;
  wire \usedw_reg[4]_i_1__0_n_0 ;
  wire \usedw_reg[4]_i_1__0_n_1 ;
  wire \usedw_reg[4]_i_1__0_n_2 ;
  wire \usedw_reg[4]_i_1__0_n_3 ;
  wire \usedw_reg[4]_i_1__0_n_4 ;
  wire \usedw_reg[4]_i_1__0_n_5 ;
  wire \usedw_reg[4]_i_1__0_n_6 ;
  wire \usedw_reg[4]_i_1__0_n_7 ;
  wire \usedw_reg[7]_i_1__0_n_2 ;
  wire \usedw_reg[7]_i_1__0_n_3 ;
  wire \usedw_reg[7]_i_1__0_n_5 ;
  wire \usedw_reg[7]_i_1__0_n_6 ;
  wire \usedw_reg[7]_i_1__0_n_7 ;
  wire [7:0]usedw_reg__0;
  wire [7:0]waddr;
  wire \waddr[7]_i_2__0_n_0 ;
  wire [7:0]wnext;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [3:2]\NLW_usedw_reg[7]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_usedw_reg[7]_i_1__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[0]_i_1 
       (.I0(\q_tmp_reg_n_0_[0] ),
        .I1(q_buf[0]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[10]_i_1 
       (.I0(\q_tmp_reg_n_0_[10] ),
        .I1(q_buf[10]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[11]_i_1 
       (.I0(\q_tmp_reg_n_0_[11] ),
        .I1(q_buf[11]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[12]_i_1 
       (.I0(\q_tmp_reg_n_0_[12] ),
        .I1(q_buf[12]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[13]_i_1 
       (.I0(\q_tmp_reg_n_0_[13] ),
        .I1(q_buf[13]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[14]_i_1 
       (.I0(\q_tmp_reg_n_0_[14] ),
        .I1(q_buf[14]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[15]_i_1 
       (.I0(\q_tmp_reg_n_0_[15] ),
        .I1(q_buf[15]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[16]_i_1 
       (.I0(\q_tmp_reg_n_0_[16] ),
        .I1(q_buf[16]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[17]_i_1 
       (.I0(\q_tmp_reg_n_0_[17] ),
        .I1(q_buf[17]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[18]_i_1 
       (.I0(\q_tmp_reg_n_0_[18] ),
        .I1(q_buf[18]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[19]_i_1 
       (.I0(\q_tmp_reg_n_0_[19] ),
        .I1(q_buf[19]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[1]_i_1 
       (.I0(\q_tmp_reg_n_0_[1] ),
        .I1(q_buf[1]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[20]_i_1 
       (.I0(\q_tmp_reg_n_0_[20] ),
        .I1(q_buf[20]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[21]_i_1 
       (.I0(\q_tmp_reg_n_0_[21] ),
        .I1(q_buf[21]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[22]_i_1 
       (.I0(\q_tmp_reg_n_0_[22] ),
        .I1(q_buf[22]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[23]_i_1 
       (.I0(\q_tmp_reg_n_0_[23] ),
        .I1(q_buf[23]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[24]_i_1 
       (.I0(\q_tmp_reg_n_0_[24] ),
        .I1(q_buf[24]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[25]_i_1 
       (.I0(\q_tmp_reg_n_0_[25] ),
        .I1(q_buf[25]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[26]_i_1 
       (.I0(\q_tmp_reg_n_0_[26] ),
        .I1(q_buf[26]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[27]_i_1 
       (.I0(\q_tmp_reg_n_0_[27] ),
        .I1(q_buf[27]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[28]_i_1 
       (.I0(\q_tmp_reg_n_0_[28] ),
        .I1(q_buf[28]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[29]_i_1 
       (.I0(\q_tmp_reg_n_0_[29] ),
        .I1(q_buf[29]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[2]_i_1 
       (.I0(\q_tmp_reg_n_0_[2] ),
        .I1(q_buf[2]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[30]_i_1 
       (.I0(\q_tmp_reg_n_0_[30] ),
        .I1(q_buf[30]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A0A)) 
    \dout_buf[31]_i_1 
       (.I0(empty_n_reg_n_0),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(FIFO_O_1_empty_n),
        .I3(s_full_n),
        .O(pop));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[31]_i_2 
       (.I0(\q_tmp_reg_n_0_[31] ),
        .I1(q_buf[31]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[3]_i_1 
       (.I0(\q_tmp_reg_n_0_[3] ),
        .I1(q_buf[3]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[4]_i_1 
       (.I0(\q_tmp_reg_n_0_[4] ),
        .I1(q_buf[4]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[5]_i_1 
       (.I0(\q_tmp_reg_n_0_[5] ),
        .I1(q_buf[5]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[6]_i_1 
       (.I0(\q_tmp_reg_n_0_[6] ),
        .I1(q_buf[6]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[7]_i_1 
       (.I0(\q_tmp_reg_n_0_[7] ),
        .I1(q_buf[7]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[8]_i_1 
       (.I0(\q_tmp_reg_n_0_[8] ),
        .I1(q_buf[8]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[9]_i_1 
       (.I0(\q_tmp_reg_n_0_[9] ),
        .I1(q_buf[9]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[0] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[0]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[10] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[10]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[11] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[11]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[12] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[12]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[13] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[13]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[14] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[14]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[15] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[15]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[16] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[16]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[17] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[17]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[18] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[18]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[19] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[19]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[1] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[1]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[20] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[20]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[21] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[21]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[22] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[22]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[23] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[23]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[24] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[24]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[25] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[25]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[26] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[26]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[27] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[27]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[28] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[28]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[29] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[29]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[2] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[2]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[30] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[30]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[31] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[31]_i_2_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [31]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[3] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[3]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[4] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[4]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[5] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[5]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[6] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[6]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[7] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[7]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[8] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[8]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[9] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[9]_i_1_n_0 ),
        .Q(\tmp_7_reg_142_reg[7] [9]),
        .R(reset));
  LUT4 #(
    .INIT(16'hFF4C)) 
    dout_valid_i_1__0
       (.I0(s_full_n),
        .I1(FIFO_O_1_empty_n),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(empty_n_reg_n_0),
        .O(dout_valid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dout_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(dout_valid_i_1__0_n_0),
        .Q(FIFO_O_1_empty_n),
        .R(reset));
  LUT6 #(
    .INIT(64'h7877887788888888)) 
    empty_n_i_1
       (.I0(FIFO_O_1_full_n),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(s_full_n),
        .I3(FIFO_O_1_empty_n),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(empty_n_reg_n_0),
        .O(empty_n));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFF40FF)) 
    empty_n_i_2
       (.I0(pop),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(FIFO_O_1_full_n),
        .I3(usedw_reg__0[0]),
        .I4(show_ahead_i_2__0_n_0),
        .O(empty_n_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(clk),
        .CE(empty_n),
        .D(empty_n_i_2_n_0),
        .Q(empty_n_reg_n_0),
        .R(reset));
  LUT5 #(
    .INIT(32'h0FFFD000)) 
    full_n_i_1
       (.I0(full_n_i_2__0_n_0),
        .I1(full_n_i_3__0_n_0),
        .I2(FIFO_O_1_full_n),
        .I3(\ap_CS_fsm_reg[6] ),
        .I4(pop),
        .O(full_n_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    full_n_i_2__0
       (.I0(usedw_reg__0[4]),
        .I1(usedw_reg__0[3]),
        .I2(usedw_reg__0[2]),
        .I3(usedw_reg__0[1]),
        .O(full_n_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    full_n_i_3__0
       (.I0(usedw_reg__0[5]),
        .I1(usedw_reg__0[6]),
        .I2(usedw_reg__0[0]),
        .I3(usedw_reg__0[7]),
        .O(full_n_i_3__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(clk),
        .CE(empty_n),
        .D(full_n_i_1_n_0),
        .Q(FIFO_O_1_full_n),
        .S(reset));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "6144" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    mem_reg
       (.ADDRARDADDR({1'b1,mem_reg_i_1_n_0,mem_reg_i_2_n_0,mem_reg_i_3_n_0,mem_reg_i_4_n_0,mem_reg_i_5_n_0,mem_reg_i_6_n_0,mem_reg_i_7_n_0,mem_reg_i_8_n_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,waddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI(Q[15:0]),
        .DIBDI(Q[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(q_buf[15:0]),
        .DOBDO(q_buf[31:16]),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(FIFO_O_1_full_n),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({WEBWE,WEBWE,WEBWE,WEBWE}));
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    mem_reg_i_1
       (.I0(mem_reg_i_10__0_n_0),
        .I1(\raddr_reg_n_0_[6] ),
        .I2(mem_reg_i_11__0_n_0),
        .I3(pop),
        .I4(\raddr_reg_n_0_[7] ),
        .O(mem_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    mem_reg_i_10__0
       (.I0(\raddr_reg_n_0_[6] ),
        .I1(\raddr_reg_n_0_[1] ),
        .I2(mem_reg_i_13_n_0),
        .I3(\raddr_reg_n_0_[0] ),
        .I4(\raddr_reg_n_0_[7] ),
        .I5(mem_reg_i_14_n_0),
        .O(mem_reg_i_10__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_i_11__0
       (.I0(\raddr_reg_n_0_[1] ),
        .I1(\raddr_reg_n_0_[0] ),
        .I2(\raddr_reg_n_0_[4] ),
        .I3(\raddr_reg_n_0_[5] ),
        .I4(\raddr_reg_n_0_[2] ),
        .I5(\raddr_reg_n_0_[3] ),
        .O(mem_reg_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_12__0
       (.I0(\raddr_reg_n_0_[0] ),
        .I1(\raddr_reg_n_0_[1] ),
        .O(mem_reg_i_12__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    mem_reg_i_13
       (.I0(\raddr_reg_n_0_[2] ),
        .I1(\raddr_reg_n_0_[3] ),
        .O(mem_reg_i_13_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    mem_reg_i_14
       (.I0(\raddr_reg_n_0_[4] ),
        .I1(\raddr_reg_n_0_[5] ),
        .O(mem_reg_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F80)) 
    mem_reg_i_2
       (.I0(mem_reg_i_10__0_n_0),
        .I1(mem_reg_i_11__0_n_0),
        .I2(pop),
        .I3(\raddr_reg_n_0_[6] ),
        .O(mem_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    mem_reg_i_3
       (.I0(mem_reg_i_12__0_n_0),
        .I1(\raddr_reg_n_0_[3] ),
        .I2(\raddr_reg_n_0_[2] ),
        .I3(\raddr_reg_n_0_[4] ),
        .I4(pop),
        .I5(\raddr_reg_n_0_[5] ),
        .O(mem_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    mem_reg_i_4
       (.I0(\raddr_reg_n_0_[2] ),
        .I1(\raddr_reg_n_0_[3] ),
        .I2(\raddr_reg_n_0_[0] ),
        .I3(\raddr_reg_n_0_[1] ),
        .I4(pop),
        .I5(\raddr_reg_n_0_[4] ),
        .O(mem_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    mem_reg_i_5
       (.I0(\raddr_reg_n_0_[0] ),
        .I1(\raddr_reg_n_0_[1] ),
        .I2(\raddr_reg_n_0_[2] ),
        .I3(pop),
        .I4(\raddr_reg_n_0_[3] ),
        .O(mem_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    mem_reg_i_6
       (.I0(\raddr_reg_n_0_[1] ),
        .I1(\raddr_reg_n_0_[0] ),
        .I2(pop),
        .I3(\raddr_reg_n_0_[2] ),
        .O(mem_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h7F77FF7780880088)) 
    mem_reg_i_7
       (.I0(\raddr_reg_n_0_[0] ),
        .I1(empty_n_reg_n_0),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(FIFO_O_1_empty_n),
        .I4(s_full_n),
        .I5(\raddr_reg_n_0_[1] ),
        .O(mem_reg_i_7_n_0));
  LUT5 #(
    .INIT(32'h65A5AAAA)) 
    mem_reg_i_8
       (.I0(\raddr_reg_n_0_[0] ),
        .I1(s_full_n),
        .I2(FIFO_O_1_empty_n),
        .I3(\ap_CS_fsm_reg[1] ),
        .I4(empty_n_reg_n_0),
        .O(mem_reg_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[0] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[0]),
        .Q(\q_tmp_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[10] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[10]),
        .Q(\q_tmp_reg_n_0_[10] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[11] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[11]),
        .Q(\q_tmp_reg_n_0_[11] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[12] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[12]),
        .Q(\q_tmp_reg_n_0_[12] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[13] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[13]),
        .Q(\q_tmp_reg_n_0_[13] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[14] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[14]),
        .Q(\q_tmp_reg_n_0_[14] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[15] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[15]),
        .Q(\q_tmp_reg_n_0_[15] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[16] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[16]),
        .Q(\q_tmp_reg_n_0_[16] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[17] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[17]),
        .Q(\q_tmp_reg_n_0_[17] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[18] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[18]),
        .Q(\q_tmp_reg_n_0_[18] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[19] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[19]),
        .Q(\q_tmp_reg_n_0_[19] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[1] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[1]),
        .Q(\q_tmp_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[20] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[20]),
        .Q(\q_tmp_reg_n_0_[20] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[21] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[21]),
        .Q(\q_tmp_reg_n_0_[21] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[22] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[22]),
        .Q(\q_tmp_reg_n_0_[22] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[23] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[23]),
        .Q(\q_tmp_reg_n_0_[23] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[24] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[24]),
        .Q(\q_tmp_reg_n_0_[24] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[25] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[25]),
        .Q(\q_tmp_reg_n_0_[25] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[26] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[26]),
        .Q(\q_tmp_reg_n_0_[26] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[27] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[27]),
        .Q(\q_tmp_reg_n_0_[27] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[28] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[28]),
        .Q(\q_tmp_reg_n_0_[28] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[29] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[29]),
        .Q(\q_tmp_reg_n_0_[29] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[2] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[2]),
        .Q(\q_tmp_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[30] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[30]),
        .Q(\q_tmp_reg_n_0_[30] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[31] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[31]),
        .Q(\q_tmp_reg_n_0_[31] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[3] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[3]),
        .Q(\q_tmp_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[4] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[4]),
        .Q(\q_tmp_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[5] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[5]),
        .Q(\q_tmp_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[6] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[6]),
        .Q(\q_tmp_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[7] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[7]),
        .Q(\q_tmp_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[8] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[8]),
        .Q(\q_tmp_reg_n_0_[8] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[9] 
       (.C(clk),
        .CE(WEBWE),
        .D(Q[9]),
        .Q(\q_tmp_reg_n_0_[9] ),
        .R(reset));
  LUT2 #(
    .INIT(4'h6)) 
    \raddr[1]_i_1 
       (.I0(\raddr_reg_n_0_[0] ),
        .I1(\raddr_reg_n_0_[1] ),
        .O(\raddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \raddr[2]_i_1 
       (.I0(\raddr_reg_n_0_[2] ),
        .I1(\raddr_reg_n_0_[1] ),
        .I2(\raddr_reg_n_0_[0] ),
        .O(\raddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \raddr[3]_i_1 
       (.I0(\raddr_reg_n_0_[3] ),
        .I1(\raddr_reg_n_0_[0] ),
        .I2(\raddr_reg_n_0_[1] ),
        .I3(\raddr_reg_n_0_[2] ),
        .O(\raddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \raddr[4]_i_1 
       (.I0(\raddr_reg_n_0_[4] ),
        .I1(\raddr_reg_n_0_[2] ),
        .I2(\raddr_reg_n_0_[3] ),
        .I3(\raddr_reg_n_0_[0] ),
        .I4(\raddr_reg_n_0_[1] ),
        .O(\raddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \raddr[5]_i_1 
       (.I0(\raddr_reg_n_0_[5] ),
        .I1(\raddr_reg_n_0_[1] ),
        .I2(\raddr_reg_n_0_[0] ),
        .I3(\raddr_reg_n_0_[3] ),
        .I4(\raddr_reg_n_0_[2] ),
        .I5(\raddr_reg_n_0_[4] ),
        .O(\raddr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_8_n_0),
        .Q(\raddr_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[1] 
       (.C(clk),
        .CE(pop),
        .D(\raddr[1]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[2] 
       (.C(clk),
        .CE(pop),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[3] 
       (.C(clk),
        .CE(pop),
        .D(\raddr[3]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[4] 
       (.C(clk),
        .CE(pop),
        .D(\raddr[4]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[5] 
       (.C(clk),
        .CE(pop),
        .D(\raddr[5]_i_1_n_0 ),
        .Q(\raddr_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_2_n_0),
        .Q(\raddr_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_reg_i_1_n_0),
        .Q(\raddr_reg_n_0_[7] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h0000D000)) 
    show_ahead_i_1
       (.I0(usedw_reg__0[0]),
        .I1(pop),
        .I2(\ap_CS_fsm_reg[6] ),
        .I3(FIFO_O_1_full_n),
        .I4(show_ahead_i_2__0_n_0),
        .O(show_ahead0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    show_ahead_i_2__0
       (.I0(usedw_reg__0[1]),
        .I1(usedw_reg__0[4]),
        .I2(usedw_reg__0[3]),
        .I3(show_ahead_i_3__0_n_0),
        .O(show_ahead_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    show_ahead_i_3__0
       (.I0(usedw_reg__0[7]),
        .I1(usedw_reg__0[6]),
        .I2(usedw_reg__0[5]),
        .I3(usedw_reg__0[2]),
        .O(show_ahead_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    show_ahead_reg
       (.C(clk),
        .CE(1'b1),
        .D(show_ahead0),
        .Q(show_ahead_reg_n_0),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[0]_i_1 
       (.I0(usedw_reg__0[0]),
        .O(\usedw[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800880088888888)) 
    \usedw[4]_i_2 
       (.I0(FIFO_O_1_full_n),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(s_full_n),
        .I3(FIFO_O_1_empty_n),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(empty_n_reg_n_0),
        .O(usedw14_out));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[4]_i_3__0 
       (.I0(usedw_reg__0[3]),
        .I1(usedw_reg__0[4]),
        .O(\usedw[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[4]_i_4__0 
       (.I0(usedw_reg__0[2]),
        .I1(usedw_reg__0[3]),
        .O(\usedw[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[4]_i_5__0 
       (.I0(usedw_reg__0[1]),
        .I1(usedw_reg__0[2]),
        .O(\usedw[4]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h6555)) 
    \usedw[4]_i_6 
       (.I0(usedw_reg__0[1]),
        .I1(pop),
        .I2(\ap_CS_fsm_reg[6] ),
        .I3(FIFO_O_1_full_n),
        .O(\usedw[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_2__0 
       (.I0(usedw_reg__0[6]),
        .I1(usedw_reg__0[7]),
        .O(\usedw[7]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_3__0 
       (.I0(usedw_reg__0[5]),
        .I1(usedw_reg__0[6]),
        .O(\usedw[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_4__0 
       (.I0(usedw_reg__0[4]),
        .I1(usedw_reg__0[5]),
        .O(\usedw[7]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[0] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw[0]_i_1_n_0 ),
        .Q(usedw_reg__0[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[1] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[4]_i_1__0_n_7 ),
        .Q(usedw_reg__0[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[2] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[4]_i_1__0_n_6 ),
        .Q(usedw_reg__0[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[3] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[4]_i_1__0_n_5 ),
        .Q(usedw_reg__0[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[4] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[4]_i_1__0_n_4 ),
        .Q(usedw_reg__0[4]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \usedw_reg[4]_i_1__0 
       (.CI(1'b0),
        .CO({\usedw_reg[4]_i_1__0_n_0 ,\usedw_reg[4]_i_1__0_n_1 ,\usedw_reg[4]_i_1__0_n_2 ,\usedw_reg[4]_i_1__0_n_3 }),
        .CYINIT(usedw_reg__0[0]),
        .DI({usedw_reg__0[3:1],usedw14_out}),
        .O({\usedw_reg[4]_i_1__0_n_4 ,\usedw_reg[4]_i_1__0_n_5 ,\usedw_reg[4]_i_1__0_n_6 ,\usedw_reg[4]_i_1__0_n_7 }),
        .S({\usedw[4]_i_3__0_n_0 ,\usedw[4]_i_4__0_n_0 ,\usedw[4]_i_5__0_n_0 ,\usedw[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[5] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[7]_i_1__0_n_7 ),
        .Q(usedw_reg__0[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[6] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[7]_i_1__0_n_6 ),
        .Q(usedw_reg__0[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[7] 
       (.C(clk),
        .CE(empty_n),
        .D(\usedw_reg[7]_i_1__0_n_5 ),
        .Q(usedw_reg__0[7]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \usedw_reg[7]_i_1__0 
       (.CI(\usedw_reg[4]_i_1__0_n_0 ),
        .CO({\NLW_usedw_reg[7]_i_1__0_CO_UNCONNECTED [3:2],\usedw_reg[7]_i_1__0_n_2 ,\usedw_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,usedw_reg__0[5:4]}),
        .O({\NLW_usedw_reg[7]_i_1__0_O_UNCONNECTED [3],\usedw_reg[7]_i_1__0_n_5 ,\usedw_reg[7]_i_1__0_n_6 ,\usedw_reg[7]_i_1__0_n_7 }),
        .S({1'b0,\usedw[7]_i_2__0_n_0 ,\usedw[7]_i_3__0_n_0 ,\usedw[7]_i_4__0_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1__0 
       (.I0(waddr[0]),
        .O(wnext[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[1]_i_1__0 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .O(wnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \waddr[2]_i_1__0 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .O(wnext[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \waddr[3]_i_1__0 
       (.I0(waddr[3]),
        .I1(waddr[0]),
        .I2(waddr[1]),
        .I3(waddr[2]),
        .O(wnext[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \waddr[4]_i_1__0 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[1]),
        .I3(waddr[0]),
        .I4(waddr[3]),
        .O(wnext[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \waddr[5]_i_1__0 
       (.I0(waddr[5]),
        .I1(waddr[3]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[2]),
        .I5(waddr[4]),
        .O(wnext[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \waddr[6]_i_1__0 
       (.I0(waddr[7]),
        .I1(\waddr[7]_i_2__0_n_0 ),
        .I2(waddr[6]),
        .O(wnext[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \waddr[7]_i_1__0 
       (.I0(waddr[7]),
        .I1(waddr[6]),
        .I2(\waddr[7]_i_2__0_n_0 ),
        .O(wnext[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \waddr[7]_i_2__0 
       (.I0(waddr[5]),
        .I1(waddr[4]),
        .I2(waddr[2]),
        .I3(waddr[1]),
        .I4(waddr[0]),
        .I5(waddr[3]),
        .O(\waddr[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[0] 
       (.C(clk),
        .CE(WEBWE),
        .D(wnext[0]),
        .Q(waddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(clk),
        .CE(WEBWE),
        .D(wnext[1]),
        .Q(waddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(clk),
        .CE(WEBWE),
        .D(wnext[2]),
        .Q(waddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(clk),
        .CE(WEBWE),
        .D(wnext[3]),
        .Q(waddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(clk),
        .CE(WEBWE),
        .D(wnext[4]),
        .Q(waddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(clk),
        .CE(WEBWE),
        .D(wnext[5]),
        .Q(waddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(clk),
        .CE(WEBWE),
        .D(wnext[6]),
        .Q(waddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(clk),
        .CE(WEBWE),
        .D(wnext[7]),
        .Q(waddr[7]),
        .R(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper
   (clk,
    reset,
    e_dout,
    e_empty_n,
    e_read,
    s_din,
    s_full_n,
    s_write);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000" *) input clk;
  input reset;
  input [7:0]e_dout;
  input e_empty_n;
  output e_read;
  output [7:0]s_din;
  input s_full_n;
  output s_write;

  wire FIFO_I_1_empty_n;
  wire FIFO_I_1_full_n;
  wire FIFO_O_1_empty_n;
  wire FIFO_O_1_fifo_U_n_10;
  wire FIFO_O_1_fifo_U_n_11;
  wire FIFO_O_1_fifo_U_n_12;
  wire FIFO_O_1_fifo_U_n_13;
  wire FIFO_O_1_fifo_U_n_14;
  wire FIFO_O_1_fifo_U_n_15;
  wire FIFO_O_1_fifo_U_n_16;
  wire FIFO_O_1_fifo_U_n_17;
  wire FIFO_O_1_fifo_U_n_2;
  wire FIFO_O_1_fifo_U_n_26;
  wire FIFO_O_1_fifo_U_n_27;
  wire FIFO_O_1_fifo_U_n_28;
  wire FIFO_O_1_fifo_U_n_29;
  wire FIFO_O_1_fifo_U_n_3;
  wire FIFO_O_1_fifo_U_n_30;
  wire FIFO_O_1_fifo_U_n_31;
  wire FIFO_O_1_fifo_U_n_32;
  wire FIFO_O_1_fifo_U_n_33;
  wire FIFO_O_1_fifo_U_n_4;
  wire FIFO_O_1_fifo_U_n_5;
  wire FIFO_O_1_fifo_U_n_6;
  wire FIFO_O_1_fifo_U_n_7;
  wire FIFO_O_1_fifo_U_n_8;
  wire FIFO_O_1_fifo_U_n_9;
  wire FIFO_O_1_full_n;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire clk;
  wire [30:0]dout_buf;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire \grp_carre_do_carre_fu_58/ap_CS_fsm_state2 ;
  wire \grp_carre_do_carre_fu_58/ap_CS_fsm_state7 ;
  wire grp_carre_fu_90_e_read;
  wire [31:0]grp_carre_fu_90_s_din;
  wire [23:0]grp_uart_wrapper_do_action1_fu_132_FIFO_I_1_din;
  wire [7:0]p_0_in;
  wire push;
  wire push_0;
  wire reset;
  wire [7:0]s_din;
  wire s_full_n;
  wire s_write;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d192_A FIFO_I_1_fifo_U
       (.D({e_dout[6:0],grp_uart_wrapper_do_action1_fu_132_FIFO_I_1_din}),
        .E(grp_carre_fu_90_e_read),
        .FIFO_I_1_empty_n(FIFO_I_1_empty_n),
        .FIFO_I_1_full_n(FIFO_I_1_full_n),
        .Q(\grp_carre_do_carre_fu_58/ap_CS_fsm_state2 ),
        .\ap_CS_fsm_reg[4] (ap_CS_fsm_state5),
        .clk(clk),
        .e_dout(e_dout[7]),
        .e_empty_n(e_empty_n),
        .push(push_0),
        .reset(reset),
        .\val_reg_80_reg[30] (dout_buf));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d192_A_0 FIFO_O_1_fifo_U
       (.FIFO_O_1_empty_n(FIFO_O_1_empty_n),
        .FIFO_O_1_full_n(FIFO_O_1_full_n),
        .Q(grp_carre_fu_90_s_din),
        .WEBWE(push),
        .\ap_CS_fsm_reg[1] (ap_CS_fsm_state2),
        .\ap_CS_fsm_reg[6] (\grp_carre_do_carre_fu_58/ap_CS_fsm_state7 ),
        .clk(clk),
        .reset(reset),
        .s_full_n(s_full_n),
        .\tmp_7_reg_142_reg[7] ({FIFO_O_1_fifo_U_n_2,FIFO_O_1_fifo_U_n_3,FIFO_O_1_fifo_U_n_4,FIFO_O_1_fifo_U_n_5,FIFO_O_1_fifo_U_n_6,FIFO_O_1_fifo_U_n_7,FIFO_O_1_fifo_U_n_8,FIFO_O_1_fifo_U_n_9,FIFO_O_1_fifo_U_n_10,FIFO_O_1_fifo_U_n_11,FIFO_O_1_fifo_U_n_12,FIFO_O_1_fifo_U_n_13,FIFO_O_1_fifo_U_n_14,FIFO_O_1_fifo_U_n_15,FIFO_O_1_fifo_U_n_16,FIFO_O_1_fifo_U_n_17,p_0_in,FIFO_O_1_fifo_U_n_26,FIFO_O_1_fifo_U_n_27,FIFO_O_1_fifo_U_n_28,FIFO_O_1_fifo_U_n_29,FIFO_O_1_fifo_U_n_30,FIFO_O_1_fifo_U_n_31,FIFO_O_1_fifo_U_n_32,FIFO_O_1_fifo_U_n_33}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre grp_carre_fu_90
       (.D(dout_buf),
        .E(grp_carre_fu_90_e_read),
        .FIFO_I_1_empty_n(FIFO_I_1_empty_n),
        .FIFO_O_1_full_n(FIFO_O_1_full_n),
        .Q({\grp_carre_do_carre_fu_58/ap_CS_fsm_state7 ,\grp_carre_do_carre_fu_58/ap_CS_fsm_state2 }),
        .WEBWE(push),
        .clk(clk),
        .\q_tmp_reg[31] (grp_carre_fu_90_s_din),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper_do_action1 grp_uart_wrapper_do_action1_fu_132
       (.D(grp_uart_wrapper_do_action1_fu_132_FIFO_I_1_din),
        .FIFO_I_1_full_n(FIFO_I_1_full_n),
        .Q(ap_CS_fsm_state5),
        .clk(clk),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .push(push_0),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper_do_action2 grp_uart_wrapper_do_action2_fu_106
       (.FIFO_O_1_empty_n(FIFO_O_1_empty_n),
        .Q(ap_CS_fsm_state2),
        .clk(clk),
        .\dout_buf_reg[31] ({FIFO_O_1_fifo_U_n_2,FIFO_O_1_fifo_U_n_3,FIFO_O_1_fifo_U_n_4,FIFO_O_1_fifo_U_n_5,FIFO_O_1_fifo_U_n_6,FIFO_O_1_fifo_U_n_7,FIFO_O_1_fifo_U_n_8,FIFO_O_1_fifo_U_n_9,FIFO_O_1_fifo_U_n_10,FIFO_O_1_fifo_U_n_11,FIFO_O_1_fifo_U_n_12,FIFO_O_1_fifo_U_n_13,FIFO_O_1_fifo_U_n_14,FIFO_O_1_fifo_U_n_15,FIFO_O_1_fifo_U_n_16,FIFO_O_1_fifo_U_n_17,p_0_in,FIFO_O_1_fifo_U_n_26,FIFO_O_1_fifo_U_n_27,FIFO_O_1_fifo_U_n_28,FIFO_O_1_fifo_U_n_29,FIFO_O_1_fifo_U_n_30,FIFO_O_1_fifo_U_n_31,FIFO_O_1_fifo_U_n_32,FIFO_O_1_fifo_U_n_33}),
        .reset(reset),
        .s_din(s_din),
        .s_full_n(s_full_n),
        .s_write(s_write));
endmodule

(* CHECK_LICENSE_TYPE = "uart_wrapper_0,uart_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "uart_wrapper,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    e_dout,
    e_empty_n,
    e_read,
    s_din,
    s_full_n,
    s_write);
  input clk;
  input reset;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 e RD_DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME e, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input [7:0]e_dout;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 e EMPTY_N" *) input e_empty_n;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 e RD_EN" *) output e_read;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 s WR_DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [7:0]s_din;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 s FULL_N" *) input s_full_n;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 s WR_EN" *) output s_write;

  wire clk;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire reset;
  wire [7:0]s_din;
  wire s_full_n;
  wire s_write;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper U0
       (.clk(clk),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .reset(reset),
        .s_din(s_din),
        .s_full_n(s_full_n),
        .s_write(s_write));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper_ap_fmul_2_max_dsp_32
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
  (* C_XDEVICEFAMILY = "virtex7" *) 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper_do_action1
   (e_read,
    Q,
    push,
    D,
    FIFO_I_1_full_n,
    e_empty_n,
    e_dout,
    clk,
    reset);
  output e_read;
  output [0:0]Q;
  output push;
  output [23:0]D;
  input FIFO_I_1_full_n;
  input e_empty_n;
  input [7:0]e_dout;
  input clk;
  input reset;

  wire [23:0]D;
  wire FIFO_I_1_full_n;
  wire [0:0]Q;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [4:1]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm10_out;
  wire ap_NS_fsm11_out;
  wire clk;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire push;
  wire reset;

  LUT4 #(
    .INIT(16'h8F80)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(FIFO_I_1_full_n),
        .I1(Q),
        .I2(e_empty_n),
        .I3(ap_CS_fsm_state2),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hAAAB0101)) 
    \ap_CS_fsm[2]_i_1__1 
       (.I0(ap_CS_fsm_state2),
        .I1(Q),
        .I2(ap_CS_fsm_state4),
        .I3(ap_CS_fsm_state3),
        .I4(e_empty_n),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(ap_CS_fsm_state3),
        .I1(e_empty_n),
        .I2(ap_CS_fsm_state4),
        .O(ap_NS_fsm[3]));
  LUT4 #(
    .INIT(16'hBF88)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(e_empty_n),
        .I2(FIFO_I_1_full_n),
        .I3(Q),
        .O(ap_NS_fsm[4]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(Q),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFF0000FFF80000)) 
    e_read_INST_0
       (.I0(FIFO_I_1_full_n),
        .I1(Q),
        .I2(ap_CS_fsm_state2),
        .I3(ap_CS_fsm_state3),
        .I4(e_empty_n),
        .I5(ap_CS_fsm_state4),
        .O(e_read));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_9__0
       (.I0(Q),
        .I1(FIFO_I_1_full_n),
        .I2(e_empty_n),
        .O(push));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_4_reg_100[7]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state3),
        .O(ap_NS_fsm10_out));
  FDRE \tmp_4_reg_100_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[0]),
        .Q(D[8]),
        .R(1'b0));
  FDRE \tmp_4_reg_100_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[1]),
        .Q(D[9]),
        .R(1'b0));
  FDRE \tmp_4_reg_100_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[2]),
        .Q(D[10]),
        .R(1'b0));
  FDRE \tmp_4_reg_100_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[3]),
        .Q(D[11]),
        .R(1'b0));
  FDRE \tmp_4_reg_100_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[4]),
        .Q(D[12]),
        .R(1'b0));
  FDRE \tmp_4_reg_100_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[5]),
        .Q(D[13]),
        .R(1'b0));
  FDRE \tmp_4_reg_100_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[6]),
        .Q(D[14]),
        .R(1'b0));
  FDRE \tmp_4_reg_100_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[7]),
        .Q(D[15]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_6_reg_105[7]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state4),
        .O(ap_NS_fsm11_out));
  FDRE \tmp_6_reg_105_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[0]),
        .Q(D[16]),
        .R(1'b0));
  FDRE \tmp_6_reg_105_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[1]),
        .Q(D[17]),
        .R(1'b0));
  FDRE \tmp_6_reg_105_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[2]),
        .Q(D[18]),
        .R(1'b0));
  FDRE \tmp_6_reg_105_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[3]),
        .Q(D[19]),
        .R(1'b0));
  FDRE \tmp_6_reg_105_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[4]),
        .Q(D[20]),
        .R(1'b0));
  FDRE \tmp_6_reg_105_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[5]),
        .Q(D[21]),
        .R(1'b0));
  FDRE \tmp_6_reg_105_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[6]),
        .Q(D[22]),
        .R(1'b0));
  FDRE \tmp_6_reg_105_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[7]),
        .Q(D[23]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg_95[7]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state2),
        .O(ap_NS_fsm1));
  FDRE \tmp_reg_95_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \tmp_reg_95_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \tmp_reg_95_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE \tmp_reg_95_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE \tmp_reg_95_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE \tmp_reg_95_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE \tmp_reg_95_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE \tmp_reg_95_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[7]),
        .Q(D[7]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper_do_action2
   (Q,
    s_write,
    s_din,
    s_full_n,
    FIFO_O_1_empty_n,
    \dout_buf_reg[31] ,
    reset,
    clk);
  output [0:0]Q;
  output s_write;
  output [7:0]s_din;
  input s_full_n;
  input FIFO_O_1_empty_n;
  input [31:0]\dout_buf_reg[31] ;
  input reset;
  input clk;

  wire FIFO_O_1_empty_n;
  wire [0:0]Q;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire [4:1]ap_NS_fsm;
  wire clk;
  wire [31:0]\dout_buf_reg[31] ;
  wire grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read;
  wire reset;
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
  wire [7:0]tmp_3_reg_132;
  wire [7:0]tmp_5_reg_137;
  wire [7:0]tmp_7_reg_142;

  LUT4 #(
    .INIT(16'hBF88)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(ap_CS_fsm_state5),
        .I1(s_full_n),
        .I2(FIFO_O_1_empty_n),
        .I3(Q),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h8800880088008B33)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(FIFO_O_1_empty_n),
        .I1(Q),
        .I2(ap_CS_fsm_state3),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state5),
        .I5(ap_CS_fsm_state4),
        .O(ap_NS_fsm[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state4),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_CS_fsm[4]_i_1__0 
       (.I0(ap_CS_fsm_state4),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .O(ap_NS_fsm[4]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(reset));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[0]_INST_0 
       (.I0(tmp_7_reg_142[0]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[0]_INST_0_i_1_n_0 ),
        .O(s_din[0]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[0]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [0]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_132[0]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_137[0]),
        .O(\s_din[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[1]_INST_0 
       (.I0(tmp_7_reg_142[1]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[1]_INST_0_i_1_n_0 ),
        .O(s_din[1]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[1]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [1]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_132[1]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_137[1]),
        .O(\s_din[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[2]_INST_0 
       (.I0(tmp_7_reg_142[2]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[2]_INST_0_i_1_n_0 ),
        .O(s_din[2]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[2]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [2]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_132[2]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_137[2]),
        .O(\s_din[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[3]_INST_0 
       (.I0(tmp_7_reg_142[3]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[3]_INST_0_i_1_n_0 ),
        .O(s_din[3]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[3]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [3]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_132[3]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_137[3]),
        .O(\s_din[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[4]_INST_0 
       (.I0(tmp_7_reg_142[4]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[4]_INST_0_i_1_n_0 ),
        .O(s_din[4]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[4]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [4]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_132[4]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_137[4]),
        .O(\s_din[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[5]_INST_0 
       (.I0(tmp_7_reg_142[5]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[5]_INST_0_i_1_n_0 ),
        .O(s_din[5]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[5]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [5]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_132[5]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_137[5]),
        .O(\s_din[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[6]_INST_0 
       (.I0(tmp_7_reg_142[6]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[6]_INST_0_i_1_n_0 ),
        .O(s_din[6]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[6]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [6]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_132[6]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_137[6]),
        .O(\s_din[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[7]_INST_0 
       (.I0(tmp_7_reg_142[7]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[7]_INST_0_i_1_n_0 ),
        .O(s_din[7]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[7]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [7]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_132[7]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_137[7]),
        .O(\s_din[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F080)) 
    s_write_INST_0
       (.I0(FIFO_O_1_empty_n),
        .I1(Q),
        .I2(s_full_n),
        .I3(ap_CS_fsm_state3),
        .I4(ap_CS_fsm_state5),
        .I5(ap_CS_fsm_state4),
        .O(s_write));
  LUT3 #(
    .INIT(8'h80)) 
    \tmp_3_reg_132[7]_i_1 
       (.I0(Q),
        .I1(FIFO_O_1_empty_n),
        .I2(s_full_n),
        .O(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read));
  FDRE \tmp_3_reg_132_reg[0] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [8]),
        .Q(tmp_3_reg_132[0]),
        .R(1'b0));
  FDRE \tmp_3_reg_132_reg[1] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [9]),
        .Q(tmp_3_reg_132[1]),
        .R(1'b0));
  FDRE \tmp_3_reg_132_reg[2] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [10]),
        .Q(tmp_3_reg_132[2]),
        .R(1'b0));
  FDRE \tmp_3_reg_132_reg[3] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [11]),
        .Q(tmp_3_reg_132[3]),
        .R(1'b0));
  FDRE \tmp_3_reg_132_reg[4] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [12]),
        .Q(tmp_3_reg_132[4]),
        .R(1'b0));
  FDRE \tmp_3_reg_132_reg[5] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [13]),
        .Q(tmp_3_reg_132[5]),
        .R(1'b0));
  FDRE \tmp_3_reg_132_reg[6] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [14]),
        .Q(tmp_3_reg_132[6]),
        .R(1'b0));
  FDRE \tmp_3_reg_132_reg[7] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [15]),
        .Q(tmp_3_reg_132[7]),
        .R(1'b0));
  FDRE \tmp_5_reg_137_reg[0] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [16]),
        .Q(tmp_5_reg_137[0]),
        .R(1'b0));
  FDRE \tmp_5_reg_137_reg[1] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [17]),
        .Q(tmp_5_reg_137[1]),
        .R(1'b0));
  FDRE \tmp_5_reg_137_reg[2] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [18]),
        .Q(tmp_5_reg_137[2]),
        .R(1'b0));
  FDRE \tmp_5_reg_137_reg[3] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [19]),
        .Q(tmp_5_reg_137[3]),
        .R(1'b0));
  FDRE \tmp_5_reg_137_reg[4] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [20]),
        .Q(tmp_5_reg_137[4]),
        .R(1'b0));
  FDRE \tmp_5_reg_137_reg[5] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [21]),
        .Q(tmp_5_reg_137[5]),
        .R(1'b0));
  FDRE \tmp_5_reg_137_reg[6] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [22]),
        .Q(tmp_5_reg_137[6]),
        .R(1'b0));
  FDRE \tmp_5_reg_137_reg[7] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [23]),
        .Q(tmp_5_reg_137[7]),
        .R(1'b0));
  FDRE \tmp_7_reg_142_reg[0] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [24]),
        .Q(tmp_7_reg_142[0]),
        .R(1'b0));
  FDRE \tmp_7_reg_142_reg[1] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [25]),
        .Q(tmp_7_reg_142[1]),
        .R(1'b0));
  FDRE \tmp_7_reg_142_reg[2] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [26]),
        .Q(tmp_7_reg_142[2]),
        .R(1'b0));
  FDRE \tmp_7_reg_142_reg[3] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [27]),
        .Q(tmp_7_reg_142[3]),
        .R(1'b0));
  FDRE \tmp_7_reg_142_reg[4] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [28]),
        .Q(tmp_7_reg_142[4]),
        .R(1'b0));
  FDRE \tmp_7_reg_142_reg[5] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [29]),
        .Q(tmp_7_reg_142[5]),
        .R(1'b0));
  FDRE \tmp_7_reg_142_reg[6] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [30]),
        .Q(tmp_7_reg_142[6]),
        .R(1'b0));
  FDRE \tmp_7_reg_142_reg[7] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_106_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [31]),
        .Q(tmp_7_reg_142[7]),
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
(* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
  (* C_XDEVICEFAMILY = "virtex7" *) 
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
IPLsh5R6TfYMkFxAXr98nVPojQ1GBAZsZNMdlTz3xiJL3IHPtg0Txz4vym+lxiBaLlom+u/1XjmQ
TeZmYSyKiO4SbUHNPFth+qMP7Vb6LL5Htu96qrhJH8TTEMmskTidyCHMIVpFS8cE1uzqJsXensn8
wfHnVMO0oeidFsaT51J6zc35W6bR2sf8PcwIn9AaClBl6hSrUADU6PMSdBp9DZJvm+8D8rsuawhc
8h9UjjgIWkNd12rXNV8IS5YK03/TIdIMYcZGIOKsnJ2BdflYJccZrMUmfxxPwJU1ERkKV4p0r+FP
bL3NjWZj5YQKz28+BJTTiI6XmTeMdzSi20Jfdg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V5C216730InsfQCSFQl3h2x30v1g50hcy+gCbB0DY/woU2gD34wJwB4XlZg4jC2wjjUfuwuc34OS
rZ01hs3LUDKdQyg4GUXoeoezi16WRSDIkj8MvrKfs1xSn+a/8QN52GQfcy+UnL94AHovkl13GRcu
E7x7GKHbhxNvJIed4Ulhj7s8CCR26larKUWU0YG6TzRYQS3pX1IBld93YQ5kCWYisPSzXx/9oWRo
/Z8vyLPY0+hIaGsdnMo9IyojbiwSOsPVdwdb2tnIxsuvGcCxObgb4LniRk+2V/EbPlxvaSSBccdO
gYlaZIisqWRkdBwjWAisLUx2udjblbcrEH/Ezw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 81008)
`pragma protect data_block
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
CwzCOGcPeJk6V2g=
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
