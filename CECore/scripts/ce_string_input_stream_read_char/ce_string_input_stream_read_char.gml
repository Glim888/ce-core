/// @func ce_string_input_stream_read_char(id)
/// @param {real} id The id of the string input stream object.
/// @return {real} The read byte.
var _stringInputStream = argument[0];
var _index = ce_get_prop(_stringInputStream, "index");
ce_set_prop(_stringInputStream, "index", _index + 1);
return string_char_at(ce_get_prop(_stringInputStream, "string"), _index);