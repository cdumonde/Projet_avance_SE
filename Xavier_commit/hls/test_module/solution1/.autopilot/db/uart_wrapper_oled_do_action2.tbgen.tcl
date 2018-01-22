set moduleName uart_wrapper_oled_do_action2
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {uart_wrapper_oled::do_action2}
set C_modelType { void 0 }
set C_modelArgList {
	{ s int 8 regular {fifo 1 volatile }  }
	{ FIFO_O_1 float 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "uart_wrapper_oled.s.m_if.Val","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "FIFO_O_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "uart_wrapper_oled.fou.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ s_din sc_out sc_lv 8 signal 0 } 
	{ s_full_n sc_in sc_logic 1 signal 0 } 
	{ s_write sc_out sc_logic 1 signal 0 } 
	{ FIFO_O_1_dout sc_in sc_lv 32 signal 1 } 
	{ FIFO_O_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ FIFO_O_1_read sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s", "role": "din" }} , 
 	{ "name": "s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "full_n" }} , 
 	{ "name": "s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "write" }} , 
 	{ "name": "FIFO_O_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FIFO_O_1", "role": "dout" }} , 
 	{ "name": "FIFO_O_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FIFO_O_1", "role": "empty_n" }} , 
 	{ "name": "FIFO_O_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FIFO_O_1", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "uart_wrapper_oled_do_action2",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "FIFO_I_1", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "FIFO_O_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "FIFO_O_1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	uart_wrapper_oled_do_action2 {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead -1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 1}
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
		FIFO_I_1 {Type I LastRead -1 FirstWrite -1}
		FIFO_O_1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s { ap_fifo {  { s_din fifo_data 1 8 }  { s_full_n fifo_status 0 1 }  { s_write fifo_update 1 1 } } }
	FIFO_O_1 { ap_fifo {  { FIFO_O_1_dout fifo_data 0 32 }  { FIFO_O_1_empty_n fifo_status 0 1 }  { FIFO_O_1_read fifo_update 1 1 } } }
}
