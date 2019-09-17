/// @func ce_ds_list_insert_list(l1, pos, l2)
/// @desc Inserts the list l2 into the list l1 at the given position.
/// @param {real} l1 The list to inserted into.
/// @param {real} pos The index to insert the list at.
/// @param {real} l2 The list to be inserted.
gml_pragma("forceinline");
var _l1 = argument0;
var _pos = argument1;
ds_list_insert(_l1, _pos, argument2);
ds_list_mark_as_list(_l1, _pos);