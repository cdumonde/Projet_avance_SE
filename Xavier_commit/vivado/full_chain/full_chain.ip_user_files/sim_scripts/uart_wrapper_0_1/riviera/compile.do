vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_8
vlib riviera/axi_utils_v2_0_4
vlib riviera/xbip_pipe_v3_0_4
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_4
vlib riviera/xbip_dsp48_multadd_v3_0_4
vlib riviera/xbip_bram18k_v3_0_4
vlib riviera/mult_gen_v12_0_13
vlib riviera/floating_point_v7_1_5
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_8 riviera/xbip_utils_v3_0_8
vmap axi_utils_v2_0_4 riviera/axi_utils_v2_0_4
vmap xbip_pipe_v3_0_4 riviera/xbip_pipe_v3_0_4
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_4 riviera/xbip_dsp48_addsub_v3_0_4
vmap xbip_dsp48_multadd_v3_0_4 riviera/xbip_dsp48_multadd_v3_0_4
vmap xbip_bram18k_v3_0_4 riviera/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 riviera/mult_gen_v12_0_13
vmap floating_point_v7_1_5 riviera/floating_point_v7_1_5
vmap xil_defaultlib riviera/xil_defaultlib

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

vcom -work xil_defaultlib -93 \
"../../../ipstatic/hdl/vhdl/carre.vhd" \
"../../../ipstatic/hdl/vhdl/carre_do_carre.vhd" \
"../../../ipstatic/hdl/vhdl/carre_fmul_32ns_3bkb.vhd" \
"../../../ipstatic/hdl/vhdl/comparateur.vhd" \
"../../../ipstatic/hdl/vhdl/comparateur_do_comp.vhd" \
"../../../ipstatic/hdl/vhdl/comparateur_fcmp_dEe.vhd" \
"../../../ipstatic/hdl/vhdl/comparateur_sitofcud.vhd" \
"../../../ipstatic/hdl/vhdl/doubleur.vhd" \
"../../../ipstatic/hdl/vhdl/doubleur_do_split.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w32_d192_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w32_d8192_A.vhd" \
"../../../ipstatic/hdl/vhdl/filtre1.vhd" \
"../../../ipstatic/hdl/vhdl/filtre1_dadddsub_g8j.vhd" \
"../../../ipstatic/hdl/vhdl/filtre1_dmul_64nshbi.vhd" \
"../../../ipstatic/hdl/vhdl/filtre1_do_filtre.vhd" \
"../../../ipstatic/hdl/vhdl/filtre1_filtre1_mibs.vhd" \
"../../../ipstatic/hdl/vhdl/filtre1_fpext_32nfYi.vhd" \
"../../../ipstatic/hdl/vhdl/filtre1_fptrunc_6eOg.vhd" \
"../../../ipstatic/hdl/vhdl/filtre2.vhd" \
"../../../ipstatic/hdl/vhdl/filtre2_dadd_64nskbM.vhd" \
"../../../ipstatic/hdl/vhdl/filtre2_do_filtre.vhd" \
"../../../ipstatic/hdl/vhdl/filtre2_filtre2_mlbW.vhd" \
"../../../ipstatic/hdl/vhdl/racine.vhd" \
"../../../ipstatic/hdl/vhdl/racine_do_racine.vhd" \
"../../../ipstatic/hdl/vhdl/racine_fsqrt_32nsncg.vhd" \
"../../../ipstatic/hdl/vhdl/top_level.vhd" \
"../../../ipstatic/hdl/vhdl/uart_wrapper_do_action1.vhd" \
"../../../ipstatic/hdl/vhdl/uart_wrapper_do_action2.vhd" \
"../../../ipstatic/hdl/vhdl/uart_wrapper.vhd" \
"../../../ipstatic/hdl/ip/uart_wrapper_ap_dadd_4_full_dsp_64.vhd" \
"../../../ipstatic/hdl/ip/uart_wrapper_ap_dadddsub_4_full_dsp_64.vhd" \
"../../../ipstatic/hdl/ip/uart_wrapper_ap_dmul_4_max_dsp_64.vhd" \
"../../../ipstatic/hdl/ip/uart_wrapper_ap_fcmp_0_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/uart_wrapper_ap_fmul_2_max_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/uart_wrapper_ap_fpext_0_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/uart_wrapper_ap_fptrunc_0_no_dsp_64.vhd" \
"../../../ipstatic/hdl/ip/uart_wrapper_ap_fsqrt_10_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/uart_wrapper_ap_sitofp_4_no_dsp_32.vhd" \
"../../../../full_chain.srcs/sources_1/ip/uart_wrapper_0_1/sim/uart_wrapper_0.vhd" \

