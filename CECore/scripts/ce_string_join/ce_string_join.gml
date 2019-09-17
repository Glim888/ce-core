/// @func ce_string_join(string, values...)
/// @desc Joins given values together putting the string between each
/// consecutive two.
/// @param {string} string The string to put between two consecutive values.
/// @param {any} values Any number of values to be joined.
/// @return {string} The resulting string.
/// @example
/// This could show a debug message saying "Player Patrik took 60 damage!".
/// ```gml
/// show_debug_message(
///     ce_string_join(" ", "Player", player.name, "took", _damage, "damage!"));
/// ```
if (argument_count == 1)
{
	return "";
}

var _string = argument[0];
var _str = "";
var i = 1;
for (/**/; i < argument_count - 1; ++i)
{
	_str += string(argument[i]) + _string;
}
_str += string(argument[i]);
return _str;