set moduleName hls_rect
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hls_rect}
set C_modelType { void 0 }
set C_modelArgList {
	{ video_src_V_data_V int 32 regular {axi_s 0 volatile  { video_src Data } }  }
	{ video_src_V_keep_V int 4 regular {axi_s 0 volatile  { video_src Keep } }  }
	{ video_src_V_strb_V int 4 regular {axi_s 0 volatile  { video_src Strb } }  }
	{ video_src_V_user_V int 1 regular {axi_s 0 volatile  { video_src User } }  }
	{ video_src_V_last_V int 1 regular {axi_s 0 volatile  { video_src Last } }  }
	{ video_src_V_id_V int 1 regular {axi_s 0 volatile  { video_src ID } }  }
	{ video_src_V_dest_V int 1 regular {axi_s 0 volatile  { video_src Dest } }  }
	{ video_dst_V_data_V int 32 regular {axi_s 1 volatile  { video_dst Data } }  }
	{ video_dst_V_keep_V int 4 regular {axi_s 1 volatile  { video_dst Keep } }  }
	{ video_dst_V_strb_V int 4 regular {axi_s 1 volatile  { video_dst Strb } }  }
	{ video_dst_V_user_V int 1 regular {axi_s 1 volatile  { video_dst User } }  }
	{ video_dst_V_last_V int 1 regular {axi_s 1 volatile  { video_dst Last } }  }
	{ video_dst_V_id_V int 1 regular {axi_s 1 volatile  { video_dst ID } }  }
	{ video_dst_V_dest_V int 1 regular {axi_s 1 volatile  { video_dst Dest } }  }
	{ xleft_s uint 16 regular {axi_slave 0}  }
	{ xright_s uint 16 regular {axi_slave 0}  }
	{ ytop_s uint 16 regular {axi_slave 0}  }
	{ ydown_s uint 16 regular {axi_slave 0}  }
	{ color1 uint 8 regular {axi_slave 0}  }
	{ color2 uint 8 regular {axi_slave 0}  }
	{ color3 uint 8 regular {axi_slave 0}  }
	{ char1 uint 8 regular {axi_slave 0}  }
	{ char2 uint 8 regular {axi_slave 0}  }
	{ char3 uint 8 regular {axi_slave 0}  }
	{ char4 uint 8 regular {axi_slave 0}  }
	{ char5 uint 8 regular {axi_slave 0}  }
	{ char6 uint 8 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "video_src_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "video_src.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_src_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "video_src.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_src_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "video_src.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_src_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_src.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_src_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_src.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_src_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_src.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_src_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_src.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_dst_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "video_dst.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_dst_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "video_dst.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_dst_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "video_dst.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_dst_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_dst.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_dst_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_dst.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_dst_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_dst.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_dst_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_dst.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "xleft_s", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "xleft_","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "xright_s", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "xright_","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "ytop_s", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "ytop_","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "ydown_s", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "ydown_","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "color1", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "color1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "color2", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "color2","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "color3", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "color3","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "char1", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "char1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "char2", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "char2","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "char3", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "char3","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "char4", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "char4","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "char5", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "char5","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "char6", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "char6","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":112}, "offset_end" : {"in":119}} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ video_src_TDATA sc_in sc_lv 32 signal 0 } 
	{ video_src_TKEEP sc_in sc_lv 4 signal 1 } 
	{ video_src_TSTRB sc_in sc_lv 4 signal 2 } 
	{ video_src_TUSER sc_in sc_lv 1 signal 3 } 
	{ video_src_TLAST sc_in sc_lv 1 signal 4 } 
	{ video_src_TID sc_in sc_lv 1 signal 5 } 
	{ video_src_TDEST sc_in sc_lv 1 signal 6 } 
	{ video_dst_TDATA sc_out sc_lv 32 signal 7 } 
	{ video_dst_TKEEP sc_out sc_lv 4 signal 8 } 
	{ video_dst_TSTRB sc_out sc_lv 4 signal 9 } 
	{ video_dst_TUSER sc_out sc_lv 1 signal 10 } 
	{ video_dst_TLAST sc_out sc_lv 1 signal 11 } 
	{ video_dst_TID sc_out sc_lv 1 signal 12 } 
	{ video_dst_TDEST sc_out sc_lv 1 signal 13 } 
	{ video_src_TVALID sc_in sc_logic 1 invld 6 } 
	{ video_src_TREADY sc_out sc_logic 1 inacc 6 } 
	{ video_dst_TVALID sc_out sc_logic 1 outvld 13 } 
	{ video_dst_TREADY sc_in sc_logic 1 outacc 13 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"hls_rect","role":"start","value":"0","valid_bit":"0"},{"name":"hls_rect","role":"continue","value":"0","valid_bit":"4"},{"name":"hls_rect","role":"auto_start","value":"0","valid_bit":"7"},{"name":"xleft_s","role":"data","value":"16"},{"name":"xright_s","role":"data","value":"24"},{"name":"ytop_s","role":"data","value":"32"},{"name":"ydown_s","role":"data","value":"40"},{"name":"color1","role":"data","value":"48"},{"name":"color2","role":"data","value":"56"},{"name":"color3","role":"data","value":"64"},{"name":"char1","role":"data","value":"72"},{"name":"char2","role":"data","value":"80"},{"name":"char3","role":"data","value":"88"},{"name":"char4","role":"data","value":"96"},{"name":"char5","role":"data","value":"104"},{"name":"char6","role":"data","value":"112"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"hls_rect","role":"start","value":"0","valid_bit":"0"},{"name":"hls_rect","role":"done","value":"0","valid_bit":"1"},{"name":"hls_rect","role":"idle","value":"0","valid_bit":"2"},{"name":"hls_rect","role":"ready","value":"0","valid_bit":"3"},{"name":"hls_rect","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "video_src_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "video_src_V_data_V", "role": "default" }} , 
 	{ "name": "video_src_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "video_src_V_keep_V", "role": "default" }} , 
 	{ "name": "video_src_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "video_src_V_strb_V", "role": "default" }} , 
 	{ "name": "video_src_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_src_V_user_V", "role": "default" }} , 
 	{ "name": "video_src_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_src_V_last_V", "role": "default" }} , 
 	{ "name": "video_src_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_src_V_id_V", "role": "default" }} , 
 	{ "name": "video_src_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_src_V_dest_V", "role": "default" }} , 
 	{ "name": "video_dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "video_dst_V_data_V", "role": "default" }} , 
 	{ "name": "video_dst_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "video_dst_V_keep_V", "role": "default" }} , 
 	{ "name": "video_dst_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "video_dst_V_strb_V", "role": "default" }} , 
 	{ "name": "video_dst_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_dst_V_user_V", "role": "default" }} , 
 	{ "name": "video_dst_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_dst_V_last_V", "role": "default" }} , 
 	{ "name": "video_dst_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_dst_V_id_V", "role": "default" }} , 
 	{ "name": "video_dst_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_dst_V_dest_V", "role": "default" }} , 
 	{ "name": "video_src_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "video_src_V_dest_V", "role": "default" }} , 
 	{ "name": "video_src_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "video_src_V_dest_V", "role": "default" }} , 
 	{ "name": "video_dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "video_dst_V_dest_V", "role": "default" }} , 
 	{ "name": "video_dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "video_dst_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "13", "14", "16", "18", "20", "22", "24", "26", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132"],
		"CDFG" : "hls_rect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "925215", "EstimateLatencyMax" : "925215",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "hls_rect_entry3_U0", "ReadyCount" : "hls_rect_entry3_U0_ap_ready_count"},
			{"ID" : "5", "Name" : "AXIvideo2Mat_U0", "ReadyCount" : "AXIvideo2Mat_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "26", "Name" : "Mat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "video_src_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "video_src_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "video_src_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "video_src_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "video_src_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "video_src_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "video_src_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "video_dst_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "video_dst_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "video_dst_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "video_dst_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "video_dst_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "video_dst_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "video_dst_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
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
			{"Name" : "letter", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Add_Char1_U0", "Port" : "letter"}]},
			{"Name" : "letter294", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "Add_Char2_U0", "Port" : "letter294"}]},
			{"Name" : "letter295", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "Add_Char3_U0", "Port" : "letter295"}]},
			{"Name" : "letter296", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "Add_Char4_U0", "Port" : "letter296"}]},
			{"Name" : "letter297", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Add_Char5_U0", "Port" : "letter297"}]},
			{"Name" : "letter298", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "Add_Char6_U0", "Port" : "letter298"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_rect_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_rect_entry3_U0", "Parent" : "0",
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
			{"Name" : "xleft_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "xleft_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xright_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "xright_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "ytop_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ydown_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "ydown_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "char1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "char2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "char3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "char4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "char5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "char6_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_rect_entry304_U0", "Parent" : "0",
		"CDFG" : "hls_rect_entry304",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_hls_recbkb_U",
		"Port" : [
			{"Name" : "xleft_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "xleft_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xright_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "xright_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "ytop_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ydown_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "ydown_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "char1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "char2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "char3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "char4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "char5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "char6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xleft_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "xleft_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xleft_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "xleft_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xright_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "xright_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "ytop_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ydown_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "ydown_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "54",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "55",
				"BlockSignal" : [
					{"Name" : "char1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "56",
				"BlockSignal" : [
					{"Name" : "char2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "57",
				"BlockSignal" : [
					{"Name" : "char3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "char4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "char5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "char6_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_Block_pcud_U",
		"Port" : [
			{"Name" : "xleft_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "xleft_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch2x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "ch2x_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch3x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "ch3x_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch4x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "ch4x_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch5x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "ch5x_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch6x_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "65",
				"BlockSignal" : [
					{"Name" : "ch6x_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "AXIvideo2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "925203", "EstimateLatencyMax" : "925203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "video_src_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "66",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "img_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0.regslice_both_AXI_video_strm_V_data_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0.regslice_both_AXI_video_strm_V_keep_V_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0.regslice_both_AXI_video_strm_V_strb_V_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0.regslice_both_AXI_video_strm_V_user_V_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0.regslice_both_AXI_video_strm_V_last_V_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0.regslice_both_AXI_video_strm_V_id_V_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0.regslice_both_AXI_video_strm_V_dest_V_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Add_Rectangle_U0", "Parent" : "0",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_Add_RecjbC_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "66",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "src_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xleft", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "xleft_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xright", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "xright_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "ytop_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ydown", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "ydown_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "54",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xleft_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "xleft_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "ytop_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Add_Char1_U0", "Parent" : "0", "Child" : ["15"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_Add_ChadEe_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "src_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "chr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "55",
				"BlockSignal" : [
					{"Name" : "chr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "y_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "letter", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Add_Char1_U0.letter_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Add_Char2_U0", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "Add_Char2",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_Add_ChaeOg_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "src_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch2x_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "ch2x_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "ytop_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "56",
				"BlockSignal" : [
					{"Name" : "char2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "ytop_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "letter294", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Add_Char2_U0.letter294_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Add_Char3_U0", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "Add_Char3",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_Add_ChafYi_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "src_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch3x_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "ch3x_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "ytop_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "57",
				"BlockSignal" : [
					{"Name" : "char3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "ytop_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "letter295", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Add_Char3_U0.letter295_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Add_Char4_U0", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "Add_Char4",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_Add_Chag8j_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "src_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch4x_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "ch4x_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "ytop_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "char4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "ytop_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "letter296", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Add_Char4_U0.letter296_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Add_Char5_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "Add_Char5",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_Add_Chahbi_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "src_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch5x_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "ch5x_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "ytop_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "char5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "ytop_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "color1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "color2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "color3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "letter297", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Add_Char5_U0.letter297_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Add_Char6_U0", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "Add_Char6",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_Add_Chaibs_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "src_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch6x_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "65",
				"BlockSignal" : [
					{"Name" : "ch6x_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ytop_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "ytop_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "char6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "char6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "color1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "color2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "color3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "color3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "letter298", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Add_Char6_U0.letter298_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0", "Parent" : "0", "Child" : ["27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "Mat2AXIvideo",
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
		"StartSource" : "24",
		"StartFifo" : "start_for_Mat2AXIkbM_U",
		"Port" : [
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "img_data_stream_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "video_dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0.regslice_both_AXI_video_strm_V_data_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0.regslice_both_AXI_video_strm_V_keep_V_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0.regslice_both_AXI_video_strm_V_strb_V_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0.regslice_both_AXI_video_strm_V_user_V_U", "Parent" : "26"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0.regslice_both_AXI_video_strm_V_last_V_U", "Parent" : "26"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0.regslice_both_AXI_video_strm_V_id_V_U", "Parent" : "26"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0.regslice_both_AXI_video_strm_V_dest_V_U", "Parent" : "26"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xleft_c1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xright_c2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ytop_c3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ydown_c4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color1_c5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color2_c6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color3_c7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char1_c8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char2_c9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char3_c10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char4_c11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char5_c12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char6_c13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xleft_c_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xleft_c17_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xright_c_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ytop_c_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ydown_c_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color1_c_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color2_c_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color3_c_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char1_c_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char2_c_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char3_c_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char4_c_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char5_c_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.char6_c_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch2x_loc_c_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch3x_loc_c_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch4x_loc_c_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch5x_loc_c_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch6x_loc_c_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb_img_data_stream_s_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb_img_data_stream_1_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb_img_data_stream_2_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb_img_data_stream_3_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_img_data_stre_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_img_data_stre_1_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_img_data_stre_2_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_img_data_stre_3_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xleft_c18_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ytop_c19_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color1_c20_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color2_c21_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color3_c22_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_1_data_st_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_1_data_st_1_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_1_data_st_2_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_1_data_st_3_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ytop_c23_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color1_c24_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color2_c25_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color3_c26_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_2_data_st_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_2_data_st_1_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_2_data_st_2_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_2_data_st_3_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ytop_c27_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color1_c28_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color2_c29_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color3_c30_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_3_data_st_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_3_data_st_1_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_3_data_st_2_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_3_data_st_3_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ytop_c31_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color1_c32_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color2_c33_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color3_c34_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_4_data_st_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_4_data_st_1_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_4_data_st_2_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_4_data_st_3_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ytop_c35_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color1_c36_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color2_c37_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color3_c38_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_5_data_st_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_5_data_st_1_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_5_data_st_2_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_5_data_st_3_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ytop_c39_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color1_c40_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color2_c41_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.color3_c42_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_6_data_st_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_6_data_st_1_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_6_data_st_2_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.letter_img_6_data_st_3_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_hls_recbkb_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_pcud_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Add_ChadEe_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Add_ChaeOg_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Add_ChafYi_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Add_Chag8j_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Add_Chahbi_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Add_Chaibs_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Add_RecjbC_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Mat2AXIkbM_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hls_rect {
		video_src_V_data_V {Type I LastRead 6 FirstWrite -1}
		video_src_V_keep_V {Type I LastRead 6 FirstWrite -1}
		video_src_V_strb_V {Type I LastRead 6 FirstWrite -1}
		video_src_V_user_V {Type I LastRead 6 FirstWrite -1}
		video_src_V_last_V {Type I LastRead 6 FirstWrite -1}
		video_src_V_id_V {Type I LastRead 6 FirstWrite -1}
		video_src_V_dest_V {Type I LastRead 6 FirstWrite -1}
		video_dst_V_data_V {Type O LastRead -1 FirstWrite 3}
		video_dst_V_keep_V {Type O LastRead -1 FirstWrite 3}
		video_dst_V_strb_V {Type O LastRead -1 FirstWrite 3}
		video_dst_V_user_V {Type O LastRead -1 FirstWrite 3}
		video_dst_V_last_V {Type O LastRead -1 FirstWrite 3}
		video_dst_V_id_V {Type O LastRead -1 FirstWrite 3}
		video_dst_V_dest_V {Type O LastRead -1 FirstWrite 3}
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
		letter {Type I LastRead -1 FirstWrite -1}
		letter294 {Type I LastRead -1 FirstWrite -1}
		letter295 {Type I LastRead -1 FirstWrite -1}
		letter296 {Type I LastRead -1 FirstWrite -1}
		letter297 {Type I LastRead -1 FirstWrite -1}
		letter298 {Type I LastRead -1 FirstWrite -1}}
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
		char6_out {Type O LastRead -1 FirstWrite 0}}
	hls_rect_entry304 {
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
		xleft_out1 {Type O LastRead -1 FirstWrite 0}
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
		char6_out {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		xleft_s {Type I LastRead 0 FirstWrite -1}
		ch2x_out_out {Type O LastRead -1 FirstWrite 1}
		ch3x_out_out {Type O LastRead -1 FirstWrite 1}
		ch4x_out_out {Type O LastRead -1 FirstWrite 1}
		ch5x_out_out {Type O LastRead -1 FirstWrite 1}
		ch6x_out_out {Type O LastRead -1 FirstWrite 1}}
	AXIvideo2Mat {
		AXI_video_strm_V_data_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 6 FirstWrite -1}
		img_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_3_V {Type O LastRead -1 FirstWrite 5}}
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
		color3_out {Type O LastRead -1 FirstWrite 0}}
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
		letter {Type I LastRead -1 FirstWrite -1}}
	Add_Char2 {
		src_data_stream_0_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_3_V {Type I LastRead 4 FirstWrite -1}
		dst_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_3_V {Type O LastRead -1 FirstWrite 5}
		ch2x_loc {Type I LastRead 0 FirstWrite -1}
		ytop_s {Type I LastRead 0 FirstWrite -1}
		char2 {Type I LastRead 0 FirstWrite -1}
		color1 {Type I LastRead 0 FirstWrite -1}
		color2 {Type I LastRead 0 FirstWrite -1}
		color3 {Type I LastRead 0 FirstWrite -1}
		ytop_out {Type O LastRead -1 FirstWrite 0}
		color1_out {Type O LastRead -1 FirstWrite 0}
		color2_out {Type O LastRead -1 FirstWrite 0}
		color3_out {Type O LastRead -1 FirstWrite 0}
		letter294 {Type I LastRead -1 FirstWrite -1}}
	Add_Char3 {
		src_data_stream_0_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_3_V {Type I LastRead 4 FirstWrite -1}
		dst_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_3_V {Type O LastRead -1 FirstWrite 5}
		ch3x_loc {Type I LastRead 0 FirstWrite -1}
		ytop_s {Type I LastRead 0 FirstWrite -1}
		char3 {Type I LastRead 0 FirstWrite -1}
		color1 {Type I LastRead 0 FirstWrite -1}
		color2 {Type I LastRead 0 FirstWrite -1}
		color3 {Type I LastRead 0 FirstWrite -1}
		ytop_out {Type O LastRead -1 FirstWrite 0}
		color1_out {Type O LastRead -1 FirstWrite 0}
		color2_out {Type O LastRead -1 FirstWrite 0}
		color3_out {Type O LastRead -1 FirstWrite 0}
		letter295 {Type I LastRead -1 FirstWrite -1}}
	Add_Char4 {
		src_data_stream_0_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_3_V {Type I LastRead 4 FirstWrite -1}
		dst_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_3_V {Type O LastRead -1 FirstWrite 5}
		ch4x_loc {Type I LastRead 0 FirstWrite -1}
		ytop_s {Type I LastRead 0 FirstWrite -1}
		char4 {Type I LastRead 0 FirstWrite -1}
		color1 {Type I LastRead 0 FirstWrite -1}
		color2 {Type I LastRead 0 FirstWrite -1}
		color3 {Type I LastRead 0 FirstWrite -1}
		ytop_out {Type O LastRead -1 FirstWrite 0}
		color1_out {Type O LastRead -1 FirstWrite 0}
		color2_out {Type O LastRead -1 FirstWrite 0}
		color3_out {Type O LastRead -1 FirstWrite 0}
		letter296 {Type I LastRead -1 FirstWrite -1}}
	Add_Char5 {
		src_data_stream_0_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_3_V {Type I LastRead 4 FirstWrite -1}
		dst_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_3_V {Type O LastRead -1 FirstWrite 5}
		ch5x_loc {Type I LastRead 0 FirstWrite -1}
		ytop_s {Type I LastRead 0 FirstWrite -1}
		char5 {Type I LastRead 0 FirstWrite -1}
		color1 {Type I LastRead 0 FirstWrite -1}
		color2 {Type I LastRead 0 FirstWrite -1}
		color3 {Type I LastRead 0 FirstWrite -1}
		ytop_out {Type O LastRead -1 FirstWrite 0}
		color1_out {Type O LastRead -1 FirstWrite 0}
		color2_out {Type O LastRead -1 FirstWrite 0}
		color3_out {Type O LastRead -1 FirstWrite 0}
		letter297 {Type I LastRead -1 FirstWrite -1}}
	Add_Char6 {
		src_data_stream_0_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 4 FirstWrite -1}
		src_data_stream_3_V {Type I LastRead 4 FirstWrite -1}
		dst_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_3_V {Type O LastRead -1 FirstWrite 5}
		ch6x_loc {Type I LastRead 0 FirstWrite -1}
		ytop_s {Type I LastRead 0 FirstWrite -1}
		char6 {Type I LastRead 0 FirstWrite -1}
		color1 {Type I LastRead 0 FirstWrite -1}
		color2 {Type I LastRead 0 FirstWrite -1}
		color3 {Type I LastRead 0 FirstWrite -1}
		letter298 {Type I LastRead -1 FirstWrite -1}}
	Mat2AXIvideo {
		img_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_3_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "925215", "Max" : "925215"}
	, {"Name" : "Interval", "Min" : "925204", "Max" : "925204"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	video_src_V_data_V { axis {  { video_src_TDATA in_data 0 32 } } }
	video_src_V_keep_V { axis {  { video_src_TKEEP in_data 0 4 } } }
	video_src_V_strb_V { axis {  { video_src_TSTRB in_data 0 4 } } }
	video_src_V_user_V { axis {  { video_src_TUSER in_data 0 1 } } }
	video_src_V_last_V { axis {  { video_src_TLAST in_data 0 1 } } }
	video_src_V_id_V { axis {  { video_src_TID in_data 0 1 } } }
	video_src_V_dest_V { axis {  { video_src_TDEST in_data 0 1 }  { video_src_TVALID in_vld 0 1 }  { video_src_TREADY in_acc 1 1 } } }
	video_dst_V_data_V { axis {  { video_dst_TDATA out_data 1 32 } } }
	video_dst_V_keep_V { axis {  { video_dst_TKEEP out_data 1 4 } } }
	video_dst_V_strb_V { axis {  { video_dst_TSTRB out_data 1 4 } } }
	video_dst_V_user_V { axis {  { video_dst_TUSER out_data 1 1 } } }
	video_dst_V_last_V { axis {  { video_dst_TLAST out_data 1 1 } } }
	video_dst_V_id_V { axis {  { video_dst_TID out_data 1 1 } } }
	video_dst_V_dest_V { axis {  { video_dst_TDEST out_data 1 1 }  { video_dst_TVALID out_vld 1 1 }  { video_dst_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
