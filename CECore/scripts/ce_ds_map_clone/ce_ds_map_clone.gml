/// @func ce_ds_map_clone(map)
/// @desc Creates a shallow copy of the map.
/// @param {real} map The id of the map to clone.
/// @return {real} The id of the created clone.
var _clone = ds_map_create();
ds_map_copy(_clone, argument0);
return _clone;