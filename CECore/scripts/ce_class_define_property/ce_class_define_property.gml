/// @func ce_class_define_property(id, prop, value)
/// @desc Defines a property of a class. When an instance of a class (object) is
/// created, the class properties are copied over to it. That means if a class
/// contains for example a grid data structure, its id will be copied to all
/// instances of the class, rather than each instance having its own grid data
/// structure!
/// @param {real} id The id of the class descriptor.
/// @param {string/real} prop The property identifier.
/// @param {any} value The default value of the property.
/// @see ce_class_define_properties
gml_pragma("forceinline");
argument0[? argument1] = argument2;