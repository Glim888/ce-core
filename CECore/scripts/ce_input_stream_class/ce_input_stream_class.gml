/// @func ce_input_stream_class()
CE_PRAGMA_ONCE;

var _inputStreamClass = ce_class_create();
ce_class_define_properties(_inputStreamClass, [
	// Current position in the input stream.
	"index", 0,
	// The size of the input stream.
	"size", 0,
	// Initialization method for factory scripts.
	"_init", undefined,
	// Returns number of available bytes to read.
	"available", ce_input_stream_available,
	// Returns a byte from the input stream and increments the current position.
	"read_byte", undefined,
	// Returns a char from the input stream and increments the current position.
	"read_char", undefined,
]);