/// @func ce_class_define_properties(id, propValueArray)
/// @desc Defines multiple properties of a class. When an instance of a class
/// (object) is created, the class properties are copied over to it. That means
/// if a class contains for example a grid data structure, its id will be copied
/// to all instances of the class, rather than each instance having its own grid
/// data structure!
/// @param {real} id The id of the class descriptor.
/// @param {array} propValueArray An array containing property names at odd
/// indices and their default values at even indices.
/// @see ce_class_define_property
gml_pragma("forceinline");
ce_ds_map_extend_from_array(argument0, argument1);