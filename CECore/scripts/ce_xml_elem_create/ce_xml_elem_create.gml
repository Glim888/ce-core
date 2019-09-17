/// @func ce_xml_elem_create([name])
/// @desc Creates a new element.
/// @param {string} [name] The name of the element. Defaults to an empty string.
/// @return {real} The id of the created element.
var _element = ds_map_create();
ds_map_add_map(_element, "attributes", ds_map_create());
ds_map_add_list(_element, "children", ds_list_create());
_element[? "parent"] = noone;
_element[? "name"] = (argument_count > 0) ? string(argument[0]) : "";
return _element;