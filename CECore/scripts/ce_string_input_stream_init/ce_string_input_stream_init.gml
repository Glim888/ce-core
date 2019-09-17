/// @func ce_string_input_stream_init(id)
/// @param {real} id The id of the string input stream object.
var _stringInputStream = argument[0];
var _string = ce_get_prop(_stringInputStream, "string");
var _size = string_length(_string);
ce_set_prop(_stringInputStream, "size", _size);
ce_set_prop(_stringInputStream, "index", 1);