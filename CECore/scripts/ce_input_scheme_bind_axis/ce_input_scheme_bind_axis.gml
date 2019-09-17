/// @func ce_input_scheme_bind_axis(scheme, action, axis, direction)
/// @desc Binds a gamepad axis to the action.
/// @param {real} scheme The id of the scheme.
/// @param {string/real} action The id of the action.
/// @param {real} axis The gamepad axis to bind.
/// @param {CE_EInputDirection} direction The direction of the axis.
gml_pragma("forceinline");
ce_input_scheme_bind(argument0, argument1, CE_EInputType.Axis, argument2, argument3);