/// @func ce_xml_elem_add_child(element, child)
/// @desc Adds child to the given element.
/// @param {real} element The id of the element to add the child to.
/// @param {real} child The id of the child element.
var _elem = argument0;
var _child = argument1;
var _list = _elem[? "children"];
ds_list_add(_list, _child);
ds_list_mark_as_map(_list, ds_list_size(_list) - 1);
_child[? "parent"] = _elem;