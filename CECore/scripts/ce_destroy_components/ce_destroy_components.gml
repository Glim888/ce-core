/// @func ce_destroy_components()
/// @desc Destroys all components of the calling instance and frees memory used
/// by the component system.
var _components = __ceComponents;
var i = 0;
repeat (ds_list_size(_components))
{
	ce_delete(_components[| i++]);
}
ds_list_destroy(_components);