/// @func ce_input_stream_available(id)
/// @param {real} id The id of the input stream object.
var _inputStream = argument[0];
return ce_get_prop(_inputStream, "size") - ce_get_prop(_inputStream, "index");