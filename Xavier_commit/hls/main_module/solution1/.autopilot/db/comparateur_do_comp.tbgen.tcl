set moduleName comparateur_do_comp
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {comparateur::do_comp}
set C_modelType { void 0 }
set C_modelArgList {
	{ comparateur_in1 float 32 regular {pointer 1}  }
	{ comparateur_seuil float 32 regular {pointer 1}  }
	{ comparateur_result float 32 regular {pointer 1}  }
	{ e1 float 32 regular {fifo 0 volatile }  }
	{ e2 float 32 regular {fifo 0 volatile }  }
	{ s float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "comparateur_in1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "comparateur.in1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "comparateur_seuil", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "comparateur.seuil","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "comparateur_result", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "comparateur.result","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "comparateur.e1.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "comparateur.e2.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "comparateur.s.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ comparateur_in1 sc_out sc_lv 32 signal 0 } 
	{ comparateur_in1_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ comparateur_seuil sc_out sc_lv 32 signal 1 } 
	{ comparateur_seuil_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ comparateur_result sc_out sc_lv 32 signal 2 } 
	{ comparateur_result_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ e1_dout sc_in sc_lv 32 signal 3 } 
	{ e1_empty_n sc_in sc_logic 1 signal 3 } 
	{ e1_read sc_out sc_logic 1 signal 3 } 
	{ e2_dout sc_in sc_lv 32 signal 4 } 
	{ e2_empty_n sc_in sc_logic 1 signal 4 } 
	{ e2_read sc_out sc_logic 1 signal 4 } 
	{ s_din sc_out sc_lv 32 signal 5 } 
	{ s_full_n sc_in sc_logic 1 signal 5 } 
	{ s_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "comparateur_in1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "comparateur_in1", "role": "default" }} , 
 	{ "name": "comparateur_in1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "comparateur_in1", "role": "ap_vld" }} , 
 	{ "name": "comparateur_seuil", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "comparateur_seuil", "role": "default" }} , 
 	{ "name": "comparateur_seuil_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "comparateur_seuil", "role": "ap_vld" }} , 
 	{ "name": "comparateur_result", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "comparateur_result", "role": "default" }} , 
 	{ "name": "comparateur_result_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "comparateur_result", "role": "ap_vld" }} , 
 	{ "name": "e1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e1", "role": "dout" }} , 
 	{ "name": "e1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e1", "role": "empty_n" }} , 
 	{ "name": "e1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e1", "role": "read" }} , 
 	{ "name": "e2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e2", "role": "dout" }} , 
 	{ "name": "e2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e2", "role": "empty_n" }} , 
 	{ "name": "e2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e2", "role": "read" }} , 
 	{ "name": "s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "din" }} , 
 	{ "name": "s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "full_n" }} , 
 	{ "name": "s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "comparateur_do_comp",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "comparateur_in1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "comparateur_seuil", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "comparateur_result", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "e2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.comparateur_sitofcud_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.comparateur_fcmp_dEe_U17", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	comparateur_do_comp {
		comparateur_in1 {Type O LastRead -1 FirstWrite 10}
		comparateur_seuil {Type O LastRead -1 FirstWrite 10}
		comparateur_result {Type O LastRead -1 FirstWrite 11}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e1 {Type I LastRead 1 FirstWrite -1}
		e2 {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	comparateur_in1 { ap_vld {  { comparateur_in1 out_data 1 32 }  { comparateur_in1_ap_vld out_vld 1 1 } } }
	comparateur_seuil { ap_vld {  { comparateur_seuil out_data 1 32 }  { comparateur_seuil_ap_vld out_vld 1 1 } } }
	comparateur_result { ap_vld {  { comparateur_result out_data 1 32 }  { comparateur_result_ap_vld out_vld 1 1 } } }
	e1 { ap_fifo {  { e1_dout fifo_data 0 32 }  { e1_empty_n fifo_status 0 1 }  { e1_read fifo_update 1 1 } } }
	e2 { ap_fifo {  { e2_dout fifo_data 0 32 }  { e2_empty_n fifo_status 0 1 }  { e2_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_din fifo_data 1 32 }  { s_full_n fifo_status 0 1 }  { s_write fifo_update 1 1 } } }
}
