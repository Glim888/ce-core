/// @func ce_nibble_to_hex(nibble)
/// @desc Converts a number in range 0..15 into it's hexadecimal representation.
/// @param {real} nibble The number to convert.
/// @return {string} The hexadecimal representation.
gml_pragma("forceinline");
return global.__ceNibbleToHexArray[argument0];