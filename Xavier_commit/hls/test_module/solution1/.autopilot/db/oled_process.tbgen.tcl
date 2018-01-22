set moduleName oled_process
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {oled_process::oled_process.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ clk int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ en int 1 regular {pointer 1 volatile }  }
	{ s int 6 regular {pointer 1 volatile }  }
	{ e float 32 regular {fifo 0 volatile }  }
	{ s_f float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clk", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "oled_process.clk.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "oled_process.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "en", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "oled_process.en.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "oled_process.s.m_if.Val.V","cData": "int6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "oled_process.e.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_f", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "oled_process.s_f.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ clk sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clk } 
	{ en sc_out sc_logic 1 signal 2 clk } 
	{ s sc_out sc_lv 6 signal 3 clk } 
	{ e_dout sc_in sc_lv 32 signal 4 clk } 
	{ e_empty_n sc_in sc_logic 1 signal 4 clk } 
	{ e_read sc_out sc_logic 1 signal 4 clk } 
	{ s_f_din sc_out sc_lv 32 signal 5 clk } 
	{ s_f_full_n sc_in sc_logic 1 signal 5 clk } 
	{ s_f_write sc_out sc_logic 1 signal 5 clk } 
}
set NewPortList {[ 
	{ "name": "clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clk", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "en", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "en", "role": "default" }} , 
 	{ "name": "s", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "s_f_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_f", "role": "din" }} , 
 	{ "name": "s_f_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_f", "role": "full_n" }} , 
 	{ "name": "s_f_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_f", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "oled_process",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "oled_process_sum", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "oled_process_sum"}]},
			{"Name" : "oled_process_save", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "oled_process_save"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "reset"}]},
			{"Name" : "en", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "en"}]},
			{"Name" : "s", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "s"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "e"}]},
			{"Name" : "s_f", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "s_f"}]},
			{"Name" : "oled_process_ssdm_thread_M_do_oled_process", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_oled_process_do_oled_process_fu_70", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_oled_process_do_oled_process_fu_70.oled_process_faddbkb_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_oled_process_do_oled_process_fu_70.oled_process_fcmpcud_U2", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	oled_process {
		oled_process_sum {Type O LastRead -1 FirstWrite -1}
		oled_process_save {Type O LastRead -1 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		en {Type O LastRead -1 FirstWrite 1}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type I LastRead 2 FirstWrite -1}
		s_f {Type O LastRead -1 FirstWrite 2}
		oled_process_ssdm_thread_M_do_oled_process {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "0", "Max" : "772"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "773"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	en { ap_vld {  { en out_data 1 1 } } }
	s { ap_vld {  { s out_data 1 6 } } }
	e { ap_fifo {  { e_dout fifo_data 0 32 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	s_f { ap_fifo {  { s_f_din fifo_data 1 32 }  { s_f_full_n fifo_status 0 1 }  { s_f_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	e { fifo_read 1 has_conditional }
	s_f { fifo_write 1 has_conditional }
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
