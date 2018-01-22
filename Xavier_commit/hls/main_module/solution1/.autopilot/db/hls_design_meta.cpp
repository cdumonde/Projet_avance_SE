#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("clk", 1, hls_in, -1, "", "", 1),
	Port_Property("reset", 1, hls_in, -1, "", "", 1),
	Port_Property("e_dout", 8, hls_in, 2, "ap_fifo", "fifo_data", 2),
	Port_Property("e_empty_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 2),
	Port_Property("e_read", 1, hls_out, 2, "ap_fifo", "fifo_update", 2),
	Port_Property("s_din", 8, hls_out, 3, "ap_fifo", "fifo_data", 2),
	Port_Property("s_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 2),
	Port_Property("s_write", 1, hls_out, 3, "ap_fifo", "fifo_update", 2),
};
const char* HLS_Design_Meta::dut_name = "uart_wrapper::uart_wrapper";
