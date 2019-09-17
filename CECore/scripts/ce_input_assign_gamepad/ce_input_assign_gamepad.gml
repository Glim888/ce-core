/// @func ce_input_assign_gamepad(id, gamepad)
/// @desc Assigns a gamepad to an instance, so it doesn't have to explicitly
/// pass its id to input check scripts.
/// @param {real} id The id of the instance.
/// @param {real} gamepad The id of the gamepad.
/// @see ce_input_get_assigned_gamepad
/// @see ce_input_get_assigned_instance
gml_pragma("forceinline");
global.__ceInputAssigned[? argument0] = argument1;