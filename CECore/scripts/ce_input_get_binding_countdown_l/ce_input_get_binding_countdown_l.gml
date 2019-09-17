/// @func ce_input_get_binding_countdown_l()
/// @return {real} A value in range 0..1 saying how much time is left for
/// the user to bind a control to an action.
gml_pragma("forceinline");
return (CE_INPUT_BINDING_TIMEFRAME - (current_time - global.__ceInputBindingTimestamp))
	/ CE_INPUT_BINDING_TIMEFRAME;