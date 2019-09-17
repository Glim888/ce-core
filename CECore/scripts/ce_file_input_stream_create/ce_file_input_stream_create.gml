/// @func ce_file_input_stream_create(fileInputStream)
/// @param {string} file Path to the file.
/// @return {real} The id of the created file input stream object or `noone` if
/// opening the file fails.
var _file = file_bin_open(argument0, 0);
if (_file == -1)
{
	return noone;
}

var _fileInputStream = ce_make_instance(ce_file_input_stream_class);
ce_set_prop(_fileInputStream, "file", _file);
ce_call(_fileInputStream, "_init");
return _fileInputStream;