/// @func ce_axis_check(device, axis, direction[, state])
/// @desc Checks whether a gamepad axis has given state.
/// @param {real} device The gamepad device.
/// @param {real} axis The axis to check.
/// @param {CE_EInputDirection} direction The direction in which the axis
/// should be held.
/// @param {CE_EInputState} [state] The state to check for. Defaults to
/// `CE_EInputState.Down`.
/// @return {real} A value in range 0..1.
var _device = argument[0];
var _axis = argument[1];
var _direction = argument[2];
var _state = (argument_count > 3) ? argument[3] : CE_EInputState.Down;

var _val = max(gamepad_axis_value(_device, _axis) * _direction, 0);

switch (_state)
{
case CE_EInputState.Down:
	return (_val >= gamepad_get_axis_deadzone(_device)) ? _val : 0;

case CE_EInputState.Pressed:
	var _encoded = ce_input_encode(_device, CE_EInputType.Axis, _axis, _direction);
	if (_val >= CE_INPUT_PRESS_THRESHOLD
		&& (!ds_map_exists(global.__ceInputAxisPressed, _encoded)
		|| global.__ceInputAxisPressed[? _encoded] == 0))
	{
		global.__ceInputAxisPressed[? _encoded] = 1;
	}
	return (global.__ceInputAxisPressed[? _encoded] == 1) ? 1 : 0;

case CE_EInputState.Released:
	var _encoded = ce_input_encode(_device, CE_EInputType.Axis, _axis, _direction);
	if (_val < CE_INPUT_PRESS_THRESHOLD
		&& ds_map_exists(global.__ceInputAxisReleased, _encoded)
		&& global.__ceInputAxisReleased[? _encoded] == 0)
	{
		global.__ceInputAxisReleased[? _encoded] = 1;
	}
	return (global.__ceInputAxisReleased[? _encoded] == 1) ? 1 : 0;

default:
	return 0;
}