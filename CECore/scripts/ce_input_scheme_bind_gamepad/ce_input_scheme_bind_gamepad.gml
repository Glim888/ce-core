/// @func ce_input_scheme_bind_gamepad(scheme, action, button)
/// @desc Binds a gamepad button to the action.
/// @param {real} scheme The id of the scheme.
/// @param {string/real} action The id of the action.
/// @param {real} button The gamepad button to bind.
gml_pragma("forceinline");
ce_input_scheme_bind(argument0, argument1, CE_EInputType.Gamepad, argument2);