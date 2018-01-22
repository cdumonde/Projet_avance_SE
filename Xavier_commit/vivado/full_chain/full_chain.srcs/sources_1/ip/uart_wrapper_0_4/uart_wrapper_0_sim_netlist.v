// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Thu Jan 18 11:18:44 2018
// Host        : XAVIERMARINB4D2 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top uart_wrapper_0 -prefix
//               uart_wrapper_0_ uart_wrapper_0_sim_netlist.v
// Design      : uart_wrapper_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_wrapper_0_carre
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

  uart_wrapper_0_carre_do_carre grp_carre_do_carre_fu_58
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

module uart_wrapper_0_carre_do_carre
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
  uart_wrapper_0_carre_fmul_32ns_3bkb carre_fmul_32ns_3bkb_U1
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

module uart_wrapper_0_carre_fmul_32ns_3bkb
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
  uart_wrapper_0_uart_wrapper_ap_fmul_2_max_dsp_32 uart_wrapper_ap_fmul_2_max_dsp_32_u
       (.D(D),
        .Q(din1_buf1),
        .clk(clk));
endmodule

module uart_wrapper_0_fifo_w32_d192_A
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
module uart_wrapper_0_fifo_w32_d192_A_0
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

module uart_wrapper_0_uart_wrapper
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

  uart_wrapper_0_fifo_w32_d192_A FIFO_I_1_fifo_U
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
  uart_wrapper_0_fifo_w32_d192_A_0 FIFO_O_1_fifo_U
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
  uart_wrapper_0_carre grp_carre_fu_90
       (.D(dout_buf),
        .E(grp_carre_fu_90_e_read),
        .FIFO_I_1_empty_n(FIFO_I_1_empty_n),
        .FIFO_O_1_full_n(FIFO_O_1_full_n),
        .Q({\grp_carre_do_carre_fu_58/ap_CS_fsm_state7 ,\grp_carre_do_carre_fu_58/ap_CS_fsm_state2 }),
        .WEBWE(push),
        .clk(clk),
        .\q_tmp_reg[31] (grp_carre_fu_90_s_din),
        .reset(reset));
  uart_wrapper_0_uart_wrapper_do_action1 grp_uart_wrapper_do_action1_fu_132
       (.D(grp_uart_wrapper_do_action1_fu_132_FIFO_I_1_din),
        .FIFO_I_1_full_n(FIFO_I_1_full_n),
        .Q(ap_CS_fsm_state5),
        .clk(clk),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .push(push_0),
        .reset(reset));
  uart_wrapper_0_uart_wrapper_do_action2 grp_uart_wrapper_do_action2_fu_106
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
module uart_wrapper_0
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

  uart_wrapper_0_uart_wrapper U0
       (.clk(clk),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .reset(reset),
        .s_din(s_din),
        .s_full_n(s_full_n),
        .s_write(s_write));
endmodule

module uart_wrapper_0_uart_wrapper_ap_fmul_2_max_dsp_32
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
  uart_wrapper_0_floating_point_v7_1_5 U0
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

module uart_wrapper_0_uart_wrapper_do_action1
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

module uart_wrapper_0_uart_wrapper_do_action2
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
module uart_wrapper_0_floating_point_v7_1_5
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
  uart_wrapper_0_floating_point_v7_1_5_viv i_synth
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
JZeD9IXzNqcjDp7Y2og=
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
