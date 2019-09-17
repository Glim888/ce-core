/// @func ce_add_serializable_property(object, property, type)
/// @desc Registers object property for serialization.
/// @param {real} object The object index. Use `all` if all object should
/// have this property.
/// @param {string} property The name of the property.
/// @param {real} type The type of the property. Use `buffer_` constants.
/// @example
/// Registers `sprite_index` as common serializable property of all objects.
/// ```gml
/// ce_add_serializable_property(all, "sprite_index", buffer_u32);
/// ```
var _object = argument0;
var _property = argument1;
var _type = argument2;

var _props = noone;

if (!ds_map_exists(global.__ceSerializeProps, _object))
{
	_props = ds_list_create();
	ds_map_add_list(global.__ceSerializeProps, _object, _props);
}
else
{
	_props = global.__ceSerializeProps[? _object];
}

ds_list_add(_props, _type, _property);