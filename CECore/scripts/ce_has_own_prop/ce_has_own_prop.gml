/// @func ce_has_own_prop(id, prop)
/// @desc Checks whether an object has own property.
/// @param {real} id The id of the object.
/// @param {string/real} prop The property identifier.
/// @return {bool} True if the object has the property.
/// @see ce_has_property
gml_pragma("forceinline");
return ds_map_exists(argument0, argument1);