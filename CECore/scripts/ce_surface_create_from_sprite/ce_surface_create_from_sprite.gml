/// @func ce_surface_create_from_sprite(sprite, index)
/// @desc Creates a surface from the sprite.
/// @param {real} sprite The id of the sprite.
/// @param {real} index The sprite subimage index.
/// @return {real} The created surface.
var _sprite = argument0;
var _surface = surface_create(sprite_get_width(_sprite), sprite_get_height(_sprite));
surface_set_target(_surface);
draw_clear_alpha(0, 0);
draw_sprite(_sprite, argument1, 0, 0);
surface_reset_target();
return _surface;