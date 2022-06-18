# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BIASBUF_ADDR_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BIASBUF_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BIAS_RAM_STYLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FM_ADDR_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FM_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IFM_RAM_STYLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LINEBUFFER_LEN1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LINEBUFFER_LEN2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LINEBUFFER_LEN3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LINEBUFFER_LEN4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LINEBUFFER_LEN5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LINEBUFFER_LEN6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OFM_RAM_STYLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHTBUF_ADDR_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHTBUF_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHT_AXI_ADDR_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHT_RAM_STYLE" -parent ${Page_0}


}

proc update_PARAM_VALUE.BIASBUF_ADDR_BIT { PARAM_VALUE.BIASBUF_ADDR_BIT } {
	# Procedure called to update BIASBUF_ADDR_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIASBUF_ADDR_BIT { PARAM_VALUE.BIASBUF_ADDR_BIT } {
	# Procedure called to validate BIASBUF_ADDR_BIT
	return true
}

proc update_PARAM_VALUE.BIASBUF_DEPTH { PARAM_VALUE.BIASBUF_DEPTH } {
	# Procedure called to update BIASBUF_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIASBUF_DEPTH { PARAM_VALUE.BIASBUF_DEPTH } {
	# Procedure called to validate BIASBUF_DEPTH
	return true
}

proc update_PARAM_VALUE.BIAS_RAM_STYLE { PARAM_VALUE.BIAS_RAM_STYLE } {
	# Procedure called to update BIAS_RAM_STYLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIAS_RAM_STYLE { PARAM_VALUE.BIAS_RAM_STYLE } {
	# Procedure called to validate BIAS_RAM_STYLE
	return true
}

proc update_PARAM_VALUE.FM_ADDR_BIT { PARAM_VALUE.FM_ADDR_BIT } {
	# Procedure called to update FM_ADDR_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FM_ADDR_BIT { PARAM_VALUE.FM_ADDR_BIT } {
	# Procedure called to validate FM_ADDR_BIT
	return true
}

proc update_PARAM_VALUE.FM_DEPTH { PARAM_VALUE.FM_DEPTH } {
	# Procedure called to update FM_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FM_DEPTH { PARAM_VALUE.FM_DEPTH } {
	# Procedure called to validate FM_DEPTH
	return true
}

proc update_PARAM_VALUE.IFM_RAM_STYLE { PARAM_VALUE.IFM_RAM_STYLE } {
	# Procedure called to update IFM_RAM_STYLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IFM_RAM_STYLE { PARAM_VALUE.IFM_RAM_STYLE } {
	# Procedure called to validate IFM_RAM_STYLE
	return true
}

proc update_PARAM_VALUE.LINEBUFFER_LEN1 { PARAM_VALUE.LINEBUFFER_LEN1 } {
	# Procedure called to update LINEBUFFER_LEN1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LINEBUFFER_LEN1 { PARAM_VALUE.LINEBUFFER_LEN1 } {
	# Procedure called to validate LINEBUFFER_LEN1
	return true
}

proc update_PARAM_VALUE.LINEBUFFER_LEN2 { PARAM_VALUE.LINEBUFFER_LEN2 } {
	# Procedure called to update LINEBUFFER_LEN2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LINEBUFFER_LEN2 { PARAM_VALUE.LINEBUFFER_LEN2 } {
	# Procedure called to validate LINEBUFFER_LEN2
	return true
}

proc update_PARAM_VALUE.LINEBUFFER_LEN3 { PARAM_VALUE.LINEBUFFER_LEN3 } {
	# Procedure called to update LINEBUFFER_LEN3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LINEBUFFER_LEN3 { PARAM_VALUE.LINEBUFFER_LEN3 } {
	# Procedure called to validate LINEBUFFER_LEN3
	return true
}

proc update_PARAM_VALUE.LINEBUFFER_LEN4 { PARAM_VALUE.LINEBUFFER_LEN4 } {
	# Procedure called to update LINEBUFFER_LEN4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LINEBUFFER_LEN4 { PARAM_VALUE.LINEBUFFER_LEN4 } {
	# Procedure called to validate LINEBUFFER_LEN4
	return true
}

