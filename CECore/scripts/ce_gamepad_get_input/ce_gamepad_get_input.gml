/// @func ce_gamepad_get_input(id)
/// @param {real} id The id of the gamepad.
/// @return {real} The encoded input or 0.
var _gamepad = argument0;

var _axis = [
	gp_axislh, gp_axislh,
	gp_axislv, gp_axislv,
	gp_axisrh, gp_axisrh,
	gp_axisrv, gp_axisrv,
];

var _direction = [
	CE_EInputDirection.Left, CE_EInputDirection.Right,
	CE_EInputDirection.Up, CE_EInputDirection.Down,
	CE_EInputDirection.Left, CE_EInputDirection.Right,
	CE_EInputDirection.Up, CE_EInputDirection.Down,
];

for (var i = 0; i < 8; ++i)
{
	var _a = _axis[i];
	var _d = _direction[i];

	if (ce_axis_check(_gamepad, _a, _d, CE_EInputState.Pressed))
	{
		return ce_input_encode(_gamepad, CE_EInputType.Axis, _a, _d);
	}
}


var _buttons = [gp_face1, gp_face2, gp_face3, gp_face4, gp_shoulderl, gp_shoulderlb, gp_shoulderr,
	gp_shoulderrb, gp_select, gp_start, gp_stickl, gp_stickr, gp_padu, gp_padd, gp_padl, gp_padr];

for (var i = 0; i < 16; ++i)
{
	var _button = _buttons[i];
	if (ce_gamepad_check(_gamepad, _button, CE_EInputState.Pressed))
	{
		return ce_input_encode(_gamepad, CE_EInputType.Gamepad, _button);
	}
}

return 0;