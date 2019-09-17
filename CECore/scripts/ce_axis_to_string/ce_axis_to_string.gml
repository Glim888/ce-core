/// @func ce_axis_to_string(axis, direction)
/// @param {real} axis The axis.
/// @param {CE_EInputDirection} direction The axis direction.
/// @return {string} A human readable name of the gamepad axis.
switch (argument0)
{
case gp_axislh:
	return "LeftStick" + ((argument1 == CE_EInputDirection.Left) ? "Left" : "Right");

case gp_axislv:
	return "LeftStick" + ((argument1 == CE_EInputDirection.Up) ? "Up" : "Down");

case gp_axisrh:
	return "RightStick" + ((argument1 == CE_EInputDirection.Left) ? "Left" : "Right");

case gp_axisrv:
	return "RightStick" + ((argument1 == CE_EInputDirection.Up) ? "Up" : "Down");

default:
	return "";
}