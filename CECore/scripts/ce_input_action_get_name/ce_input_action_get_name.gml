/// @func ce_input_action_get_name(action)
/// @param {string/real} action The id of the action.
/// @return {string} A human readable name of the action.
gml_pragma("forceinline");
return global.__ceInputActions[? argument0];