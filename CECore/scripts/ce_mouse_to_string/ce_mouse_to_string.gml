/// @func ce_mouse_to_string(mouse)
/// @param {real} mouse The id of the mouse button.
/// @return {string} A human readable name for the mouse button.
switch (argument0)
{
case mb_left:
	return "LMB";

case mb_right:
	return "RMB";

case mb_middle:
	return "MMB";

default:
	return "";
}