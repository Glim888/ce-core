/// @func ce_ds_list_clone(list)
/// @desc Creates a shallow copy of the list.
/// @param {real} list The id of the list to clone.
/// @return {real} The id of the creaaed list.
var _l = ds_list_create();
ds_list_copy(_l, argument0);
return _l;