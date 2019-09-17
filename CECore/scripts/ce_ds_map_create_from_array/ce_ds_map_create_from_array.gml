/// @func ce_ds_map_create_from_array(keyValueArray)
/// @desc Creates a new map, taking keys and values from the array.
/// @param {array} keyValueArray An array that containing keys at odd indices and
/// values at even indices.
/// @return {real} The id of the created map.
/// @example
/// Variables `_p1` and `_p2` hold maps with the exact same key-value pairs.
/// ```gml
/// var _p1 = ce_ds_map_from_array([
///     "first_name", "Some",
///     "last_name", "Dude",
///     "age", 24,
/// ]);
/// var _p2 = ds_map_create();
/// ds_map_add(_p2, "first_name", "Some");
/// ds_map_add(_p2, "last_name", "Dude");
/// ds_map_add(_p2, "age", 20);
/// ```
var _arr = argument0;
var _map = ds_map_create();
var _size = array_length_1d(_arr);
for (var i = 0; i < _size; i += 2)
{
	_map[? _arr[i]] = _arr[i + 1];
}
return _map;