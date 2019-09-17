/// @func ce_ds_list_reverse(list)
/// @desc Creates a new list with values from the given list, but in a reverse
/// order.
/// @param {real} list The id of the list.
/// @return {real} The id of the created list.
var _l = argument0;
var _reversed = ds_list_create();
for (var i = ds_list_size(_l) - 1; i >= 0; --i)
{
	ds_list_add(_reversed, _l[| i]);
}
return _reversed;