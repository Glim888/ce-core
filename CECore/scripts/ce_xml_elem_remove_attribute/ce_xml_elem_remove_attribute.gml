/// @func ce_xml_elem_remove_attribute(element, attribute)
/// @desc Removes given attribute from the element.
/// @param {real} element The id of the element.
/// @param {string} attribute The name of the attribute.
var _attr = argument1;
var _attributes = argument0[? "attributes"];
if (ds_map_exists(_attributes, _attr))
{
	ds_map_delete(_attributes, _attr);
}