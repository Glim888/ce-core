/// @func ce_file_input_stream_read_byte(fileInputStream)
/// @param {real} fileInputStream The id of the file input stream object.
/// @return {real} The read byte.
var _fileInputStream = argument[0];
var _index = ce_get_prop(_fileInputStream, "index");
ce_set_prop(_fileInputStream, "index", _index + 1);
return file_bin_read_byte(ce_get_prop(_fileInputStream, "file"));