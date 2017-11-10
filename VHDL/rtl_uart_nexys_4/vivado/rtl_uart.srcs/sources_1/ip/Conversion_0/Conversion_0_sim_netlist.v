// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
// Date        : Fri Nov 10 10:41:16 2017
// Host        : cdumonde running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/cedric/Documents/Cours_2A/Toto/Projet_avance_SE/VHDL/rtl_uart_nexys_4/vivado/rtl_uart.srcs/sources_1/ip/Conversion_0/Conversion_0_sim_netlist.v
// Design      : Conversion_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Conversion_0,Conversion,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Conversion,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module Conversion_0
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

  Conversion_0_Conversion U0
       (.clk(clk),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .reset(reset),
        .s_din(s_din),
        .s_full_n(s_full_n),
        .s_write(s_write));
endmodule

(* ORIG_REF_NAME = "Conversion" *) 
module Conversion_0_Conversion
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
  input [7:0]e_dout;
  input e_empty_n;
  output e_read;
  output [7:0]s_din;
  input s_full_n;
  output s_write;

  wire \<const0> ;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire s_full_n;

  assign s_din[7:1] = e_dout[7:1];
  assign s_din[0] = \<const0> ;
  assign s_write = e_read;
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    s_write_INST_0
       (.I0(s_full_n),
        .I1(e_empty_n),
        .O(e_read));
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
