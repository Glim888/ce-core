/// @func ce_ds_index_add(index, map)
/// @desc Adds a map to the index.
/// @param {real} index The id of the index.
/// @param {real} map The id of the map to index.
var _index = argument0;
var _map = argument1;
var _size = ds_map_size(_map);
var _key = ds_map_find_first(_map);

for (var i = 0; i < _size; ++i)
{
	var _idxKey;
	if (!ds_map_exists(_index, _key))
	{
		_idxKey = ds_map_create();
		ds_map_add_map(_index, _key, _idxKey);
	}
	else
	{
		_idxKey = _index[? _key];
	}

	var _val = _map[? _key];
	if (is_real(_val)
		|| is_string(_val))
	{
		var _idxVal;
		if (!ds_map_exists(_idxKey, _val))
		{
			_idxVal = ds_list_create();
			ds_map_add_list(_idxKey, _val, _idxVal);
		}
		else
		{
			_idxVal = _index[? _val];
		}
		ce_ds_list_add_map(_idxVal, _map);
	}

	_key = ds_map_find_next(_map, _key);
}