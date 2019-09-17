/// @func ce_input_to_string(scheme, action[, mode])
/// @param {real} scheme The id of the input scheme.
/// @param {string/real} action The id for the action.
/// @param {real} [mode] Use 0 for all keys, 1 for mouse + keyboard only or 2
/// for gamepad controls only. Defaults to 0.
/// @return {string} A string containing controls that trigger the action.
var _scheme = argument[0];
var _action = _scheme[? argument[1]];
var _mode = (argument_count > 2) ? argument[2] : 0;
var _str = "";
var _controls;

if (_mode <= 1 && ds_map_exists(_action, "pc"))
{
	_controls = _action[? "pc"];

	var i = 0;
	var _size = ds_list_size(_controls);

	repeat (_size)
	{
		var _control = _controls[| i];
		var _key = ce_input_decode_key(_control);

		switch (ce_input_decode_type(_control))
		{
		case CE_EInputType.Keyboard:
			_str += ce_key_to_string(_key) + ", ";
			break;

		case CE_EInputType.MouseButton:
			_str += ce_mouse_to_string(_key) + ", ";
			break;

		case CE_EInputType.MouseWheel:
			var _direction = ce_input_decode_direction(_control);
			_str += ce_mouse_wheel_to_string(_direction) + ", ";
			break;
		}

		++i;
	}
}


if (_mode != 1 && ds_map_exists(_action, "gamepad"))
{
	_controls = _action[? "gamepad"];

	var i = 0;
	var _size = ds_list_size(_controls);

	repeat (_size)
	{
		var _control = _controls[| i];
		var _key = ce_input_decode_key(_control);

		switch (ce_input_decode_type(_control))
		{
		case CE_EInputType.Axis:
			var _direction = ce_input_decode_direction(_control);
			_str += ce_axis_to_string(_key, _direction) + ", ";
			break;

		case CE_EInputType.Gamepad:
			_str += ce_gamepad_to_string(_key) + ", ";
			break;
		}

		++i;
	}
}

return _str;