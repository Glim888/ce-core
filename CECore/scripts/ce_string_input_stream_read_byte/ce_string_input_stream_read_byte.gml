/// @func ce_string_input_stream_read_byte(id)
/// @param {real} id The id of the string input stream object.
/// @return {real} The read byte.
var _stringInputStream = argument[0];
var _index = ce_inc_prop(_stringInputStream, "index");
return string_byte_at(ce_get_prop(_stringInputStream, "string"), _index);