vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../ipstatic/hdl/vhdl/Conversion_do_conversion.vhd" \
"../../../ipstatic/hdl/vhdl/Conversion.vhd" \
"../../../../../../Projet_avance_SE/Pierre_commit/HLS/sc_loop/Conversion_1/sim/Conversion_1.vhd" \


