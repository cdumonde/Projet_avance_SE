############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sc_loop
set_top Conversion
add_files sc_loop/src/modules/Conversion.cpp
add_files sc_loop/src/modules/Conversion.h
add_files -tb sc_loop/src/gene/Gene.cpp
add_files -tb sc_loop/src/gene/Gene.h
add_files -tb sc_loop/src/analyseur/Terminal.cpp
add_files -tb sc_loop/src/analyseur/Terminal.h
add_files -tb sc_loop/src/main.cpp
open_solution "nexys4"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 10 -name default
set_clock_uncertainty 2
#source "./sc_loop/nexys4/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -version "1.2.2"
