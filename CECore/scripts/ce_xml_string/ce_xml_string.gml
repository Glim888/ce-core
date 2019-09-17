/// @func ce_xml_string(value)
/// @desc Turns given value into a string. Replaces characters with their
/// XML-safe form.
/// @param {any} value The value to be turned into a string.
/// @return {string} The resulting string.
var _value = argument0;

if (is_real(_value))
{
	return ce_real_to_string(_value);
}

if (is_string(_value))
{
	_value = string_replace_all(_value, "&", "&amp;");
	_value = string_replace_all(_value, "<", "&lt;");
	_value = string_replace_all(_value, ">", "&gt;");
	_value = string_replace_all(_value, "'", "&apos;");
	_value = string_replace_all(_value, "\"", "&quot;");
}

return string(_value);