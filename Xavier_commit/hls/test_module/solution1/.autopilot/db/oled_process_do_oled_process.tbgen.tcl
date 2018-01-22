set moduleName oled_process_do_oled_process
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {oled_process::do_oled_process}
set C_modelType { void 0 }
set C_modelArgList {
	{ oled_process_sum float 32 regular {pointer 1}  }
	{ oled_process_save float 32 regular {pointer 1}  }
	{ en int 1 regular {pointer 1 volatile }  }
	{ s int 6 regular {pointer 1 volatile }  }
	{ e float 32 regular {fifo 0 volatile }  }
	{ s_f float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "oled_process_sum", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "oled_process.sum","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "oled_process_save", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "oled_process.save","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "en", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "oled_process.en.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "oled_process.s.m_if.Val.V","cData": "int6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "oled_process.e.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_f", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "oled_process.s_f.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ oled_process_sum sc_out sc_lv 32 signal 0 } 
	{ oled_process_sum_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ oled_process_save sc_out sc_lv 32 signal 1 } 
	{ oled_process_save_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ en sc_out sc_logic 1 signal 2 } 
	{ en_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ s sc_out sc_lv 6 signal 3 } 
	{ s_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ e_dout sc_in sc_lv 32 signal 4 } 
	{ e_empty_n sc_in sc_logic 1 signal 4 } 
	{ e_read sc_out sc_logic 1 signal 4 } 
	{ s_f_din sc_out sc_lv 32 signal 5 } 
	{ s_f_full_n sc_in sc_logic 1 signal 5 } 
	{ s_f_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "oled_process_sum", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "oled_process_sum", "role": "default" }} , 
 	{ "name": "oled_process_sum_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "oled_process_sum", "role": "ap_vld" }} , 
 	{ "name": "oled_process_save", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "oled_process_save", "role": "default" }} , 
 	{ "name": "oled_process_save_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "oled_process_save", "role": "ap_vld" }} , 
 	{ "name": "en", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "en", "role": "default" }} , 
 	{ "name": "en_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "en", "role": "ap_vld" }} , 
 	{ "name": "s", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "s_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s", "role": "ap_vld" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "s_f_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_f", "role": "din" }} , 
 	{ "name": "s_f_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_f", "role": "full_n" }} , 
 	{ "name": "s_f_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_f", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "oled_process_do_oled_process",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "oled_process_sum", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "oled_process_save", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "en", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_f", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_f_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.oled_process_faddbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.oled_process_fcmpcud_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	oled_process_do_oled_process {
		oled_process_sum {Type O LastRead -1 FirstWrite 2}
		oled_process_save {Type O LastRead -1 FirstWrite 3}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		en {Type O LastRead -1 FirstWrite 1}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type I LastRead 2 FirstWrite -1}
		s_f {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "771", "Max" : "771"}
	, {"Name" : "Interval", "Min" : "771", "Max" : "771"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	oled_process_sum { ap_vld {  { oled_process_sum out_data 1 32 }  { oled_process_sum_ap_vld out_vld 1 1 } } }
	oled_process_save { ap_vld {  { oled_process_save out_data 1 32 }  { oled_process_save_ap_vld out_vld 1 1 } } }
	en { ap_vld {  { en out_data 1 1 }  { en_ap_vld out_vld 1 1 } } }
	s { ap_vld {  { s out_data 1 6 }  { s_ap_vld out_vld 1 1 } } }
	e { ap_fifo {  { e_dout fifo_data 0 32 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	s_f { ap_fifo {  { s_f_din fifo_data 1 32 }  { s_f_full_n fifo_status 0 1 }  { s_f_write fifo_update 1 1 } } }
}
