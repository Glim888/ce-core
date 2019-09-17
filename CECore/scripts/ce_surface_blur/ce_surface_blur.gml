/// @func ce_surface_blur(target, work, scale)
/// @desc Blurs the target surface.
/// @param {real} target The id of the surface to be blurred.
/// @param {real} work The id of the working surface. Must have the same size
/// as the target surface.
/// @param {real} scale The scale of the blur kernel.
var _target = argument0;
var _work = argument1;
var _scale = argument2;

var _shader = CE_ShBlur;
var _texelW = _scale / surface_get_width(_target);
var _texelH = _scale / surface_get_height(_target);

surface_set_target(_work);
draw_clear_alpha(0, 0);
shader_set(_shader);
shader_set_uniform_f(shader_get_uniform(_shader, "u_vTexel"), _texelW, 0.0);
draw_surface(_target, 0, 0);
shader_reset();
surface_reset_target();

surface_set_target(_target);
draw_clear_alpha(0, 0);
shader_set(_shader);
shader_set_uniform_f(shader_get_uniform(_shader, "u_vTexel"), 0.0, _texelH);
draw_surface(_work, 0, 0);
shader_reset();
surface_reset_target();