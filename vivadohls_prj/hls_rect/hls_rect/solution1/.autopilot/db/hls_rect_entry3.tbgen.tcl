set moduleName hls_rect_entry3
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hls_rect.entry3}
set C_modelType { void 0 }
set C_modelArgList {
	{ xleft_s int 16 regular  }
	{ xright_s int 16 regular  }
	{ ytop_s int 16 regular  }
	{ ydown_s int 16 regular  }
	{ color1 int 8 regular  }
	{ color2 int 8 regular  }
	{ color3 int 8 regular  }
	{ char1 int 8 regular  }
	{ char2 int 8 regular  }
	{ char3 int 8 regular  }
	{ char4 int 8 regular  }
	{ char5 int 8 regular  }
	{ char6 int 8 regular  }
	{ xleft_out int 16 regular {fifo 1}  }
	{ xright_out int 16 regular {fifo 1}  }
	{ ytop_out int 16 regular {fifo 1}  }
	{ ydown_out int 16 regular {fifo 1}  }
	{ color1_out int 8 regular {fifo 1}  }
	{ color2_out int 8 regular {fifo 1}  }
	{ color3_out int 8 regular {fifo 1}  }
	{ char1_out int 8 regular {fifo 1}  }
	{ char2_out int 8 regular {fifo 1}  }
	{ char3_out int 8 regular {fifo 1}  }
	{ char4_out int 8 regular {fifo 1}  }
	{ char5_out int 8 regular {fifo 1}  }
	{ char6_out int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xleft_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xright_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ytop_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ydown_s", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "color1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "color2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "color3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "char1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "char2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "char3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "char4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "char5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "char6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "xleft_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xright_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ytop_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ydown_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "color1_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "color2_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "color3_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "char1_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "char2_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "char3_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "char4_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "char5_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "char6_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ xleft_s sc_in sc_lv 16 signal 0 } 
	{ xright_s sc_in sc_lv 16 signal 1 } 
	{ ytop_s sc_in sc_lv 16 signal 2 } 
	{ ydown_s sc_in sc_lv 16 signal 3 } 
	{ color1 sc_in sc_lv 8 signal 4 } 
	{ color2 sc_in sc_lv 8 signal 5 } 
	{ color3 sc_in sc_lv 8 signal 6 } 
	{ char1 sc_in sc_lv 8 signal 7 } 
	{ char2 sc_in sc_lv 8 signal 8 } 
	{ char3 sc_in sc_lv 8 signal 9 } 
	{ char4 sc_in sc_lv 8 signal 10 } 
	{ char5 sc_in sc_lv 8 signal 11 } 
	{ char6 sc_in sc_lv 8 signal 12 } 
	{ xleft_out_din sc_out sc_lv 16 signal 13 } 
	{ xleft_out_full_n sc_in sc_logic 1 signal 13 } 
	{ xleft_out_write sc_out sc_logic 1 signal 13 } 
	{ xright_out_din sc_out sc_lv 16 signal 14 } 
	{ xright_out_full_n sc_in sc_logic 1 signal 14 } 
	{ xright_out_write sc_out sc_logic 1 signal 14 } 
	{ ytop_out_din sc_out sc_lv 16 signal 15 } 
	{ ytop_out_full_n sc_in sc_logic 1 signal 15 } 
	{ ytop_out_write sc_out sc_logic 1 signal 15 } 
	{ ydown_out_din sc_out sc_lv 16 signal 16 } 
	{ ydown_out_full_n sc_in sc_logic 1 signal 16 } 
	{ ydown_out_write sc_out sc_logic 1 signal 16 } 
	{ color1_out_din sc_out sc_lv 8 signal 17 } 
	{ color1_out_full_n sc_in sc_logic 1 signal 17 } 
	{ color1_out_write sc_out sc_logic 1 signal 17 } 
	{ color2_out_din sc_out sc_lv 8 signal 18 } 
	{ color2_out_full_n sc_in sc_logic 1 signal 18 } 
	{ color2_out_write sc_out sc_logic 1 signal 18 } 
	{ color3_out_din sc_out sc_lv 8 signal 19 } 
	{ color3_out_full_n sc_in sc_logic 1 signal 19 } 
	{ color3_out_write sc_out sc_logic 1 signal 19 } 
	{ char1_out_din sc_out sc_lv 8 signal 20 } 
	{ char1_out_full_n sc_in sc_logic 1 signal 20 } 
	{ char1_out_write sc_out sc_logic 1 signal 20 } 
	{ char2_out_din sc_out sc_lv 8 signal 21 } 
	{ char2_out_full_n sc_in sc_logic 1 signal 21 } 
	{ char2_out_write sc_out sc_logic 1 signal 21 } 
	{ char3_out_din sc_out sc_lv 8 signal 22 } 
	{ char3_out_full_n sc_in sc_logic 1 signal 22 } 
	{ char3_out_write sc_out sc_logic 1 signal 22 } 
	{ char4_out_din sc_out sc_lv 8 signal 23 } 
	{ char4_out_full_n sc_in sc_logic 1 signal 23 } 
	{ char4_out_write sc_out sc_logic 1 signal 23 } 
	{ char5_out_din sc_out sc_lv 8 signal 24 } 
	{ char5_out_full_n sc_in sc_logic 1 signal 24 } 
	{ char5_out_write sc_out sc_logic 1 signal 24 } 
	{ char6_out_din sc_out sc_lv 8 signal 25 } 
	{ char6_out_full_n sc_in sc_logic 1 signal 25 } 
	{ char6_out_write sc_out sc_logic 1 signal 25 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "xleft_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xleft_s", "role": "default" }} , 
 	{ "name": "xright_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xright_s", "role": "default" }} , 
 	{ "name": "ytop_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ytop_s", "role": "default" }} , 
 	{ "name": "ydown_s", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ydown_s", "role": "default" }} , 
 	{ "name": "color1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color1", "role": "default" }} , 
 	{ "name": "color2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color2", "role": "default" }} , 
 	{ "name": "color3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color3", "role": "default" }} , 
 	{ "name": "char1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char1", "role": "default" }} , 
 	{ "name": "char2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char2", "role": "default" }} , 
 	{ "name": "char3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char3", "role": "default" }} , 
 	{ "name": "char4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char4", "role": "default" }} , 
 	{ "name": "char5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char5", "role": "default" }} , 
 	{ "name": "char6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char6", "role": "default" }} , 
 	{ "name": "xleft_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xleft_out", "role": "din" }} , 
 	{ "name": "xleft_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xleft_out", "role": "full_n" }} , 
 	{ "name": "xleft_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xleft_out", "role": "write" }} , 
 	{ "name": "xright_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xright_out", "role": "din" }} , 
 	{ "name": "xright_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xright_out", "role": "full_n" }} , 
 	{ "name": "xright_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xright_out", "role": "write" }} , 
 	{ "name": "ytop_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ytop_out", "role": "din" }} , 
 	{ "name": "ytop_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ytop_out", "role": "full_n" }} , 
 	{ "name": "ytop_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ytop_out", "role": "write" }} , 
 	{ "name": "ydown_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ydown_out", "role": "din" }} , 
 	{ "name": "ydown_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ydown_out", "role": "full_n" }} , 
 	{ "name": "ydown_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ydown_out", "role": "write" }} , 
 	{ "name": "color1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color1_out", "role": "din" }} , 
 	{ "name": "color1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color1_out", "role": "full_n" }} , 
 	{ "name": "color1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color1_out", "role": "write" }} , 
 	{ "name": "color2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color2_out", "role": "din" }} , 
 	{ "name": "color2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color2_out", "role": "full_n" }} , 
 	{ "name": "color2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color2_out", "role": "write" }} , 
 	{ "name": "color3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color3_out", "role": "din" }} , 
 	{ "name": "color3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color3_out", "role": "full_n" }} , 
 	{ "name": "color3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color3_out", "role": "write" }} , 
 	{ "name": "char1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char1_out", "role": "din" }} , 
 	{ "name": "char1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char1_out", "role": "full_n" }} , 
 	{ "name": "char1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char1_out", "role": "write" }} , 
 	{ "name": "char2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char2_out", "role": "din" }} , 
 	{ "name": "char2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char2_out", "role": "full_n" }} , 
 	{ "name": "char2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char2_out", "role": "write" }} , 
 	{ "name": "char3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char3_out", "role": "din" }} , 
 	{ "name": "char3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char3_out", "role": "full_n" }} , 
 	{ "name": "char3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char3_out", "role": "write" }} , 
 	{ "name": "char4_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char4_out", "role": "din" }} , 
 	{ "name": "char4_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char4_out", "role": "full_n" }} , 
 	{ "name": "char4_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char4_out", "role": "write" }} , 
 	{ "name": "char5_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char5_out", "role": "din" }} , 
 	{ "name": "char5_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char5_out", "role": "full_n" }} , 
 	{ "name": "char5_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char5_out", "role": "write" }} , 
 	{ "name": "char6_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "char6_out", "role": "din" }} , 
 	{ "name": "char6_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char6_out", "role": "full_n" }} , 
 	{ "name": "char6_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "char6_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "hls_rect_entry3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xleft_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "xright_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "ytop_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "ydown_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "color1", "Type" : "None", "Direction" : "I"},
			{"Name" : "color2", "Type" : "None", "Direction" : "I"},
			{"Name" : "color3", "Type" : "None", "Direction" : "I"},
			{"Name" : "char1", "Type" : "None", "Direction" : "I"},
			{"Name" : "char2", "Type" : "None", "Direction" : "I"},
			{"Name" : "char3", "Type" : "None", "Direction" : "I"},
			{"Name" : "char4", "Type" : "None", "Direction" : "I"},
			{"Name" : "char5", "Type" : "None", "Direction" : "I"},
			{"Name" : "char6", "Type" : "None", "Direction" : "I"},
			{"Name" : "xleft_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "xleft_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xright_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "xright_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ytop_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ydown_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ydown_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "char1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "char2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "char3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "char4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "char5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "char6_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	hls_rect_entry3 {
		xleft_s {Type I LastRead 0 FirstWrite -1}
		xright_s {Type I LastRead 0 FirstWrite -1}
		ytop_s {Type I LastRead 0 FirstWrite -1}
		ydown_s {Type I LastRead 0 FirstWrite -1}
		color1 {Type I LastRead 0 FirstWrite -1}
		color2 {Type I LastRead 0 FirstWrite -1}
		color3 {Type I LastRead 0 FirstWrite -1}
		char1 {Type I LastRead 0 FirstWrite -1}
		char2 {Type I LastRead 0 FirstWrite -1}
		char3 {Type I LastRead 0 FirstWrite -1}
		char4 {Type I LastRead 0 FirstWrite -1}
		char5 {Type I LastRead 0 FirstWrite -1}
		char6 {Type I LastRead 0 FirstWrite -1}
		xleft_out {Type O LastRead -1 FirstWrite 0}
		xright_out {Type O LastRead -1 FirstWrite 0}
		ytop_out {Type O LastRead -1 FirstWrite 0}
		ydown_out {Type O LastRead -1 FirstWrite 0}
		color1_out {Type O LastRead -1 FirstWrite 0}
		color2_out {Type O LastRead -1 FirstWrite 0}
		color3_out {Type O LastRead -1 FirstWrite 0}
		char1_out {Type O LastRead -1 FirstWrite 0}
		char2_out {Type O LastRead -1 FirstWrite 0}
		char3_out {Type O LastRead -1 FirstWrite 0}
		char4_out {Type O LastRead -1 FirstWrite 0}
		char5_out {Type O LastRead -1 FirstWrite 0}
		char6_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	xleft_s { ap_none {  { xleft_s in_data 0 16 } } }
	xright_s { ap_none {  { xright_s in_data 0 16 } } }
	ytop_s { ap_none {  { ytop_s in_data 0 16 } } }
	ydown_s { ap_none {  { ydown_s in_data 0 16 } } }
	color1 { ap_none {  { color1 in_data 0 8 } } }
	color2 { ap_none {  { color2 in_data 0 8 } } }
	color3 { ap_none {  { color3 in_data 0 8 } } }
	char1 { ap_none {  { char1 in_data 0 8 } } }
	char2 { ap_none {  { char2 in_data 0 8 } } }
	char3 { ap_none {  { char3 in_data 0 8 } } }
	char4 { ap_none {  { char4 in_data 0 8 } } }
	char5 { ap_none {  { char5 in_data 0 8 } } }
	char6 { ap_none {  { char6 in_data 0 8 } } }
	xleft_out { ap_fifo {  { xleft_out_din fifo_data 1 16 }  { xleft_out_full_n fifo_status 0 1 }  { xleft_out_write fifo_update 1 1 } } }
	xright_out { ap_fifo {  { xright_out_din fifo_data 1 16 }  { xright_out_full_n fifo_status 0 1 }  { xright_out_write fifo_update 1 1 } } }
	ytop_out { ap_fifo {  { ytop_out_din fifo_data 1 16 }  { ytop_out_full_n fifo_status 0 1 }  { ytop_out_write fifo_update 1 1 } } }
	ydown_out { ap_fifo {  { ydown_out_din fifo_data 1 16 }  { ydown_out_full_n fifo_status 0 1 }  { ydown_out_write fifo_update 1 1 } } }
	color1_out { ap_fifo {  { color1_out_din fifo_data 1 8 }  { color1_out_full_n fifo_status 0 1 }  { color1_out_write fifo_update 1 1 } } }
	color2_out { ap_fifo {  { color2_out_din fifo_data 1 8 }  { color2_out_full_n fifo_status 0 1 }  { color2_out_write fifo_update 1 1 } } }
	color3_out { ap_fifo {  { color3_out_din fifo_data 1 8 }  { color3_out_full_n fifo_status 0 1 }  { color3_out_write fifo_update 1 1 } } }
	char1_out { ap_fifo {  { char1_out_din fifo_data 1 8 }  { char1_out_full_n fifo_status 0 1 }  { char1_out_write fifo_update 1 1 } } }
	char2_out { ap_fifo {  { char2_out_din fifo_data 1 8 }  { char2_out_full_n fifo_status 0 1 }  { char2_out_write fifo_update 1 1 } } }
	char3_out { ap_fifo {  { char3_out_din fifo_data 1 8 }  { char3_out_full_n fifo_status 0 1 }  { char3_out_write fifo_update 1 1 } } }
	char4_out { ap_fifo {  { char4_out_din fifo_data 1 8 }  { char4_out_full_n fifo_status 0 1 }  { char4_out_write fifo_update 1 1 } } }
	char5_out { ap_fifo {  { char5_out_din fifo_data 1 8 }  { char5_out_full_n fifo_status 0 1 }  { char5_out_write fifo_update 1 1 } } }
	char6_out { ap_fifo {  { char6_out_din fifo_data 1 8 }  { char6_out_full_n fifo_status 0 1 }  { char6_out_write fifo_update 1 1 } } }
}
