/// @func ce_assert(exp, msg)
/// @desc Shows the error message if the expression is not a `real` (`bool`) or
/// equals to `0` (`false`) and aborts the game.
/// @param {any} exp The expression to assert.
/// @param {string} msg The error message.
var _exp = argument0;
if (!(is_real(_exp) || is_bool(_exp)) || !_exp)
{
	show_error(argument1, true);
}