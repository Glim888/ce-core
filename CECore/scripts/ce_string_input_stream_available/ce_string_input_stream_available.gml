/// @func ce_string_input_stream_available(id)
/// @param {real} id The id of the string input stream object.
var _stringInputStream = argument[0];
return (ce_get_prop(_stringInputStream, "size")
	- ce_get_prop(_stringInputStream, "index") + 1);