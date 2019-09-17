/// @func ce_instance_exists(id)
/// @desc Checks whether an instance of a class exists.
/// @param {real} id The id of the instance.
/// @return {bool} True if the instance exists.
gml_pragma("forceinline");
return ds_exists(argument0, ds_type_map);