/// @func ce_get_serializable_properties(object)
/// @desc Creates a list of serializable properties of given object, including
/// properties inherited from its parent, parent's parent etc.
/// @param {real} object The object index.
/// @return {real} The created list of properties.
/// @note Do not forget to free the list from memory when it's no longer
/// necessary!
var _list = ds_list_create();
ds_list_copy(_list, global.__ceSerializeProps[? all]);

var _object = argument0;
while (_object >= 0)
{
	if (ds_map_exists(global.__ceSerializeProps, _object))
	{
		ce_ds_list_append(_list, global.__ceSerializeProps[? _object]);
	}
	_object = object_get_parent(_object);
}

return _list;