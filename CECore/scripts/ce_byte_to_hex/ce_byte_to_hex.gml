/// @func ce_byte_to_hex(byte)
/// @desc Converts a number in range 0..255 into a hexadecimal representation.
/// @param {real} byte The number to convert.
/// @return {string} The hexadecimal representation.
gml_pragma("forceinline");
var _byte = argument0;
return (ce_nibble_to_hex(_byte & 0xF) + ce_nibble_to_hex((_byte & 0xF0) >> 4));