set moduleName Block_proc
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
set C_modelName {Block__proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ xleft_s int 16 regular {fifo 0}  }
	{ ch2x_out_out int 16 regular {fifo 1}  }
	{ ch3x_out_out int 16 regular {fifo 1}  }
	{ ch4x_out_out int 16 regular {fifo 1}  }
	{ ch5x_out_out int 16 regular {fifo 1}  }
	{ ch6x_out_out int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xleft_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ch2x_out_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ch3x_out_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ch4x_out_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ch5x_out_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ch6x_out_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xleft_s_dout sc_in sc_lv 16 signal 0 } 
	{ xleft_s_empty_n sc_in sc_logic 1 signal 0 } 
	{ xleft_s_read sc_out sc_logic 1 signal 0 } 
	{ ch2x_out_out_din sc_out sc_lv 16 signal 1 } 
	{ ch2x_out_out_full_n sc_in sc_logic 1 signal 1 } 
	{ ch2x_out_out_write sc_out sc_logic 1 signal 1 } 
	{ ch3x_out_out_din sc_out sc_lv 16 signal 2 } 
	{ ch3x_out_out_full_n sc_in sc_logic 1 signal 2 } 
	{ ch3x_out_out_write sc_out sc_logic 1 signal 2 } 
	{ ch4x_out_out_din sc_out sc_lv 16 signal 3 } 
	{ ch4x_out_out_full_n sc_in sc_logic 1 signal 3 } 
	{ ch4x_out_out_write sc_out sc_logic 1 signal 3 } 
	{ ch5x_out_out_din sc_out sc_lv 16 signal 4 } 
	{ ch5x_out_out_full_n sc_in sc_logic 1 signal 4 } 
	{ ch5x_out_out_write sc_out sc_logic 1 signal 4 } 
	{ ch6x_out_out_din sc_out sc_lv 16 signal 5 } 
	{ ch6x_out_out_full_n sc_in sc_logic 1 signal 5 } 
	{ ch6x_out_out_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xleft_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xleft_s", "role": "dout" }} , 
 	{ "name": "xleft_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xleft_s", "role": "empty_n" }} , 
 	{ "name": "xleft_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xleft_s", "role": "read" }} , 
 	{ "name": "ch2x_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ch2x_out_out", "role": "din" }} , 
 	{ "name": "ch2x_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2x_out_out", "role": "full_n" }} , 
 	{ "name": "ch2x_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch2x_out_out", "role": "write" }} , 
 	{ "name": "ch3x_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ch3x_out_out", "role": "din" }} , 
 	{ "name": "ch3x_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch3x_out_out", "role": "full_n" }} , 
 	{ "name": "ch3x_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch3x_out_out", "role": "write" }} , 
 	{ "name": "ch4x_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ch4x_out_out", "role": "din" }} , 
 	{ "name": "ch4x_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch4x_out_out", "role": "full_n" }} , 
 	{ "name": "ch4x_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch4x_out_out", "role": "write" }} , 
 	{ "name": "ch5x_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ch5x_out_out", "role": "din" }} , 
 	{ "name": "ch5x_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch5x_out_out", "role": "full_n" }} , 
 	{ "name": "ch5x_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch5x_out_out", "role": "write" }} , 
 	{ "name": "ch6x_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ch6x_out_out", "role": "din" }} , 
 	{ "name": "ch6x_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch6x_out_out", "role": "full_n" }} , 
 	{ "name": "ch6x_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch6x_out_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xleft_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "xleft_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch2x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch2x_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch3x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch3x_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch4x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch4x_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch5x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch5x_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch6x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch6x_out_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_proc {
		xleft_s {Type I LastRead 0 FirstWrite -1}
		ch2x_out_out {Type O LastRead -1 FirstWrite 1}
		ch3x_out_out {Type O LastRead -1 FirstWrite 1}
		ch4x_out_out {Type O LastRead -1 FirstWrite 1}
		ch5x_out_out {Type O LastRead -1 FirstWrite 1}
		ch6x_out_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	xleft_s { ap_fifo {  { xleft_s_dout fifo_data 0 16 }  { xleft_s_empty_n fifo_status 0 1 }  { xleft_s_read fifo_update 1 1 } } }
	ch2x_out_out { ap_fifo {  { ch2x_out_out_din fifo_data 1 16 }  { ch2x_out_out_full_n fifo_status 0 1 }  { ch2x_out_out_write fifo_update 1 1 } } }
	ch3x_out_out { ap_fifo {  { ch3x_out_out_din fifo_data 1 16 }  { ch3x_out_out_full_n fifo_status 0 1 }  { ch3x_out_out_write fifo_update 1 1 } } }
	ch4x_out_out { ap_fifo {  { ch4x_out_out_din fifo_data 1 16 }  { ch4x_out_out_full_n fifo_status 0 1 }  { ch4x_out_out_write fifo_update 1 1 } } }
	ch5x_out_out { ap_fifo {  { ch5x_out_out_din fifo_data 1 16 }  { ch5x_out_out_full_n fifo_status 0 1 }  { ch5x_out_out_write fifo_update 1 1 } } }
	ch6x_out_out { ap_fifo {  { ch6x_out_out_din fifo_data 1 16 }  { ch6x_out_out_full_n fifo_status 0 1 }  { ch6x_out_out_write fifo_update 1 1 } } }
}
