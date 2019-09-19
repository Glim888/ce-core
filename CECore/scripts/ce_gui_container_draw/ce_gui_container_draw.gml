/// @func ce_gui_container_draw(container)
/// @desc Draws the container.
/// @param {real} container The id of the container.
var _container = argument[0];
var _x = ce_get_prop(_container, "_xReal");
var _y = ce_get_prop(_container, "_yReal");
var _width = ce_get_prop(_container, "width");
var _height = ce_get_prop(_container, "height");
var _overflow = ce_get_prop(_container, "overflow");
var _redraw = ce_get_prop(_container, "redraw");

if (!_overflow)
{
	gpu_push_state();
	var _surfaceOld = ce_get_prop(_container, "surface");
	var _surface = ce_surface_check(_surfaceOld, _width, _height);
	if (_surface != _surfaceOld)
	{
		ce_set_prop(_container, "surface", _surface);
		_redraw = true;
	}
	if (_redraw)
	{
		var _parent = ce_get_prop(_container, "parent");
		if (_parent != noone)
		{
			ce_set_prop(_parent, "redraw", true);
		}
		ce_set_prop(_container, "redraw", false);
		surface_set_target(_surface);
		draw_clear_alpha(0, 0);
		gpu_set_blendmode_ext_sepalpha(bm_src_alpha, bm_inv_src_alpha, bm_one,
			bm_inv_src_alpha);
		matrix_stack_push(matrix_get(matrix_world));
		matrix_set(matrix_world, matrix_build(-_x, -_y, 0, 0, 0, 0, 1, 1, 1));
		ce_call(_container, "draw_background");
		ce_call(_container, "draw_widgets");
		matrix_set(matrix_world, matrix_stack_top());
		matrix_stack_pop();
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
	}
	gpu_pop_state();
	draw_surface(_surface, _x, _y);
}
else
{
	ce_gui_widget_draw_background(_container, _x, _y, _width, _height);
	ce_gui_container_draw_widgets(_container);
}