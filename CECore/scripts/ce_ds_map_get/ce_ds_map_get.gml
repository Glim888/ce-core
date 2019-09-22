/// @func ce_ds_map_get(map, index[, default])
/// @desc Retrieves a value at given index of a map.
/// @param {real} map The id of the map.
/// @param {real} index The index.
/// @param {any} [default] The default value. Defaults to `undefined`.
/// @return {any} Value at given index or the default value if the index does
/// not exist.
/// @example
/// ```gml
/// var _map = ds_map_create();
/// _map[? "a"] = 1;
/// _map[? "b"] = 2;
/// ce_ds_map_get(_map, "a"); // => 1
/// ce_ds_map_get(_map, "b", 1); // => 2
/// ce_ds_map_get(_map, "c", 3); // => 3
/// ce_ds_map_get(_map, "c"); // => undefined
/// ```
var _map = argument[0];
var _index = argument[1];

if (argument_count > 2
	&& !ds_map_exists(_map, _index))
{
	return argument[2];
}

return _map[? _index];