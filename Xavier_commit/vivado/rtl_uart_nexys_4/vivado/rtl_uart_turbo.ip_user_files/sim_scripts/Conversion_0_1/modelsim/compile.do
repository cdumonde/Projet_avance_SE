vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../ipstatic/hdl/vhdl/Conversion_do_conversion.vhd" \
"../../../ipstatic/hdl/vhdl/Conversion.vhd" \
"../../../../../../Projet_avance_SE/Pierre_commit/HLS/sc_loop/Conversion_0_1/sim/Conversion_0.vhd" \


