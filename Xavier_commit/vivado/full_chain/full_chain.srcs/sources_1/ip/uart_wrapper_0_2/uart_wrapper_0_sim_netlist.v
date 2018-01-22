// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Thu Jan 18 11:18:46 2018
// Host        : XAVIERMARINB4D2 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               y:/Documents/MesDocuments/Cours_nsave/Enseirb-E3_nsave/pr310/git/Xavier_commit/vivado/full_chain/full_chain.srcs/sources_1/ip/uart_wrapper_0_2/uart_wrapper_0_sim_netlist.v
// Design      : uart_wrapper_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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

(* ORIG_REF_NAME = "carre" *) 
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

(* ORIG_REF_NAME = "carre_do_carre" *) 
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

(* ORIG_REF_NAME = "carre_fmul_32ns_3bkb" *) 
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

(* ORIG_REF_NAME = "fifo_w32_d192_A" *) 
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

(* ORIG_REF_NAME = "uart_wrapper" *) 
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

(* ORIG_REF_NAME = "uart_wrapper_ap_fmul_2_max_dsp_32" *) 
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

(* ORIG_REF_NAME = "uart_wrapper_do_action1" *) 
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

(* ORIG_REF_NAME = "uart_wrapper_do_action2" *) 
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
(* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "floating_point_v7_1_5" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
BP19Oii4yUA849mdVAHQ4yZKqHGx5Dj7nAtuXhGlRF7zD5dJj7JPPBZQeQDpWnEypmCvf85U4cxE
aNycSPJ/HKE3VP36HiKkatYX+qpo6YsGtK3VMVdnD94YCKeRf4GNloXMgW1T0QMSDpUUSfe82kdo
WW08vMEGVsR3iIAw6ae3AGTp9HGwS2FGG49mWMFmk1KoTEHoEOVXz5A7A4xQfb53WEtrZiz3xYGK
+o9n36NboAiuA1WMVY4qs2LCh3tsD/6To7MkYkRV935Dw/TOe4sQTZVAfbfgYRGFpTK8+XyveBj8
pgcfvNV18G2XDzG1jO6JJ7M71I0QgtuSdWxDUA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UCBs9YL6W71maC09w1zoNZsN+oW+Ssz2CASAK327frsROQHO2k9ejOsO/KZNyhx31HPYQ3QGnxwu
/1JLbxsUO2ZPUJU9z9watVV2F6f2nuQ1viZASVmowxMzqaZuKdg88w6U0ZoOvIVkEabehGRZFuJr
iclemWtf+WxEWSxj5TTrt5qvi2IOSAXGf5JKe7QoebQyd7DJSgonITDs1WbX8PMdAijN2kwRgg9y
7ZzC3mUwV0UdujZ8+yZggjolQKAxV18JiTjV4xGtP85Wd36vzqLzxUsoK36gJ6g7JJ0OzFVnpZfL
L8nEZAKZiEiGMiXACZNnWM+c8QvmctX0tUuzgg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 80000)
`pragma protect data_block
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
e+zh0PzE3P6Qon/Oa3WgLtIRpEd9Rv3ee1AQbgY=
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
