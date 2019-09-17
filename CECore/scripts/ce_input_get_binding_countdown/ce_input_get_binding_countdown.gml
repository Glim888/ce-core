/// @func ce_input_get_binding_countdown()
/// @return {real} How much time (in ms) is left for the user to bind a control
/// to an action.
gml_pragma("forceinline");
return (CE_INPUT_BINDING_TIMEFRAME - (current_time - global.__ceInputBindingTimestamp));