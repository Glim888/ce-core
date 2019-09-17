/// @func ce_ds_list_merge(l1, l2)
/// @desc Merges the lists into a new one, which will contain all values from
/// both of them (including duplicates).
/// @param {real} l1 The id of the first list.
/// @param {real} l2 The id of the second list.
/// @return {real} The id of the created list.
/// @example
/// This will create a list with values `1, 2, 3, 3, 4, 5`.
/// ```gml
/// var _l1 = ds_list_create();
/// ds_list_add(_l1, 1, 2, 3);
/// var _l2 = ds_list_create();
/// ds_list_add(_l1, 3, 4, 5);
/// var _l3 = ce_ds_list_merge(_l1, _l2);
/// ```
var _list = ds_list_create();
ds_list_copy(_list, argument0);
ce_ds_list_append(_list, argument1);
return _list;