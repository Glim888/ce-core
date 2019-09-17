/// @func ce_input_scheme_bind_keyboard(scheme, action, key)
/// @desc Binds a keyboard button to the action.
/// @param {real} scheme The id of the scheme.
/// @param {string/real} action The id of the action.
/// @param {real} key The keyboard button to bind.
gml_pragma("forceinline");
ce_input_scheme_bind(argument0, argument1, CE_EInputType.Keyboard, argument2);