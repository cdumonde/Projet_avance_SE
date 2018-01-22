############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project main_module
set_top uart_wrapper
add_files src/modules/UartModIn.cpp
add_files src/modules/UartModIn.h
add_files src/modules/UartModOut.cpp
add_files src/modules/UartModOut.h
add_files src/modules/carre.cpp
add_files src/modules/carre.h
add_files src/modules/comparateur.cpp
add_files src/modules/comparateur.h
add_files src/modules/constant.h
add_files src/modules/doubleur.cpp
add_files src/modules/doubleur.h
add_files src/modules/filtre1.cpp
add_files src/modules/filtre1.h
add_files src/modules/filtre2.cpp
add_files src/modules/filtre2.h
add_files src/modules/oled_process.cpp
add_files src/modules/oled_process.h
add_files src/modules/racine.cpp
add_files src/modules/racine.h
add_files src/modules/top_level.cpp
add_files src/modules/top_level.h
add_files src/modules/uart_wrapper.cpp
add_files src/modules/uart_wrapper.h
add_files src/modules/uart_wrapper_oled.cpp
add_files src/modules/uart_wrapper_oled.h
add_files -tb src/tb/tb_carre.cpp
add_files -tb src/analyseur/sc_store.h
add_files -tb src/analyseur/sc_store.cpp
add_files -tb src/gene/gene.h
add_files -tb src/gene/gene.cpp
add_files -tb src/gene/carre_soft.h
add_files -tb src/gene/carre_soft.cpp
add_files -tb src/analyseur/analyseur.h
add_files -tb src/analyseur/analyseur.cpp
open_solution "solution1"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 10 -name default
#source "./main_module/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -tool modelsim
export_design -rtl vhdl -format ip_catalog
