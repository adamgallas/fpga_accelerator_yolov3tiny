# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
xleft_s { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
xright_s { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
ytop_s { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
ydown_s { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
color1 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
color2 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
color3 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
char1 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
char2 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
char3 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
char4 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
char5 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
char6 { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


