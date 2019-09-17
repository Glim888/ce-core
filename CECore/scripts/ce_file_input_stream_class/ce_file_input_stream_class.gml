/// @func ce_file_input_stream_class()
CE_PRAGMA_ONCE;

var _fileInputStreamClass = ce_class_create(ce_input_stream_class);
ce_class_define_properties(_fileInputStreamClass, [
	"file", noone,
	"_init", ce_file_input_stream_init,
	"read_byte", ce_file_input_stream_read_byte,
	"read_char", ce_file_input_stream_read_char,
]);
ce_class_define_destructor(_fileInputStreamClass, ce_file_input_stream_delete);