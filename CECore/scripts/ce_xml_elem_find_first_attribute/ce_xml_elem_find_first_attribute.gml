/// @func ce_xml_elem_find_first_attribute(element)
/// @desc Finds the first attribute of the given element.
/// @param {real} element The id of the element.
/// @return {string/undefined} The name of the first attribute or undefined, if
/// the element does not have any.
gml_pragma("forceinline");
return ds_map_find_first(argument0[? "attributes"]);