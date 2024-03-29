/// @func ce_xml_elem_has_attribute(element, attName)
/// @desc Finds the attribute with given name in the element.
/// @param {real} element The id of the element.
/// @param {string} attName The name of the attribute.
/// @return {boolean} True if the element has an attribute with given name.
gml_pragma("forceinline");
return ds_map_exists(argument0[? "attributes"], argument1);