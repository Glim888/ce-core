/// @func ce_input_check(action, state[, controller])
/// @desc Checks whether a control for an action in the current input scheme
/// is held down.
/// @param {string/real} action The id of the action.
/// @param {CE_EInputState} state The expected state of the control.
/// @param {real} [controller] The id of the controller device to check.
/// Defaults to the id of the assigned controller or the main controller, if no
/// controller is assigned to the instance.
/// @return {real} Values in range 0..1, where 0 means doesn't have given state
/// and 1 means has given state.
/// @see ce_input_set_scheme
/// @see ce_input_assign_gamepad
var _action = argument[0];
var _state = argument[1];

if (!ds_map_exists(global.__ceInputSchemeCurrent, _action)
	|| global.__ceInputBindingAction != noone)
{
	return 0;
}

var _action = global.__ceInputSchemeCurrent[? _action];
var _controller = (argument_count > 2) ? argument[2] : ce_input_get_assigned_gamepad(id, true);
var _controls;

if (_controller == global.ceInputGamepadMain
	&& ds_map_exists(_action, "pc"))
{
	_controls = _action[? "pc"];

	for (var i = ds_list_size(_controls) - 1; i >= 0; --i)
	{
		var _control = _controls[| i];
		var _key = ce_input_decode_key(_control);

		switch (ce_input_decode_type(_control))
		{
		case CE_EInputType.Keyboard:
			if (ce_keyboard_check(_key, _state))
			{
				return 1;
			}
			break;

		case CE_EInputType.MouseButton:
			if (ce_mouse_check(_key, _state))
			{
				return 1;
			}
			break;

		case CE_EInputType.MouseWheel:
			var _direction = ce_input_decode_direction(_control);

			if ((_direction == CE_EInputDirection.Up
				&& mouse_wheel_up())
				|| (_direction == CE_EInputDirection.Down
				&& mouse_wheel_down()))
			{
				return 1;
			}
			break;
		}
	}
}

if (gamepad_is_connected(_controller)
	&& ds_map_exists(_action, "gamepad"))
{
	_controls = _action[? "gamepad"];

	for (var i = ds_list_size(_controls) - 1; i >= 0; --i)
	{
		var _control = _controls[| i];
		var _key = ce_input_decode_key(_control);

		switch (ce_input_decode_type(_control))
		{
		case CE_EInputType.Axis:
			var _direction = ce_input_decode_direction(_control);

			if (ce_axis_check(_controller, _key, _direction, _state))
			{
				return 1;
			}
			break;

		case CE_EInputType.Gamepad:
			if (ce_gamepad_check(_controller, _key, _state))
			{
				return 1;
			}
			break;
		}
	}
}

return 0;