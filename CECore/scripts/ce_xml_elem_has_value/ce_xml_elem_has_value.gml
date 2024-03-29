/// @func ce_xml_elem_has_value(element)
/// @desc Finds out if the given element has a value.
/// @param {real} element The id of the element.
/// @return {boolean} True if the element has a value.
gml_pragma("forceinline");
return ds_map_exists(argument0, "value");