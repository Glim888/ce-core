/// @func ce_string_endswith(string, substring)
/// @param {string} string
/// @param {string} substring
/// @return {bool} True if the string ends with the substring.
var _string = argument0;
var _substr = argument1;
var _len = string_length(_substr);
return (string_copy(_string, string_length(argument0) - _len + 1, _len) == _substr);