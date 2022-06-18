set moduleName Add_Char1
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
set C_modelName {Add_Char1}
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
	{ x int 16 regular {fifo 0}  }
	{ y int 16 regular {fifo 0}  }
	{ chr int 8 regular {fifo 0}  }
	{ color1 int 8 regular {fifo 0}  }
	{ color2 int 8 regular {fifo 0}  }
	{ color3 int 8 regular {fifo 0}  }
	{ y_out int 16 regular {fifo 1}  }
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
 	{ "Name" : "x", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "chr", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "color1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "color2", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "color3", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "y_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "color1_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "color2_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "color3_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 61
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
	{ x_dout sc_in sc_lv 16 signal 8 } 
	{ x_empty_n sc_in sc_logic 1 signal 8 } 
	{ x_read sc_out sc_logic 1 signal 8 } 
	{ y_dout sc_in sc_lv 16 signal 9 } 
	{ y_empty_n sc_in sc_logic 1 signal 9 } 
	{ y_read sc_out sc_logic 1 signal 9 } 
	{ chr_dout sc_in sc_lv 8 signal 10 } 
	{ chr_empty_n sc_in sc_logic 1 signal 10 } 
	{ chr_read sc_out sc_logic 1 signal 10 } 
	{ color1_dout sc_in sc_lv 8 signal 11 } 
	{ color1_empty_n sc_in sc_logic 1 signal 11 } 
	{ color1_read sc_out sc_logic 1 signal 11 } 
	{ color2_dout sc_in sc_lv 8 signal 12 } 
	{ color2_empty_n sc_in sc_logic 1 signal 12 } 
	{ color2_read sc_out sc_logic 1 signal 12 } 
	{ color3_dout sc_in sc_lv 8 signal 13 } 
	{ color3_empty_n sc_in sc_logic 1 signal 13 } 
	{ color3_read sc_out sc_logic 1 signal 13 } 
	{ y_out_din sc_out sc_lv 16 signal 14 } 
	{ y_out_full_n sc_in sc_logic 1 signal 14 } 
	{ y_out_write sc_out sc_logic 1 signal 14 } 
	{ color1_out_din sc_out sc_lv 8 signal 15 } 
	{ color1_out_full_n sc_in sc_logic 1 signal 15 } 
	{ color1_out_write sc_out sc_logic 1 signal 15 } 
	{ color2_out_din sc_out sc_lv 8 signal 16 } 
	{ color2_out_full_n sc_in sc_logic 1 signal 16 } 
	{ color2_out_write sc_out sc_logic 1 signal 16 } 
	{ color3_out_din sc_out sc_lv 8 signal 17 } 
	{ color3_out_full_n sc_in sc_logic 1 signal 17 } 
	{ color3_out_write sc_out sc_logic 1 signal 17 } 
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
 	{ "name": "x_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "x", "role": "dout" }} , 
 	{ "name": "x_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "empty_n" }} , 
 	{ "name": "x_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "read" }} , 
 	{ "name": "y_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y", "role": "dout" }} , 
 	{ "name": "y_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "empty_n" }} , 
 	{ "name": "y_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "read" }} , 
 	{ "name": "chr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "chr", "role": "dout" }} , 
 	{ "name": "chr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chr", "role": "empty_n" }} , 
 	{ "name": "chr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chr", "role": "read" }} , 
 	{ "name": "color1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color1", "role": "dout" }} , 
 	{ "name": "color1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color1", "role": "empty_n" }} , 
 	{ "name": "color1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color1", "role": "read" }} , 
 	{ "name": "color2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color2", "role": "dout" }} , 
 	{ "name": "color2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color2", "role": "empty_n" }} , 
 	{ "name": "color2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color2", "role": "read" }} , 
 	{ "name": "color3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "color3", "role": "dout" }} , 
 	{ "name": "color3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color3", "role": "empty_n" }} , 
 	{ "name": "color3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "color3", "role": "read" }} , 
 	{ "name": "y_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_out", "role": "din" }} , 
 	{ "name": "y_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_out", "role": "full_n" }} , 
 	{ "name": "y_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_out", "role": "write" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Add_Char1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "925201", "EstimateLatencyMax" : "925201",
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
			{"Name" : "x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "chr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "chr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "letter", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Add_Char1 {
		src_data_stream_0_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_3_V {Type I LastRead 4 FirstWrite -1}
		dst_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_3_V {Type O LastRead -1 FirstWrite 5}
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		chr {Type I LastRead 0 FirstWrite -1}
		color1 {Type I LastRead 0 FirstWrite -1}
		color2 {Type I LastRead 0 FirstWrite -1}
		color3 {Type I LastRead 0 FirstWrite -1}
		y_out {Type O LastRead -1 FirstWrite 0}
		color1_out {Type O LastRead -1 FirstWrite 0}
		color2_out {Type O LastRead -1 FirstWrite 0}
		color3_out {Type O LastRead -1 FirstWrite 0}
		letter {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "925201", "Max" : "925201"}
	, {"Name" : "Interval", "Min" : "925201", "Max" : "925201"}
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
	x { ap_fifo {  { x_dout fifo_data 0 16 }  { x_empty_n fifo_status 0 1 }  { x_read fifo_update 1 1 } } }
	y { ap_fifo {  { y_dout fifo_data 0 16 }  { y_empty_n fifo_status 0 1 }  { y_read fifo_update 1 1 } } }
	chr { ap_fifo {  { chr_dout fifo_data 0 8 }  { chr_empty_n fifo_status 0 1 }  { chr_read fifo_update 1 1 } } }
	color1 { ap_fifo {  { color1_dout fifo_data 0 8 }  { color1_empty_n fifo_status 0 1 }  { color1_read fifo_update 1 1 } } }
	color2 { ap_fifo {  { color2_dout fifo_data 0 8 }  { color2_empty_n fifo_status 0 1 }  { color2_read fifo_update 1 1 } } }
	color3 { ap_fifo {  { color3_dout fifo_data 0 8 }  { color3_empty_n fifo_status 0 1 }  { color3_read fifo_update 1 1 } } }
	y_out { ap_fifo {  { y_out_din fifo_data 1 16 }  { y_out_full_n fifo_status 0 1 }  { y_out_write fifo_update 1 1 } } }
	color1_out { ap_fifo {  { color1_out_din fifo_data 1 8 }  { color1_out_full_n fifo_status 0 1 }  { color1_out_write fifo_update 1 1 } } }
	color2_out { ap_fifo {  { color2_out_din fifo_data 1 8 }  { color2_out_full_n fifo_status 0 1 }  { color2_out_write fifo_update 1 1 } } }
	color3_out { ap_fifo {  { color3_out_din fifo_data 1 8 }  { color3_out_full_n fifo_status 0 1 }  { color3_out_write fifo_update 1 1 } } }
}
