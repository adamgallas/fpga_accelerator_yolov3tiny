# file: bd_91b0_phy_0_hssio_rx.xdc
# (c) Copyright 2013 - 2015 Xilinx, Inc. All rights reserved.
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
set_false_path -to [get_pins -hier *sync_flop_0*/D]

########### Set the DIfferential IO standard from the supported Differential IO standards###############
set diff_std MIPI_DPHY_DCI


######################################## I/O constraints ##############################################
set_property PACKAGE_PIN G1 [get_ports clk_rxp]
set_property DATA_RATE DDR [get_ports clk_rxp]
################## Need to set diff_std before uncommenting the below line#############################
set_property IOSTANDARD $diff_std [get_ports  clk_rxp]


create_clock -period  7.143  [get_ports clk_rxp]
##create_generated_clock -divide_by 4 -source [get_ports clk_rxp] -invert [get_pins -hier -filter name=~*bs_top_inst/u_rx_bs/RX_BS[0].rx_bitslice_if_bs/FIFO_WRCLK_OUT]
######################################## I/O constraints ##############################################
set_property PACKAGE_PIN F1 [get_ports clk_rxn]
set_property DATA_RATE DDR [get_ports clk_rxn]
################## Need to set diff_std before uncommenting the below line#############################
set_property IOSTANDARD $diff_std [get_ports  clk_rxn]

######################################## I/O constraints ##############################################
set_property PACKAGE_PIN E1 [get_ports data_rxp0]
set_property DATA_RATE DDR [get_ports data_rxp0]
################## Need to set diff_std before uncommenting the below line#############################
set_property IOSTANDARD $diff_std [get_ports  data_rxp0]

######################################## I/O constraints ##############################################
set_property PACKAGE_PIN D1 [get_ports data_rxn0]
set_property DATA_RATE DDR [get_ports data_rxn0]
################## Need to set diff_std before uncommenting the below line#############################
set_property IOSTANDARD $diff_std [get_ports  data_rxn0]

######################################## I/O constraints ##############################################
set_property PACKAGE_PIN F2 [get_ports data_rxp1]
set_property DATA_RATE DDR [get_ports data_rxp1]
################## Need to set diff_std before uncommenting the below line#############################
set_property IOSTANDARD $diff_std [get_ports  data_rxp1]

######################################## I/O constraints ##############################################
set_property PACKAGE_PIN E2 [get_ports data_rxn1]
set_property DATA_RATE DDR [get_ports data_rxn1]
################## Need to set diff_std before uncommenting the below line#############################
set_property IOSTANDARD $diff_std [get_ports  data_rxn1]




################ On Die Termination constraints ######################################################
set_property DIFF_TERM_ADV TERM_100 [get_ports clk_rxp]   
set_property DIFF_TERM_ADV TERM_100 [get_ports clk_rxn]   
set_property DIFF_TERM_ADV TERM_100 [get_ports data_rxp0]   
set_property DIFF_TERM_ADV TERM_100 [get_ports data_rxn0]   
set_property DIFF_TERM_ADV TERM_100 [get_ports data_rxp1]   
set_property DIFF_TERM_ADV TERM_100 [get_ports data_rxn1]   




# # 








set_property PHASESHIFT_MODE LATENCY [get_cells -hierarchical *plle*]
########### Use the below mentioned constraints to fix Timing Violations on Bitslice Inputs###############
#set_property -name CLKOUT0_PHASE -value -90.000 -objects [get_cells *_inst/inst/top_inst/clk_rst_top_inst/clk_scheme_inst/plle3_adv_pll0_inst]
#set_multicycle_path -from [get_clocks -of_objects [get_pins *_inst/inst/top_inst/clk_rst_top_inst/clk_scheme_inst/plle3_adv_pll0_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins *_inst/inst/top_inst/bs_ctrl_top_inst/BITSLICE_CTRL*.bs_ctrl_inst/*_BIT_CTRL_OUT*]] 2

######### Use the below lines in your design to constraint the PLLs to the required locations ###############
#set_property LOC PLL_X0Y4 [get_cells -hier -filter {REF_NAME =~ PLLE*_ADV && NAME =~ *pll0*}]
