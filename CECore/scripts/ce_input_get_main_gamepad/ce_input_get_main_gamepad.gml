/// @func ce_input_get_main_gamepad(id)
/// @return {real} id The id of the main gamepad or -1 it hasn't been
/// defined yet.
/// @see ce_input_set_main_gamepad
gml_pragma("forceinline");
return global.ceInputGamepadMain;