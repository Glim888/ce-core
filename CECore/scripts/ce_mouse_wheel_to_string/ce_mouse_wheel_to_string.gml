/// @func ce_mouse_wheel_to_string(direction)
/// @param {CE_EInputDirection} direction The mouse wheel direction.
/// @return {string} A human readable name of the mouse wheel.
switch (argument0)
{
case CE_EInputDirection.Up:
	return "MWU";

case CE_EInputDirection.Down:
	return "MWD";

default:
	return "";
};