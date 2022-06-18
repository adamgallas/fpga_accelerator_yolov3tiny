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
#create_clock -name ppi_clks -period 5.33 [get_ports { dl0_rxbyteclkhs dl1_rxbyteclkhs } ]
#set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports dl0_rxbyteclkhs]
#set_property HD.CLK_SRC BUFGCTRL_X0Y1 [get_ports dl1_rxbyteclkhs]

#Lite   freq: -1,-2,-3:180,200,220 for v7
#stream freq: -1,-2,-3:200,240,280 for v7
#          
#-------------------------------------------------------------------
#Family    |Speed Grade |
#FMax (MHz)|            |AXI4       |AXI4-Stream       |AXI4-Lite    
#-------------------------------------------------------------------
#Virtex-7  |â€?1          | 200(5.00) |   200(5.00)      |    180(5.55)
#Kintex-7  |-1          | 200(5.00) |   200(5.00)      |    180(5.55)
#Artix-7   |-1          | 150(6.66) |   150(6.66)      |    120(8.33)
#Virtex-7  |â€?2          | 240(4.16) |   240(4.16)      |    200(5.00)
#Kintex-7  |-2          | 240(4.16) |   240(4.16)      |    200(5.00)
#Artix-7   |-2          | 180(5.55) |   180(5.55)      |    140(7.14)
#Virtex-7  |â€?3          | 280(3.57) |   280(3.57)      |    220(4.54)
#Kintex-7  |-3          | 280(3.57) |   280(3.57)      |    220(4.54)
#Artix-7   |-3          | 200(5.00) |   200(5.00)      |    160(6.25)
##-------------------------------------------------------------------#
