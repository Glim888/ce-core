/// @func ce_objects_with_component(ancestorsOnly, component, ...)
/// @desc Creates a list containing objects (not instances) which have all of
/// the given components.
/// @param {bool} ancestorsOnly If set to true, then only ancestor objects will
/// be kept within the list. This is useful if you want to use the list in a
/// `with` clause and avoid accessing single instance multiple times.
/// @param {real} component The index of the component class definition script.
/// @return {real} The id of the list.
/// @note Make sure to destroy the list when it's no longer necessary.
var _key = argument[0] ? "ancestors" : "objects";
var _list = ds_list_create();

var _componentId = argument[1];
if (ds_map_exists(global.__ceClasses, _componentId))
{
	var _component = global.__ceClasses[? _componentId];
	ds_list_copy(_list, ce_get_prop(_component, _key));
}

for (var i = 2; i < argument_count; ++i)
{
	_componentId = argument[i];
	if (ds_map_exists(global.__ceClasses, _componentId))
	{
		var _component = global.__ceClasses[? _componentId];
		var _listOld = _list;
		_list = ce_ds_list_intersect(_list, ce_get_prop(_component, _key));
		ds_list_destroy(_listOld);
	}
}

return _list;