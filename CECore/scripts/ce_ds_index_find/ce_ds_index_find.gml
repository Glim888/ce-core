/// @func ce_ds_index_find(index, key, value[, comparatorScript, comparison]])
/// @desc Finds maps in the index which have the given key-value pair.
/// @param {real} index The id of the index.
/// @param {any} key The key to search for.
/// @param {real/string} value The value to search for / compare to.
/// @param {real} [comparatorScript] The script to be used for comparing values.
/// @param {CE_ECompare} [comparison] Use to specify whether the value should be
/// less, equal or greater than the `value` argument. Defaults to equal.
/// @return {real} An id of a list containing the found maps. Do not forget
/// to destroy the list when it's no longer necessary to prevent memory leaks!
/// @example
/// This code creates a database of weapons, searches for all weapons which have
/// attack greater than 1 and then prints out their names.
/// ```gml
/// var _weapons = ce_ds_index_create();
/// var _wKnife = ce_ds_map_create_from_array([
///     "name", "Knife",
///     "attack", 2
/// ]);
/// ce_ds_index_add(_weapons, _wKnife);
/// var _wRustyKnife = ce_ds_map_create_from_array([
///     "name", "Rusty Knife",
///     "attack", 1
/// ]);
/// ce_ds_index_add(_weapons, _wRustyKnife);
/// var _found = ce_ds_index_find(_weapons, "attack", 1, ce_real_compare, CE_ECompare.Greater);
/// var _size = ds_list_size(_found);
/// for (var i = 0; i < _size; ++i)
/// {
///     var _item = _found[| i];
///     show_debug_message(_item[? "name"]);
/// }
/// ds_list_destroy(_found);
/// ```
var _index = argument[0];
var _key = argument[1];
var _value = argument[2];
var _comparatorScript = noone;
var _comparison = (argument_count > 4) ? argument[4] : CE_ECompare.Equal;
var _list = ds_list_create();

var _keyValues = _index[? _key];

if (argument_count <= 3
	|| _comparison == CE_ECompare.Equal)
{
	ds_list_copy(_list, _keyValues[? _value]);
	return _list;
}

_comparatorScript = argument[3];

// TODO: Optimize list union.
var _size = ds_map_size(_keyValues);
var _valueCurrent = ds_map_find_first(_keyValues);

for (var i = 0; i < _size; ++i)
{
	if (script_execute(_comparatorScript, _valueCurrent, _value) == _comparison)
	{
		ce_ds_list_append(_list, _keyValues[? _valueCurrent]);
	}
	_valueCurrent = ds_map_find_next(_keyValues, _valueCurrent);
}

var _listOld = _list;
_list = ce_ds_list_intersect(_list, _list);
ds_list_destroy(_listOld);
return _list;