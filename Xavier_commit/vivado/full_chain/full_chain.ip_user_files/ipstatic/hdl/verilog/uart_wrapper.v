// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="uart_wrapper,hls_ip_2017_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.816000,HLS_SYN_LAT=9,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=3,HLS_SYN_FF=382,HLS_SYN_LUT=441}" *)

module uart_wrapper (
        clk,
        reset,
        e_dout,
        e_empty_n,
        e_read,
        s_din,
        s_full_n,
        s_write
);


input   clk;
input   reset;
input  [7:0] e_dout;
input   e_empty_n;
output   e_read;
output  [7:0] s_din;
input   s_full_n;
output   s_write;

wire    grp_carre_fu_94_e_read;
wire   [31:0] grp_carre_fu_94_s_din;
wire    grp_carre_fu_94_s_write;
wire   [7:0] grp_uart_wrapper_do_action2_fu_110_s_din;
wire    grp_uart_wrapper_do_action2_fu_110_s_write;
wire    grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read;
wire    grp_uart_wrapper_do_action1_fu_136_e_read;
wire   [31:0] grp_uart_wrapper_do_action1_fu_136_FIFO_I_1_din;
wire    grp_uart_wrapper_do_action1_fu_136_FIFO_I_1_write;
wire   [31:0] FIFO_O_1_dout;
wire    FIFO_O_1_empty_n;
wire    FIFO_I_1_full_n;
wire   [31:0] FIFO_I_1_dout;
wire    FIFO_I_1_empty_n;
wire    FIFO_O_1_full_n;

carre grp_carre_fu_94(
    .e_dout(FIFO_I_1_dout),
    .e_empty_n(FIFO_I_1_empty_n),
    .e_read(grp_carre_fu_94_e_read),
    .s_din(grp_carre_fu_94_s_din),
    .s_full_n(FIFO_O_1_full_n),
    .s_write(grp_carre_fu_94_s_write),
    .clk(clk),
    .reset(reset)
);

uart_wrapper_do_action2 grp_uart_wrapper_do_action2_fu_110(
    .ap_clk(clk),
    .ap_rst(reset),
    .s_din(grp_uart_wrapper_do_action2_fu_110_s_din),
    .s_full_n(s_full_n),
    .s_write(grp_uart_wrapper_do_action2_fu_110_s_write),
    .FIFO_O_1_dout(FIFO_O_1_dout),
    .FIFO_O_1_empty_n(FIFO_O_1_empty_n),
    .FIFO_O_1_read(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read)
);

uart_wrapper_do_action1 grp_uart_wrapper_do_action1_fu_136(
    .ap_clk(clk),
    .ap_rst(reset),
    .e_dout(e_dout),
    .e_empty_n(e_empty_n),
    .e_read(grp_uart_wrapper_do_action1_fu_136_e_read),
    .FIFO_I_1_din(grp_uart_wrapper_do_action1_fu_136_FIFO_I_1_din),
    .FIFO_I_1_full_n(FIFO_I_1_full_n),
    .FIFO_I_1_write(grp_uart_wrapper_do_action1_fu_136_FIFO_I_1_write)
);

fifo_w32_d192_A FIFO_I_1_fifo_U(
    .clk(clk),
    .reset(reset),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grp_uart_wrapper_do_action1_fu_136_FIFO_I_1_din),
    .if_full_n(FIFO_I_1_full_n),
    .if_write(grp_uart_wrapper_do_action1_fu_136_FIFO_I_1_write),
    .if_dout(FIFO_I_1_dout),
    .if_empty_n(FIFO_I_1_empty_n),
    .if_read(grp_carre_fu_94_e_read)
);

fifo_w32_d192_A FIFO_O_1_fifo_U(
    .clk(clk),
    .reset(reset),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grp_carre_fu_94_s_din),
    .if_full_n(FIFO_O_1_full_n),
    .if_write(grp_carre_fu_94_s_write),
    .if_dout(FIFO_O_1_dout),
    .if_empty_n(FIFO_O_1_empty_n),
    .if_read(grp_uart_wrapper_do_action2_fu_110_FIFO_O_1_read)
);

assign e_read = grp_uart_wrapper_do_action1_fu_136_e_read;

assign s_din = grp_uart_wrapper_do_action2_fu_110_s_din;

assign s_write = grp_uart_wrapper_do_action2_fu_110_s_write;

endmodule //uart_wrapper
