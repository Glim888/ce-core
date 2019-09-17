/// @func ce_key_to_string(key)
/// @param {real} key The id of the keyboard button.
/// @return {string} A human readable name for the keyboard key.
switch (argument0)
{
case vk_left:
	return "Left";

case vk_right:
	return "Right";

case vk_up:
	return "Up";

case vk_down:
	return "Down";

case vk_enter:
	return "Enter";

case vk_escape:
	return "Escape";

case vk_space:
	return "Space";

case vk_shift:
	return "Shift";

case vk_control:
	return "Control";

case vk_lcontrol:
	return "LeftControl";

case vk_rcontrol:
	return "RightControl";

case vk_alt:
	return "Alt";

case vk_lalt:
	return "LeftAlt";

case vk_ralt:
	return "RightAlt";

case vk_backspace:
	return "Backspace";

case vk_tab:
	return "Tab";

case vk_home:
	return "Home";

case vk_end:
	return "End";

case vk_delete:
	return "Delete";

case vk_insert:
	return "Insert";

case vk_pageup:
	return "PageUp";

case vk_pagedown:
	return "PageDown";

case vk_pause:
	return "Pause/Break";

case vk_printscreen:
	return "PrintScreen";

case vk_f1:
	return "F1";

case vk_f2:
	return "F2";

case vk_f3:
	return "F3";

case vk_f4:
	return "F4";

case vk_f5:
	return "F5";

case vk_f6:
	return "F6";

case vk_f7:
	return "F7";

case vk_f8:
	return "F8";

case vk_f9:
	return "F9";

case vk_f10:
	return "F10";

case vk_f11:
	return "F11";

case vk_f12:
	return "F12";

case vk_numpad0:
	return "Numpad0";

case vk_numpad1:
	return "Numpad1";

case vk_numpad2:
	return "Numpad2";

case vk_numpad3:
	return "Numpad3";

case vk_numpad4:
	return "Numpad4";

case vk_numpad5:
	return "Numpad5";

case vk_numpad6:
	return "Numpad6";

case vk_numpad7:
	return "Numpad7";

case vk_numpad8:
	return "Numpad8";

case vk_numpad9:
	return "Numpad9";

case vk_multiply:
	return "*";

case vk_divide:
	return "/";

case vk_add:
	return "+";

case vk_subtract:
	return "-";

case vk_decimal:
	return ",";

default:
	return chr(argument0);
}