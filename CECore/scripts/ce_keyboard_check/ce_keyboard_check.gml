/// @func ce_keyboard_check(key[, state])
/// @desc Checks whether a keyboard key has given state.
/// @param {real} key The keyboard key to check.
/// @param {CE_EInputState} [state] The state to check for. Defaults to
/// `CE_EInputState.Down`.
/// @return {bool} True if the key has the expected state.
var _state = (argument_count > 1) ? argument[1] : CE_EInputState.Down;

switch (_state)
{
case CE_EInputState.Down:
	return keyboard_check(argument[0]);

case CE_EInputState.Pressed:
	return keyboard_check_pressed(argument[0]);

case CE_EInputState.Released:
	return keyboard_check_released(argument[0]);

default:
	return false;
}