set moduleName top_level
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {top_level::top_level.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ clk int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ e float 32 unused {fifo 0}  }
	{ s float 32 unused {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clk", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "top_level.clk.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "top_level.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "top_level.e.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "top_level.s.m_if.Val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ clk sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clk } 
	{ e_dout sc_in sc_lv 32 signal 2 clk } 
	{ e_empty_n sc_in sc_logic 1 signal 2 clk } 
	{ e_read sc_out sc_logic 1 signal 2 clk } 
	{ s_din sc_out sc_lv 32 signal 3 clk } 
	{ s_full_n sc_in sc_logic 1 signal 3 clk } 
	{ s_write sc_out sc_logic 1 signal 3 clk } 
}
set NewPortList {[ 
	{ "name": "clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clk", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "din" }} , 
 	{ "name": "s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "full_n" }} , 
 	{ "name": "s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "7", "17", "20", "30", "35", "36", "37", "38", "39", "40"],
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
			{"Name" : "top_level_doub_to_split", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doubleur_fu_176", "Port" : "doubleur_to_split"}]},
			{"Name" : "clk_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doubleur_fu_176", "Port" : "clk"}]},
			{"Name" : "reset_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doubleur_fu_176", "Port" : "reset"}]},
			{"Name" : "fifo1_1_form12", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doubleur_fu_176", "Port" : "e"}]},
			{"Name" : "doub1_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doubleur_fu_176", "Port" : "s1"}]},
			{"Name" : "doub2_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doubleur_fu_176", "Port" : "s2"}]},
			{"Name" : "top_level_comp_in1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_comparateur_fu_194", "Port" : "comparateur_in1"}]},
			{"Name" : "top_level_comp_seuil", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_comparateur_fu_194", "Port" : "comparateur_seuil"}]},
			{"Name" : "top_level_comp_result", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_comparateur_fu_194", "Port" : "comparateur_result"}]},
			{"Name" : "clk_form10", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_comparateur_fu_194", "Port" : "clk"}]},
			{"Name" : "reset_form11", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_comparateur_fu_194", "Port" : "reset"}]},
			{"Name" : "doub1_1_form13", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_comparateur_fu_194", "Port" : "e1"}]},
			{"Name" : "fifo4_1_form17", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_comparateur_fu_194", "Port" : "e2"}]},
			{"Name" : "s_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_comparateur_fu_194", "Port" : "s"}]},
			{"Name" : "top_level_f1_y0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_filtre1_fu_216", "Port" : "filtre1_y0"}]},
			{"Name" : "top_level_f1_x0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_filtre1_fu_216", "Port" : "filtre1_x0"}]},
			{"Name" : "top_level_f1_mem_x", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_filtre1_fu_216", "Port" : "filtre1_mem_x"}]},
			{"Name" : "top_level_f1_mem_y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_filtre1_fu_216", "Port" : "filtre1_mem_y"}]},
			{"Name" : "clk_form4", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_filtre1_fu_216", "Port" : "clk"}]},
			{"Name" : "reset_form5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_filtre1_fu_216", "Port" : "reset"}]},
			{"Name" : "e_form", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_filtre1_fu_216", "Port" : "e"}]},
			{"Name" : "fifo1_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_filtre1_fu_216", "Port" : "s"}]},
			{"Name" : "top_level_car_x", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_carre_fu_238", "Port" : "carre_x"}]},
			{"Name" : "clk_form6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_carre_fu_238", "Port" : "clk"}]},
			{"Name" : "reset_form7", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_carre_fu_238", "Port" : "reset"}]},
			{"Name" : "doub2_1_form14", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_carre_fu_238", "Port" : "e"}]},
			{"Name" : "fifo2_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_carre_fu_238", "Port" : "s"}]},
			{"Name" : "top_level_f2_y0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_filtre2_fu_254", "Port" : "filtre2_y0"}]},
			{"Name" : "top_level_f2_x0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_filtre2_fu_254", "Port" : "filtre2_x0"}]},
			{"Name" : "top_level_f2_mem_x", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_filtre2_fu_254", "Port" : "filtre2_mem_x"}]},
			{"Name" : "top_level_f2_mem_y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_filtre2_fu_254", "Port" : "filtre2_mem_y"}]},
			{"Name" : "clk_form8", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_filtre2_fu_254", "Port" : "clk"}]},
			{"Name" : "reset_form9", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_filtre2_fu_254", "Port" : "reset"}]},
			{"Name" : "fifo2_1_form15", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_filtre2_fu_254", "Port" : "e"}]},
			{"Name" : "fifo3_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_filtre2_fu_254", "Port" : "s"}]},
			{"Name" : "top_level_rac_x", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_racine_fu_276", "Port" : "racine_x"}]},
			{"Name" : "top_level_rac_clk_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_racine_fu_276", "Port" : "clk"}]},
			{"Name" : "top_level_rac_reset_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_racine_fu_276", "Port" : "reset"}]},
			{"Name" : "fifo3_1_form16", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_racine_fu_276", "Port" : "e"}]},
			{"Name" : "fifo4_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_racine_fu_276", "Port" : "s"}]},
			{"Name" : "fifo1_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "fifo2_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "fifo3_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "fifo4_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "doub1_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "doub2_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "doubleur_ssdm_thread_M_do_split", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doubleur_fu_176", "Port" : "doubleur_ssdm_thread_M_do_split"}]},
			{"Name" : "comparateur_ssdm_thread_M_do_comp", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_comparateur_fu_194", "Port" : "comparateur_ssdm_thread_M_do_comp"}]},
			{"Name" : "filtre1_ssdm_thread_M_do_filtre", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_filtre1_fu_216", "Port" : "filtre1_ssdm_thread_M_do_filtre"}]},
			{"Name" : "carre_ssdm_thread_M_do_carre", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_carre_fu_238", "Port" : "carre_ssdm_thread_M_do_carre"}]},
			{"Name" : "filtre2_ssdm_thread_M_do_filtre", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_filtre2_fu_254", "Port" : "filtre2_ssdm_thread_M_do_filtre"}]},
			{"Name" : "racine_ssdm_thread_M_do_racine", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_racine_fu_276", "Port" : "racine_ssdm_thread_M_do_racine"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_doubleur_fu_176", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_doubleur_do_split_fu_62", "Port" : "doubleur_to_split"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_doubleur_do_split_fu_62", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_doubleur_do_split_fu_62", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_doubleur_do_split_fu_62", "Port" : "e"}]},
			{"Name" : "s1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_doubleur_do_split_fu_62", "Port" : "s1"}]},
			{"Name" : "s2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_doubleur_do_split_fu_62", "Port" : "s2"}]},
			{"Name" : "doubleur_ssdm_thread_M_do_split", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doubleur_fu_176.grp_doubleur_do_split_fu_62", "Parent" : "1",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_fu_194", "Parent" : "0", "Child" : ["4"],
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
					{"ID" : "4", "SubInstance" : "grp_comparateur_do_comp_fu_66", "Port" : "comparateur_in1"}]},
			{"Name" : "comparateur_seuil", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_comparateur_do_comp_fu_66", "Port" : "comparateur_seuil"}]},
			{"Name" : "comparateur_result", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_comparateur_do_comp_fu_66", "Port" : "comparateur_result"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_comparateur_do_comp_fu_66", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_comparateur_do_comp_fu_66", "Port" : "reset"}]},
			{"Name" : "e1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_comparateur_do_comp_fu_66", "Port" : "e1"}]},
			{"Name" : "e2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_comparateur_do_comp_fu_66", "Port" : "e2"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_comparateur_do_comp_fu_66", "Port" : "s"}]},
			{"Name" : "comparateur_ssdm_thread_M_do_comp", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_fu_194.grp_comparateur_do_comp_fu_66", "Parent" : "3", "Child" : ["5", "6"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_fu_194.grp_comparateur_do_comp_fu_66.comparateur_sitofcud_U8", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_comparateur_fu_194.grp_comparateur_do_comp_fu_66.comparateur_fcmp_dEe_U9", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216", "Parent" : "0", "Child" : ["8", "9", "10"],
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
					{"ID" : "10", "SubInstance" : "grp_filtre1_do_filtre_fu_64", "Port" : "filtre1_y0"}]},
			{"Name" : "filtre1_x0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_filtre1_do_filtre_fu_64", "Port" : "filtre1_x0"}]},
			{"Name" : "filtre1_mem_x", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_filtre1_do_filtre_fu_64", "Port" : "filtre1_mem_x"}]},
			{"Name" : "filtre1_mem_y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_filtre1_do_filtre_fu_64", "Port" : "filtre1_mem_y"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_filtre1_do_filtre_fu_64", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_filtre1_do_filtre_fu_64", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_filtre1_do_filtre_fu_64", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_filtre1_do_filtre_fu_64", "Port" : "s"}]},
			{"Name" : "filtre1_ssdm_thread_M_do_filtre", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216.filtre1_mem_x_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216.filtre1_mem_y_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216.grp_filtre1_do_filtre_fu_64", "Parent" : "7", "Child" : ["11", "12", "13", "14", "15", "16"],
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
			{"Name" : "filtre1_mem_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "filtre1_mem_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216.grp_filtre1_do_filtre_fu_64.filtre1_fptrunc_6eOg_U28", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216.grp_filtre1_do_filtre_fu_64.filtre1_fpext_32nfYi_U29", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216.grp_filtre1_do_filtre_fu_64.filtre1_fpext_32nfYi_U30", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216.grp_filtre1_do_filtre_fu_64.filtre1_dadddsub_g8j_U31", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216.grp_filtre1_do_filtre_fu_64.filtre1_dmul_64nshbi_U32", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre1_fu_216.grp_filtre1_do_filtre_fu_64.filtre1_dmul_64nshbi_U33", "Parent" : "10"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_carre_fu_238", "Parent" : "0", "Child" : ["18"],
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
					{"ID" : "18", "SubInstance" : "grp_carre_do_carre_fu_58", "Port" : "carre_x"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_carre_do_carre_fu_58", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_carre_do_carre_fu_58", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_carre_do_carre_fu_58", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_carre_do_carre_fu_58", "Port" : "s"}]},
			{"Name" : "carre_ssdm_thread_M_do_carre", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_carre_fu_238.grp_carre_do_carre_fu_58", "Parent" : "17", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_carre_fu_238.grp_carre_do_carre_fu_58.carre_fmul_32ns_3bkb_U1", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254", "Parent" : "0", "Child" : ["21", "22", "23"],
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
					{"ID" : "23", "SubInstance" : "grp_filtre2_do_filtre_fu_64", "Port" : "filtre2_y0"}]},
			{"Name" : "filtre2_x0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_filtre2_do_filtre_fu_64", "Port" : "filtre2_x0"}]},
			{"Name" : "filtre2_mem_x", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_filtre2_do_filtre_fu_64", "Port" : "filtre2_mem_x"}]},
			{"Name" : "filtre2_mem_y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_filtre2_do_filtre_fu_64", "Port" : "filtre2_mem_y"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_filtre2_do_filtre_fu_64", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_filtre2_do_filtre_fu_64", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_filtre2_do_filtre_fu_64", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_filtre2_do_filtre_fu_64", "Port" : "s"}]},
			{"Name" : "filtre2_ssdm_thread_M_do_filtre", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254.filtre2_mem_x_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254.filtre2_mem_y_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254.grp_filtre2_do_filtre_fu_64", "Parent" : "20", "Child" : ["24", "25", "26", "27", "28", "29"],
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
			{"Name" : "filtre2_mem_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "filtre2_mem_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254.grp_filtre2_do_filtre_fu_64.filtre1_fptrunc_6eOg_U47", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254.grp_filtre2_do_filtre_fu_64.filtre1_fpext_32nfYi_U48", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254.grp_filtre2_do_filtre_fu_64.filtre1_fpext_32nfYi_U49", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254.grp_filtre2_do_filtre_fu_64.filtre2_dadd_64nskbM_U50", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254.grp_filtre2_do_filtre_fu_64.filtre1_dmul_64nshbi_U51", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_filtre2_fu_254.grp_filtre2_do_filtre_fu_64.filtre1_dmul_64nshbi_U52", "Parent" : "23"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_276", "Parent" : "0", "Child" : ["31"],
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
					{"ID" : "31", "SubInstance" : "grp_racine_do_racine_fu_58", "Port" : "racine_x"}]},
			{"Name" : "clk", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_racine_do_racine_fu_58", "Port" : "clk"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_racine_do_racine_fu_58", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_racine_do_racine_fu_58", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_racine_do_racine_fu_58", "Port" : "s"}]},
			{"Name" : "racine_ssdm_thread_M_do_racine", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_276.grp_racine_do_racine_fu_58", "Parent" : "30", "Child" : ["32", "33", "34"],
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_276.grp_racine_do_racine_fu_58.carre_fmul_32ns_3bkb_U63", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_276.grp_racine_do_racine_fu_58.comparateur_sitofcud_U64", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_racine_fu_276.grp_racine_do_racine_fu_58.racine_fsqrt_32nsncg_U65", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo1_1_fifo_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo2_1_fifo_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo3_1_fifo_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo4_1_fifo_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.doub1_1_fifo_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.doub2_1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	top_level {
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead -1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite -1}
		top_level_doub_to_split {Type O LastRead -1 FirstWrite -1}
		clk_form {Type I LastRead -1 FirstWrite -1}
		reset_form {Type I LastRead -1 FirstWrite -1}
		fifo1_1_form12 {Type I LastRead -1 FirstWrite -1}
		doub1_1_form {Type O LastRead -1 FirstWrite -1}
		doub2_1_form {Type O LastRead -1 FirstWrite -1}
		top_level_comp_in1 {Type O LastRead -1 FirstWrite -1}
		top_level_comp_seuil {Type O LastRead -1 FirstWrite -1}
		top_level_comp_result {Type O LastRead -1 FirstWrite -1}
		clk_form10 {Type I LastRead -1 FirstWrite -1}
		reset_form11 {Type I LastRead -1 FirstWrite -1}
		doub1_1_form13 {Type I LastRead -1 FirstWrite -1}
		fifo4_1_form17 {Type I LastRead -1 FirstWrite -1}
		s_form {Type O LastRead -1 FirstWrite -1}
		top_level_f1_y0 {Type O LastRead -1 FirstWrite -1}
		top_level_f1_x0 {Type O LastRead -1 FirstWrite -1}
		top_level_f1_mem_x {Type O LastRead -1 FirstWrite -1}
		top_level_f1_mem_y {Type O LastRead -1 FirstWrite -1}
		clk_form4 {Type I LastRead -1 FirstWrite -1}
		reset_form5 {Type I LastRead -1 FirstWrite -1}
		e_form {Type I LastRead -1 FirstWrite -1}
		fifo1_1_form {Type O LastRead -1 FirstWrite -1}
		top_level_car_x {Type O LastRead -1 FirstWrite -1}
		clk_form6 {Type I LastRead -1 FirstWrite -1}
		reset_form7 {Type I LastRead -1 FirstWrite -1}
		doub2_1_form14 {Type I LastRead -1 FirstWrite -1}
		fifo2_1_form {Type O LastRead -1 FirstWrite -1}
		top_level_f2_y0 {Type O LastRead -1 FirstWrite -1}
		top_level_f2_x0 {Type O LastRead -1 FirstWrite -1}
		top_level_f2_mem_x {Type O LastRead -1 FirstWrite -1}
		top_level_f2_mem_y {Type O LastRead -1 FirstWrite -1}
		clk_form8 {Type I LastRead -1 FirstWrite -1}
		reset_form9 {Type I LastRead -1 FirstWrite -1}
		fifo2_1_form15 {Type I LastRead -1 FirstWrite -1}
		fifo3_1_form {Type O LastRead -1 FirstWrite -1}
		top_level_rac_x {Type O LastRead -1 FirstWrite -1}
		top_level_rac_clk_m_if_Val {Type I LastRead -1 FirstWrite -1}
		top_level_rac_reset_m_if_Val {Type I LastRead -1 FirstWrite -1}
		fifo3_1_form16 {Type I LastRead -1 FirstWrite -1}
		fifo4_1_form {Type O LastRead -1 FirstWrite -1}
		fifo1_1 {Type IO LastRead -1 FirstWrite -1}
		fifo2_1 {Type IO LastRead -1 FirstWrite -1}
		fifo3_1 {Type IO LastRead -1 FirstWrite -1}
		fifo4_1 {Type IO LastRead -1 FirstWrite -1}
		doub1_1 {Type IO LastRead -1 FirstWrite -1}
		doub2_1 {Type IO LastRead -1 FirstWrite -1}
		doubleur_ssdm_thread_M_do_split {Type I LastRead -1 FirstWrite -1}
		comparateur_ssdm_thread_M_do_comp {Type I LastRead -1 FirstWrite -1}
		filtre1_ssdm_thread_M_do_filtre {Type I LastRead -1 FirstWrite -1}
		carre_ssdm_thread_M_do_carre {Type I LastRead -1 FirstWrite -1}
		filtre2_ssdm_thread_M_do_filtre {Type I LastRead -1 FirstWrite -1}
		racine_ssdm_thread_M_do_racine {Type I LastRead -1 FirstWrite -1}}
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
		filtre1_mem_x {Type O LastRead -1 FirstWrite -1}
		filtre1_mem_y {Type O LastRead -1 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 22}
		filtre1_ssdm_thread_M_do_filtre {Type I LastRead -1 FirstWrite -1}}
	filtre1_do_filtre {
		filtre1_y0 {Type O LastRead -1 FirstWrite 22}
		filtre1_x0 {Type O LastRead -1 FirstWrite 2}
		filtre1_mem_x {Type O LastRead -1 FirstWrite 0}
		filtre1_mem_y {Type O LastRead -1 FirstWrite 0}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 22}}
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
		filtre2_mem_x {Type O LastRead -1 FirstWrite -1}
		filtre2_mem_y {Type O LastRead -1 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 22}
		filtre2_ssdm_thread_M_do_filtre {Type I LastRead -1 FirstWrite -1}}
	filtre2_do_filtre {
		filtre2_y0 {Type O LastRead -1 FirstWrite 22}
		filtre2_x0 {Type O LastRead -1 FirstWrite 2}
		filtre2_mem_x {Type O LastRead -1 FirstWrite 0}
		filtre2_mem_y {Type O LastRead -1 FirstWrite 0}
		clk {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 22}}
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
	{"Name" : "Latency", "Min" : "1", "Max" : "29"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "30"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e { ap_fifo {  { e_dout fifo_data 0 32 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_din fifo_data 1 32 }  { s_full_n fifo_status 0 1 }  { s_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	e { fifo_read 0 no_conditional }
	s { fifo_write 0 no_conditional }
	fifo1_1_form12 { fifo_read 1 no_conditional }
	doub1_1_form { fifo_write 1 no_conditional }
	doub2_1_form { fifo_write 1 no_conditional }
	doub1_1_form13 { fifo_read 1 no_conditional }
	fifo4_1_form17 { fifo_read 1 no_conditional }
	s_form { fifo_write 1 no_conditional }
	e_form { fifo_read 1 no_conditional }
	fifo1_1_form { fifo_write 1 no_conditional }
	doub2_1_form14 { fifo_read 1 no_conditional }
	fifo2_1_form { fifo_write 1 no_conditional }
	fifo2_1_form15 { fifo_read 1 no_conditional }
	fifo3_1_form { fifo_write 1 no_conditional }
	fifo3_1_form16 { fifo_read 1 no_conditional }
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
