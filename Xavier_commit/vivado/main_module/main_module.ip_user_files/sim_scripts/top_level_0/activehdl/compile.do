vlib work
vlib activehdl

vlib activehdl/xbip_utils_v3_0_8
vlib activehdl/axi_utils_v2_0_4
vlib activehdl/xbip_pipe_v3_0_4
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_4
vlib activehdl/xbip_dsp48_multadd_v3_0_4
vlib activehdl/xbip_bram18k_v3_0_4
vlib activehdl/mult_gen_v12_0_13
vlib activehdl/floating_point_v7_1_5
vlib activehdl/xil_defaultlib

vmap xbip_utils_v3_0_8 activehdl/xbip_utils_v3_0_8
vmap axi_utils_v2_0_4 activehdl/axi_utils_v2_0_4
vmap xbip_pipe_v3_0_4 activehdl/xbip_pipe_v3_0_4
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_4 activehdl/xbip_dsp48_addsub_v3_0_4
vmap xbip_dsp48_multadd_v3_0_4 activehdl/xbip_dsp48_multadd_v3_0_4
vmap xbip_bram18k_v3_0_4 activehdl/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 activehdl/mult_gen_v12_0_13
vmap floating_point_v7_1_5 activehdl/floating_point_v7_1_5
vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xbip_utils_v3_0_8 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_4 -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_4 -93 \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_4 -93 \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_4 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_13 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_5 -93 \
"../../../ipstatic/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../ipstatic/hdl/verilog/carre.v" \
"../../../ipstatic/hdl/verilog/carre_do_carre.v" \
"../../../ipstatic/hdl/verilog/carre_fmul_32ns_3bkb.v" \
"../../../ipstatic/hdl/verilog/comparateur.v" \
"../../../ipstatic/hdl/verilog/comparateur_do_comp.v" \
"../../../ipstatic/hdl/verilog/comparateur_fcmp_dEe.v" \
"../../../ipstatic/hdl/verilog/comparateur_sitofcud.v" \
"../../../ipstatic/hdl/verilog/doubleur.v" \
"../../../ipstatic/hdl/verilog/doubleur_do_split.v" \
"../../../ipstatic/hdl/verilog/fifo_w32_d8192_A.v" \
"../../../ipstatic/hdl/verilog/filtre1.v" \
"../../../ipstatic/hdl/verilog/filtre1_dadddsub_g8j.v" \
"../../../ipstatic/hdl/verilog/filtre1_dmul_64nshbi.v" \
"../../../ipstatic/hdl/verilog/filtre1_do_filtre.v" \
"../../../ipstatic/hdl/verilog/filtre1_filtre1_mibs.v" \
"../../../ipstatic/hdl/verilog/filtre1_fpext_32nfYi.v" \
"../../../ipstatic/hdl/verilog/filtre1_fptrunc_6eOg.v" \
"../../../ipstatic/hdl/verilog/filtre2.v" \
"../../../ipstatic/hdl/verilog/filtre2_dadd_64nskbM.v" \
"../../../ipstatic/hdl/verilog/filtre2_do_filtre.v" \
"../../../ipstatic/hdl/verilog/filtre2_filtre2_mlbW.v" \
"../../../ipstatic/hdl/verilog/racine.v" \
"../../../ipstatic/hdl/verilog/racine_do_racine.v" \
"../../../ipstatic/hdl/verilog/racine_fsqrt_32nsncg.v" \
"../../../ipstatic/hdl/verilog/top_level.v" \
"../../../ipstatic/hdl/verilog/UartModIn.v" \
"../../../ipstatic/hdl/verilog/UartModIn_do_recv.v" \
"../../../ipstatic/hdl/verilog/UartModOut.v" \
"../../../ipstatic/hdl/verilog/UartModOut_do_send.v" \

vcom -work xil_defaultlib -93 \
"../../../ipstatic/hdl/ip/top_level_ap_dadd_4_full_dsp_64.vhd" \
"../../../ipstatic/hdl/ip/top_level_ap_dadddsub_4_full_dsp_64.vhd" \
"../../../ipstatic/hdl/ip/top_level_ap_dmul_4_max_dsp_64.vhd" \
"../../../ipstatic/hdl/ip/top_level_ap_fcmp_0_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/top_level_ap_fmul_2_max_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/top_level_ap_fpext_0_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/top_level_ap_fptrunc_0_no_dsp_64.vhd" \
"../../../ipstatic/hdl/ip/top_level_ap_fsqrt_10_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/top_level_ap_sitofp_4_no_dsp_32.vhd" \
"../../../../main_module.srcs/sources_1/ip/top_level_0/sim/top_level_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

