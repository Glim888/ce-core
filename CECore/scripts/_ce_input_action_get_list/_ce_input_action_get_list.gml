var _struct = argument0;
var _type = argument1;
var _key = (_type == CE_EInputType.Axis
	|| _type == CE_EInputType.Gamepad)
	? "gamepad" : "pc";
if (ds_map_exists(_struct, _key))
{
	return _struct[? _key];
}
var _list = ds_list_create();
ds_map_add_list(_struct, _key, _list);
return _list;