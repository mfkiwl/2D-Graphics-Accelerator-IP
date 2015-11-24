# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {AXI Parameters}]
  set_property tooltip {AXI Parameters} ${Page_0}
  set C_S_TEST_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S_TEST_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S_TEST_AXI_DATA_WIDTH}
  set C_S_TEST_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S_TEST_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S_TEST_AXI_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S_TEST_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_TEST_AXI_HIGHADDR" -parent ${Page_0}
  set C_M_FRAMEREAD_AXI_BURST_LEN [ipgui::add_param $IPINST -name "C_M_FRAMEREAD_AXI_BURST_LEN" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_M_FRAMEREAD_AXI_BURST_LEN}
  set C_M_FRAMEREAD_AXI_ID_WIDTH [ipgui::add_param $IPINST -name "C_M_FRAMEREAD_AXI_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_M_FRAMEREAD_AXI_ID_WIDTH}
  set C_M_FRAMEREAD_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M_FRAMEREAD_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_M_FRAMEREAD_AXI_ADDR_WIDTH}
  set C_M_FRAMEREAD_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M_FRAMEREAD_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M_FRAMEREAD_AXI_DATA_WIDTH}

  #Adding Page
  set Display_Timing [ipgui::add_page $IPINST -name "Display Timing"]
  #Adding Group
  set Horizontal_Timing [ipgui::add_group $IPINST -name "Horizontal Timing" -parent ${Display_Timing}]
  ipgui::add_param $IPINST -name "H_VISIBLE" -parent ${Horizontal_Timing}
  ipgui::add_param $IPINST -name "H_FRONT_PORCH" -parent ${Horizontal_Timing}
  ipgui::add_param $IPINST -name "H_SYNC" -parent ${Horizontal_Timing}
  ipgui::add_param $IPINST -name "H_BACK_PORCH" -parent ${Horizontal_Timing}

  #Adding Group
  set Vertical_Timing [ipgui::add_group $IPINST -name "Vertical Timing" -parent ${Display_Timing}]
  ipgui::add_param $IPINST -name "V_VISIBLE" -parent ${Vertical_Timing}
  ipgui::add_param $IPINST -name "V_FRONT_PORCH" -parent ${Vertical_Timing}
  ipgui::add_param $IPINST -name "V_SYNC" -parent ${Vertical_Timing}
  ipgui::add_param $IPINST -name "V_BACK_PORCH" -parent ${Vertical_Timing}



}

proc update_PARAM_VALUE.C_M_FRAMEREAD_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_M_FRAMEREAD_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_FRAMEREAD_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_M_FRAMEREAD_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_FRAMEREAD_AXI_RUSER_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_RUSER_WIDTH } {
	# Procedure called to update C_M_FRAMEREAD_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_FRAMEREAD_AXI_RUSER_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_M_FRAMEREAD_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.H_BACK_PORCH { PARAM_VALUE.H_BACK_PORCH } {
	# Procedure called to update H_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BACK_PORCH { PARAM_VALUE.H_BACK_PORCH } {
	# Procedure called to validate H_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.H_FRONT_PORCH { PARAM_VALUE.H_FRONT_PORCH } {
	# Procedure called to update H_FRONT_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_FRONT_PORCH { PARAM_VALUE.H_FRONT_PORCH } {
	# Procedure called to validate H_FRONT_PORCH
	return true
}

proc update_PARAM_VALUE.H_SYNC { PARAM_VALUE.H_SYNC } {
	# Procedure called to update H_SYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_SYNC { PARAM_VALUE.H_SYNC } {
	# Procedure called to validate H_SYNC
	return true
}

proc update_PARAM_VALUE.H_VISIBLE { PARAM_VALUE.H_VISIBLE } {
	# Procedure called to update H_VISIBLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_VISIBLE { PARAM_VALUE.H_VISIBLE } {
	# Procedure called to validate H_VISIBLE
	return true
}

proc update_PARAM_VALUE.V_BACK_PORCH { PARAM_VALUE.V_BACK_PORCH } {
	# Procedure called to update V_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BACK_PORCH { PARAM_VALUE.V_BACK_PORCH } {
	# Procedure called to validate V_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.V_FRONT_PORCH { PARAM_VALUE.V_FRONT_PORCH } {
	# Procedure called to update V_FRONT_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_FRONT_PORCH { PARAM_VALUE.V_FRONT_PORCH } {
	# Procedure called to validate V_FRONT_PORCH
	return true
}

proc update_PARAM_VALUE.V_SYNC { PARAM_VALUE.V_SYNC } {
	# Procedure called to update V_SYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_SYNC { PARAM_VALUE.V_SYNC } {
	# Procedure called to validate V_SYNC
	return true
}

proc update_PARAM_VALUE.V_VISIBLE { PARAM_VALUE.V_VISIBLE } {
	# Procedure called to update V_VISIBLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_VISIBLE { PARAM_VALUE.V_VISIBLE } {
	# Procedure called to validate V_VISIBLE
	return true
}

