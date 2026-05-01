# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "WORD_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WORD_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.WORD_COUNT { PARAM_VALUE.WORD_COUNT } {
	# Procedure called to update WORD_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WORD_COUNT { PARAM_VALUE.WORD_COUNT } {
	# Procedure called to validate WORD_COUNT
	return true
}

proc update_PARAM_VALUE.WORD_SIZE { PARAM_VALUE.WORD_SIZE } {
	# Procedure called to update WORD_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WORD_SIZE { PARAM_VALUE.WORD_SIZE } {
	# Procedure called to validate WORD_SIZE
	return true
}


proc update_MODELPARAM_VALUE.WORD_SIZE { MODELPARAM_VALUE.WORD_SIZE PARAM_VALUE.WORD_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WORD_SIZE}] ${MODELPARAM_VALUE.WORD_SIZE}
}

proc update_MODELPARAM_VALUE.WORD_COUNT { MODELPARAM_VALUE.WORD_COUNT PARAM_VALUE.WORD_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WORD_COUNT}] ${MODELPARAM_VALUE.WORD_COUNT}
}

