/// @func ce_xml_elem_set_attribute(element, attribute, value)
/// @desc Sets value of the given element attribute to the given value.
/// @param {real} element The id of the element.
/// @param {string} attribute The name of the attribute.
/// @param {real/string/undefined} value The value of the attribute.
var _attributes = argument0[? "attributes"];
_attributes[? string(argument1)] = argument2;