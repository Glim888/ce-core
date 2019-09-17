/// @func ce_assert_not_equal(exp, val, msg)
/// @desc Shows the error message if the expression is equal to `val`.
/// @param {any} exp The expression to assert.
/// @param {any} val The expected value.
/// @param {string} msg The error message.
var _exp = argument0;
var _val = argument1;
if (typeof(_exp) == typeof(_val)
	&& _exp == _val)
{
	show_error(argument2, true);
}