proc update_PARAM_VALUE.LINEBUFFER_LEN5 { PARAM_VALUE.LINEBUFFER_LEN5 } {
	# Procedure called to update LINEBUFFER_LEN5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LINEBUFFER_LEN5 { PARAM_VALUE.LINEBUFFER_LEN5 } {
	# Procedure called to validate LINEBUFFER_LEN5
	return true
}

proc update_PARAM_VALUE.LINEBUFFER_LEN6 { PARAM_VALUE.LINEBUFFER_LEN6 } {
	# Procedure called to update LINEBUFFER_LEN6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LINEBUFFER_LEN6 { PARAM_VALUE.LINEBUFFER_LEN6 } {
	# Procedure called to validate LINEBUFFER_LEN6
	return true
}

proc update_PARAM_VALUE.OFM_RAM_STYLE { PARAM_VALUE.OFM_RAM_STYLE } {
	# Procedure called to update OFM_RAM_STYLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OFM_RAM_STYLE { PARAM_VALUE.OFM_RAM_STYLE } {
	# Procedure called to validate OFM_RAM_STYLE
	return true
}

proc update_PARAM_VALUE.WEIGHTBUF_ADDR_BIT { PARAM_VALUE.WEIGHTBUF_ADDR_BIT } {
	# Procedure called to update WEIGHTBUF_ADDR_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHTBUF_ADDR_BIT { PARAM_VALUE.WEIGHTBUF_ADDR_BIT } {
	# Procedure called to validate WEIGHTBUF_ADDR_BIT
	return true
}

proc update_PARAM_VALUE.WEIGHTBUF_DEPTH { PARAM_VALUE.WEIGHTBUF_DEPTH } {
	# Procedure called to update WEIGHTBUF_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHTBUF_DEPTH { PARAM_VALUE.WEIGHTBUF_DEPTH } {
	# Procedure called to validate WEIGHTBUF_DEPTH
	return true
}

proc update_PARAM_VALUE.WEIGHT_AXI_ADDR_BIT { PARAM_VALUE.WEIGHT_AXI_ADDR_BIT } {
	# Procedure called to update WEIGHT_AXI_ADDR_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHT_AXI_ADDR_BIT { PARAM_VALUE.WEIGHT_AXI_ADDR_BIT } {
	# Procedure called to validate WEIGHT_AXI_ADDR_BIT
	return true
}

proc update_PARAM_VALUE.WEIGHT_RAM_STYLE { PARAM_VALUE.WEIGHT_RAM_STYLE } {
	# Procedure called to update WEIGHT_RAM_STYLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHT_RAM_STYLE { PARAM_VALUE.WEIGHT_RAM_STYLE } {
	# Procedure called to validate WEIGHT_RAM_STYLE
	return true
}


proc update_MODELPARAM_VALUE.FM_ADDR_BIT { MODELPARAM_VALUE.FM_ADDR_BIT PARAM_VALUE.FM_ADDR_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FM_ADDR_BIT}] ${MODELPARAM_VALUE.FM_ADDR_BIT}
}

proc update_MODELPARAM_VALUE.WEIGHT_AXI_ADDR_BIT { MODELPARAM_VALUE.WEIGHT_AXI_ADDR_BIT PARAM_VALUE.WEIGHT_AXI_ADDR_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHT_AXI_ADDR_BIT}] ${MODELPARAM_VALUE.WEIGHT_AXI_ADDR_BIT}
}

proc update_MODELPARAM_VALUE.WEIGHTBUF_ADDR_BIT { MODELPARAM_VALUE.WEIGHTBUF_ADDR_BIT PARAM_VALUE.WEIGHTBUF_ADDR_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHTBUF_ADDR_BIT}] ${MODELPARAM_VALUE.WEIGHTBUF_ADDR_BIT}
}

proc update_MODELPARAM_VALUE.BIASBUF_ADDR_BIT { MODELPARAM_VALUE.BIASBUF_ADDR_BIT PARAM_VALUE.BIASBUF_ADDR_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BIASBUF_ADDR_BIT}] ${MODELPARAM_VALUE.BIASBUF_ADDR_BIT}
}

