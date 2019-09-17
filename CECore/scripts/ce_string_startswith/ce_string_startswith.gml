/// @func ce_string_startswith(string, substring)
/// @param {string} string
/// @param {string} substring
/// @return {bool} True if the string starts with the substring.
var _substr = argument1;
return (string_copy(argument0, 1, string_length(_substr)) == _substr);