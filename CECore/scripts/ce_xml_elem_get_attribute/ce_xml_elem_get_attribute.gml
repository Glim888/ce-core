/// @func ce_xml_elem_get_attribute(element, attribute)
/// @desc Gets value of the element attribute.
/// @param {real} element The id of the element.
/// @param {string} attribute The name of the attribute.
/// @return {real/string/undefined} The attribute value.
gml_pragma("forceinline");
return ds_map_find_value(argument0[? "attributes"], argument1);