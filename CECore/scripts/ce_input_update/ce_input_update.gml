/// @func ce_input_update()
/// @desc Updates the input system. Should be called at the beginning of every frame.

// Handle input binding
var _binding = (global.__ceInputBindingScheme != noone
	&& global.__ceInputBindingAction != noone);

if (_binding
	&& ce_input_get_binding_countdown() <= 0)
{
	global.__ceInputBindingScheme = noone;
	global.__ceInputBindingAction = noone;
	_binding = false;
}

if (_binding)
{
	var _bound = false;

	if (mouse_wheel_up())
	{
		ce_input_scheme_bind_mouse_wheel(
			global.__ceInputBindingScheme, global.__ceInputBindingAction, CE_EInputDirection.Up);
		_bound = true;
	}
	else if (mouse_wheel_down())
	{
		ce_input_scheme_bind_mouse_wheel(
			global.__ceInputBindingScheme, global.__ceInputBindingAction, CE_EInputDirection.Down);
		_bound = true;
	}
	else if (mouse_check_button_pressed(mb_any))
	{
		ce_input_scheme_bind_mouse(
			global.__ceInputBindingScheme, global.__ceInputBindingAction, mouse_button);
		_bound = true;
	}
	else if (keyboard_check_pressed(vk_anykey))
	{
		ce_input_scheme_bind_keyboard(
			global.__ceInputBindingScheme, global.__ceInputBindingAction, keyboard_key);
		_bound = true;
	}
	else if (gamepad_is_connected(global.__ceInputBindingController))
	{
		var _encoded = ce_gamepad_get_input(global.__ceInputBindingController);
		if (_encoded != 0)
		{
			ce_input_scheme_bind(
				global.__ceInputBindingScheme,
				global.__ceInputBindingAction,
				ce_input_decode_type(_encoded),
				ce_input_decode_key(_encoded),
				ce_input_decode_direction(_encoded));
			_bound = true;
		}
	}

	if (_bound)
	{
		global.__ceInputBindingAction = noone;
	}
}

// Clear pressed/released states of gamepad axis
for (var i = gamepad_get_device_count() - 1; i >= 0; --i)
{
	if (gamepad_is_connected(i))
	{
		var _arr = [gp_axislh, gp_axislv, gp_axisrh, gp_axisrv];

		for (var j = 0; j < 4; ++j)
		{
			var _axis = _arr[j];
			var _encodedPos = ce_input_encode(i, CE_EInputType.Axis, _axis, +1);
			var _encodedNeg = ce_input_encode(i, CE_EInputType.Axis, _axis, -1);

			if (abs(gamepad_axis_value(i, _axis)) < CE_INPUT_PRESS_THRESHOLD)
			{
				global.__ceInputAxisPressed[? _encodedPos] = 0;
				global.__ceInputAxisPressed[? _encodedNeg] = 0;

				if (global.__ceInputAxisReleased[? _encodedPos] == 1)
				{
					global.__ceInputAxisReleased[? _encodedPos] = 2;
				}
				if (global.__ceInputAxisReleased[? _encodedNeg] == 1)
				{
					global.__ceInputAxisReleased[? _encodedNeg] = 2;
				}
			}
			else
			{
				if (global.__ceInputAxisPressed[? _encodedPos] == 1)
				{
					global.__ceInputAxisPressed[? _encodedPos] = 2;
				}
				if (global.__ceInputAxisPressed[? _encodedNeg] == 1)
				{
					global.__ceInputAxisPressed[? _encodedNeg] = 2;
				}

				global.__ceInputAxisReleased[? _encodedPos] = 0;
				global.__ceInputAxisReleased[? _encodedNeg] = 0;
			}
		}
	}
}

// Trigger gamepad connected/disconnected events.
for (var i = 0; i < gamepad_get_device_count(); ++i)
{
	var _state = global.__ceInputConnected[| i];

	if (gamepad_is_connected(i))
	{
		if (_state != true)
		{
			global.__ceInputConnected[| i] = true;
			ce_trigger_event(CE_EV_GAMEPAD_CONNECTED, i);
		}
	}
	else if (_state == true)
	{
		global.__ceInputConnected[| i] = false;
		if (global.ceInputGamepadMain == i)
		{
			show_debug_message("Main gamepad was disconnected, setting it to -1!");
			global.ceInputGamepadMain = -1;
			global.__ceInputUsingGamepad = false;
		}
		ce_trigger_event(CE_EV_GAMEPAD_DISCONNECTED, i);
	}
}

// Update "using gamepad" state
var _mouseX = window_mouse_get_x();
var _mouseY = window_mouse_get_y();
var _mouseXChanged = (global.__ceInputMouseXLast != undefined
	&& global.__ceInputMouseXLast != _mouseX);
var _mouseYChanged = (global.__ceInputMouseYLast != undefined
	&& global.__ceInputMouseYLast != _mouseY);

if (CE_INPUT_RECOGNIZE_MOUSE_MOVEMENT
	&& (_mouseXChanged || _mouseYChanged))
{
	global.__ceInputUsingGamepad = false;
}
else if (keyboard_check(vk_anykey)
	|| mouse_check_button(mb_any)
	|| mouse_wheel_up()
	|| mouse_wheel_down())
{
	global.__ceInputUsingGamepad = false;
}
else if (gamepad_is_supported()
	&& gamepad_is_connected(global.ceInputGamepadMain)
	&& ce_gamepad_get_input(global.ceInputGamepadMain) != 0)
{
	global.__ceInputUsingGamepad = true;
}

global.__ceInputMouseXLast = _mouseX;
global.__ceInputMouseYLast = _mouseY;