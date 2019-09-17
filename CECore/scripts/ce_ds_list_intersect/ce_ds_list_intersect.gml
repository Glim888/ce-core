/// @func ce_ds_list_intersect(l1, l2)
/// @desc Creates a new list with values being the intersection of l1 and l2.
/// @param {real} l1 The id of the first list.
/// @param {real} l2 The id of the second list.
/// @return {real} The id of the created list.
/// @example
/// This will create a list with values `1, 2, 3, 4, 5`.
/// ```gml
/// var _l1 = ds_list_create();
/// ds_list_add(_l1, 1, 2, 3);
/// var _l2 = ds_list_create();
/// ds_list_add(_l1, 3, 4, 5);
/// var _l3 = ce_ds_list_intersect(_l1, _l2);
/// ```
var _list = ce_ds_list_merge(argument0, argument1);
ds_list_sort(_list, true);
var i = ds_list_size(_list) - 1;
while (i > 0)
{
	if (_list[| i - 1] == _list[| i])
	{
		ds_list_delete(_list, i);
	}
	--i;
}
return _list;