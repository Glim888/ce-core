/// @func ce_input_init_global()
/// @desc Global initialization script of the input system.
/// @note Calling this script multiple times does not have any effect.
gml_pragma("global", "ce_input_init_global();");

CE_PRAGMA_ONCE;

/// @var {real} The id of the main gamepad. Use -1 if it hasn't been detected
/// yet.
global.ceInputGamepadMain = -1;

/// @var {real} The id of the list containing connected states of gamepads.
global.__ceInputConnected = ds_list_create();

if (CE_INPUT_RECOGNIZE_MAIN_GAMEPAD
	&& gamepad_is_supported())
{
	var i = 0;
	repeat (gamepad_get_device_count())
	{
		var _connected = gamepad_is_connected(i);
		global.__ceInputConnected[| i ] = false;
		if (_connected && global.ceInputGamepadMain == -1)
		{
			show_debug_message("Recognized main gamepad " + string(i));
			global.ceInputGamepadMain = i;
			global.__ceInputUsingGamepad = true;
		}
		++i;
	}
}

/// @var {real} The id of the map containing gamepad ids assigned to instances.
global.__ceInputAssigned = ds_map_create();

/// @var {real} The id of the map containing actions.
global.__ceInputActions = ds_map_create();

/// @var {real} The id of the map containing pressed joysticks.
global.__ceInputAxisPressed = ds_map_create();

/// @var {real} The id of the map containing released joysticks.
global.__ceInputAxisReleased = ds_map_create();

/// @var {bool} True if the user is playing on a gamepad.
global.__ceInputUsingGamepad = (global.ceInputGamepadMain != -1);

/// @var {real} The id of the current scheme.
global.__ceInputSchemeCurrent = noone;

/// @var {real} The id of the scheme that we are currently binding keys to or
/// `noone`.
global.__ceInputBindingScheme = noone;

/// @var {real} The id of an action that we are currently binding keys to or
/// `noone`.
global.__ceInputBindingAction = noone;

/// @var {real} The index of the controller that we are binding an input to.
global.__ceInputBindingController = 0;

/// @var {real} Time at which user started binding controls to an action.
global.__ceInputBindingTimestamp = noone;

/// @var {real} The last mouse x position within the window.
global.__ceInputMouseXLast = undefined;

/// @var {real} The last mouse y position within the window.
global.__ceInputMouseYLast = undefined;