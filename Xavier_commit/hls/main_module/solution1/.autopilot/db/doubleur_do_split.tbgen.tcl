set moduleName doubleur_do_split
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {doubleur::do_split}
set C_modelType { void 0 }
set C_modelArgList {
	{ doubleur_to_split float 32 regular {pointer 1}  }
	{ e float 32 regular {fifo 0 volatile }  }
	{ s1 float 32 regular {fifo 1 volatile }  }
	{ s2 float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "doubleur_to_split", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "doubleur.to_split","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "doubleur.e.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "doubleur.s1.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "doubleur.s2.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ doubleur_to_split sc_out sc_lv 32 signal 0 } 
	{ doubleur_to_split_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ e_dout sc_in sc_lv 32 signal 1 } 
	{ e_empty_n sc_in sc_logic 1 signal 1 } 
	{ e_read sc_out sc_logic 1 signal 1 } 
	{ s1_din sc_out sc_lv 32 signal 2 } 
	{ s1_full_n sc_in sc_logic 1 signal 2 } 
	{ s1_write sc_out sc_logic 1 signal 2 } 
	{ s2_din sc_out sc_lv 32 signal 3 } 
	{ s2_full_n sc_in sc_logic 1 signal 3 } 
	{ s2_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "doubleur_to_split", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "doubleur_to_split", "role": "default" }} , 
 	{ "name": "doubleur_to_split_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "doubleur_to_split", "role": "ap_vld" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "s1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1", "role": "din" }} , 
 	{ "name": "s1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "full_n" }} , 
 	{ "name": "s1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "write" }} , 
 	{ "name": "s2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2", "role": "din" }} , 
 	{ "name": "s2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2", "role": "full_n" }} , 
 	{ "name": "s2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "doubleur_do_split",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "doubleur_to_split", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s2_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	doubleur_do_split {
		doubleur_to_split {Type O LastRead -1 FirstWrite 1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s1 {Type O LastRead -1 FirstWrite 1}
		s2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	doubleur_to_split { ap_vld {  { doubleur_to_split out_data 1 32 }  { doubleur_to_split_ap_vld out_vld 1 1 } } }
	e { ap_fifo {  { e_dout fifo_data 0 32 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	s1 { ap_fifo {  { s1_din fifo_data 1 32 }  { s1_full_n fifo_status 0 1 }  { s1_write fifo_update 1 1 } } }
	s2 { ap_fifo {  { s2_din fifo_data 1 32 }  { s2_full_n fifo_status 0 1 }  { s2_write fifo_update 1 1 } } }
}
