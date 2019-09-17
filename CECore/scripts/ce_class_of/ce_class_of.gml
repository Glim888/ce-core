/// @func ce_class_of(id)
/// @desc Retrieves a class of an object.
/// @param {real} id The id of the object.
/// @return {real} The index of the class definition script.
/// @see ce_is_instance
/// @see ce_superclass_of
gml_pragma("forceinline");
return argument0[? "_class"];