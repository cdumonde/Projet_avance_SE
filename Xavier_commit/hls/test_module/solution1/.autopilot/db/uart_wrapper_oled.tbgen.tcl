set moduleName uart_wrapper_oled
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {uart_wrapper_oled::uart_wrapper_oled}
set C_modelType { void 0 }
set C_modelArgList {
	{ clk int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ e int 8 regular {fifo 0 volatile }  }
	{ s int 8 regular {fifo 1 volatile }  }
	{ en int 1 unused {pointer 1}  }
	{ s_i int 6 unused {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clk", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "uart_wrapper_oled.clk.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "uart_wrapper_oled.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "uart_wrapper_oled.e.m_if.Val","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "uart_wrapper_oled.s.m_if.Val","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "en", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "uart_wrapper_oled.en.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s_i", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "uart_wrapper_oled.s_i.m_if.Val.V","cData": "int6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ clk sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clk } 
	{ e_dout sc_in sc_lv 8 signal 2 clk } 
	{ e_empty_n sc_in sc_logic 1 signal 2 clk } 
	{ e_read sc_out sc_logic 1 signal 2 clk } 
	{ s_din sc_out sc_lv 8 signal 3 clk } 
	{ s_full_n sc_in sc_logic 1 signal 3 clk } 
	{ s_write sc_out sc_logic 1 signal 3 clk } 
	{ en sc_out sc_logic 1 signal 4 clk } 
	{ s_i sc_out sc_lv 6 signal 5 clk } 
}
set NewPortList {[ 
	{ "name": "clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clk", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s", "role": "din" }} , 
 	{ "name": "s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "full_n" }} , 
 	{ "name": "s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "write" }} , 
 	{ "name": "en", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "en", "role": "default" }} , 
 	{ "name": "s_i", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "s_i", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "6", "7", "8"],
		"CDFG" : "uart_wrapper_oled",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "clk"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "reset"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "e"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "s"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "s"}]},
			{"Name" : "en", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "en"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "en"}]},
			{"Name" : "s_i", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "s_i"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "s_i"}]},
			{"Name" : "uart_wrapper_oled_oled_sum", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "uart_wrapper_oled_oled_sum"},
					{"ID" : "1", "SubInstance" : "grp_oled_process_fu_106", "Port" : "oled_process_sum"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "uart_wrapper_oled_oled_sum"}]},
			{"Name" : "uart_wrapper_oled_oled_save", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "uart_wrapper_oled_oled_save"},
					{"ID" : "1", "SubInstance" : "grp_oled_process_fu_106", "Port" : "oled_process_save"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "uart_wrapper_oled_oled_save"}]},
			{"Name" : "clk_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "uart_wrapper_oled_oled_clk_m_if_Val"},
					{"ID" : "1", "SubInstance" : "grp_oled_process_fu_106", "Port" : "clk"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "uart_wrapper_oled_oled_clk_m_if_Val"}]},
			{"Name" : "reset_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "uart_wrapper_oled_oled_reset_m_if_Val"},
					{"ID" : "1", "SubInstance" : "grp_oled_process_fu_106", "Port" : "reset"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "uart_wrapper_oled_oled_reset_m_if_Val"}]},
			{"Name" : "en_form", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "uart_wrapper_oled_oled_en_m_if_Val"},
					{"ID" : "1", "SubInstance" : "grp_oled_process_fu_106", "Port" : "en"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "uart_wrapper_oled_oled_en_m_if_Val"}]},
			{"Name" : "s_i_form", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "uart_wrapper_oled_oled_s_m_if_Val_V"},
					{"ID" : "1", "SubInstance" : "grp_oled_process_fu_106", "Port" : "s"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "uart_wrapper_oled_oled_s_m_if_Val_V"}]},
			{"Name" : "FIFO_I_1_form", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "uart_wrapper_oled_oled_e_m_if_Val"},
					{"ID" : "1", "SubInstance" : "grp_oled_process_fu_106", "Port" : "e"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "uart_wrapper_oled_oled_e_m_if_Val"}]},
			{"Name" : "FIFO_O_1_form", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "uart_wrapper_oled_oled_s_f_m_if_Val"},
					{"ID" : "1", "SubInstance" : "grp_oled_process_fu_106", "Port" : "s_f"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "uart_wrapper_oled_oled_s_f_m_if_Val"}]},
			{"Name" : "FIFO_I_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "FIFO_I_1"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "FIFO_I_1"}]},
			{"Name" : "FIFO_O_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_uart_wrapper_oled_do_action1_fu_164", "Port" : "FIFO_O_1"},
					{"ID" : "5", "SubInstance" : "grp_uart_wrapper_oled_do_action2_fu_128", "Port" : "FIFO_O_1"}]},
			{"Name" : "oled_process_ssdm_thread_M_do_oled_process", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_oled_process_fu_106", "Port" : "oled_process_ssdm_thread_M_do_oled_process"}]},
			{"Name" : "uart_wrapper_oled_ssdm_thread_M_do_action1", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_wrapper_oled_ssdm_thread_M_do_action2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_oled_process_fu_106", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "oled_process_sum"}]},
			{"Name" : "oled_process_save", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "oled_process_save"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "reset"}]},
			{"Name" : "en", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "en"}]},
			{"Name" : "s", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "s"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "e"}]},
			{"Name" : "s_f", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_oled_process_do_oled_process_fu_70", "Port" : "s_f"}]},
			{"Name" : "oled_process_ssdm_thread_M_do_oled_process", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_oled_process_fu_106.grp_oled_process_do_oled_process_fu_70", "Parent" : "1", "Child" : ["3", "4"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_oled_process_fu_106.grp_oled_process_do_oled_process_fu_70.oled_process_faddbkb_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_oled_process_fu_106.grp_oled_process_do_oled_process_fu_70.oled_process_fcmpcud_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_uart_wrapper_oled_do_action2_fu_128", "Parent" : "0",
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
					{"Name" : "FIFO_O_1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_uart_wrapper_oled_do_action1_fu_164", "Parent" : "0",
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
			{"Name" : "FIFO_O_1", "Type" : "Fifo", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FIFO_I_1_fifo_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FIFO_O_1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	uart_wrapper_oled {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 4 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite -1}
		en {Type O LastRead -1 FirstWrite -1}
		s_i {Type O LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_sum {Type IO LastRead -1 FirstWrite -1}
		uart_wrapper_oled_oled_save {Type IO LastRead -1 FirstWrite -1}
		clk_form {Type I LastRead -1 FirstWrite -1}
		reset_form {Type I LastRead -1 FirstWrite -1}
		en_form {Type IO LastRead -1 FirstWrite -1}
		s_i_form {Type IO LastRead -1 FirstWrite -1}
		FIFO_I_1_form {Type I LastRead -1 FirstWrite -1}
		FIFO_O_1_form {Type IO LastRead -1 FirstWrite -1}
		FIFO_I_1 {Type IO LastRead -1 FirstWrite -1}
		FIFO_O_1 {Type IO LastRead -1 FirstWrite -1}
		oled_process_ssdm_thread_M_do_oled_process {Type I LastRead -1 FirstWrite -1}
		uart_wrapper_oled_ssdm_thread_M_do_action1 {Type I LastRead -1 FirstWrite -1}
		uart_wrapper_oled_ssdm_thread_M_do_action2 {Type I LastRead -1 FirstWrite -1}}
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
		s_f {Type O LastRead -1 FirstWrite 2}}
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
		FIFO_O_1 {Type I LastRead 1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "1", "Max" : "780"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "781"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e { ap_fifo {  { e_dout fifo_data 0 8 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_din fifo_data 1 8 }  { s_full_n fifo_status 0 1 }  { s_write fifo_update 1 1 } } }
	en { ap_vld {  { en out_data 1 1 } } }
	s_i { ap_vld {  { s_i out_data 1 6 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	e { fifo_read 2 has_conditional }
	s { fifo_write 2 has_conditional }
	FIFO_I_1_form { fifo_read 3 has_conditional }
	FIFO_O_1_form { fifo_write 3 has_conditional }
	FIFO_I_1 { fifo_write 2 has_conditional }
	FIFO_O_1 { fifo_write 2 has_conditional }
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
