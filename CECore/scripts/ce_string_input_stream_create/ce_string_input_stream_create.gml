/// @func ce_string_input_stream_create(string)
/// @param {string} string The string.
/// @return {real} The id of the created string input stream object.
var _stringInputStream = ce_make_instance(ce_string_input_stream_class);
ce_set_prop(_stringInputStream, "string", argument0);
ce_call(_stringInputStream, "_init");
return _stringInputStream;