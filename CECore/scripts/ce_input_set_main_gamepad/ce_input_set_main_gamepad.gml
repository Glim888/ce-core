/// @func ce_input_set_main_gamepad(id)
/// @desc Sets the gamepad with given id as the main one.
/// @param {real} id The id of the gamepad. Use -1 for no gamepad.
/// @see ce_input_get_main_gamepad
gml_pragma("forceinline");
global.ceInputGamepadMain = argument0;