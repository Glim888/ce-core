/// @func ce_class_define_destructor(id, destructor)
/// @desc Defines a destructor of a class. When an instance of a class is
/// destroyed using [ce_delete](./ce_delete.html), its class destructor is
/// executed first, then the destructor of its superclass etc.
/// @param {real} id The id of the class descriptor.
/// @param {real} destructor The index of the destructor script. Destructor
/// scripts must take an id of an instance as the first argument.
/// @see ce_delete
gml_pragma("forceinline");
argument0[? "_destructor"] = argument1;