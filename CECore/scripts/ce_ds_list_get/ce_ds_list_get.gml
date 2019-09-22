/// @func ce_ds_list_get(list, index[, default])
/// @desc Retrieves a value at given index of a list.
/// @param {real} list The id of the list.
/// @param {real} index The index.
/// @param {any} [default] The default value.
/// @return {any} Value at given index or the default value if is specified and
/// the index does not exist.
/// @example
/// ```gml
/// var _list = ds_list_create();
/// ds_list_add(_list, 1, 2);
/// ce_ds_list_get(_list, 0); // => 1
/// ce_ds_list_get(_list, 1, 1); // => 2
/// ce_ds_list_get(_list, 2, 3); // => 3
/// ce_ds_list_get(_list, 2); // ERROR!
/// ```
var _list = argument[0];
var _index = argument[1];
var _size = ds_list_size(_list);

if (argument_count > 2
	&& (_index < 0 || _index >= _size))
{
	return argument[2];
}


return _list[| _index];