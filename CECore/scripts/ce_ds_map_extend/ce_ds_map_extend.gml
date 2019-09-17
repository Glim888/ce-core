/// @func ce_ds_map_extend(target, source)
/// @desc Shallowly copies key-value pairs from source map to the target map,
/// overwriting the already existing ones.
/// @param {real} target The id of the map to be extended.
/// @param {real} source The id of the map to take the key-value pairs from.
var _target = argument0;
var _source = argument1;
var _size = ds_map_size(_source);
var _key = ds_map_find_first(_source)
for (var i = 0; i < _size; ++i)
{
	_target[? _key] = _source[? _key];
	_key = ds_map_find_next(_source, _key);
}