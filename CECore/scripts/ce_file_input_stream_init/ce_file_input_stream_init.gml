/// @func ce_file_input_stream_init(fileInputStream)
/// @param {real} fileInputStream The id of the file input stream object.
var _fileInputStream = argument[0];
var _size = file_bin_size(ce_get_prop(_fileInputStream, "file"));
ce_set_prop(_fileInputStream, "size", _size);