############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_resize
set_top hls_resize
add_files top.cpp
add_files -tb src.jpg
add_files -tb tb.cpp
open_solution "solution1"
set_part {xczu3eg-sfvc784-1-e}
create_clock -period 4 -name default
config_export -format ip_catalog -rtl verilog
#source "./hls_resize/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
