/// @func ce_color_rgb_to_bgr(color)
/// @desc Converts between RGB and BGR color format.
/// @param {real} color The BGR or RGB color.
/// @return {real} The resulting color.
gml_pragma("forceinline");
var _color = argument0;
return ((_color & $FF0000) >> 16)
	| (_color & $FF00)
	| ((_color & $FF) << 16);