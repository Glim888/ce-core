/// @func ce_is_nan(value)
/// @param {any} value The value to test.
/// @return {bool} True if the value is NaN.
var _val = argument0;
if (!is_real(_val))
{
	return false;
}
return (_val > 0 && _val < 0);