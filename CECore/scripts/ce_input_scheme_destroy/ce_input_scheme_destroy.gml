/// @func ce_input_scheme_destroy(scheme)
/// @desc Destroys the input scheme.
/// @param {real} scheme The id of the input scheme to destroy.
gml_pragma("forceinline");
ds_map_destroy(argument0);
if (global.__ceInputSchemeCurrent == argument0)
{
	global.__ceInputSchemeCurrent = noone;
}