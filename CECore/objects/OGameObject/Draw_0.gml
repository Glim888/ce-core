if (sprShadow != noone)
{
	draw_sprite(sprShadow, 0, x, y);
}

if (sprite_index != -1)
{
	draw_sprite_ext(sprite_index, image_index, x, y - z, image_xscale,
		image_yscale, image_angle, image_blend, image_alpha);
}