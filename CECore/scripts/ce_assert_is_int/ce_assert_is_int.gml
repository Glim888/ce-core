/// @func ce_assert_is_int(value, msg)
/// @desc Checks whether the given value is an integer, if not, shows the error
/// message and aborts the game.
/// @param {any} value The value to check.
/// @param {string} msg The error message.
var _val = argument0;
if (!is_real(_val)
	|| floor(_val) != _val)
{
	show_error(argument1, true);
}