/// @func ce_gamepad_to_string(button)
/// @param {real} button The gamepad button.
/// @return {string} A human readable name of the gamepad button.
switch (argument0)
{
case gp_face1:
	return "GamepadA";

case gp_face2:
	return "GamepadB";

case gp_face3:
	return "GamepadX";

case gp_face4:
	return "GamepadY";

case gp_shoulderl:
	return "GamepadLB";

case gp_shoulderlb:
	return "GamepadLT";

case gp_shoulderr:
	return "GamepadRB";

case gp_shoulderrb:
	return "GamepadRT";

case gp_select:
	return "GamepadSelect";

case gp_start:
	return "GamepadStart";

case gp_stickl:
	return "LeftStickPress";

case gp_stickr:
	return "RightStickPress";

case gp_padu:
	return "GamepadUp";

case gp_padd:
	return "GamepadDown";

case gp_padl:
	return "GamepadLeft";

case gp_padr:
	return "GamepadRight";

default:
	return "";
}