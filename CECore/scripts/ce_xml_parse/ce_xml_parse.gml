/// @func ce_xml_parse(string)
/// @desc Parses value from the string.
/// @param {string} string The string to parse.
/// @return {real/string} Real value or a string, where XML character entities
/// are replaced with their original form.
var _string = argument0;

// Clear whitespace, replace character entities
while (string_byte_at(_string, 1) == 32)
{
	_string = string_delete(_string, 1, 1);
}

_string = string_replace_all(_string, "&lt;", "<");
_string = string_replace_all(_string, "&gt;", ">");
_string = string_replace_all(_string, "&quot;", "\"");
_string = string_replace_all(_string, "&apos;", "'");
_string = string_replace_all(_string, "&amp;", "&");

// Parse real
var _real = ce_parse_real(_string);

if (is_nan(_real))
{
	return _string;
}

return _real;