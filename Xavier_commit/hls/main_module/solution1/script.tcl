############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project main_module
set_top top_level
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
add_files src/modules/racine.cpp
add_files src/modules/racine.h
add_files src/modules/top_level.cpp
add_files src/modules/top_level.h
open_solution "solution1"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 10 -name default
#source "./main_module/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
