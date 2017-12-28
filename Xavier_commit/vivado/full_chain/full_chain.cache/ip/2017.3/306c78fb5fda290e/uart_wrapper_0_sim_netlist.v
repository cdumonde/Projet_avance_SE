// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Dec 15 09:35:37 2017
// Host        : DESKTOP-RAH54SO running 64-bit major release  (build 9200)
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
  wire [31:0]\q_tmp_reg[31] ;
  wire [31:0]r_tdata;
  wire reset;
  wire [30:0]val_reg_71;

  LUT4 #(
    .INIT(16'h88F8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q[1]),
        .I1(FIFO_O_1_full_n),
        .I2(Q[0]),
        .I3(FIFO_I_1_empty_n),
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
       (.D(r_tdata),
        .Q(val_reg_71),
        .clk(clk));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_9
       (.I0(Q[1]),
        .I1(FIFO_O_1_full_n),
        .O(WEBWE));
  FDRE \val_reg_71_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(val_reg_71[0]),
        .R(1'b0));
  FDRE \val_reg_71_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(val_reg_71[10]),
        .R(1'b0));
  FDRE \val_reg_71_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(val_reg_71[11]),
        .R(1'b0));
  FDRE \val_reg_71_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(val_reg_71[12]),
        .R(1'b0));
  FDRE \val_reg_71_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(val_reg_71[13]),
        .R(1'b0));
  FDRE \val_reg_71_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(val_reg_71[14]),
        .R(1'b0));
  FDRE \val_reg_71_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(val_reg_71[15]),
        .R(1'b0));
  FDRE \val_reg_71_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(val_reg_71[16]),
        .R(1'b0));
  FDRE \val_reg_71_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(val_reg_71[17]),
        .R(1'b0));
  FDRE \val_reg_71_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(val_reg_71[18]),
        .R(1'b0));
  FDRE \val_reg_71_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(val_reg_71[19]),
        .R(1'b0));
  FDRE \val_reg_71_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(val_reg_71[1]),
        .R(1'b0));
  FDRE \val_reg_71_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(val_reg_71[20]),
        .R(1'b0));
  FDRE \val_reg_71_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(val_reg_71[21]),
        .R(1'b0));
  FDRE \val_reg_71_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(val_reg_71[22]),
        .R(1'b0));
  FDRE \val_reg_71_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(val_reg_71[23]),
        .R(1'b0));
  FDRE \val_reg_71_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(val_reg_71[24]),
        .R(1'b0));
  FDRE \val_reg_71_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(val_reg_71[25]),
        .R(1'b0));
  FDRE \val_reg_71_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(val_reg_71[26]),
        .R(1'b0));
  FDRE \val_reg_71_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(val_reg_71[27]),
        .R(1'b0));
  FDRE \val_reg_71_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(val_reg_71[28]),
        .R(1'b0));
  FDRE \val_reg_71_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(val_reg_71[29]),
        .R(1'b0));
  FDRE \val_reg_71_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(val_reg_71[2]),
        .R(1'b0));
  FDRE \val_reg_71_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(val_reg_71[30]),
        .R(1'b0));
  FDRE \val_reg_71_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(val_reg_71[3]),
        .R(1'b0));
  FDRE \val_reg_71_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(val_reg_71[4]),
        .R(1'b0));
  FDRE \val_reg_71_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(val_reg_71[5]),
        .R(1'b0));
  FDRE \val_reg_71_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(val_reg_71[6]),
        .R(1'b0));
  FDRE \val_reg_71_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(val_reg_71[7]),
        .R(1'b0));
  FDRE \val_reg_71_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(val_reg_71[8]),
        .R(1'b0));
  FDRE \val_reg_71_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(val_reg_71[9]),
        .R(1'b0));
  FDRE \y_reg_77_reg[0] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[0]),
        .Q(\q_tmp_reg[31] [0]),
        .R(1'b0));
  FDRE \y_reg_77_reg[10] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[10]),
        .Q(\q_tmp_reg[31] [10]),
        .R(1'b0));
  FDRE \y_reg_77_reg[11] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[11]),
        .Q(\q_tmp_reg[31] [11]),
        .R(1'b0));
  FDRE \y_reg_77_reg[12] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[12]),
        .Q(\q_tmp_reg[31] [12]),
        .R(1'b0));
  FDRE \y_reg_77_reg[13] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[13]),
        .Q(\q_tmp_reg[31] [13]),
        .R(1'b0));
  FDRE \y_reg_77_reg[14] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[14]),
        .Q(\q_tmp_reg[31] [14]),
        .R(1'b0));
  FDRE \y_reg_77_reg[15] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[15]),
        .Q(\q_tmp_reg[31] [15]),
        .R(1'b0));
  FDRE \y_reg_77_reg[16] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[16]),
        .Q(\q_tmp_reg[31] [16]),
        .R(1'b0));
  FDRE \y_reg_77_reg[17] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[17]),
        .Q(\q_tmp_reg[31] [17]),
        .R(1'b0));
  FDRE \y_reg_77_reg[18] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[18]),
        .Q(\q_tmp_reg[31] [18]),
        .R(1'b0));
  FDRE \y_reg_77_reg[19] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[19]),
        .Q(\q_tmp_reg[31] [19]),
        .R(1'b0));
  FDRE \y_reg_77_reg[1] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[1]),
        .Q(\q_tmp_reg[31] [1]),
        .R(1'b0));
  FDRE \y_reg_77_reg[20] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[20]),
        .Q(\q_tmp_reg[31] [20]),
        .R(1'b0));
  FDRE \y_reg_77_reg[21] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[21]),
        .Q(\q_tmp_reg[31] [21]),
        .R(1'b0));
  FDRE \y_reg_77_reg[22] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[22]),
        .Q(\q_tmp_reg[31] [22]),
        .R(1'b0));
  FDRE \y_reg_77_reg[23] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[23]),
        .Q(\q_tmp_reg[31] [23]),
        .R(1'b0));
  FDRE \y_reg_77_reg[24] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[24]),
        .Q(\q_tmp_reg[31] [24]),
        .R(1'b0));
  FDRE \y_reg_77_reg[25] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[25]),
        .Q(\q_tmp_reg[31] [25]),
        .R(1'b0));
  FDRE \y_reg_77_reg[26] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[26]),
        .Q(\q_tmp_reg[31] [26]),
        .R(1'b0));
  FDRE \y_reg_77_reg[27] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[27]),
        .Q(\q_tmp_reg[31] [27]),
        .R(1'b0));
  FDRE \y_reg_77_reg[28] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[28]),
        .Q(\q_tmp_reg[31] [28]),
        .R(1'b0));
  FDRE \y_reg_77_reg[29] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[29]),
        .Q(\q_tmp_reg[31] [29]),
        .R(1'b0));
  FDRE \y_reg_77_reg[2] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[2]),
        .Q(\q_tmp_reg[31] [2]),
        .R(1'b0));
  FDRE \y_reg_77_reg[30] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[30]),
        .Q(\q_tmp_reg[31] [30]),
        .R(1'b0));
  FDRE \y_reg_77_reg[31] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[31]),
        .Q(\q_tmp_reg[31] [31]),
        .R(1'b0));
  FDRE \y_reg_77_reg[3] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[3]),
        .Q(\q_tmp_reg[31] [3]),
        .R(1'b0));
  FDRE \y_reg_77_reg[4] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[4]),
        .Q(\q_tmp_reg[31] [4]),
        .R(1'b0));
  FDRE \y_reg_77_reg[5] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[5]),
        .Q(\q_tmp_reg[31] [5]),
        .R(1'b0));
  FDRE \y_reg_77_reg[6] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[6]),
        .Q(\q_tmp_reg[31] [6]),
        .R(1'b0));
  FDRE \y_reg_77_reg[7] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[7]),
        .Q(\q_tmp_reg[31] [7]),
        .R(1'b0));
  FDRE \y_reg_77_reg[8] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[8]),
        .Q(\q_tmp_reg[31] [8]),
        .R(1'b0));
  FDRE \y_reg_77_reg[9] 
       (.C(clk),
        .CE(ap_CS_fsm_state6),
        .D(r_tdata[9]),
        .Q(\q_tmp_reg[31] [9]),
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
    \val_reg_71_reg[30] ,
    clk,
    D,
    e_dout,
    push,
    reset,
    e_empty_n,
    Q,
    \ap_CS_fsm_reg[1] );
  output FIFO_I_1_full_n;
  output FIFO_I_1_empty_n;
  output [0:0]E;
  output [30:0]\val_reg_71_reg[30] ;
  input clk;
  input [30:0]D;
  input [0:0]e_dout;
  input push;
  input reset;
  input e_empty_n;
  input [0:0]Q;
  input [0:0]\ap_CS_fsm_reg[1] ;

  wire [30:0]D;
  wire [0:0]E;
  wire FIFO_I_1_empty_n;
  wire FIFO_I_1_full_n;
  wire [0:0]Q;
  wire [0:0]\ap_CS_fsm_reg[1] ;
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
  wire empty_n_i_1_n_0;
  wire empty_n_i_2_n_0;
  wire full_n_i_1_n_0;
  wire full_n_i_3_n_0;
  wire mem_reg_i_10_n_0;
  wire mem_reg_i_11_n_0;
  wire mem_reg_n_16;
  wire p_1_in;
  wire pop;
  wire push;
  wire [30:0]q_buf;
  wire [30:0]q_tmp;
  wire [7:0]raddr;
  wire reset;
  wire [7:0]rnext;
  wire show_ahead;
  wire show_ahead0;
  wire show_ahead_i_2_n_0;
  wire \usedw[0]_i_1_n_0 ;
  wire \usedw[4]_i_2_n_0 ;
  wire \usedw[4]_i_3_n_0 ;
  wire \usedw[4]_i_4_n_0 ;
  wire \usedw[4]_i_5_n_0 ;
  wire \usedw[4]_i_6__0_n_0 ;
  wire \usedw[7]_i_1_n_0 ;
  wire \usedw[7]_i_3_n_0 ;
  wire \usedw[7]_i_4_n_0 ;
  wire \usedw[7]_i_5_n_0 ;
  wire \usedw_reg[4]_i_1_n_0 ;
  wire \usedw_reg[4]_i_1_n_1 ;
  wire \usedw_reg[4]_i_1_n_2 ;
  wire \usedw_reg[4]_i_1_n_3 ;
  wire \usedw_reg[4]_i_1_n_4 ;
  wire \usedw_reg[4]_i_1_n_5 ;
  wire \usedw_reg[4]_i_1_n_6 ;
  wire \usedw_reg[4]_i_1_n_7 ;
  wire \usedw_reg[7]_i_2_n_2 ;
  wire \usedw_reg[7]_i_2_n_3 ;
  wire \usedw_reg[7]_i_2_n_5 ;
  wire \usedw_reg[7]_i_2_n_6 ;
  wire \usedw_reg[7]_i_2_n_7 ;
  wire [7:0]usedw_reg__0;
  wire [30:0]\val_reg_71_reg[30] ;
  wire [7:0]waddr;
  wire \waddr[0]_i_1_n_0 ;
  wire \waddr[1]_i_1_n_0 ;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[3]_i_1_n_0 ;
  wire \waddr[4]_i_1_n_0 ;
  wire \waddr[5]_i_1_n_0 ;
  wire \waddr[6]_i_1_n_0 ;
  wire \waddr[7]_i_1_n_0 ;
  wire \waddr[7]_i_2_n_0 ;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [3:2]\NLW_usedw_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_usedw_reg[7]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[0]_i_1 
       (.I0(q_tmp[0]),
        .I1(q_buf[0]),
        .I2(show_ahead),
        .O(\dout_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[10]_i_1 
       (.I0(q_tmp[10]),
        .I1(q_buf[10]),
        .I2(show_ahead),
        .O(\dout_buf[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[17]_i_1 
       (.I0(q_tmp[17]),
        .I1(q_buf[17]),
        .I2(show_ahead),
        .O(\dout_buf[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[18]_i_1 
       (.I0(q_tmp[18]),
        .I1(q_buf[18]),
        .I2(show_ahead),
        .O(\dout_buf[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[21]_i_1 
       (.I0(q_tmp[21]),
        .I1(q_buf[21]),
        .I2(show_ahead),
        .O(\dout_buf[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[22]_i_1 
       (.I0(q_tmp[22]),
        .I1(q_buf[22]),
        .I2(show_ahead),
        .O(\dout_buf[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[23]_i_1 
       (.I0(q_tmp[23]),
        .I1(q_buf[23]),
        .I2(show_ahead),
        .O(\dout_buf[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[24]_i_1 
       (.I0(q_tmp[24]),
        .I1(q_buf[24]),
        .I2(show_ahead),
        .O(\dout_buf[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[25]_i_1 
       (.I0(q_tmp[25]),
        .I1(q_buf[25]),
        .I2(show_ahead),
        .O(\dout_buf[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[26]_i_1 
       (.I0(q_tmp[26]),
        .I1(q_buf[26]),
        .I2(show_ahead),
        .O(\dout_buf[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[27]_i_1 
       (.I0(q_tmp[27]),
        .I1(q_buf[27]),
        .I2(show_ahead),
        .O(\dout_buf[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[28]_i_1 
       (.I0(q_tmp[28]),
        .I1(q_buf[28]),
        .I2(show_ahead),
        .O(\dout_buf[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
       (.I0(empty_n),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(FIFO_I_1_empty_n),
        .O(pop));
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[8]_i_1 
       (.I0(q_tmp[8]),
        .I1(q_buf[8]),
        .I2(show_ahead),
        .O(\dout_buf[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
        .Q(\val_reg_71_reg[30] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[10] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[10]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[11] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[11]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[12] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[12]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[13] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[13]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[14] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[14]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[15] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[15]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[16] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[16]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[17] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[17]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[18] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[18]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[19] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[19]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[1] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[1]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[20] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[20]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[21] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[21]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[22] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[22]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[23] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[23]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[24] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[24]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[25] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[25]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[26] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[26]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[27] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[27]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[28] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[28]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[29] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[29]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[2] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[2]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[30] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[30]_i_2_n_0 ),
        .Q(\val_reg_71_reg[30] [30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[3] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[3]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[4] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[4]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[5] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[5]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[6] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[6]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[7] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[7]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[8] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[8]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[9] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[9]_i_1_n_0 ),
        .Q(\val_reg_71_reg[30] [9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    dout_valid_i_1
       (.I0(FIFO_I_1_empty_n),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(empty_n),
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
    .INIT(64'hFFFFFBFF00FFFB00)) 
    empty_n_i_1
       (.I0(empty_n_i_2_n_0),
        .I1(usedw_reg__0[0]),
        .I2(show_ahead_i_2_n_0),
        .I3(pop),
        .I4(push),
        .I5(empty_n),
        .O(empty_n_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    empty_n_i_2
       (.I0(usedw_reg__0[2]),
        .I1(usedw_reg__0[1]),
        .O(empty_n_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_n_i_1_n_0),
        .Q(empty_n),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB0F0)) 
    full_n_i_1
       (.I0(p_1_in),
        .I1(e_empty_n),
        .I2(FIFO_I_1_full_n),
        .I3(Q),
        .I4(pop),
        .I5(reset),
        .O(full_n_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    full_n_i_2
       (.I0(usedw_reg__0[6]),
        .I1(usedw_reg__0[1]),
        .I2(usedw_reg__0[4]),
        .I3(usedw_reg__0[2]),
        .I4(full_n_i_3_n_0),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    full_n_i_3
       (.I0(usedw_reg__0[7]),
        .I1(usedw_reg__0[3]),
        .I2(usedw_reg__0[5]),
        .I3(usedw_reg__0[0]),
        .O(full_n_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(full_n_i_1_n_0),
        .Q(FIFO_I_1_full_n),
        .R(1'b0));
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
       (.ADDRARDADDR({1'b1,rnext,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
       (.I0(raddr[5]),
        .I1(raddr[4]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(mem_reg_i_11_n_0),
        .O(mem_reg_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hD0000000)) 
    mem_reg_i_11
       (.I0(FIFO_I_1_empty_n),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(empty_n),
        .I3(raddr[1]),
        .I4(raddr[0]),
        .O(mem_reg_i_11_n_0));
  LUT3 #(
    .INIT(8'hA4)) 
    mem_reg_i_1__0
       (.I0(raddr[7]),
        .I1(raddr[6]),
        .I2(mem_reg_i_10_n_0),
        .O(rnext[7]));
  LUT3 #(
    .INIT(8'hA1)) 
    mem_reg_i_2__0
       (.I0(raddr[6]),
        .I1(raddr[7]),
        .I2(mem_reg_i_10_n_0),
        .O(rnext[6]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    mem_reg_i_3__0
       (.I0(raddr[5]),
        .I1(raddr[2]),
        .I2(raddr[3]),
        .I3(mem_reg_i_11_n_0),
        .I4(raddr[4]),
        .O(rnext[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    mem_reg_i_4__0
       (.I0(raddr[2]),
        .I1(raddr[1]),
        .I2(raddr[0]),
        .I3(raddr[3]),
        .I4(pop),
        .I5(raddr[4]),
        .O(rnext[4]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    mem_reg_i_5__0
       (.I0(raddr[0]),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(pop),
        .I4(raddr[3]),
        .O(rnext[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAA6AAA6AAA)) 
    mem_reg_i_6__0
       (.I0(raddr[2]),
        .I1(raddr[0]),
        .I2(raddr[1]),
        .I3(empty_n),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(FIFO_I_1_empty_n),
        .O(rnext[2]));
  LUT5 #(
    .INIT(32'h6A66AAAA)) 
    mem_reg_i_7__0
       (.I0(raddr[1]),
        .I1(empty_n),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(FIFO_I_1_empty_n),
        .I4(raddr[0]),
        .O(rnext[1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    mem_reg_i_8__0
       (.I0(raddr[0]),
        .I1(FIFO_I_1_empty_n),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(empty_n),
        .O(rnext[0]));
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
        .D(rnext[0]),
        .Q(raddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rnext[1]),
        .Q(raddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rnext[2]),
        .Q(raddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rnext[3]),
        .Q(raddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rnext[4]),
        .Q(raddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rnext[5]),
        .Q(raddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(rnext[6]),
        .Q(raddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(rnext[7]),
        .Q(raddr[7]),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000000090000)) 
    show_ahead_i_1__0
       (.I0(pop),
        .I1(usedw_reg__0[0]),
        .I2(usedw_reg__0[1]),
        .I3(usedw_reg__0[2]),
        .I4(push),
        .I5(show_ahead_i_2_n_0),
        .O(show_ahead0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    show_ahead_i_2
       (.I0(usedw_reg__0[7]),
        .I1(usedw_reg__0[6]),
        .I2(usedw_reg__0[5]),
        .I3(usedw_reg__0[3]),
        .I4(usedw_reg__0[4]),
        .O(show_ahead_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    show_ahead_reg
       (.C(clk),
        .CE(1'b1),
        .D(show_ahead0),
        .Q(show_ahead),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[0]_i_1 
       (.I0(usedw_reg__0[0]),
        .O(\usedw[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[4]_i_2 
       (.I0(usedw_reg__0[1]),
        .O(\usedw[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[4]_i_3 
       (.I0(usedw_reg__0[3]),
        .I1(usedw_reg__0[4]),
        .O(\usedw[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[4]_i_4 
       (.I0(usedw_reg__0[2]),
        .I1(usedw_reg__0[3]),
        .O(\usedw[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[4]_i_5 
       (.I0(usedw_reg__0[1]),
        .I1(usedw_reg__0[2]),
        .O(\usedw[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6A665555)) 
    \usedw[4]_i_6__0 
       (.I0(usedw_reg__0[1]),
        .I1(empty_n),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(FIFO_I_1_empty_n),
        .I4(push),
        .O(\usedw[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F807F80808080)) 
    \usedw[7]_i_1 
       (.I0(e_empty_n),
        .I1(FIFO_I_1_full_n),
        .I2(Q),
        .I3(FIFO_I_1_empty_n),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(empty_n),
        .O(\usedw[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_3 
       (.I0(usedw_reg__0[6]),
        .I1(usedw_reg__0[7]),
        .O(\usedw[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_4 
       (.I0(usedw_reg__0[5]),
        .I1(usedw_reg__0[6]),
        .O(\usedw[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_5 
       (.I0(usedw_reg__0[4]),
        .I1(usedw_reg__0[5]),
        .O(\usedw[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[0] 
       (.C(clk),
        .CE(\usedw[7]_i_1_n_0 ),
        .D(\usedw[0]_i_1_n_0 ),
        .Q(usedw_reg__0[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[1] 
       (.C(clk),
        .CE(\usedw[7]_i_1_n_0 ),
        .D(\usedw_reg[4]_i_1_n_7 ),
        .Q(usedw_reg__0[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[2] 
       (.C(clk),
        .CE(\usedw[7]_i_1_n_0 ),
        .D(\usedw_reg[4]_i_1_n_6 ),
        .Q(usedw_reg__0[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[3] 
       (.C(clk),
        .CE(\usedw[7]_i_1_n_0 ),
        .D(\usedw_reg[4]_i_1_n_5 ),
        .Q(usedw_reg__0[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[4] 
       (.C(clk),
        .CE(\usedw[7]_i_1_n_0 ),
        .D(\usedw_reg[4]_i_1_n_4 ),
        .Q(usedw_reg__0[4]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \usedw_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\usedw_reg[4]_i_1_n_0 ,\usedw_reg[4]_i_1_n_1 ,\usedw_reg[4]_i_1_n_2 ,\usedw_reg[4]_i_1_n_3 }),
        .CYINIT(usedw_reg__0[0]),
        .DI({usedw_reg__0[3:1],\usedw[4]_i_2_n_0 }),
        .O({\usedw_reg[4]_i_1_n_4 ,\usedw_reg[4]_i_1_n_5 ,\usedw_reg[4]_i_1_n_6 ,\usedw_reg[4]_i_1_n_7 }),
        .S({\usedw[4]_i_3_n_0 ,\usedw[4]_i_4_n_0 ,\usedw[4]_i_5_n_0 ,\usedw[4]_i_6__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[5] 
       (.C(clk),
        .CE(\usedw[7]_i_1_n_0 ),
        .D(\usedw_reg[7]_i_2_n_7 ),
        .Q(usedw_reg__0[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[6] 
       (.C(clk),
        .CE(\usedw[7]_i_1_n_0 ),
        .D(\usedw_reg[7]_i_2_n_6 ),
        .Q(usedw_reg__0[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[7] 
       (.C(clk),
        .CE(\usedw[7]_i_1_n_0 ),
        .D(\usedw_reg[7]_i_2_n_5 ),
        .Q(usedw_reg__0[7]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \usedw_reg[7]_i_2 
       (.CI(\usedw_reg[4]_i_1_n_0 ),
        .CO({\NLW_usedw_reg[7]_i_2_CO_UNCONNECTED [3:2],\usedw_reg[7]_i_2_n_2 ,\usedw_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,usedw_reg__0[5:4]}),
        .O({\NLW_usedw_reg[7]_i_2_O_UNCONNECTED [3],\usedw_reg[7]_i_2_n_5 ,\usedw_reg[7]_i_2_n_6 ,\usedw_reg[7]_i_2_n_7 }),
        .S({1'b0,\usedw[7]_i_3_n_0 ,\usedw[7]_i_4_n_0 ,\usedw[7]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \val_reg_71[30]_i_1 
       (.I0(FIFO_I_1_empty_n),
        .I1(\ap_CS_fsm_reg[1] ),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1 
       (.I0(waddr[0]),
        .O(\waddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[1]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .O(\waddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \waddr[2]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .O(\waddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \waddr[3]_i_1 
       (.I0(waddr[3]),
        .I1(waddr[0]),
        .I2(waddr[1]),
        .I3(waddr[2]),
        .O(\waddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \waddr[4]_i_1 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[1]),
        .I3(waddr[0]),
        .I4(waddr[3]),
        .O(\waddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \waddr[5]_i_1 
       (.I0(waddr[5]),
        .I1(waddr[3]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[2]),
        .I5(waddr[4]),
        .O(\waddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \waddr[6]_i_1 
       (.I0(waddr[7]),
        .I1(\waddr[7]_i_2_n_0 ),
        .I2(waddr[6]),
        .O(\waddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \waddr[7]_i_1 
       (.I0(waddr[7]),
        .I1(waddr[6]),
        .I2(\waddr[7]_i_2_n_0 ),
        .O(\waddr[7]_i_1_n_0 ));
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
        .D(\waddr[0]_i_1_n_0 ),
        .Q(waddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(clk),
        .CE(push),
        .D(\waddr[1]_i_1_n_0 ),
        .Q(waddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(clk),
        .CE(push),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(waddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(clk),
        .CE(push),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(waddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(clk),
        .CE(push),
        .D(\waddr[4]_i_1_n_0 ),
        .Q(waddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(clk),
        .CE(push),
        .D(\waddr[5]_i_1_n_0 ),
        .Q(waddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(clk),
        .CE(push),
        .D(\waddr[6]_i_1_n_0 ),
        .Q(waddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(clk),
        .CE(push),
        .D(\waddr[7]_i_1_n_0 ),
        .Q(waddr[7]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "fifo_w32_d192_A" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d192_A_0
   (FIFO_O_1_full_n,
    FIFO_O_1_empty_n,
    \tmp_7_reg_146_reg[7] ,
    clk,
    Q,
    WEBWE,
    reset,
    \ap_CS_fsm_reg[6] ,
    \ap_CS_fsm_reg[1] ,
    s_full_n);
  output FIFO_O_1_full_n;
  output FIFO_O_1_empty_n;
  output [31:0]\tmp_7_reg_146_reg[7] ;
  input clk;
  input [31:0]Q;
  input [0:0]WEBWE;
  input reset;
  input [0:0]\ap_CS_fsm_reg[6] ;
  input [0:0]\ap_CS_fsm_reg[1] ;
  input s_full_n;

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
  wire empty_n_i_1_n_0;
  wire full_n_i_1__0_n_0;
  wire full_n_i_2__0_n_0;
  wire full_n_i_3__0_n_0;
  wire mem_reg_i_10__0_n_0;
  wire mem_reg_i_11__0_n_0;
  wire mem_reg_i_12_n_0;
  wire mem_reg_i_13_n_0;
  wire mem_reg_i_14_n_0;
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
  wire [7:0]rnext;
  wire s_full_n;
  wire show_ahead0;
  wire show_ahead_i_2__0_n_0;
  wire show_ahead_i_3_n_0;
  wire show_ahead_reg_n_0;
  wire [31:0]\tmp_7_reg_146_reg[7] ;
  wire \usedw[0]_i_1__0_n_0 ;
  wire \usedw[4]_i_2__0_n_0 ;
  wire \usedw[4]_i_3__0_n_0 ;
  wire \usedw[4]_i_4__0_n_0 ;
  wire \usedw[4]_i_5__0_n_0 ;
  wire \usedw[4]_i_6_n_0 ;
  wire \usedw[7]_i_1__0_n_0 ;
  wire \usedw[7]_i_3__0_n_0 ;
  wire \usedw[7]_i_4__0_n_0 ;
  wire \usedw[7]_i_5__0_n_0 ;
  wire \usedw_reg[4]_i_1__0_n_0 ;
  wire \usedw_reg[4]_i_1__0_n_1 ;
  wire \usedw_reg[4]_i_1__0_n_2 ;
  wire \usedw_reg[4]_i_1__0_n_3 ;
  wire \usedw_reg[4]_i_1__0_n_4 ;
  wire \usedw_reg[4]_i_1__0_n_5 ;
  wire \usedw_reg[4]_i_1__0_n_6 ;
  wire \usedw_reg[4]_i_1__0_n_7 ;
  wire \usedw_reg[7]_i_2__0_n_2 ;
  wire \usedw_reg[7]_i_2__0_n_3 ;
  wire \usedw_reg[7]_i_2__0_n_5 ;
  wire \usedw_reg[7]_i_2__0_n_6 ;
  wire \usedw_reg[7]_i_2__0_n_7 ;
  wire [7:0]usedw_reg__0;
  wire [7:0]waddr;
  wire \waddr[0]_i_1__0_n_0 ;
  wire \waddr[1]_i_1__0_n_0 ;
  wire \waddr[2]_i_1__0_n_0 ;
  wire \waddr[3]_i_1__0_n_0 ;
  wire \waddr[4]_i_1__0_n_0 ;
  wire \waddr[5]_i_1__0_n_0 ;
  wire \waddr[6]_i_1__0_n_0 ;
  wire \waddr[7]_i_1__0_n_0 ;
  wire \waddr[7]_i_2__0_n_0 ;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [3:2]\NLW_usedw_reg[7]_i_2__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_usedw_reg[7]_i_2__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[0]_i_1 
       (.I0(\q_tmp_reg_n_0_[0] ),
        .I1(q_buf[0]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[10]_i_1 
       (.I0(\q_tmp_reg_n_0_[10] ),
        .I1(q_buf[10]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[11]_i_1 
       (.I0(\q_tmp_reg_n_0_[11] ),
        .I1(q_buf[11]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[12]_i_1 
       (.I0(\q_tmp_reg_n_0_[12] ),
        .I1(q_buf[12]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[13]_i_1 
       (.I0(\q_tmp_reg_n_0_[13] ),
        .I1(q_buf[13]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[14]_i_1 
       (.I0(\q_tmp_reg_n_0_[14] ),
        .I1(q_buf[14]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[15]_i_1 
       (.I0(\q_tmp_reg_n_0_[15] ),
        .I1(q_buf[15]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[16]_i_1 
       (.I0(\q_tmp_reg_n_0_[16] ),
        .I1(q_buf[16]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[17]_i_1 
       (.I0(\q_tmp_reg_n_0_[17] ),
        .I1(q_buf[17]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[18]_i_1 
       (.I0(\q_tmp_reg_n_0_[18] ),
        .I1(q_buf[18]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[19]_i_1 
       (.I0(\q_tmp_reg_n_0_[19] ),
        .I1(q_buf[19]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[1]_i_1 
       (.I0(\q_tmp_reg_n_0_[1] ),
        .I1(q_buf[1]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[20]_i_1 
       (.I0(\q_tmp_reg_n_0_[20] ),
        .I1(q_buf[20]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[21]_i_1 
       (.I0(\q_tmp_reg_n_0_[21] ),
        .I1(q_buf[21]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[22]_i_1 
       (.I0(\q_tmp_reg_n_0_[22] ),
        .I1(q_buf[22]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[23]_i_1 
       (.I0(\q_tmp_reg_n_0_[23] ),
        .I1(q_buf[23]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[24]_i_1 
       (.I0(\q_tmp_reg_n_0_[24] ),
        .I1(q_buf[24]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[25]_i_1 
       (.I0(\q_tmp_reg_n_0_[25] ),
        .I1(q_buf[25]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[26]_i_1 
       (.I0(\q_tmp_reg_n_0_[26] ),
        .I1(q_buf[26]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[27]_i_1 
       (.I0(\q_tmp_reg_n_0_[27] ),
        .I1(q_buf[27]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[28]_i_1 
       (.I0(\q_tmp_reg_n_0_[28] ),
        .I1(q_buf[28]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[29]_i_1 
       (.I0(\q_tmp_reg_n_0_[29] ),
        .I1(q_buf[29]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[2]_i_1 
       (.I0(\q_tmp_reg_n_0_[2] ),
        .I1(q_buf[2]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
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
       (.I0(empty_n),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(FIFO_O_1_empty_n),
        .I3(s_full_n),
        .O(pop));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[31]_i_2 
       (.I0(\q_tmp_reg_n_0_[31] ),
        .I1(q_buf[31]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[3]_i_1 
       (.I0(\q_tmp_reg_n_0_[3] ),
        .I1(q_buf[3]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[4]_i_1 
       (.I0(\q_tmp_reg_n_0_[4] ),
        .I1(q_buf[4]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[5]_i_1 
       (.I0(\q_tmp_reg_n_0_[5] ),
        .I1(q_buf[5]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[6]_i_1 
       (.I0(\q_tmp_reg_n_0_[6] ),
        .I1(q_buf[6]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[7]_i_1 
       (.I0(\q_tmp_reg_n_0_[7] ),
        .I1(q_buf[7]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[8]_i_1 
       (.I0(\q_tmp_reg_n_0_[8] ),
        .I1(q_buf[8]),
        .I2(show_ahead_reg_n_0),
        .O(\dout_buf[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
        .Q(\tmp_7_reg_146_reg[7] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[10] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[10]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[11] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[11]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[12] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[12]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[13] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[13]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[14] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[14]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[15] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[15]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[16] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[16]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[17] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[17]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[18] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[18]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[19] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[19]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[1] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[1]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[20] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[20]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[21] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[21]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[22] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[22]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[23] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[23]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[24] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[24]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[25] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[25]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[26] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[26]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[27] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[27]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[28] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[28]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[29] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[29]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[2] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[2]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[30] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[30]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[31] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[31]_i_2_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [31]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[3] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[3]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[4] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[4]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[5] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[5]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[6] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[6]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[7] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[7]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[8] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[8]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[9] 
       (.C(clk),
        .CE(pop),
        .D(\dout_buf[9]_i_1_n_0 ),
        .Q(\tmp_7_reg_146_reg[7] [9]),
        .R(reset));
  LUT4 #(
    .INIT(16'hFF4C)) 
    dout_valid_i_1__0
       (.I0(s_full_n),
        .I1(FIFO_O_1_empty_n),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(empty_n),
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
    .INIT(64'hFFDFDFDF0FD0D0D0)) 
    empty_n_i_1
       (.I0(usedw_reg__0[0]),
        .I1(show_ahead_i_2__0_n_0),
        .I2(pop),
        .I3(FIFO_O_1_full_n),
        .I4(\ap_CS_fsm_reg[6] ),
        .I5(empty_n),
        .O(empty_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_n_i_1_n_0),
        .Q(empty_n),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEF00)) 
    full_n_i_1__0
       (.I0(full_n_i_2__0_n_0),
        .I1(full_n_i_3__0_n_0),
        .I2(\ap_CS_fsm_reg[6] ),
        .I3(FIFO_O_1_full_n),
        .I4(pop),
        .I5(reset),
        .O(full_n_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    full_n_i_2__0
       (.I0(usedw_reg__0[5]),
        .I1(usedw_reg__0[6]),
        .I2(usedw_reg__0[7]),
        .I3(usedw_reg__0[1]),
        .O(full_n_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    full_n_i_3__0
       (.I0(usedw_reg__0[3]),
        .I1(usedw_reg__0[4]),
        .I2(usedw_reg__0[2]),
        .I3(usedw_reg__0[0]),
        .O(full_n_i_3__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(full_n_i_1__0_n_0),
        .Q(FIFO_O_1_full_n),
        .R(1'b0));
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
       (.ADDRARDADDR({1'b1,rnext,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
        .O(rnext[7]));
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
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_12
       (.I0(\raddr_reg_n_0_[0] ),
        .I1(\raddr_reg_n_0_[1] ),
        .O(mem_reg_i_12_n_0));
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
        .O(rnext[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    mem_reg_i_3
       (.I0(mem_reg_i_12_n_0),
        .I1(\raddr_reg_n_0_[3] ),
        .I2(\raddr_reg_n_0_[2] ),
        .I3(\raddr_reg_n_0_[4] ),
        .I4(pop),
        .I5(\raddr_reg_n_0_[5] ),
        .O(rnext[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    mem_reg_i_4
       (.I0(\raddr_reg_n_0_[2] ),
        .I1(\raddr_reg_n_0_[3] ),
        .I2(\raddr_reg_n_0_[0] ),
        .I3(\raddr_reg_n_0_[1] ),
        .I4(pop),
        .I5(\raddr_reg_n_0_[4] ),
        .O(rnext[4]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    mem_reg_i_5
       (.I0(\raddr_reg_n_0_[0] ),
        .I1(\raddr_reg_n_0_[1] ),
        .I2(\raddr_reg_n_0_[2] ),
        .I3(pop),
        .I4(\raddr_reg_n_0_[3] ),
        .O(rnext[3]));
  LUT4 #(
    .INIT(16'h7F80)) 
    mem_reg_i_6
       (.I0(\raddr_reg_n_0_[1] ),
        .I1(\raddr_reg_n_0_[0] ),
        .I2(pop),
        .I3(\raddr_reg_n_0_[2] ),
        .O(rnext[2]));
  LUT6 #(
    .INIT(64'h7F77FF7780880088)) 
    mem_reg_i_7
       (.I0(\raddr_reg_n_0_[0] ),
        .I1(empty_n),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(FIFO_O_1_empty_n),
        .I4(s_full_n),
        .I5(\raddr_reg_n_0_[1] ),
        .O(rnext[1]));
  LUT5 #(
    .INIT(32'h65A5AAAA)) 
    mem_reg_i_8
       (.I0(\raddr_reg_n_0_[0] ),
        .I1(s_full_n),
        .I2(FIFO_O_1_empty_n),
        .I3(\ap_CS_fsm_reg[1] ),
        .I4(empty_n),
        .O(rnext[0]));
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
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \raddr[2]_i_1 
       (.I0(\raddr_reg_n_0_[2] ),
        .I1(\raddr_reg_n_0_[1] ),
        .I2(\raddr_reg_n_0_[0] ),
        .O(\raddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \raddr[3]_i_1 
       (.I0(\raddr_reg_n_0_[3] ),
        .I1(\raddr_reg_n_0_[0] ),
        .I2(\raddr_reg_n_0_[1] ),
        .I3(\raddr_reg_n_0_[2] ),
        .O(\raddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
        .D(rnext[0]),
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
        .D(rnext[6]),
        .Q(\raddr_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(rnext[7]),
        .Q(\raddr_reg_n_0_[7] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h08000008)) 
    show_ahead_i_1
       (.I0(\ap_CS_fsm_reg[6] ),
        .I1(FIFO_O_1_full_n),
        .I2(show_ahead_i_2__0_n_0),
        .I3(usedw_reg__0[0]),
        .I4(pop),
        .O(show_ahead0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    show_ahead_i_2__0
       (.I0(usedw_reg__0[5]),
        .I1(usedw_reg__0[3]),
        .I2(usedw_reg__0[2]),
        .I3(show_ahead_i_3_n_0),
        .O(show_ahead_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    show_ahead_i_3
       (.I0(usedw_reg__0[7]),
        .I1(usedw_reg__0[6]),
        .I2(usedw_reg__0[1]),
        .I3(usedw_reg__0[4]),
        .O(show_ahead_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    show_ahead_reg
       (.C(clk),
        .CE(1'b1),
        .D(show_ahead0),
        .Q(show_ahead_reg_n_0),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[0]_i_1__0 
       (.I0(usedw_reg__0[0]),
        .O(\usedw[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[4]_i_2__0 
       (.I0(usedw_reg__0[1]),
        .O(\usedw[4]_i_2__0_n_0 ));
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
        .I2(FIFO_O_1_full_n),
        .I3(\ap_CS_fsm_reg[6] ),
        .O(\usedw[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7877887788888888)) 
    \usedw[7]_i_1__0 
       (.I0(\ap_CS_fsm_reg[6] ),
        .I1(FIFO_O_1_full_n),
        .I2(s_full_n),
        .I3(FIFO_O_1_empty_n),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(empty_n),
        .O(\usedw[7]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_3__0 
       (.I0(usedw_reg__0[6]),
        .I1(usedw_reg__0[7]),
        .O(\usedw[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_4__0 
       (.I0(usedw_reg__0[5]),
        .I1(usedw_reg__0[6]),
        .O(\usedw[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \usedw[7]_i_5__0 
       (.I0(usedw_reg__0[4]),
        .I1(usedw_reg__0[5]),
        .O(\usedw[7]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[0] 
       (.C(clk),
        .CE(\usedw[7]_i_1__0_n_0 ),
        .D(\usedw[0]_i_1__0_n_0 ),
        .Q(usedw_reg__0[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[1] 
       (.C(clk),
        .CE(\usedw[7]_i_1__0_n_0 ),
        .D(\usedw_reg[4]_i_1__0_n_7 ),
        .Q(usedw_reg__0[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[2] 
       (.C(clk),
        .CE(\usedw[7]_i_1__0_n_0 ),
        .D(\usedw_reg[4]_i_1__0_n_6 ),
        .Q(usedw_reg__0[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[3] 
       (.C(clk),
        .CE(\usedw[7]_i_1__0_n_0 ),
        .D(\usedw_reg[4]_i_1__0_n_5 ),
        .Q(usedw_reg__0[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[4] 
       (.C(clk),
        .CE(\usedw[7]_i_1__0_n_0 ),
        .D(\usedw_reg[4]_i_1__0_n_4 ),
        .Q(usedw_reg__0[4]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \usedw_reg[4]_i_1__0 
       (.CI(1'b0),
        .CO({\usedw_reg[4]_i_1__0_n_0 ,\usedw_reg[4]_i_1__0_n_1 ,\usedw_reg[4]_i_1__0_n_2 ,\usedw_reg[4]_i_1__0_n_3 }),
        .CYINIT(usedw_reg__0[0]),
        .DI({usedw_reg__0[3:1],\usedw[4]_i_2__0_n_0 }),
        .O({\usedw_reg[4]_i_1__0_n_4 ,\usedw_reg[4]_i_1__0_n_5 ,\usedw_reg[4]_i_1__0_n_6 ,\usedw_reg[4]_i_1__0_n_7 }),
        .S({\usedw[4]_i_3__0_n_0 ,\usedw[4]_i_4__0_n_0 ,\usedw[4]_i_5__0_n_0 ,\usedw[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[5] 
       (.C(clk),
        .CE(\usedw[7]_i_1__0_n_0 ),
        .D(\usedw_reg[7]_i_2__0_n_7 ),
        .Q(usedw_reg__0[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[6] 
       (.C(clk),
        .CE(\usedw[7]_i_1__0_n_0 ),
        .D(\usedw_reg[7]_i_2__0_n_6 ),
        .Q(usedw_reg__0[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[7] 
       (.C(clk),
        .CE(\usedw[7]_i_1__0_n_0 ),
        .D(\usedw_reg[7]_i_2__0_n_5 ),
        .Q(usedw_reg__0[7]),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \usedw_reg[7]_i_2__0 
       (.CI(\usedw_reg[4]_i_1__0_n_0 ),
        .CO({\NLW_usedw_reg[7]_i_2__0_CO_UNCONNECTED [3:2],\usedw_reg[7]_i_2__0_n_2 ,\usedw_reg[7]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,usedw_reg__0[5:4]}),
        .O({\NLW_usedw_reg[7]_i_2__0_O_UNCONNECTED [3],\usedw_reg[7]_i_2__0_n_5 ,\usedw_reg[7]_i_2__0_n_6 ,\usedw_reg[7]_i_2__0_n_7 }),
        .S({1'b0,\usedw[7]_i_3__0_n_0 ,\usedw[7]_i_4__0_n_0 ,\usedw[7]_i_5__0_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1__0 
       (.I0(waddr[0]),
        .O(\waddr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[1]_i_1__0 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .O(\waddr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \waddr[2]_i_1__0 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .O(\waddr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \waddr[3]_i_1__0 
       (.I0(waddr[3]),
        .I1(waddr[0]),
        .I2(waddr[1]),
        .I3(waddr[2]),
        .O(\waddr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \waddr[4]_i_1__0 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[1]),
        .I3(waddr[0]),
        .I4(waddr[3]),
        .O(\waddr[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \waddr[5]_i_1__0 
       (.I0(waddr[5]),
        .I1(waddr[3]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[2]),
        .I5(waddr[4]),
        .O(\waddr[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \waddr[6]_i_1__0 
       (.I0(waddr[7]),
        .I1(\waddr[7]_i_2__0_n_0 ),
        .I2(waddr[6]),
        .O(\waddr[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \waddr[7]_i_1__0 
       (.I0(waddr[7]),
        .I1(waddr[6]),
        .I2(\waddr[7]_i_2__0_n_0 ),
        .O(\waddr[7]_i_1__0_n_0 ));
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
        .D(\waddr[0]_i_1__0_n_0 ),
        .Q(waddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(clk),
        .CE(WEBWE),
        .D(\waddr[1]_i_1__0_n_0 ),
        .Q(waddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(clk),
        .CE(WEBWE),
        .D(\waddr[2]_i_1__0_n_0 ),
        .Q(waddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(clk),
        .CE(WEBWE),
        .D(\waddr[3]_i_1__0_n_0 ),
        .Q(waddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(clk),
        .CE(WEBWE),
        .D(\waddr[4]_i_1__0_n_0 ),
        .Q(waddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(clk),
        .CE(WEBWE),
        .D(\waddr[5]_i_1__0_n_0 ),
        .Q(waddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(clk),
        .CE(WEBWE),
        .D(\waddr[6]_i_1__0_n_0 ),
        .Q(waddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(clk),
        .CE(WEBWE),
        .D(\waddr[7]_i_1__0_n_0 ),
        .Q(waddr[7]),
        .R(reset));
endmodule

(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper
   (clk,
    reset,
    e_dout,
    e_empty_n,
    e_read,
    s_din,
    s_full_n,
    s_write);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000" *) input clk;
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
  wire grp_carre_fu_94_e_read;
  wire [31:0]grp_carre_fu_94_s_din;
  wire [23:0]grp_uart_wrapper_do_action1_fu_136_FIFO_I_1_din;
  wire [7:0]p_0_in;
  wire push;
  wire push_0;
  wire reset;
  wire [7:0]s_din;
  wire s_full_n;
  wire s_write;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d192_A FIFO_I_1_fifo_U
       (.D({e_dout[6:0],grp_uart_wrapper_do_action1_fu_136_FIFO_I_1_din}),
        .E(grp_carre_fu_94_e_read),
        .FIFO_I_1_empty_n(FIFO_I_1_empty_n),
        .FIFO_I_1_full_n(FIFO_I_1_full_n),
        .Q(ap_CS_fsm_state5),
        .\ap_CS_fsm_reg[1] (\grp_carre_do_carre_fu_58/ap_CS_fsm_state2 ),
        .clk(clk),
        .e_dout(e_dout[7]),
        .e_empty_n(e_empty_n),
        .push(push_0),
        .reset(reset),
        .\val_reg_71_reg[30] (dout_buf));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d192_A_0 FIFO_O_1_fifo_U
       (.FIFO_O_1_empty_n(FIFO_O_1_empty_n),
        .FIFO_O_1_full_n(FIFO_O_1_full_n),
        .Q(grp_carre_fu_94_s_din),
        .WEBWE(push),
        .\ap_CS_fsm_reg[1] (ap_CS_fsm_state2),
        .\ap_CS_fsm_reg[6] (\grp_carre_do_carre_fu_58/ap_CS_fsm_state7 ),
        .clk(clk),
        .reset(reset),
        .s_full_n(s_full_n),
        .\tmp_7_reg_146_reg[7] ({FIFO_O_1_fifo_U_n_2,FIFO_O_1_fifo_U_n_3,FIFO_O_1_fifo_U_n_4,FIFO_O_1_fifo_U_n_5,FIFO_O_1_fifo_U_n_6,FIFO_O_1_fifo_U_n_7,FIFO_O_1_fifo_U_n_8,FIFO_O_1_fifo_U_n_9,FIFO_O_1_fifo_U_n_10,FIFO_O_1_fifo_U_n_11,FIFO_O_1_fifo_U_n_12,FIFO_O_1_fifo_U_n_13,FIFO_O_1_fifo_U_n_14,FIFO_O_1_fifo_U_n_15,FIFO_O_1_fifo_U_n_16,FIFO_O_1_fifo_U_n_17,p_0_in,FIFO_O_1_fifo_U_n_26,FIFO_O_1_fifo_U_n_27,FIFO_O_1_fifo_U_n_28,FIFO_O_1_fifo_U_n_29,FIFO_O_1_fifo_U_n_30,FIFO_O_1_fifo_U_n_31,FIFO_O_1_fifo_U_n_32,FIFO_O_1_fifo_U_n_33}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_carre grp_carre_fu_94
       (.D(dout_buf),
        .E(grp_carre_fu_94_e_read),
        .FIFO_I_1_empty_n(FIFO_I_1_empty_n),
        .FIFO_O_1_full_n(FIFO_O_1_full_n),
        .Q({\grp_carre_do_carre_fu_58/ap_CS_fsm_state7 ,\grp_carre_do_carre_fu_58/ap_CS_fsm_state2 }),
        .WEBWE(push),
        .clk(clk),
        .\q_tmp_reg[31] (grp_carre_fu_94_s_din),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper_do_action1 grp_uart_wrapper_do_action1_fu_136
       (.D(grp_uart_wrapper_do_action1_fu_136_FIFO_I_1_din),
        .FIFO_I_1_full_n(FIFO_I_1_full_n),
        .Q(ap_CS_fsm_state5),
        .clk(clk),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .push(push_0),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper_do_action2 grp_uart_wrapper_do_action2_fu_110
       (.FIFO_O_1_empty_n(FIFO_O_1_empty_n),
        .Q(ap_CS_fsm_state2),
        .clk(clk),
        .\dout_buf_reg[31] ({FIFO_O_1_fifo_U_n_2,FIFO_O_1_fifo_U_n_3,FIFO_O_1_fifo_U_n_4,FIFO_O_1_fifo_U_n_5,FIFO_O_1_fifo_U_n_6,FIFO_O_1_fifo_U_n_7,FIFO_O_1_fifo_U_n_8,FIFO_O_1_fifo_U_n_9,FIFO_O_1_fifo_U_n_10,FIFO_O_1_fifo_U_n_11,FIFO_O_1_fifo_U_n_12,FIFO_O_1_fifo_U_n_13,FIFO_O_1_fifo_U_n_14,FIFO_O_1_fifo_U_n_15,FIFO_O_1_fifo_U_n_16,FIFO_O_1_fifo_U_n_17,p_0_in,FIFO_O_1_fifo_U_n_26,FIFO_O_1_fifo_U_n_27,FIFO_O_1_fifo_U_n_28,FIFO_O_1_fifo_U_n_29,FIFO_O_1_fifo_U_n_30,FIFO_O_1_fifo_U_n_31,FIFO_O_1_fifo_U_n_32,FIFO_O_1_fifo_U_n_33}),
        .reset(reset),
        .s_din(s_din),
        .s_full_n(s_full_n),
        .s_write(s_write));
endmodule

(* CHECK_LICENSE_TYPE = "uart_wrapper_0,uart_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "uart_wrapper,Vivado 2017.3" *) 
(* hls_module = "yes" *) 
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
  wire reset;
  wire [7:0]s_din;
  wire s_full_n;
  wire s_write;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_wrapper inst
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
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hAAAB0101)) 
    \ap_CS_fsm[2]_i_1__1 
       (.I0(ap_CS_fsm_state2),
        .I1(Q),
        .I2(ap_CS_fsm_state4),
        .I3(ap_CS_fsm_state3),
        .I4(e_empty_n),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
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
    \tmp_4_reg_104[7]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state3),
        .O(ap_NS_fsm10_out));
  FDRE \tmp_4_reg_104_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[0]),
        .Q(D[8]),
        .R(1'b0));
  FDRE \tmp_4_reg_104_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[1]),
        .Q(D[9]),
        .R(1'b0));
  FDRE \tmp_4_reg_104_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[2]),
        .Q(D[10]),
        .R(1'b0));
  FDRE \tmp_4_reg_104_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[3]),
        .Q(D[11]),
        .R(1'b0));
  FDRE \tmp_4_reg_104_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[4]),
        .Q(D[12]),
        .R(1'b0));
  FDRE \tmp_4_reg_104_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[5]),
        .Q(D[13]),
        .R(1'b0));
  FDRE \tmp_4_reg_104_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[6]),
        .Q(D[14]),
        .R(1'b0));
  FDRE \tmp_4_reg_104_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm10_out),
        .D(e_dout[7]),
        .Q(D[15]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_6_reg_109[7]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state4),
        .O(ap_NS_fsm11_out));
  FDRE \tmp_6_reg_109_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[0]),
        .Q(D[16]),
        .R(1'b0));
  FDRE \tmp_6_reg_109_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[1]),
        .Q(D[17]),
        .R(1'b0));
  FDRE \tmp_6_reg_109_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[2]),
        .Q(D[18]),
        .R(1'b0));
  FDRE \tmp_6_reg_109_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[3]),
        .Q(D[19]),
        .R(1'b0));
  FDRE \tmp_6_reg_109_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[4]),
        .Q(D[20]),
        .R(1'b0));
  FDRE \tmp_6_reg_109_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[5]),
        .Q(D[21]),
        .R(1'b0));
  FDRE \tmp_6_reg_109_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[6]),
        .Q(D[22]),
        .R(1'b0));
  FDRE \tmp_6_reg_109_reg[7] 
       (.C(clk),
        .CE(ap_NS_fsm11_out),
        .D(e_dout[7]),
        .Q(D[23]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg_99[7]_i_1 
       (.I0(e_empty_n),
        .I1(ap_CS_fsm_state2),
        .O(ap_NS_fsm1));
  FDRE \tmp_reg_99_reg[0] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \tmp_reg_99_reg[1] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \tmp_reg_99_reg[2] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE \tmp_reg_99_reg[3] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE \tmp_reg_99_reg[4] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE \tmp_reg_99_reg[5] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE \tmp_reg_99_reg[6] 
       (.C(clk),
        .CE(ap_NS_fsm1),
        .D(e_dout[6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE \tmp_reg_99_reg[7] 
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
  wire grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read;
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
  wire [7:0]tmp_3_reg_136;
  wire [7:0]tmp_5_reg_141;
  wire [7:0]tmp_7_reg_146;

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
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
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
       (.I0(tmp_7_reg_146[0]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[0]_INST_0_i_1_n_0 ),
        .O(s_din[0]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[0]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [0]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_136[0]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_141[0]),
        .O(\s_din[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[1]_INST_0 
       (.I0(tmp_7_reg_146[1]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[1]_INST_0_i_1_n_0 ),
        .O(s_din[1]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[1]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [1]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_136[1]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_141[1]),
        .O(\s_din[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[2]_INST_0 
       (.I0(tmp_7_reg_146[2]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[2]_INST_0_i_1_n_0 ),
        .O(s_din[2]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[2]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [2]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_136[2]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_141[2]),
        .O(\s_din[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[3]_INST_0 
       (.I0(tmp_7_reg_146[3]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[3]_INST_0_i_1_n_0 ),
        .O(s_din[3]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[3]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [3]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_136[3]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_141[3]),
        .O(\s_din[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[4]_INST_0 
       (.I0(tmp_7_reg_146[4]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[4]_INST_0_i_1_n_0 ),
        .O(s_din[4]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[4]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [4]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_136[4]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_141[4]),
        .O(\s_din[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[5]_INST_0 
       (.I0(tmp_7_reg_146[5]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[5]_INST_0_i_1_n_0 ),
        .O(s_din[5]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[5]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [5]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_136[5]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_141[5]),
        .O(\s_din[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[6]_INST_0 
       (.I0(tmp_7_reg_146[6]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[6]_INST_0_i_1_n_0 ),
        .O(s_din[6]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[6]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [6]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_136[6]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_141[6]),
        .O(\s_din[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_din[7]_INST_0 
       (.I0(tmp_7_reg_146[7]),
        .I1(s_full_n),
        .I2(ap_CS_fsm_state5),
        .I3(\s_din[7]_INST_0_i_1_n_0 ),
        .O(s_din[7]));
  LUT6 #(
    .INIT(64'hFFAAE2AA00AAE2AA)) 
    \s_din[7]_INST_0_i_1 
       (.I0(\dout_buf_reg[31] [7]),
        .I1(ap_CS_fsm_state3),
        .I2(tmp_3_reg_136[7]),
        .I3(s_full_n),
        .I4(ap_CS_fsm_state4),
        .I5(tmp_5_reg_141[7]),
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
    \tmp_3_reg_136[7]_i_1 
       (.I0(Q),
        .I1(FIFO_O_1_empty_n),
        .I2(s_full_n),
        .O(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read));
  FDRE \tmp_3_reg_136_reg[0] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [8]),
        .Q(tmp_3_reg_136[0]),
        .R(1'b0));
  FDRE \tmp_3_reg_136_reg[1] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [9]),
        .Q(tmp_3_reg_136[1]),
        .R(1'b0));
  FDRE \tmp_3_reg_136_reg[2] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [10]),
        .Q(tmp_3_reg_136[2]),
        .R(1'b0));
  FDRE \tmp_3_reg_136_reg[3] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [11]),
        .Q(tmp_3_reg_136[3]),
        .R(1'b0));
  FDRE \tmp_3_reg_136_reg[4] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [12]),
        .Q(tmp_3_reg_136[4]),
        .R(1'b0));
  FDRE \tmp_3_reg_136_reg[5] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [13]),
        .Q(tmp_3_reg_136[5]),
        .R(1'b0));
  FDRE \tmp_3_reg_136_reg[6] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [14]),
        .Q(tmp_3_reg_136[6]),
        .R(1'b0));
  FDRE \tmp_3_reg_136_reg[7] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [15]),
        .Q(tmp_3_reg_136[7]),
        .R(1'b0));
  FDRE \tmp_5_reg_141_reg[0] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [16]),
        .Q(tmp_5_reg_141[0]),
        .R(1'b0));
  FDRE \tmp_5_reg_141_reg[1] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [17]),
        .Q(tmp_5_reg_141[1]),
        .R(1'b0));
  FDRE \tmp_5_reg_141_reg[2] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [18]),
        .Q(tmp_5_reg_141[2]),
        .R(1'b0));
  FDRE \tmp_5_reg_141_reg[3] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [19]),
        .Q(tmp_5_reg_141[3]),
        .R(1'b0));
  FDRE \tmp_5_reg_141_reg[4] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [20]),
        .Q(tmp_5_reg_141[4]),
        .R(1'b0));
  FDRE \tmp_5_reg_141_reg[5] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [21]),
        .Q(tmp_5_reg_141[5]),
        .R(1'b0));
  FDRE \tmp_5_reg_141_reg[6] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [22]),
        .Q(tmp_5_reg_141[6]),
        .R(1'b0));
  FDRE \tmp_5_reg_141_reg[7] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [23]),
        .Q(tmp_5_reg_141[7]),
        .R(1'b0));
  FDRE \tmp_7_reg_146_reg[0] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [24]),
        .Q(tmp_7_reg_146[0]),
        .R(1'b0));
  FDRE \tmp_7_reg_146_reg[1] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [25]),
        .Q(tmp_7_reg_146[1]),
        .R(1'b0));
  FDRE \tmp_7_reg_146_reg[2] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [26]),
        .Q(tmp_7_reg_146[2]),
        .R(1'b0));
  FDRE \tmp_7_reg_146_reg[3] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [27]),
        .Q(tmp_7_reg_146[3]),
        .R(1'b0));
  FDRE \tmp_7_reg_146_reg[4] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [28]),
        .Q(tmp_7_reg_146[4]),
        .R(1'b0));
  FDRE \tmp_7_reg_146_reg[5] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [29]),
        .Q(tmp_7_reg_146[5]),
        .R(1'b0));
  FDRE \tmp_7_reg_146_reg[6] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [30]),
        .Q(tmp_7_reg_146[6]),
        .R(1'b0));
  FDRE \tmp_7_reg_146_reg[7] 
       (.C(clk),
        .CE(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read),
        .D(\dout_buf_reg[31] [31]),
        .Q(tmp_7_reg_146[7]),
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
iDkWnzmSaSx0pdN54n8JwzMuSsHSSvd4CohMik8oU/hCcVXIqQZViUisVMjlgvEXOeZVdCd+dhcY
vaoV2Y2guX77JLdUjOKoBbcJNs1ClVqJnmaNEJMZU888nHaq+AML2KJy2nJnZp/zYU7DMQneCRhR
r2TRVTaBPTVEPEhrEx2jcGujJ0HxxyFjrMRgd/GQWaIN5mejW+sCWxzAO1AXEw3D57sV2VUKXWGR
I1VyRVQNhiTrnF6X2ncgaVLAkmKXR5qh7kgKCm2sI3GUHHpVJNXPpju92U5wMOGUgv17GPFeZfll
yXRdgQLSeCadgap4bd59ivFRY7oCWfjsgbxVPA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b4cCPWwR7SY1btoyZ9AZ+ayZhvdPDBY/njk0ophF3IabHNA4E7EInhbETRp0t08TRHscU2ACcSi/
SeyMxQLDNjFI1Oq0VV5CG2p6dGzodExTq/JuzAF6pjyTsA9yZEIAvj4LvsFnV/W8Xt0prr20k/77
AOKMKzQBjN3iNqfatAcvWFdojkAP8i61/jCRw6QIwu9puQwLTMA6AiSQjM1mAosnggiggNVYbxQS
zo1PW1BLR5DajHok50NM7MyaIHdreRi9fM0LhGMh2cdGBBYNpkOX/Kx80ZP2hjjIrML5kbH7w2+h
QMTjmnNn0liQjqpX1q2Bo5EOl/bgpapWAVw0cw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 81024)
`pragma protect data_block
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
FKtWJFjbV8YbCHGTl7kPp8WCJidR9n8A+r8r
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
