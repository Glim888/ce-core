/// @func ce_input_encode(device, type, key[, direction])
/// @param {real} device The id of the controller. Use 0 when not applicable.
/// @param {CE_EInputType} type The input type.
/// @param {real} key The input key. Use `mb_none` for mouse wheel.
/// @param {CE_EInputDirection} [direction] The input direction. Applicable only
/// for gamepad axis and mouse wheel.
/// @return {real} The input encoded into a single number.
/// @see ce_input_decode_device
/// @see ce_input_decode_direction
/// @see ce_input_decode_key
/// @see ce_input_decode_type
gml_pragma("forceinline");
return ((argument[0] << 24) | (argument[1] << 16) | (argument[2] + 1))
	* ((argument_count > 3) ? argument[3] : 1);