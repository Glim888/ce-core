/// @func ce_gui_container_delete(container)
/// @param {real} container
var _container = argument0;

ds_list_destroy(ce_get_prop(_container, "widgets"));

var _surface = ce_get_prop(_container, "surface");
if (surface_exists(_surface))
{
	surface_free(_surface);
}