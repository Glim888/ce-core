/// @func ce_input_decode_key(encoded)
/// @param {real} encoded The encoded input.
/// @return {real} The decoded input key.
/// @see ce_input_encode
gml_pragma("forceinline");
return (abs(argument0) & $FFFF) - 1;