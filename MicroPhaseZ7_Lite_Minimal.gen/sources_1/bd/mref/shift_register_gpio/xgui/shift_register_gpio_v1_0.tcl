# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLOCK_DIVISION" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REGISTER_COUNT" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLOCK_DIVISION { PARAM_VALUE.CLOCK_DIVISION } {
	# Procedure called to update CLOCK_DIVISION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLOCK_DIVISION { PARAM_VALUE.CLOCK_DIVISION } {
	# Procedure called to validate CLOCK_DIVISION
	return true
}

proc update_PARAM_VALUE.REGISTER_COUNT { PARAM_VALUE.REGISTER_COUNT } {
	# Procedure called to update REGISTER_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REGISTER_COUNT { PARAM_VALUE.REGISTER_COUNT } {
	# Procedure called to validate REGISTER_COUNT
	return true
}


proc update_MODELPARAM_VALUE.REGISTER_COUNT { MODELPARAM_VALUE.REGISTER_COUNT PARAM_VALUE.REGISTER_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REGISTER_COUNT}] ${MODELPARAM_VALUE.REGISTER_COUNT}
}

proc update_MODELPARAM_VALUE.CLOCK_DIVISION { MODELPARAM_VALUE.CLOCK_DIVISION PARAM_VALUE.CLOCK_DIVISION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLOCK_DIVISION}] ${MODELPARAM_VALUE.CLOCK_DIVISION}
}

