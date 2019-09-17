/// @func ce_color_alpha_to_argb(color, alpha)
/// @desc Converts the color and aplha into a ARGB color.
/// @param {real} color The color.
/// @param {real} alpha The alpha.
/// @return {real} The ARGB color.
gml_pragma("forceinline");
return ce_color_rgb_to_bgr(argument0) | ((argument1 * 255) << 24);