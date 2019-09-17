/// @func ce_string_triml(str)
/// @desc Removes leading whitespace from the string.
/// @param {string} str The string to remove the whitespace from.
/// @return {string} The resulting string.
var str = argument0;
var ch;
var i = 0;
do
{
	ch = string_char_at(str, 1 + (i++));
}
until (ch != " " && ch != "\t" && ch != "\n");
return string_delete(str, 1, i - 1);