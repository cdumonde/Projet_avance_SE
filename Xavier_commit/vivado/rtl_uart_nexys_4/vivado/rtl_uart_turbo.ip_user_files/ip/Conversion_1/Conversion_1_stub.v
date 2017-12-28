// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Nov 10 11:37:22 2017
// Host        : DESKTOP-RAH54SO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/ENSEIRB-MATMECA/PR310_Projet/Projet_avance_SE/Pierre_commit/HLS/sc_loop/Conversion_1/Conversion_1_stub.v
// Design      : Conversion_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Conversion,Vivado 2017.3" *)
module Conversion_1(clk, reset, e_dout, e_empty_n, e_read, s_din, 
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
