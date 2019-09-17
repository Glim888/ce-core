/// @func ce_gamepad_check(device, button[, state])
/// @desc Checks whether a gamepad button has given state.
/// @param {real} device The gamepad device.
/// @param {real} button The button to check.
/// @param {CE_EInputState} [state] The state to check for. Defaults to
/// `CE_EInputState.Down`.
/// @return {bool} True if the button has the expected state.
var _state = (argument_count > 2) ? argument[2] : CE_EInputState.Down;

switch (_state)
{
case CE_EInputState.Down:
	return gamepad_button_check(argument[0], argument[1]);

case CE_EInputState.Pressed:
	return gamepad_button_check_pressed(argument[0], argument[1]);

case CE_EInputState.Released:
	return gamepad_button_check_released(argument[0], argument[1]);

default:
	return false;
}