/// @func ce_input_check_pressed(action[, controller])
/// @desc Checks whether a control for an action in the current input scheme is pressed.
/// @param {string/real} action The id of the action.
/// @param {real} [controller] The id of the controller device to check.
/// Defaults to the id of the assigned controller or the main controller, if no
/// controller is assigned to the instance.
/// @return {real} Values in range 0..1, where 0 means not pressed and 1 means pressed.
/// @see ce_input_set_scheme
gml_pragma("forceinline");
return ce_input_check(argument[0], CE_EInputState.Pressed,
	(argument_count > 1) ? argument[1] : ce_input_get_assigned_gamepad(id, true));