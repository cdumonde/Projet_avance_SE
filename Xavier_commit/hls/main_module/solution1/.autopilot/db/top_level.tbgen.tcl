set moduleName top_level
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {top_level::top_level}
set C_modelType { void 0 }
set C_modelArgList {
	{ clk int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ e int 8 unused {fifo 0}  }
	{ s int 8 unused {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clk", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "top_level.clk.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "top_level.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "top_level.e.m_if.Val","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "top_level.s.m_if.Val","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ clk sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clk } 
	{ e_dout sc_in sc_lv 8 signal 2 clk } 
	{ e_empty_n sc_in sc_logic 1 signal 2 clk } 
	{ e_read sc_out sc_logic 1 signal 2 clk } 
	{ s_din sc_out sc_lv 8 signal 3 clk } 
	{ s_full_n sc_in sc_logic 1 signal 3 clk } 
	{ s_write sc_out sc_logic 1 signal 3 clk } 
}
set NewPortList {[ 
	{ "name": "clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clk", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s", "role": "din" }} , 
 	{ "name": "s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "full_n" }} , 
 	{ "name": "s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "11", "21", "24", "34", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "top_level",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "e_form", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_UartModIn_fu_236", "Port" : "e"}]},
			{"Name" : "fifo1_12_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_UartModIn_fu_236", "Port" : "s"}]},
			{"Name" : "clk_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_UartModIn_fu_236", "Port" : "clk"}]},
			{"Name" : "reset_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_UartModIn_fu_236", "Port" : "rst"}]},
			{"Name" : "fifo2_1_form24", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_UartModOut_fu_250", "Port" : "e"}]},
			{"Name" : "s_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_UartModOut_fu_250", "Port" : "s"}]},
			{"Name" : "clk_form4", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_UartModOut_fu_250", "Port" : "clk"}]},
			{"Name" : "reset_form5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_UartModOut_fu_250", "Port" : "rst"}]},
			{"Name" : "top_level_doub_to_split", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_doubleur_fu_264", "Port" : "doubleur_to_split"}]},
			{"Name" : "clk_form6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_doubleur_fu_264", "Port" : "clk"}]},
			{"Name" : "reset_form7", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_doubleur_fu_264", "Port" : "reset"}]},
			{"Name" : "fifo1_12_form18", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_doubleur_fu_264", "Port" : "e"}]},
			{"Name" : "doub1_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_doubleur_fu_264", "Port" : "s1"}]},
			{"Name" : "doub2_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_doubleur_fu_264", "Port" : "s2"}]},
			{"Name" : "top_level_comp_in1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_comparateur_fu_282", "Port" : "comparateur_in1"}]},
			{"Name" : "top_level_comp_seuil", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_comparateur_fu_282", "Port" : "comparateur_seuil"}]},
			{"Name" : "top_level_comp_result", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_comparateur_fu_282", "Port" : "comparateur_result"}]},
			{"Name" : "clk_form16", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_comparateur_fu_282", "Port" : "clk"}]},
			{"Name" : "reset_form17", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_comparateur_fu_282", "Port" : "reset"}]},
			{"Name" : "doub1_1_form19", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_comparateur_fu_282", "Port" : "e1"}]},
			{"Name" : "fifo4_1_form23", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_comparateur_fu_282", "Port" : "e2"}]},
			{"Name" : "fifo2_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_comparateur_fu_282", "Port" : "s"}]},
			{"Name" : "top_level_f1_y0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_filtre1_fu_304", "Port" : "filtre1_y0"}]},
			{"Name" : "top_level_f1_x0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_filtre1_fu_304", "Port" : "filtre1_x0"}]},
			{"Name" : "top_level_f1_mem_x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_filtre1_fu_304", "Port" : "filtre1_mem_x"}]},
			{"Name" : "top_level_f1_mem_y", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_filtre1_fu_304", "Port" : "filtre1_mem_y"}]},
			{"Name" : "clk_form10", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_filtre1_fu_304", "Port" : "clk"}]},
			{"Name" : "reset_form11", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_filtre1_fu_304", "Port" : "reset"}]},
			{"Name" : "top_level_f1_e_m_if_Val", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_filtre1_fu_304", "Port" : "e"}]},
			{"Name" : "top_level_f1_s_m_if_Val", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_filtre1_fu_304", "Port" : "s"}]},
			{"Name" : "top_level_car_x", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_carre_fu_326", "Port" : "carre_x"}]},
			{"Name" : "clk_form12", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_carre_fu_326", "Port" : "clk"}]},
			{"Name" : "reset_form13", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_carre_fu_326", "Port" : "reset"}]},
			{"Name" : "doub2_1_form20", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_carre_fu_326", "Port" : "e"}]},
			{"Name" : "fifo2_13_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_carre_fu_326", "Port" : "s"}]},
			{"Name" : "top_level_f2_y0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_filtre2_fu_342", "Port" : "filtre2_y0"}]},
			{"Name" : "top_level_f2_x0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_filtre2_fu_342", "Port" : "filtre2_x0"}]},
			{"Name" : "top_level_f2_mem_x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_filtre2_fu_342", "Port" : "filtre2_mem_x"}]},
			{"Name" : "top_level_f2_mem_y", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_filtre2_fu_342", "Port" : "filtre2_mem_y"}]},
			{"Name" : "clk_form14", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_filtre2_fu_342", "Port" : "clk"}]},
			{"Name" : "reset_form15", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_filtre2_fu_342", "Port" : "reset"}]},
			{"Name" : "fifo2_13_form21", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_filtre2_fu_342", "Port" : "e"}]},
			{"Name" : "fifo3_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_filtre2_fu_342", "Port" : "s"}]},
			{"Name" : "top_level_rac_x", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_racine_fu_364", "Port" : "racine_x"}]},
			{"Name" : "top_level_rac_clk_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_racine_fu_364", "Port" : "clk"}]},
			{"Name" : "top_level_rac_reset_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_racine_fu_364", "Port" : "reset"}]},
			{"Name" : "fifo3_1_form22", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_racine_fu_364", "Port" : "e"}]},
			{"Name" : "fifo4_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_racine_fu_364", "Port" : "s"}]},
			{"Name" : "fifo1_1", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "fifo2_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "fifo1_12", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "fifo2_13", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "fifo3_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "fifo4_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "doub1_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "doub2_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "UartModIn_ssdm_thread_M_do_recv", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_UartModIn_fu_236", "Port" : "UartModIn_ssdm_thread_M_do_recv"}]},
			{"Name" : "UartModOut_ssdm_thread_M_do_send", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_UartModOut_fu_250", "Port" : "UartModOut_ssdm_thread_M_do_send"}]},
			{"Name" : "doubleur_ssdm_thread_M_do_split", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_doubleur_fu_264", "Port" : "doubleur_ssdm_thread_M_do_split"}]},
			{"Name" : "comparateur_ssdm_thread_M_do_comp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_comparateur_fu_282", "Port" : "comparateur_ssdm_thread_M_do_comp"}]},
			{"Name" : "filtre1_ssdm_thread_M_do_filtre", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_filtre1_fu_304", "Port" : "filtre1_ssdm_thread_M_do_filtre"}]},
			{"Name" : "carre_ssdm_thread_M_do_carre", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_carre_fu_326", "Port" : "carre_ssdm_thread_M_do_carre"}]},
			{"Name" : "filtre2_ssdm_thread_M_do_filtre", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_filtre2_fu_342", "Port" : "filtre2_ssdm_thread_M_do_filtre"}]},
			{"Name" : "racine_ssdm_thread_M_do_racine", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_racine_fu_364", "Port" : "racine_ssdm_thread_M_do_racine"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_UartModIn_fu_236", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "UartModIn",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_UartModIn_do_recv_fu_58", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_UartModIn_do_recv_fu_58", "Port" : "s"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_UartModIn_do_recv_fu_58", "Port" : "clk"}]},
			{"Name" : "rst", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_UartModIn_do_recv_fu_58", "Port" : "rst"}]},
			{"Name" : "UartModIn_ssdm_thread_M_do_recv", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_UartModIn_fu_236.grp_UartModIn_do_recv_fu_58", "Parent" : "1",
		"CDFG" : "UartModIn_do_recv",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "rst", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_UartModOut_fu_250", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "UartModOut",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_UartModOut_do_send_fu_58", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_UartModOut_do_send_fu_58", "Port" : "s"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_UartModOut_do_send_fu_58", "Port" : "clk"}]},
			{"Name" : "rst", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_UartModOut_do_send_fu_58", "Port" : "rst"}]},
			{"Name" : "UartModOut_ssdm_thread_M_do_send", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_UartModOut_fu_250.grp_UartModOut_do_send_fu_58", "Parent" : "3",
		"CDFG" : "UartModOut_do_send",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "rst", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_doubleur_fu_264", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "doubleur",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "doubleur_to_split", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_doubleur_do_split_fu_70", "Port" : "doubleur_to_split"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_doubleur_do_split_fu_70", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_doubleur_do_split_fu_70", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_doubleur_do_split_fu_70", "Port" : "e"}]},
			{"Name" : "s1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_doubleur_do_split_fu_70", "Port" : "s1"}]},
			{"Name" : "s2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_doubleur_do_split_fu_70", "Port" : "s2"}]},
			{"Name" : "doubleur_ssdm_thread_M_do_split", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doubleur_fu_264.grp_doubleur_do_split_fu_70", "Parent" : "5",
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
					{"Name" : "s2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_fu_282", "Parent" : "0", "Child" : ["8"],
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
					{"ID" : "8", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "comparateur_in1"}]},
			{"Name" : "comparateur_seuil", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "comparateur_seuil"}]},
			{"Name" : "comparateur_result", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "comparateur_result"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "reset"}]},
			{"Name" : "e1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "e1"}]},
			{"Name" : "e2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "e2"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_comparateur_do_comp_fu_74", "Port" : "s"}]},
			{"Name" : "comparateur_ssdm_thread_M_do_comp", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_fu_282.grp_comparateur_do_comp_fu_74", "Parent" : "7", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_fu_282.grp_comparateur_do_comp_fu_74.comparateur_sitofcud_U16", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_fu_282.grp_comparateur_do_comp_fu_74.comparateur_fcmp_dEe_U17", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304", "Parent" : "0", "Child" : ["12", "13", "14"],
		"CDFG" : "filtre1",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "filtre1_y0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_filtre1_do_filtre_fu_72", "Port" : "filtre1_y0"}]},
			{"Name" : "filtre1_x0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_filtre1_do_filtre_fu_72", "Port" : "filtre1_x0"}]},
			{"Name" : "filtre1_mem_x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_filtre1_do_filtre_fu_72", "Port" : "filtre1_mem_x"}]},
			{"Name" : "filtre1_mem_y", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_filtre1_do_filtre_fu_72", "Port" : "filtre1_mem_y"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_filtre1_do_filtre_fu_72", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_filtre1_do_filtre_fu_72", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_filtre1_do_filtre_fu_72", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_filtre1_do_filtre_fu_72", "Port" : "s"}]},
			{"Name" : "filtre1_ssdm_thread_M_do_filtre", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304.filtre1_mem_x_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304.filtre1_mem_y_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304.grp_filtre1_do_filtre_fu_72", "Parent" : "11", "Child" : ["15", "16", "17", "18", "19", "20"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304.grp_filtre1_do_filtre_fu_72.filtre1_fptrunc_6eOg_U36", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304.grp_filtre1_do_filtre_fu_72.filtre1_fpext_32nfYi_U37", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304.grp_filtre1_do_filtre_fu_72.filtre1_fpext_32nfYi_U38", "Parent" : "14"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304.grp_filtre1_do_filtre_fu_72.filtre1_dadddsub_g8j_U39", "Parent" : "14"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304.grp_filtre1_do_filtre_fu_72.filtre1_dmul_64nshbi_U40", "Parent" : "14"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_304.grp_filtre1_do_filtre_fu_72.filtre1_dmul_64nshbi_U41", "Parent" : "14"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_carre_fu_326", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "carre",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "carre_x", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_carre_do_carre_fu_66", "Port" : "carre_x"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_carre_do_carre_fu_66", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_carre_do_carre_fu_66", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_carre_do_carre_fu_66", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_carre_do_carre_fu_66", "Port" : "s"}]},
			{"Name" : "carre_ssdm_thread_M_do_carre", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_carre_fu_326.grp_carre_do_carre_fu_66", "Parent" : "21", "Child" : ["23"],
		"CDFG" : "carre_do_carre",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "carre_x", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_carre_fu_326.grp_carre_do_carre_fu_66.carre_fmul_32ns_3bkb_U9", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342", "Parent" : "0", "Child" : ["25", "26", "27"],
		"CDFG" : "filtre2",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "filtre2_y0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_filtre2_do_filtre_fu_72", "Port" : "filtre2_y0"}]},
			{"Name" : "filtre2_x0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_filtre2_do_filtre_fu_72", "Port" : "filtre2_x0"}]},
			{"Name" : "filtre2_mem_x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_filtre2_do_filtre_fu_72", "Port" : "filtre2_mem_x"}]},
			{"Name" : "filtre2_mem_y", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_filtre2_do_filtre_fu_72", "Port" : "filtre2_mem_y"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_filtre2_do_filtre_fu_72", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_filtre2_do_filtre_fu_72", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_filtre2_do_filtre_fu_72", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_filtre2_do_filtre_fu_72", "Port" : "s"}]},
			{"Name" : "filtre2_ssdm_thread_M_do_filtre", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342.filtre2_mem_x_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342.filtre2_mem_y_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342.grp_filtre2_do_filtre_fu_72", "Parent" : "24", "Child" : ["28", "29", "30", "31", "32", "33"],
		"CDFG" : "filtre2_do_filtre",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "filtre2_y0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "filtre2_x0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "filtre2_mem_x", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "filtre2_mem_y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342.grp_filtre2_do_filtre_fu_72.filtre1_fptrunc_6eOg_U55", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342.grp_filtre2_do_filtre_fu_72.filtre1_fpext_32nfYi_U56", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342.grp_filtre2_do_filtre_fu_72.filtre1_fpext_32nfYi_U57", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342.grp_filtre2_do_filtre_fu_72.filtre2_dadd_64nskbM_U58", "Parent" : "27"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342.grp_filtre2_do_filtre_fu_72.filtre1_dmul_64nshbi_U59", "Parent" : "27"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_342.grp_filtre2_do_filtre_fu_72.filtre1_dmul_64nshbi_U60", "Parent" : "27"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_364", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "racine",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "racine_x", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_racine_do_racine_fu_66", "Port" : "racine_x"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_racine_do_racine_fu_66", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_racine_do_racine_fu_66", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_racine_do_racine_fu_66", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_racine_do_racine_fu_66", "Port" : "s"}]},
			{"Name" : "racine_ssdm_thread_M_do_racine", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_364.grp_racine_do_racine_fu_66", "Parent" : "34", "Child" : ["36", "37", "38"],
		"CDFG" : "racine_do_racine",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "racine_x", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_364.grp_racine_do_racine_fu_66.carre_fmul_32ns_3bkb_U71", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_364.grp_racine_do_racine_fu_66.comparateur_sitofcud_U72", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_364.grp_racine_do_racine_fu_66.racine_fsqrt_32nsncg_U73", "Parent" : "35"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo2_1_fifo_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo1_12_fifo_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo2_13_fifo_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo3_1_fifo_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo4_1_fifo_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.doub1_1_fifo_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.doub2_1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	top_level {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead -1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite -1}
		e_form {Type I LastRead -1 FirstWrite -1}
		fifo1_12_form {Type O LastRead -1 FirstWrite -1}
		clk_form {Type I LastRead -1 FirstWrite -1}
		reset_form {Type I LastRead -1 FirstWrite -1}
		fifo2_1_form24 {Type I LastRead -1 FirstWrite -1}
		s_form {Type O LastRead -1 FirstWrite -1}
		clk_form4 {Type I LastRead -1 FirstWrite -1}
		reset_form5 {Type I LastRead -1 FirstWrite -1}
		top_level_doub_to_split {Type O LastRead -1 FirstWrite -1}
		clk_form6 {Type I LastRead -1 FirstWrite -1}
		reset_form7 {Type I LastRead -1 FirstWrite -1}
		fifo1_12_form18 {Type I LastRead -1 FirstWrite -1}
		doub1_1_form {Type O LastRead -1 FirstWrite -1}
		doub2_1_form {Type O LastRead -1 FirstWrite -1}
		top_level_comp_in1 {Type O LastRead -1 FirstWrite -1}
		top_level_comp_seuil {Type O LastRead -1 FirstWrite -1}
		top_level_comp_result {Type O LastRead -1 FirstWrite -1}
		clk_form16 {Type I LastRead -1 FirstWrite -1}
		reset_form17 {Type I LastRead -1 FirstWrite -1}
		doub1_1_form19 {Type I LastRead -1 FirstWrite -1}
		fifo4_1_form23 {Type I LastRead -1 FirstWrite -1}
		fifo2_1_form {Type O LastRead -1 FirstWrite -1}
		top_level_f1_y0 {Type O LastRead -1 FirstWrite -1}
		top_level_f1_x0 {Type O LastRead -1 FirstWrite -1}
		top_level_f1_mem_x {Type IO LastRead -1 FirstWrite -1}
		top_level_f1_mem_y {Type IO LastRead -1 FirstWrite -1}
		clk_form10 {Type I LastRead -1 FirstWrite -1}
		reset_form11 {Type I LastRead -1 FirstWrite -1}
		top_level_f1_e_m_if_Val {Type I LastRead -1 FirstWrite -1}
		top_level_f1_s_m_if_Val {Type O LastRead -1 FirstWrite -1}
		top_level_car_x {Type O LastRead -1 FirstWrite -1}
		clk_form12 {Type I LastRead -1 FirstWrite -1}
		reset_form13 {Type I LastRead -1 FirstWrite -1}
		doub2_1_form20 {Type I LastRead -1 FirstWrite -1}
		fifo2_13_form {Type O LastRead -1 FirstWrite -1}
		top_level_f2_y0 {Type O LastRead -1 FirstWrite -1}
		top_level_f2_x0 {Type O LastRead -1 FirstWrite -1}
		top_level_f2_mem_x {Type IO LastRead -1 FirstWrite -1}
		top_level_f2_mem_y {Type IO LastRead -1 FirstWrite -1}
		clk_form14 {Type I LastRead -1 FirstWrite -1}
		reset_form15 {Type I LastRead -1 FirstWrite -1}
		fifo2_13_form21 {Type I LastRead -1 FirstWrite -1}
		fifo3_1_form {Type O LastRead -1 FirstWrite -1}
		top_level_rac_x {Type O LastRead -1 FirstWrite -1}
		top_level_rac_clk_m_if_Val {Type I LastRead -1 FirstWrite -1}
		top_level_rac_reset_m_if_Val {Type I LastRead -1 FirstWrite -1}
		fifo3_1_form22 {Type I LastRead -1 FirstWrite -1}
		fifo4_1_form {Type O LastRead -1 FirstWrite -1}
		fifo1_1 {Type I LastRead -1 FirstWrite -1}
		fifo2_1 {Type IO LastRead -1 FirstWrite -1}
		fifo1_12 {Type IO LastRead -1 FirstWrite -1}
		fifo2_13 {Type IO LastRead -1 FirstWrite -1}
		fifo3_1 {Type IO LastRead -1 FirstWrite -1}
		fifo4_1 {Type IO LastRead -1 FirstWrite -1}
		doub1_1 {Type IO LastRead -1 FirstWrite -1}
		doub2_1 {Type IO LastRead -1 FirstWrite -1}
		UartModIn_ssdm_thread_M_do_recv {Type I LastRead -1 FirstWrite -1}
		UartModOut_ssdm_thread_M_do_send {Type I LastRead -1 FirstWrite -1}
		doubleur_ssdm_thread_M_do_split {Type I LastRead -1 FirstWrite -1}
		comparateur_ssdm_thread_M_do_comp {Type I LastRead -1 FirstWrite -1}
		filtre1_ssdm_thread_M_do_filtre {Type I LastRead -1 FirstWrite -1}
		carre_ssdm_thread_M_do_carre {Type I LastRead -1 FirstWrite -1}
		filtre2_ssdm_thread_M_do_filtre {Type I LastRead -1 FirstWrite -1}
		racine_ssdm_thread_M_do_racine {Type I LastRead -1 FirstWrite -1}}
	UartModIn {
		e {Type I LastRead 4 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 4}
		clk {Type I LastRead -1 FirstWrite -1}
		rst {Type I LastRead -1 FirstWrite -1}
		UartModIn_ssdm_thread_M_do_recv {Type I LastRead -1 FirstWrite -1}}
	UartModIn_do_recv {
		e {Type I LastRead 4 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 4}
		clk {Type I LastRead -1 FirstWrite -1}
		rst {Type I LastRead -1 FirstWrite -1}}
	UartModOut {
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 1}
		clk {Type I LastRead -1 FirstWrite -1}
		rst {Type I LastRead -1 FirstWrite -1}
		UartModOut_ssdm_thread_M_do_send {Type I LastRead -1 FirstWrite -1}}
	UartModOut_do_send {
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 1}
		clk {Type I LastRead -1 FirstWrite -1}
		rst {Type I LastRead -1 FirstWrite -1}}
	doubleur {
		doubleur_to_split {Type O LastRead -1 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s1 {Type O LastRead -1 FirstWrite 1}
		s2 {Type O LastRead -1 FirstWrite 1}
		doubleur_ssdm_thread_M_do_split {Type I LastRead -1 FirstWrite -1}}
	doubleur_do_split {
		doubleur_to_split {Type O LastRead -1 FirstWrite 1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s1 {Type O LastRead -1 FirstWrite 1}
		s2 {Type O LastRead -1 FirstWrite 1}}
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
		s {Type O LastRead -1 FirstWrite 11}}
	filtre1 {
		filtre1_y0 {Type O LastRead -1 FirstWrite -1}
		filtre1_x0 {Type O LastRead -1 FirstWrite -1}
		filtre1_mem_x {Type IO LastRead -1 FirstWrite -1}
		filtre1_mem_y {Type IO LastRead -1 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 23}
		filtre1_ssdm_thread_M_do_filtre {Type I LastRead -1 FirstWrite -1}}
	filtre1_do_filtre {
		filtre1_y0 {Type O LastRead -1 FirstWrite 23}
		filtre1_x0 {Type O LastRead -1 FirstWrite 3}
		filtre1_mem_x {Type IO LastRead 2 FirstWrite 0}
		filtre1_mem_y {Type IO LastRead 8 FirstWrite 0}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 23}}
	carre {
		carre_x {Type O LastRead -1 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 6}
		carre_ssdm_thread_M_do_carre {Type I LastRead -1 FirstWrite -1}}
	carre_do_carre {
		carre_x {Type O LastRead -1 FirstWrite 6}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 6}}
	filtre2 {
		filtre2_y0 {Type O LastRead -1 FirstWrite -1}
		filtre2_x0 {Type O LastRead -1 FirstWrite -1}
		filtre2_mem_x {Type IO LastRead -1 FirstWrite -1}
		filtre2_mem_y {Type IO LastRead -1 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 23}
		filtre2_ssdm_thread_M_do_filtre {Type I LastRead -1 FirstWrite -1}}
	filtre2_do_filtre {
		filtre2_y0 {Type O LastRead -1 FirstWrite 23}
		filtre2_x0 {Type O LastRead -1 FirstWrite 3}
		filtre2_mem_x {Type IO LastRead 2 FirstWrite 0}
		filtre2_mem_y {Type IO LastRead 8 FirstWrite 0}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 23}}
	racine {
		racine_x {Type O LastRead -1 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 26}
		racine_ssdm_thread_M_do_racine {Type I LastRead -1 FirstWrite -1}}
	racine_do_racine {
		racine_x {Type O LastRead -1 FirstWrite 22}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 26}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "49"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "50"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e { ap_fifo {  { e_dout fifo_data 0 8 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_din fifo_data 1 8 }  { s_full_n fifo_status 0 1 }  { s_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	e { fifo_read 0 no_conditional }
	s { fifo_write 0 no_conditional }
	e_form { fifo_read 1 no_conditional }
	fifo1_12_form { fifo_write 1 no_conditional }
	fifo2_1_form24 { fifo_read 1 no_conditional }
	s_form { fifo_write 1 no_conditional }
	fifo1_12_form18 { fifo_read 1 no_conditional }
	doub1_1_form { fifo_write 1 no_conditional }
	doub2_1_form { fifo_write 1 no_conditional }
	doub1_1_form19 { fifo_read 1 no_conditional }
	fifo4_1_form23 { fifo_read 1 no_conditional }
	fifo2_1_form { fifo_write 1 no_conditional }
	top_level_f1_e_m_if_Val { fifo_read 1 no_conditional }
	top_level_f1_s_m_if_Val { fifo_write 1 no_conditional }
	doub2_1_form20 { fifo_read 1 no_conditional }
	fifo2_13_form { fifo_write 1 no_conditional }
	fifo2_13_form21 { fifo_read 1 no_conditional }
	fifo3_1_form { fifo_write 1 no_conditional }
	fifo3_1_form22 { fifo_read 1 no_conditional }
	fifo4_1_form { fifo_write 1 no_conditional }
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
