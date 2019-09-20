/// @func ce_file_input_stream_read_byte(fileInputStream)
/// @param {real} fileInputStream The id of the file input stream object.
/// @return {real} The read byte.
var _fileInputStream = argument[0];
ce_inc_prop(_fileInputStream, "index");
return file_bin_read_byte(ce_get_prop(_fileInputStream, "file"));