set moduleName uart_wrapper_oled_do_action1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {uart_wrapper_oled::do_action1}
set C_modelType { void 0 }
set C_modelArgList {
	{ e int 8 regular {fifo 0 volatile }  }
	{ FIFO_I_1 float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "uart_wrapper_oled.e.m_if.Val","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "FIFO_I_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "uart_wrapper_oled.fin.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ e_dout sc_in sc_lv 8 signal 0 } 
	{ e_empty_n sc_in sc_logic 1 signal 0 } 
	{ e_read sc_out sc_logic 1 signal 0 } 
	{ FIFO_I_1_din sc_out sc_lv 32 signal 1 } 
	{ FIFO_I_1_full_n sc_in sc_logic 1 signal 1 } 
	{ FIFO_I_1_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "FIFO_I_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FIFO_I_1", "role": "din" }} , 
 	{ "name": "FIFO_I_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FIFO_I_1", "role": "full_n" }} , 
 	{ "name": "FIFO_I_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FIFO_I_1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "uart_wrapper_oled_do_action1",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "en", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s_i", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "uart_wrapper_oled_oled_sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_wrapper_oled_oled_save", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_wrapper_oled_oled_clk_m_if_Val", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_wrapper_oled_oled_reset_m_if_Val", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_wrapper_oled_oled_en_m_if_Val", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_wrapper_oled_oled_s_m_if_Val_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_wrapper_oled_oled_e_m_if_Val", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "uart_wrapper_oled_oled_s_f_m_if_Val", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "FIFO_I_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "FIFO_I_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "FIFO_O_1", "Type" : "Fifo", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	uart_wrapper_oled_do_action1 {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 4 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite -1}
		en {Type O LastRead -1 FirstWrite -1}
		s_i {Type O LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_sum {Type I LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_save {Type I LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_clk_m_if_Val {Type I LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_reset_m_if_Val {Type I LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_en_m_if_Val {Type I LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_s_m_if_Val_V {Type I LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_e_m_if_Val {Type I LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_s_f_m_if_Val {Type I LastRead -1 FirstWrite -1}
		FIFO_I_1 {Type O LastRead -1 FirstWrite 4}
		FIFO_O_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e { ap_fifo {  { e_dout fifo_data 0 8 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	FIFO_I_1 { ap_fifo {  { FIFO_I_1_din fifo_data 1 32 }  { FIFO_I_1_full_n fifo_status 0 1 }  { FIFO_I_1_write fifo_update 1 1 } } }
}