proc update_PARAM_VALUE.C_S_TEST_AXI_DATA_WIDTH { PARAM_VALUE.C_S_TEST_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_TEST_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_TEST_AXI_DATA_WIDTH { PARAM_VALUE.C_S_TEST_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_TEST_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_TEST_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_TEST_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_TEST_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_TEST_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_TEST_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_TEST_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_TEST_AXI_BASEADDR { PARAM_VALUE.C_S_TEST_AXI_BASEADDR } {
	# Procedure called to update C_S_TEST_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_TEST_AXI_BASEADDR { PARAM_VALUE.C_S_TEST_AXI_BASEADDR } {
	# Procedure called to validate C_S_TEST_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_TEST_AXI_HIGHADDR { PARAM_VALUE.C_S_TEST_AXI_HIGHADDR } {
	# Procedure called to update C_S_TEST_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_TEST_AXI_HIGHADDR { PARAM_VALUE.C_S_TEST_AXI_HIGHADDR } {
	# Procedure called to validate C_S_TEST_AXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_M_FRAMEREAD_AXI_BURST_LEN { PARAM_VALUE.C_M_FRAMEREAD_AXI_BURST_LEN } {
	# Procedure called to update C_M_FRAMEREAD_AXI_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_FRAMEREAD_AXI_BURST_LEN { PARAM_VALUE.C_M_FRAMEREAD_AXI_BURST_LEN } {
	# Procedure called to validate C_M_FRAMEREAD_AXI_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M_FRAMEREAD_AXI_ID_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_ID_WIDTH } {
	# Procedure called to update C_M_FRAMEREAD_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_FRAMEREAD_AXI_ID_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_ID_WIDTH } {
	# Procedure called to validate C_M_FRAMEREAD_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_FRAMEREAD_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M_FRAMEREAD_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_FRAMEREAD_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M_FRAMEREAD_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_FRAMEREAD_AXI_DATA_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_DATA_WIDTH } {
	# Procedure called to update C_M_FRAMEREAD_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_FRAMEREAD_AXI_DATA_WIDTH { PARAM_VALUE.C_M_FRAMEREAD_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M_FRAMEREAD_AXI_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_TEST_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_TEST_AXI_DATA_WIDTH PARAM_VALUE.C_S_TEST_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_TEST_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_TEST_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_TEST_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_TEST_AXI_ADDR_WIDTH PARAM_VALUE.C_S_TEST_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_TEST_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_TEST_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_BURST_LEN { MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_BURST_LEN PARAM_VALUE.C_M_FRAMEREAD_AXI_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_FRAMEREAD_AXI_BURST_LEN}] ${MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_ID_WIDTH { MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_ID_WIDTH PARAM_VALUE.C_M_FRAMEREAD_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_FRAMEREAD_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_ADDR_WIDTH PARAM_VALUE.C_M_FRAMEREAD_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_FRAMEREAD_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_DATA_WIDTH PARAM_VALUE.C_M_FRAMEREAD_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_FRAMEREAD_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.H_VISIBLE { MODELPARAM_VALUE.H_VISIBLE PARAM_VALUE.H_VISIBLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_VISIBLE}] ${MODELPARAM_VALUE.H_VISIBLE}
}

proc update_MODELPARAM_VALUE.H_FRONT_PORCH { MODELPARAM_VALUE.H_FRONT_PORCH PARAM_VALUE.H_FRONT_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_FRONT_PORCH}] ${MODELPARAM_VALUE.H_FRONT_PORCH}
}

proc update_MODELPARAM_VALUE.H_SYNC { MODELPARAM_VALUE.H_SYNC PARAM_VALUE.H_SYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_SYNC}] ${MODELPARAM_VALUE.H_SYNC}
}

proc update_MODELPARAM_VALUE.H_BACK_PORCH { MODELPARAM_VALUE.H_BACK_PORCH PARAM_VALUE.H_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BACK_PORCH}] ${MODELPARAM_VALUE.H_BACK_PORCH}
}

proc update_MODELPARAM_VALUE.V_VISIBLE { MODELPARAM_VALUE.V_VISIBLE PARAM_VALUE.V_VISIBLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_VISIBLE}] ${MODELPARAM_VALUE.V_VISIBLE}
}

proc update_MODELPARAM_VALUE.V_FRONT_PORCH { MODELPARAM_VALUE.V_FRONT_PORCH PARAM_VALUE.V_FRONT_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_FRONT_PORCH}] ${MODELPARAM_VALUE.V_FRONT_PORCH}
}

proc update_MODELPARAM_VALUE.V_SYNC { MODELPARAM_VALUE.V_SYNC PARAM_VALUE.V_SYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_SYNC}] ${MODELPARAM_VALUE.V_SYNC}
}

proc update_MODELPARAM_VALUE.V_BACK_PORCH { MODELPARAM_VALUE.V_BACK_PORCH PARAM_VALUE.V_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BACK_PORCH}] ${MODELPARAM_VALUE.V_BACK_PORCH}
}

proc update_MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_ARUSER_WIDTH PARAM_VALUE.C_M_FRAMEREAD_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_FRAMEREAD_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_RUSER_WIDTH PARAM_VALUE.C_M_FRAMEREAD_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_FRAMEREAD_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_FRAMEREAD_AXI_RUSER_WIDTH}
}

