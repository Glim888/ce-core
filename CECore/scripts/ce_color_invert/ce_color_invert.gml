/// @func ce_color_invert(color)
/// @desc Inverts the color.
/// @param {real} color The color to invert.
/// @return {real} The inverted color.
gml_pragma("forceinline");
var _color = argument0;
return make_color_rgb(
	255 - color_get_red(_color),
	255 - color_get_green(_color),
	255 - color_get_blue(_color));