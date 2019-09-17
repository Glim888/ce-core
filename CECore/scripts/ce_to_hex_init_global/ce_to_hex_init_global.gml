/// @func ce_to_hex_init_global()
/// @desc Global initialization script for converting numbers to their hex
/// representation.
/// @note Calling this script multiple times does not have any effect.
gml_pragma("global", "ce_to_hex_init_global();");

CE_PRAGMA_ONCE;

global.__ceNibbleToHexArray = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"];