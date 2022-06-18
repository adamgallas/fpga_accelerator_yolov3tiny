# (c) Copyright 2014 - 2015 Xilinx, Inc. All rights reserved.
# 
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
# 
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
# 
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
# 
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.


#---------------------------------------------------------------------------#
# _core.xdc
# lite <->core cdc
#XPM_CDC

#xpm_cdc_single,xpm_cdc_array_single,xpm_cdc_pulse,xpm_cdc_hand_shake
set_false_path -to [get_cells -hierarchical *syncstages_ff_reg[0]*]
#xpm_cdc_arst
set_false_path -to [get_pin -hierarchical {*arststages_ff_reg[*]/CLR}]
#---------------------------------------------------------------------------#
#create_clock -name ppi_clk0 -period 3.5714285714285716 [get_ports { dl0_rxbyteclkhs } ]
#create_clock -name ppi_clk1 -period 3.5714285714285716 [get_ports { dl1_rxbyteclkhs } ]
#---------------------------------------------------------------------------#
#startgroup
#create_pblock pblock_inst
#resize_pblock pblock_inst -add [get_property FULL_NAME [get_clock_regions -of_objects [get_iobanks 66]]]:[get_property FULL_NAME [get_clock_regions -of_objects [get_iobanks 66]]]
##add_cells_to_pblock pblock_inst [get_cells -hierarchical [list mipi_csi2_rx_ctrl_0]]
#add_cells_to_pblock pblock_inst [get_cells -hierarchical [list *ppi_inf*]]
#add_cells_to_pblock pblock_inst [get_cells -hierarchical [list *ppi_fifo0]]
#
#add_cells_to_pblock pblock_inst [get_cells -hierarchical [list *ppi_fifo1]]
#
#
#
#add_cells_to_pblock pblock_inst [get_cells -hierarchical [list lane_merger gen_pkt_fifo]]
#endgroup
