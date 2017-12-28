set moduleName comparateur
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {comparateur::comparateur.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ clk int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ e1 float 32 regular {fifo 0 volatile }  }
	{ e2 float 32 regular {fifo 0 volatile }  }
	{ s float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clk", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "comparateur.clk.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "comparateur.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "comparateur.e1.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "comparateur.e2.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "comparateur.s.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ clk sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clk } 
	{ e1_dout sc_in sc_lv 32 signal 2 clk } 
	{ e1_empty_n sc_in sc_logic 1 signal 2 clk } 
	{ e1_read sc_out sc_logic 1 signal 2 clk } 
	{ e2_dout sc_in sc_lv 32 signal 3 clk } 
	{ e2_empty_n sc_in sc_logic 1 signal 3 clk } 
	{ e2_read sc_out sc_logic 1 signal 3 clk } 
	{ s_din sc_out sc_lv 32 signal 4 clk } 
	{ s_full_n sc_in sc_logic 1 signal 4 clk } 
	{ s_write sc_out sc_logic 1 signal 4 clk } 
}
set NewPortList {[ 
	{ "name": "clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clk", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "comparateur",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "comparateur_in1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "comparateur_in1"}]},
			{"Name" : "comparateur_seuil", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "comparateur_seuil"}]},
			{"Name" : "comparateur_result", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "comparateur_result"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "reset"}]},
			{"Name" : "e1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "e1"}]},
			{"Name" : "e2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "e2"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "s"}]},
			{"Name" : "comparateur_ssdm_thread_M_do_comp", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_do_comp_fu_74", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_do_comp_fu_74.comparateur_sitofcud_U16", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_do_comp_fu_74.comparateur_fcmp_dEe_U17", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	comparateur {
		comparateur_in1 {Type O LastRead -1 FirstWrite -1}
		comparateur_seuil {Type O LastRead -1 FirstWrite -1}
		comparateur_result {Type O LastRead -1 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e1 {Type I LastRead 1 FirstWrite -1}
		e2 {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 11}
		comparateur_ssdm_thread_M_do_comp {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "0", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e1 { ap_fifo {  { e1_dout fifo_data 0 32 }  { e1_empty_n fifo_status 0 1 }  { e1_read fifo_update 1 1 } } }
	e2 { ap_fifo {  { e2_dout fifo_data 0 32 }  { e2_empty_n fifo_status 0 1 }  { e2_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_din fifo_data 1 32 }  { s_full_n fifo_status 0 1 }  { s_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	e1 { fifo_read 1 has_conditional }
	e2 { fifo_read 1 has_conditional }
	s { fifo_write 1 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
