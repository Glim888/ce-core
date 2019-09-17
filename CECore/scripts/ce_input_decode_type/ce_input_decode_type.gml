/// @func ce_input_decode_type(encoded)
/// @param {real} encoded The encoded input.
/// @return {CE_EInputType} The decoded input type.
/// @see ce_input_encode
gml_pragma("forceinline");
return (abs(argument0) & $FF0000) >> 16;