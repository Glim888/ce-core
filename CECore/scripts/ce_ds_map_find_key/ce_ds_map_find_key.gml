/// @func ce_ds_map_find_key(map, value)
/// @desc Finds the first key of the map that contains given value.
/// @param {real} map The id of the map.
/// @param {any} value The value that the key should contain.
/// @return {string/real} The found key or `undefined`.
var _map = argument0;
var _value = argument1;
var _key = ds_map_find_first(_map);
repeat (ds_map_size(_map))
{
	if (_map[? _key] == _value)
	{
		return _key;
	}
	_key = ds_map_find_next(_map, _key);
}
return undefined;