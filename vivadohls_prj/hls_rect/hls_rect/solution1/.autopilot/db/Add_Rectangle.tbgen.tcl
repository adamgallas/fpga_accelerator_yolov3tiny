set moduleName Add_Rectangle
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Add_Rectangle}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ src_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ src_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ src_data_stream_3_V int 8 regular {fifo 0 volatile }  }
	{ dst_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ dst_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ dst_data_stream_2_V int 8 regular {fifo 1 volatile }  }
	{ dst_data_stream_3_V int 8 regular {fifo 1 volatile }  }
	{ xleft int 16 regular {fifo 0}  }
	{ xright int 16 regular {fifo 0}  }
	{ ytop int 16 regular {fifo 0}  }
	{ ydown int 16 regular {fifo 0}  }
	{ color1 int 8 regular {fifo 0}  }
	{ color2 int 8 regular {fifo 0}  }
	{ color3 int 8 regular {fifo 0}  }
	{ xleft_out int 16 regular {fifo 1}  }
	{ ytop_out int 16 regular {fifo 1}  }
	{ color1_out int 8 regular {fifo 1}  }
	{ color2_out int 8 regular {fifo 1}  }
	{ color3_out int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_data_stream_3_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_data_stream_3_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xleft", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xright", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ytop", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ydown", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "color1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "color2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "color3", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "xleft_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ytop_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "color1_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "color2_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "color3_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_data_stream_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ src_data_stream_0_V_read sc_out sc_logic 1 signal 0 } 
	{ src_data_stream_1_V_dout sc_in sc_lv 8 signal 1 } 
	{ src_data_stream_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ src_data_stream_1_V_read sc_out sc_logic 1 signal 1 } 
	{ src_data_stream_2_V_dout sc_in sc_lv 8 signal 2 } 
	{ src_data_stream_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_data_stream_2_V_read sc_out sc_logic 1 signal 2 } 
	{ src_data_stream_3_V_dout sc_in sc_lv 8 signal 3 } 
	{ src_data_stream_3_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ src_data_stream_3_V_read sc_out sc_logic 1 signal 3 } 
	{ dst_data_stream_0_V_din sc_out sc_lv 8 signal 4 } 
	{ dst_data_stream_0_V_full_n sc_in sc_logic 1 signal 4 } 
	{ dst_data_stream_0_V_write sc_out sc_logic 1 signal 4 } 
	{ dst_data_stream_1_V_din sc_out sc_lv 8 signal 5 } 
	{ dst_data_stream_1_V_full_n sc_in sc_logic 1 signal 5 } 
	{ dst_data_stream_1_V_write sc_out sc_logic 1 signal 5 } 
	{ dst_data_stream_2_V_din sc_out sc_lv 8 signal 6 } 
	{ dst_data_stream_2_V_full_n sc_in sc_logic 1 signal 6 } 
	{ dst_data_stream_2_V_write sc_out sc_logic 1 signal 6 } 
	{ dst_data_stream_3_V_din sc_out sc_lv 8 signal 7 } 
	{ dst_data_stream_3_V_full_n sc_in sc_logic 1 signal 7 } 
	{ dst_data_stream_3_V_write sc_out sc_logic 1 signal 7 } 
	{ xleft_dout sc_in sc_lv 16 signal 8 } 
	{ xleft_empty_n sc_in sc_logic 1 signal 8 } 
	{ xleft_read sc_out sc_logic 1 signal 8 } 
	{ xright_dout sc_in sc_lv 16 signal 9 } 
	{ xright_empty_n sc_in sc_logic 1 signal 9 } 
	{ xright_read sc_out sc_logic 1 signal 9 } 
	{ ytop_dout sc_in sc_lv 16 signal 10 } 
	{ ytop_empty_n sc_in sc_logic 1 signal 10 } 
	{ ytop_read sc_out sc_logic 1 signal 10 } 
	{ ydown_dout sc_in sc_lv 16 signal 11 } 
	{ ydown_empty_n sc_in sc_logic 1 signal 11 } 
	{ ydown_read sc_out sc_logic 1 signal 11 } 
	{ color1_dout sc_in sc_lv 8 signal 12 } 
	{ color1_empty_n sc_in sc_logic 1 signal 12 } 
	{ color1_read sc_out sc_logic 1 signal 12 } 
	{ color2_dout sc_in sc_lv 8 signal 13 } 
	{ color2_empty_n sc_in sc_logic 1 signal 13 } 
	{ color2_read sc_out sc_logic 1 signal 13 } 
	{ color3_dout sc_in sc_lv 8 signal 14 } 
	{ color3_empty_n sc_in sc_logic 1 signal 14 } 
	{ color3_read sc_out sc_logic 1 signal 14 } 
	{ xleft_out_din sc_out sc_lv 16 signal 15 } 
	{ xleft_out_full_n sc_in sc_logic 1 signal 15 } 
	{ xleft_out_write sc_out sc_logic 1 signal 15 } 
	{ ytop_out_din sc_out sc_lv 16 signal 16 } 
	{ ytop_out_full_n sc_in sc_logic 1 signal 16 } 
	{ ytop_out_write sc_out sc_logic 1 signal 16 } 
	{ color1_out_din sc_out sc_lv 8 signal 17 } 
	{ color1_out_full_n sc_in sc_logic 1 signal 17 } 
	{ color1_out_write sc_out sc_logic 1 signal 17 } 
	{ color2_out_din sc_out sc_lv 8 signal 18 } 
	{ color2_out_full_n sc_in sc_logic 1 signal 18 } 
	{ color2_out_write sc_out sc_logic 1 signal 18 } 
	{ color3_out_din sc_out sc_lv 8 signal 19 } 
	{ color3_out_full_n sc_in sc_logic 1 signal 19 } 
	{ color3_out_write sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "read" }} , 
 	{ "name": "src_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "read" }} , 
 	{ "name": "src_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "read" }} , 
 	{ "name": "src_data_stream_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_3_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_3_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_3_V", "role": "read" }} , 
 	{ "name": "dst_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_data_stream_0_V", "role": "din" }} , 
 	{ "name": "dst_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "dst_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_0_V", "role": "write" }} , 
 	{ "name": "dst_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_data_stream_1_V", "role": "din" }} , 
 	{ "name": "dst_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "dst_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_1_V", "role": "write" }} , 
 	{ "name": "dst_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_data_stream_2_V", "role": "din" }} , 
 	{ "name": "dst_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "dst_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_2_V", "role": "write" }} , 
 	{ "name": "dst_data_stream_3_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_data_stream_3_V", "role": "din" }} , 
 	{ "name": "dst_data_stream_3_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_3_V", "role": "full_n" }} , 
 	{ "name": "dst_data_stream_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_3_V", "role": "write" }} , 
 	{ "name": "xleft_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xleft", "role": "dout" }} , 
 	{ "name": "xleft_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xleft", "role": "empty_n" }} , 
 	{ "name": "xleft_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xleft", "role": "read" }} , 
 	{ "name": "xright_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xright", "role": "dout" }} , 
 	{ "name": "xright_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xright", "role": "empty_n" }} , 
 	{ "name": "xright_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xright", "role": "read" }} , 
 	{ "name": "ytop_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ytop", "role": "dout" }} , 
 	{ "name": "ytop_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ytop", "role": "empty_n" }} , 
 	{ "name": "ytop_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ytop", "role": "read" }} , 
 	{ "name": "ydown_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ydown", "role": "dout" }} , 
 	{ "name": "ydown_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ydown", "role": "empty_n" }} , 
 	{ "name": "ydown_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ydown", "role": "read" }} , 
 	{ "name": "color1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color1", "role": "dout" }} , 
 	{ "name": "color1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color1", "role": "empty_n" }} , 
 	{ "name": "color1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color1", "role": "read" }} , 
 	{ "name": "color2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color2", "role": "dout" }} , 
 	{ "name": "color2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color2", "role": "empty_n" }} , 
 	{ "name": "color2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color2", "role": "read" }} , 
 	{ "name": "color3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color3", "role": "dout" }} , 
 	{ "name": "color3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color3", "role": "empty_n" }} , 
 	{ "name": "color3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color3", "role": "read" }} , 
 	{ "name": "xleft_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xleft_out", "role": "din" }} , 
 	{ "name": "xleft_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xleft_out", "role": "full_n" }} , 
 	{ "name": "xleft_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xleft_out", "role": "write" }} , 
 	{ "name": "ytop_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ytop_out", "role": "din" }} , 
 	{ "name": "ytop_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ytop_out", "role": "full_n" }} , 
 	{ "name": "ytop_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ytop_out", "role": "write" }} , 
 	{ "name": "color1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color1_out", "role": "din" }} , 
 	{ "name": "color1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color1_out", "role": "full_n" }} , 
 	{ "name": "color1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color1_out", "role": "write" }} , 
 	{ "name": "color2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color2_out", "role": "din" }} , 
 	{ "name": "color2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color2_out", "role": "full_n" }} , 
 	{ "name": "color2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color2_out", "role": "write" }} , 
 	{ "name": "color3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color3_out", "role": "din" }} , 
 	{ "name": "color3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color3_out", "role": "full_n" }} , 
 	{ "name": "color3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color3_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Add_Rectangle",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "924481", "EstimateLatencyMax" : "924481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xleft", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "xleft_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xright", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "xright_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ytop_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ydown", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ydown_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xleft_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "xleft_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ytop_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Add_Rectangle {
		src_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_3_V {Type I LastRead 3 FirstWrite -1}
		dst_data_stream_0_V {Type O LastRead -1 FirstWrite 4}
		dst_data_stream_1_V {Type O LastRead -1 FirstWrite 4}
		dst_data_stream_2_V {Type O LastRead -1 FirstWrite 4}
		dst_data_stream_3_V {Type O LastRead -1 FirstWrite 4}
		xleft {Type I LastRead 0 FirstWrite -1}
		xright {Type I LastRead 0 FirstWrite -1}
		ytop {Type I LastRead 0 FirstWrite -1}
		ydown {Type I LastRead 0 FirstWrite -1}
		color1 {Type I LastRead 0 FirstWrite -1}
		color2 {Type I LastRead 0 FirstWrite -1}
		color3 {Type I LastRead 0 FirstWrite -1}
		xleft_out {Type O LastRead -1 FirstWrite 0}
		ytop_out {Type O LastRead -1 FirstWrite 0}
		color1_out {Type O LastRead -1 FirstWrite 0}
		color2_out {Type O LastRead -1 FirstWrite 0}
		color3_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "924481", "Max" : "924481"}
	, {"Name" : "Interval", "Min" : "924481", "Max" : "924481"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src_data_stream_0_V { ap_fifo {  { src_data_stream_0_V_dout fifo_data 0 8 }  { src_data_stream_0_V_empty_n fifo_status 0 1 }  { src_data_stream_0_V_read fifo_update 1 1 } } }
	src_data_stream_1_V { ap_fifo {  { src_data_stream_1_V_dout fifo_data 0 8 }  { src_data_stream_1_V_empty_n fifo_status 0 1 }  { src_data_stream_1_V_read fifo_update 1 1 } } }
	src_data_stream_2_V { ap_fifo {  { src_data_stream_2_V_dout fifo_data 0 8 }  { src_data_stream_2_V_empty_n fifo_status 0 1 }  { src_data_stream_2_V_read fifo_update 1 1 } } }
	src_data_stream_3_V { ap_fifo {  { src_data_stream_3_V_dout fifo_data 0 8 }  { src_data_stream_3_V_empty_n fifo_status 0 1 }  { src_data_stream_3_V_read fifo_update 1 1 } } }
	dst_data_stream_0_V { ap_fifo {  { dst_data_stream_0_V_din fifo_data 1 8 }  { dst_data_stream_0_V_full_n fifo_status 0 1 }  { dst_data_stream_0_V_write fifo_update 1 1 } } }
	dst_data_stream_1_V { ap_fifo {  { dst_data_stream_1_V_din fifo_data 1 8 }  { dst_data_stream_1_V_full_n fifo_status 0 1 }  { dst_data_stream_1_V_write fifo_update 1 1 } } }
	dst_data_stream_2_V { ap_fifo {  { dst_data_stream_2_V_din fifo_data 1 8 }  { dst_data_stream_2_V_full_n fifo_status 0 1 }  { dst_data_stream_2_V_write fifo_update 1 1 } } }
	dst_data_stream_3_V { ap_fifo {  { dst_data_stream_3_V_din fifo_data 1 8 }  { dst_data_stream_3_V_full_n fifo_status 0 1 }  { dst_data_stream_3_V_write fifo_update 1 1 } } }
	xleft { ap_fifo {  { xleft_dout fifo_data 0 16 }  { xleft_empty_n fifo_status 0 1 }  { xleft_read fifo_update 1 1 } } }
	xright { ap_fifo {  { xright_dout fifo_data 0 16 }  { xright_empty_n fifo_status 0 1 }  { xright_read fifo_update 1 1 } } }
	ytop { ap_fifo {  { ytop_dout fifo_data 0 16 }  { ytop_empty_n fifo_status 0 1 }  { ytop_read fifo_update 1 1 } } }
	ydown { ap_fifo {  { ydown_dout fifo_data 0 16 }  { ydown_empty_n fifo_status 0 1 }  { ydown_read fifo_update 1 1 } } }
	color1 { ap_fifo {  { color1_dout fifo_data 0 8 }  { color1_empty_n fifo_status 0 1 }  { color1_read fifo_update 1 1 } } }
	color2 { ap_fifo {  { color2_dout fifo_data 0 8 }  { color2_empty_n fifo_status 0 1 }  { color2_read fifo_update 1 1 } } }
	color3 { ap_fifo {  { color3_dout fifo_data 0 8 }  { color3_empty_n fifo_status 0 1 }  { color3_read fifo_update 1 1 } } }
	xleft_out { ap_fifo {  { xleft_out_din fifo_data 1 16 }  { xleft_out_full_n fifo_status 0 1 }  { xleft_out_write fifo_update 1 1 } } }
	ytop_out { ap_fifo {  { ytop_out_din fifo_data 1 16 }  { ytop_out_full_n fifo_status 0 1 }  { ytop_out_write fifo_update 1 1 } } }
	color1_out { ap_fifo {  { color1_out_din fifo_data 1 8 }  { color1_out_full_n fifo_status 0 1 }  { color1_out_write fifo_update 1 1 } } }
	color2_out { ap_fifo {  { color2_out_din fifo_data 1 8 }  { color2_out_full_n fifo_status 0 1 }  { color2_out_write fifo_update 1 1 } } }
	color3_out { ap_fifo {  { color3_out_din fifo_data 1 8 }  { color3_out_full_n fifo_status 0 1 }  { color3_out_write fifo_update 1 1 } } }
}
