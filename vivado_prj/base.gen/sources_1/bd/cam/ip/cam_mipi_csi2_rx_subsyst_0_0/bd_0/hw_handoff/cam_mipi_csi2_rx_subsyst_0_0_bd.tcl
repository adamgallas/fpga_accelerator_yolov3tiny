
################################################################
# This is a generated script based on design: bd_91b0
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_91b0_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu3eg-sfvc784-1-e
   set_property BOARD_PART digilentinc.com:gzu_3eg:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_91b0

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set csirxss_s_axi [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 csirxss_s_axi ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {12} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.PROTOCOL {AXI4LITE} \
   ] $csirxss_s_axi

  set mipi_phy_if [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:mipi_phy_rtl:1.0 mipi_phy_if ]

  set video_out [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 video_out ]


  # Create ports
  set clkoutphy_out [ create_bd_port -dir O -type clk clkoutphy_out ]
  set csirxss_csi_irq [ create_bd_port -dir O -type intr csirxss_csi_irq ]
  set dphy_clk_200M [ create_bd_port -dir I -type clk dphy_clk_200M ]
  set lite_aclk [ create_bd_port -dir I -type clk lite_aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {csirxss_s_axi} \
   CONFIG.ASSOCIATED_RESET {lite_aresetn} \
 ] $lite_aclk
  set lite_aresetn [ create_bd_port -dir I -type rst lite_aresetn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $lite_aresetn
  set pll_lock_out [ create_bd_port -dir O pll_lock_out ]
  set rxbyteclkhs [ create_bd_port -dir O -type clk rxbyteclkhs ]
  set system_rst_out [ create_bd_port -dir O -type rst system_rst_out ]
  set video_aclk [ create_bd_port -dir I -type clk video_aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {video_out} \
   CONFIG.ASSOCIATED_RESET {video_aresetn} \
 ] $video_aclk
  set video_aresetn [ create_bd_port -dir I -type rst video_aresetn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $video_aresetn

  # Create instance: phy, and set properties
  set phy [ create_bd_cell -type ip -vlnv xilinx.com:ip:mipi_dphy:4.2 phy ]
  set_property -dict [ list \
   CONFIG.CLK_LANE_IO_LOC {G1} \
   CONFIG.C_CLK_IO_SWAP {false} \
   CONFIG.C_DL0_IO_SWAP {false} \
   CONFIG.C_DL1_IO_SWAP {false} \
   CONFIG.C_DL2_IO_SWAP {false} \
   CONFIG.C_DL3_IO_SWAP {false} \
   CONFIG.C_DPHY_LANES {2} \
   CONFIG.C_DPHY_MODE {SLAVE} \
   CONFIG.C_EN_CNTS_BYTE_CLK {false} \
   CONFIG.C_EN_REG_IF {false} \
   CONFIG.C_EN_TIMEOUT_REGS {false} \
   CONFIG.C_ESC_TIMEOUT {25600} \
   CONFIG.C_FIFO_RD_EN_CONTROL {true} \
   CONFIG.C_HS_LINE_RATE {280} \
   CONFIG.C_HS_SETTLE_NS {170} \
   CONFIG.C_HS_TIMEOUT {65541} \
   CONFIG.C_IDLY_GROUP_NAME {mipi_csi2rx_idly_group} \
   CONFIG.C_INIT {100000} \
   CONFIG.C_LPRX_DISABLE_EXTPORT {0} \
   CONFIG.C_RCVE_ALT_DESKEW_SEQ {false} \
   CONFIG.C_RCVE_DESKEW_SEQ {false} \
   CONFIG.C_STRETCH_LINE_RATE {3500} \
   CONFIG.DATA_LANE0_IO_LOC {E1} \
   CONFIG.DATA_LANE1_IO_LOC {F2} \
   CONFIG.DPHY_PRESET {CSI2RX_XLNX} \
   CONFIG.HP_IO_BANK_SELECTION {66} \
   CONFIG.SupportLevel {1} \
 ] $phy

  # Create instance: r_sync, and set properties
  set r_sync [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 r_sync ]

  # Create instance: rx, and set properties
  set rx [ create_bd_cell -type ip -vlnv xilinx.com:ip:mipi_csi2_rx_ctrl:1.0 rx ]
  set_property -dict [ list \
   CONFIG.AXIS_FIFO_DEPTH {2048} \
   CONFIG.AXIS_TDATA_WIDTH {64} \
   CONFIG.AXIS_TDEST_WIDTH {4} \
   CONFIG.AXIS_TUSER_WIDTH {96} \
   CONFIG.CSI_EN_VC_SUPPORT {1} \
   CONFIG.CSI_INV_SHUTDOWN {1} \
   CONFIG.CSI_LANES {2} \
   CONFIG.CSI_OFFLOAD_NONIMAGE {0} \
   CONFIG.C_CSI2RX_DBG {0} \
   CONFIG.C_CSI_FILTER_USERDATATYPE {false} \
   CONFIG.C_CSI_OPT1_REGS {false} \
   CONFIG.C_CSI_OPT2_CRC {false} \
   CONFIG.C_CSI_OPT3_FIXEDLANES {true} \
   CONFIG.C_DISABLE_LITE {false} \
   CONFIG.C_EN_CSI_V2_0 {true} \
   CONFIG.C_EN_VCX {false} \
   CONFIG.C_HS_LINE_RATE {280} \
   CONFIG.C_IS_7SERIES {false} \
   CONFIG.C_MIPI_SLV_INT {0} \
   CONFIG.C_RCVE_DESKEW_SEQ {false} \
   CONFIG.HP_IO_BANK_SELECTION {66} \
 ] $rx

  # Create instance: vfb_0, and set properties
  set vfb_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vfb:1.0 vfb_0 ]
  set_property -dict [ list \
   CONFIG.C_HS_LINE_RATE {280} \
   CONFIG.VFB_DATA_TYPE {RAW10} \
   CONFIG.VFB_FIFO_DEPTH {2048} \
   CONFIG.VFB_FILTER_VC {0} \
   CONFIG.VFB_OP_PIXELS {1} \
   CONFIG.VFB_TU_WIDTH {1} \
 ] $vfb_0

  # Create interface connections
  connect_bd_intf_net -intf_net csirxss_s_axi_1 [get_bd_intf_ports csirxss_s_axi] [get_bd_intf_pins rx/s_axi]
  connect_bd_intf_net -intf_net mipi_phy_if_1 [get_bd_intf_ports mipi_phy_if] [get_bd_intf_pins phy/rx_mipi_phy_if]
  connect_bd_intf_net -intf_net phy_rx_mipi_ppi_if [get_bd_intf_pins phy/rx_mipi_ppi_if] [get_bd_intf_pins rx/rx_mipi_ppi_if]
  connect_bd_intf_net -intf_net rx_m_axis [get_bd_intf_pins rx/m_axis] [get_bd_intf_pins vfb_0/s_axis]
  connect_bd_intf_net -intf_net vfb_0_m_vfb [get_bd_intf_ports video_out] [get_bd_intf_pins vfb_0/m_vfb]

  # Create port connections
  connect_bd_net -net dphy_clk_200M_1 [get_bd_ports dphy_clk_200M] [get_bd_pins phy/core_clk] [get_bd_pins r_sync/slowest_sync_clk]
  connect_bd_net -net lite_aclk_1 [get_bd_ports lite_aclk] [get_bd_pins rx/s_axi_aclk]
  connect_bd_net -net lite_aresetn_1 [get_bd_ports lite_aresetn] [get_bd_pins rx/s_axi_aresetn]
  connect_bd_net -net phy_clkoutphy_out [get_bd_ports clkoutphy_out] [get_bd_pins phy/clkoutphy_out]
  connect_bd_net -net phy_pll_lock_out [get_bd_ports pll_lock_out] [get_bd_pins phy/pll_lock_out]
  connect_bd_net -net phy_rxbyteclkhs [get_bd_ports rxbyteclkhs] [get_bd_pins phy/rxbyteclkhs] [get_bd_pins rx/dl0_rxbyteclkhs] [get_bd_pins rx/dl1_rxbyteclkhs]
  connect_bd_net -net phy_system_rst_out [get_bd_ports system_rst_out] [get_bd_pins phy/system_rst_out]
  connect_bd_net -net r_sync_peripheral_reset [get_bd_pins phy/core_rst] [get_bd_pins r_sync/peripheral_reset]
  connect_bd_net -net rx_interrupt [get_bd_ports csirxss_csi_irq] [get_bd_pins rx/interrupt]
  connect_bd_net -net vfb_0_mdt_tr [get_bd_pins rx/mdt_tr] [get_bd_pins vfb_0/mdt_tr]
  connect_bd_net -net vfb_0_mdt_tv [get_bd_pins rx/mdt_tv] [get_bd_pins vfb_0/mdt_tv]
  connect_bd_net -net vfb_0_sdt_tr [get_bd_pins rx/sdt_tr] [get_bd_pins vfb_0/sdt_tr]
  connect_bd_net -net vfb_0_sdt_tv [get_bd_pins rx/sdt_tv] [get_bd_pins vfb_0/sdt_tv]
  connect_bd_net -net vfb_0_vfb_full [get_bd_pins rx/vfb_full] [get_bd_pins vfb_0/vfb_full]
  connect_bd_net -net vfb_0_vfb_tr [get_bd_pins rx/vfb_tr] [get_bd_pins vfb_0/vfb_tr]
  connect_bd_net -net vfb_0_vfb_tv [get_bd_pins rx/vfb_tv] [get_bd_pins vfb_0/vfb_tv]
  connect_bd_net -net video_aclk_1 [get_bd_ports video_aclk] [get_bd_pins rx/m_axis_aclk] [get_bd_pins rx/video_aclk] [get_bd_pins vfb_0/s_axis_aclk] [get_bd_pins vfb_0/vfb_clk]
  connect_bd_net -net video_aresetn_1 [get_bd_ports video_aresetn] [get_bd_pins r_sync/ext_reset_in] [get_bd_pins rx/m_axis_aresetn] [get_bd_pins vfb_0/s_axis_aresetn] [get_bd_pins vfb_0/vfb_arstn]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces csirxss_s_axi] [get_bd_addr_segs rx/s_axi/reg0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


