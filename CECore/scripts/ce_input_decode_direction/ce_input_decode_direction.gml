/// @func ce_input_decode_direction(encoded)
/// @param {real} encoded The encoded input.
/// @return {CE_EInputDirection} The decoded input direction.
/// @see ce_input_encode
gml_pragma("forceinline");
return sign(argument0);