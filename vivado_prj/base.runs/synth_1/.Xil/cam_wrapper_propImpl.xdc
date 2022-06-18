set_property SRC_FILE_INFO {cfile:d:/FINAL/base/base.srcs/sources_1/bd/cam/ip/cam_clk_wiz_0_0/cam_clk_wiz_0_0/cam_clk_wiz_0_0_in_context.xdc rfile:../../../base.srcs/sources_1/bd/cam/ip/cam_clk_wiz_0_0/cam_clk_wiz_0_0/cam_clk_wiz_0_0_in_context.xdc id:1 order:EARLY scoped_inst:cam_i/clk_wiz_0} [current_design]
set_property SRC_FILE_INFO {cfile:d:/FINAL/base/base.srcs/sources_1/bd/cam/ip/cam_clk_wiz_1_0/cam_clk_wiz_1_0/cam_clk_wiz_1_0_in_context.xdc rfile:../../../base.srcs/sources_1/bd/cam/ip/cam_clk_wiz_1_0/cam_clk_wiz_1_0/cam_clk_wiz_1_0_in_context.xdc id:2 order:EARLY scoped_inst:cam_i/clk_wiz_1} [current_design]
set_property SRC_FILE_INFO {cfile:d:/FINAL/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/cam_mipi_csi2_rx_subsyst_0_0/cam_mipi_csi2_rx_subsyst_0_0_in_context.xdc rfile:../../../base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/cam_mipi_csi2_rx_subsyst_0_0/cam_mipi_csi2_rx_subsyst_0_0_in_context.xdc id:3 order:EARLY scoped_inst:cam_i/mipi_csi2_rx_subsyst_0} [current_design]
set_property SRC_FILE_INFO {cfile:d:/FINAL/base/base.srcs/sources_1/bd/cam/ip/cam_zynq_ultra_ps_e_0_0/cam_zynq_ultra_ps_e_0_0/cam_zynq_ultra_ps_e_0_0_in_context.xdc rfile:../../../base.srcs/sources_1/bd/cam/ip/cam_zynq_ultra_ps_e_0_0/cam_zynq_ultra_ps_e_0_0/cam_zynq_ultra_ps_e_0_0_in_context.xdc id:4 order:EARLY scoped_inst:cam_i/zynq_ultra_ps_e_0} [current_design]
set_property SRC_FILE_INFO {cfile:D:/FINAL/base/pin_constr.xdc rfile:../../../pin_constr.xdc id:5} [current_design]
current_instance cam_i/clk_wiz_0
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 4.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 0.500 1.000} [get_ports {}]
current_instance
current_instance cam_i/clk_wiz_1
set_property src_info {type:SCOPED_XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 4.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 4.711 9.423} [get_ports {}]
current_instance
current_instance cam_i/mipi_csi2_rx_subsyst_0
set_property src_info {type:SCOPED_XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 28.571 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:3 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 5.000 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:3 line:5 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 7.143 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:3 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 6.666 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:3 line:10 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 0.667 [get_ports {}]
current_instance
current_instance cam_i/zynq_ultra_ps_e_0
set_property src_info {type:SCOPED_XDC file:4 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 4.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:5 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J10 [get_ports dp_hot_plug_detect_0]
set_property src_info {type:XDC file:5 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J11 [get_ports dp_aux_data_out_0]
set_property src_info {type:XDC file:5 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K12 [get_ports dp_aux_data_in_0]
set_property src_info {type:XDC file:5 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K13 [get_ports {dp_aux_data_oe_n_0[0]}]
set_property src_info {type:XDC file:5 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B8 [get_ports {dout_0[0]}]
