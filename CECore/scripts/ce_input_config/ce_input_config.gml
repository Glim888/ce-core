/// @func ce_input_config()
/// @desc Configuration script for the input system.

/// @macro {real} A maximum number of bound keys to an action (mouse + keyboard
/// and gamepad are counted separately). Use value <= 0 for no limit.
#macro CE_INPUT_MAX_BINDINGS 2

/// @macro {real} A threshold to register a gamepad axis as pressed/released.
#macro CE_INPUT_PRESS_THRESHOLD 0.5

/// @macro {real} Time frame within which the user must press a control to assing
/// it to an action (in milliseconds).
#macro CE_INPUT_BINDING_TIMEFRAME 3000

/// @macro {bool} If set to `true`, then the system tries to automatically
/// recognize the main gamepad upon game start. It is suggested to leave this at
/// `false` and set it manually using the [CE_EV_GAMEPAD_CONNECTED](./CE_EV_GAMEPAD_CONNECTED.html)
/// event for example.
#macro CE_INPUT_RECOGNIZE_MAIN_GAMEPAD false

/// @macro {bool} Set to true to enable mouse movement recognition when
/// determining whether the player is using a gamepad or a mouse and keyboard.
#macro CE_INPUT_RECOGNIZE_MOUSE_MOVEMENT true

/// @macro {string} The id of the event triggered when a gamepad is connected.
/// The event data will contain the id of the gamepad.
#macro CE_EV_GAMEPAD_CONNECTED "ceGamepadConnected"

/// @macro {string} The id of the event triggered when a gamepad is disconnected.
/// The event data will contain the id of the gamepad.
#macro CE_EV_GAMEPAD_DISCONNECTED "ceGamepadDisconnected"

/// @enum Enumeration of possible joystick input direction.
enum CE_EInputDirection
{
	/// @member Down.
	Down = +1,
	/// @member Left.
	Left = -1,
	/// @member Right.
	Right = +1,
	/// @member Up.
	Up = -1,
};

/// @enum Enumeration of possible input states.
enum CE_EInputState
{
	/// @member Control is held down.
	Down,
	/// @member Control was just pressed.
	Pressed,
	/// @member Control was just released.
	Released,
};

/// @enum Enumeration of possible input types.
enum CE_EInputType
{
	/// @member Gamepad axis.
	Axis,
	/// @member Gamepad button.
	Gamepad,
	/// @member Keyboard button.
	Keyboard,
	/// @member Mouse button.
	MouseButton,
	/// @member Mouse wheel.
	MouseWheel,
};