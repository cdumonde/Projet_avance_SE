set moduleName filtre1_do_filtre
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {filtre1::do_filtre}
set C_modelType { void 0 }
set C_modelArgList {
	{ filtre1_y0 float 32 regular {pointer 1}  }
	{ filtre1_x0 float 32 regular {pointer 1}  }
	{ filtre1_mem_x float 32 regular {array 2 { 2 0 } 1 1 }  }
	{ filtre1_mem_y float 32 regular {array 2 { 2 0 } 1 1 }  }
	{ e float 32 regular {fifo 0 volatile }  }
	{ s float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "filtre1_y0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "filtre1.y0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "filtre1_x0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "filtre1.x0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "filtre1_mem_x", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "filtre1.mem_x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "filtre1_mem_y", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "filtre1.mem_y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "filtre1.e.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "filtre1.s.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ filtre1_y0 sc_out sc_lv 32 signal 0 } 
	{ filtre1_y0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ filtre1_x0 sc_out sc_lv 32 signal 1 } 
	{ filtre1_x0_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ filtre1_mem_x_address0 sc_out sc_lv 1 signal 2 } 
	{ filtre1_mem_x_ce0 sc_out sc_logic 1 signal 2 } 
	{ filtre1_mem_x_we0 sc_out sc_logic 1 signal 2 } 
	{ filtre1_mem_x_d0 sc_out sc_lv 32 signal 2 } 
	{ filtre1_mem_x_q0 sc_in sc_lv 32 signal 2 } 
	{ filtre1_mem_x_address1 sc_out sc_lv 1 signal 2 } 
	{ filtre1_mem_x_ce1 sc_out sc_logic 1 signal 2 } 
	{ filtre1_mem_x_we1 sc_out sc_logic 1 signal 2 } 
	{ filtre1_mem_x_d1 sc_out sc_lv 32 signal 2 } 
	{ filtre1_mem_y_address0 sc_out sc_lv 1 signal 3 } 
	{ filtre1_mem_y_ce0 sc_out sc_logic 1 signal 3 } 
	{ filtre1_mem_y_we0 sc_out sc_logic 1 signal 3 } 
	{ filtre1_mem_y_d0 sc_out sc_lv 32 signal 3 } 
	{ filtre1_mem_y_q0 sc_in sc_lv 32 signal 3 } 
	{ filtre1_mem_y_address1 sc_out sc_lv 1 signal 3 } 
	{ filtre1_mem_y_ce1 sc_out sc_logic 1 signal 3 } 
	{ filtre1_mem_y_we1 sc_out sc_logic 1 signal 3 } 
	{ filtre1_mem_y_d1 sc_out sc_lv 32 signal 3 } 
	{ e_dout sc_in sc_lv 32 signal 4 } 
	{ e_empty_n sc_in sc_logic 1 signal 4 } 
	{ e_read sc_out sc_logic 1 signal 4 } 
	{ s_din sc_out sc_lv 32 signal 5 } 
	{ s_full_n sc_in sc_logic 1 signal 5 } 
	{ s_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "filtre1_y0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtre1_y0", "role": "default" }} , 
 	{ "name": "filtre1_y0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "filtre1_y0", "role": "ap_vld" }} , 
 	{ "name": "filtre1_x0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtre1_x0", "role": "default" }} , 
 	{ "name": "filtre1_x0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "filtre1_x0", "role": "ap_vld" }} , 
 	{ "name": "filtre1_mem_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_x", "role": "address0" }} , 
 	{ "name": "filtre1_mem_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_x", "role": "ce0" }} , 
 	{ "name": "filtre1_mem_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_x", "role": "we0" }} , 
 	{ "name": "filtre1_mem_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtre1_mem_x", "role": "d0" }} , 
 	{ "name": "filtre1_mem_x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtre1_mem_x", "role": "q0" }} , 
 	{ "name": "filtre1_mem_x_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_x", "role": "address1" }} , 
 	{ "name": "filtre1_mem_x_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_x", "role": "ce1" }} , 
 	{ "name": "filtre1_mem_x_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_x", "role": "we1" }} , 
 	{ "name": "filtre1_mem_x_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtre1_mem_x", "role": "d1" }} , 
 	{ "name": "filtre1_mem_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_y", "role": "address0" }} , 
 	{ "name": "filtre1_mem_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_y", "role": "ce0" }} , 
 	{ "name": "filtre1_mem_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_y", "role": "we0" }} , 
 	{ "name": "filtre1_mem_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtre1_mem_y", "role": "d0" }} , 
 	{ "name": "filtre1_mem_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtre1_mem_y", "role": "q0" }} , 
 	{ "name": "filtre1_mem_y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_y", "role": "address1" }} , 
 	{ "name": "filtre1_mem_y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_y", "role": "ce1" }} , 
 	{ "name": "filtre1_mem_y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtre1_mem_y", "role": "we1" }} , 
 	{ "name": "filtre1_mem_y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtre1_mem_y", "role": "d1" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "din" }} , 
 	{ "name": "s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "full_n" }} , 
 	{ "name": "s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "filtre1_do_filtre",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "filtre1_y0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "filtre1_x0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "filtre1_mem_x", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "filtre1_mem_y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtre1_fptrunc_6eOg_U36", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtre1_fpext_32nfYi_U37", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtre1_fpext_32nfYi_U38", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtre1_dadddsub_g8j_U39", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtre1_dmul_64nshbi_U40", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filtre1_dmul_64nshbi_U41", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	filtre1_do_filtre {
		filtre1_y0 {Type O LastRead -1 FirstWrite 23}
		filtre1_x0 {Type O LastRead -1 FirstWrite 3}
		filtre1_mem_x {Type IO LastRead 2 FirstWrite 0}
		filtre1_mem_y {Type IO LastRead 8 FirstWrite 0}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 23}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "47", "Max" : "47"}
	, {"Name" : "Interval", "Min" : "47", "Max" : "47"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	filtre1_y0 { ap_vld {  { filtre1_y0 out_data 1 32 }  { filtre1_y0_ap_vld out_vld 1 1 } } }
	filtre1_x0 { ap_vld {  { filtre1_x0 out_data 1 32 }  { filtre1_x0_ap_vld out_vld 1 1 } } }
	filtre1_mem_x { ap_memory {  { filtre1_mem_x_address0 mem_address 1 1 }  { filtre1_mem_x_ce0 mem_ce 1 1 }  { filtre1_mem_x_we0 mem_we 1 1 }  { filtre1_mem_x_d0 mem_din 1 32 }  { filtre1_mem_x_q0 mem_dout 0 32 }  { filtre1_mem_x_address1 mem_address 1 1 }  { filtre1_mem_x_ce1 mem_ce 1 1 }  { filtre1_mem_x_we1 mem_we 1 1 }  { filtre1_mem_x_d1 mem_din 1 32 } } }
	filtre1_mem_y { ap_memory {  { filtre1_mem_y_address0 mem_address 1 1 }  { filtre1_mem_y_ce0 mem_ce 1 1 }  { filtre1_mem_y_we0 mem_we 1 1 }  { filtre1_mem_y_d0 mem_din 1 32 }  { filtre1_mem_y_q0 mem_dout 0 32 }  { filtre1_mem_y_address1 mem_address 1 1 }  { filtre1_mem_y_ce1 mem_ce 1 1 }  { filtre1_mem_y_we1 mem_we 1 1 }  { filtre1_mem_y_d1 mem_din 1 32 } } }
	e { ap_fifo {  { e_dout fifo_data 0 32 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_din fifo_data 1 32 }  { s_full_n fifo_status 0 1 }  { s_write fifo_update 1 1 } } }
}