proc update_MODELPARAM_VALUE.FM_DEPTH { MODELPARAM_VALUE.FM_DEPTH PARAM_VALUE.FM_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FM_DEPTH}] ${MODELPARAM_VALUE.FM_DEPTH}
}

proc update_MODELPARAM_VALUE.WEIGHTBUF_DEPTH { MODELPARAM_VALUE.WEIGHTBUF_DEPTH PARAM_VALUE.WEIGHTBUF_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHTBUF_DEPTH}] ${MODELPARAM_VALUE.WEIGHTBUF_DEPTH}
}

proc update_MODELPARAM_VALUE.BIASBUF_DEPTH { MODELPARAM_VALUE.BIASBUF_DEPTH PARAM_VALUE.BIASBUF_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BIASBUF_DEPTH}] ${MODELPARAM_VALUE.BIASBUF_DEPTH}
}

proc update_MODELPARAM_VALUE.LINEBUFFER_LEN1 { MODELPARAM_VALUE.LINEBUFFER_LEN1 PARAM_VALUE.LINEBUFFER_LEN1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LINEBUFFER_LEN1}] ${MODELPARAM_VALUE.LINEBUFFER_LEN1}
}

proc update_MODELPARAM_VALUE.LINEBUFFER_LEN2 { MODELPARAM_VALUE.LINEBUFFER_LEN2 PARAM_VALUE.LINEBUFFER_LEN2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LINEBUFFER_LEN2}] ${MODELPARAM_VALUE.LINEBUFFER_LEN2}
}

proc update_MODELPARAM_VALUE.LINEBUFFER_LEN3 { MODELPARAM_VALUE.LINEBUFFER_LEN3 PARAM_VALUE.LINEBUFFER_LEN3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LINEBUFFER_LEN3}] ${MODELPARAM_VALUE.LINEBUFFER_LEN3}
}

proc update_MODELPARAM_VALUE.LINEBUFFER_LEN4 { MODELPARAM_VALUE.LINEBUFFER_LEN4 PARAM_VALUE.LINEBUFFER_LEN4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LINEBUFFER_LEN4}] ${MODELPARAM_VALUE.LINEBUFFER_LEN4}
}

proc update_MODELPARAM_VALUE.LINEBUFFER_LEN5 { MODELPARAM_VALUE.LINEBUFFER_LEN5 PARAM_VALUE.LINEBUFFER_LEN5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LINEBUFFER_LEN5}] ${MODELPARAM_VALUE.LINEBUFFER_LEN5}
}

proc update_MODELPARAM_VALUE.LINEBUFFER_LEN6 { MODELPARAM_VALUE.LINEBUFFER_LEN6 PARAM_VALUE.LINEBUFFER_LEN6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LINEBUFFER_LEN6}] ${MODELPARAM_VALUE.LINEBUFFER_LEN6}
}

proc update_MODELPARAM_VALUE.IFM_RAM_STYLE { MODELPARAM_VALUE.IFM_RAM_STYLE PARAM_VALUE.IFM_RAM_STYLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IFM_RAM_STYLE}] ${MODELPARAM_VALUE.IFM_RAM_STYLE}
}

proc update_MODELPARAM_VALUE.WEIGHT_RAM_STYLE { MODELPARAM_VALUE.WEIGHT_RAM_STYLE PARAM_VALUE.WEIGHT_RAM_STYLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHT_RAM_STYLE}] ${MODELPARAM_VALUE.WEIGHT_RAM_STYLE}
}

proc update_MODELPARAM_VALUE.BIAS_RAM_STYLE { MODELPARAM_VALUE.BIAS_RAM_STYLE PARAM_VALUE.BIAS_RAM_STYLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BIAS_RAM_STYLE}] ${MODELPARAM_VALUE.BIAS_RAM_STYLE}
}

proc update_MODELPARAM_VALUE.OFM_RAM_STYLE { MODELPARAM_VALUE.OFM_RAM_STYLE PARAM_VALUE.OFM_RAM_STYLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OFM_RAM_STYLE}] ${MODELPARAM_VALUE.OFM_RAM_STYLE}
}

