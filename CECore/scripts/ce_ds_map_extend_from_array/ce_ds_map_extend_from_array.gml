/// @func ce_ds_map_extend_from_array(map, keyValueArray)
/// @desc Extends a map by key-value pairs stored in an array.
/// @param {real} map The id of the map.
/// @param {array[key, value, ...]} keyValueArray The array that contains keys
/// at odd indices and values at even indices.
/// @return {real} The id of the map.
var _map = argument0;
var _arr = argument1;
var _size = array_length_1d(_arr);
for (var i = 0; i < _size; i += 2)
{
	_map[? _arr[i]] = _arr[i + 1];
}
return _map;