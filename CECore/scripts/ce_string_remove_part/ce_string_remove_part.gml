/// @func ce_string_remove_part(string, startStr, endStr)
/// @desc Removes part beginning with startStr and ending with endStr from the
/// string.
/// @param {string} startStr The start of the part to remove.
/// @param {string} endStr The end of the part to remove.
/// @param {string} string The string to remove the part from.
/// @return {string} The string with the given part removed.
var _string = argument0;
var _endStr = argument2;
var s = string_pos(argument1, _string);
var e = string_pos(_endStr, _string);
return string_delete(_string, s, e - s + string_length(_endStr));