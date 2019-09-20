/// @func ce_string_input_stream_class()
CE_PRAGMA_ONCE;

var _stringInputStreamClass = ce_class_create(ce_input_stream_class);
ce_class_define_properties(_stringInputStreamClass, [
	"string", undefined,
	"_init", ce_string_input_stream_init,
	"available", ce_string_input_stream_available,
	"read_byte", ce_string_input_stream_read_byte,
	"read_char", ce_string_input_stream_read_char,
]);