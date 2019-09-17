/// @func ce_input_scheme_bind_mouse_wheel(scheme, action, direction)
/// @desc Binds a mouse wheel to the action.
/// @param {real} scheme The id of the scheme.
/// @param {string/real} action The id of the action.
/// @param {CE_EInputDirection} direction The mouse wheel direction.
gml_pragma("forceinline");
ce_input_scheme_bind(argument0, argument1, CE_EInputType.MouseWheel, mb_none, argument2);