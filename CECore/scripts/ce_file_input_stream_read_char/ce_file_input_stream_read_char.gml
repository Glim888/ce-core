/// @func ce_file_input_stream_read_char(fileInputStream)
/// @param {real} fileInputStream The id of the file input stream object.
/// @return {string} The read character.
gml_pragma("forceinline");
return chr(ce_call(argument[0], "read_byte"));