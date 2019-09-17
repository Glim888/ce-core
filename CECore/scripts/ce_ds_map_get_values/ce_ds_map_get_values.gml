/// @func ce_ds_map_get_values(map)
/// @param {real} map The id of the map.
/// @return {array} An array of all values in the map.
var _map = argument0;
var _size = ds_map_size(_map);
var _arr = array_create(_size, "");
var _key = ds_map_find_first(_map)
for (var i = 0; i < _size; ++i)
{
	_arr[i] = _map[? _key];
	_key = ds_map_find_next(_map, _key);
}
return _arr;