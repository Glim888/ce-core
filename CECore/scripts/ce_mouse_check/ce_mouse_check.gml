/// @func ce_mouse_check(button[, state])
/// @desc Checks whether a mouse button has given state.
/// @param {real} button The mouse button to check.
/// @param {CE_EInputState} [state] The state to check for. Defaults to
/// `CE_EInputState.Down`.
/// @return {bool} True if the button has the expected state.
var _state = (argument_count > 1) ? argument[1] : CE_EInputState.Down;

switch (_state)
{
case CE_EInputState.Down:
	return mouse_check_button(argument[0]);

case CE_EInputState.Pressed:
	return mouse_check_button_pressed(argument[0]);

case CE_EInputState.Released:
	return mouse_check_button_released(argument[0]);

default:
	return false;
}