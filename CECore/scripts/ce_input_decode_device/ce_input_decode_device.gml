/// @func ce_input_decode_device(encoded)
/// @param {real} encoded The encoded input.
/// @return {CE_EInputDirection} The decoded device id.
/// @see ce_input_encode
gml_pragma("forceinline");
return (abs(argument0) & $FF000000) >> 24;