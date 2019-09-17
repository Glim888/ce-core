/// @func ce_input_scheme_create(name)
/// @desc Creates a new input scheme.
/// @param {string} name The name of the input scheme.
/// @return {real} The id of the created input scheme.
var _scheme = ds_map_create();
_scheme[? "_name"] = argument0;
_scheme[? "_version"] = 4;
return _scheme;