vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../ipstatic/hdl/vhdl/Conversion_do_conversion.vhd" \
"../../../ipstatic/hdl/vhdl/Conversion.vhd" \
"../../../../rtl_uart.srcs/sources_1/ip/Conversion_0/sim/Conversion_0.vhd" \


