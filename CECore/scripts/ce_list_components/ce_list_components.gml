/// @func ce_list_components(id)
/// @desc Retrieves a read-only list of component instances contained within an
/// an instance.
/// @param {real} id The id of the instance.
/// @return {real} A read-only list of component instances that the instance has.
gml_pragma("forceinline");
return argument0.__ceComponents;