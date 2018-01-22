// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Thu Jan 18 11:18:44 2018
// Host        : XAVIERMARINB4D2 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top uart_wrapper_0 -prefix
//               uart_wrapper_0_ uart_wrapper_0_stub.v
// Design      : uart_wrapper_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "uart_wrapper,Vivado 2017.3" *)
module uart_wrapper_0(clk, reset, e_dout, e_empty_n, e_read, s_din, 
  s_full_n, s_write)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,e_dout[7:0],e_empty_n,e_read,s_din[7:0],s_full_n,s_write" */;
  input clk;
  input reset;
  input [7:0]e_dout;
  input e_empty_n;
  output e_read;
  output [7:0]s_din;
  input s_full_n;
  output s_write;
endmodule
