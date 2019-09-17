/// @func ce_input_scheme_get_name([scheme])
/// @param {real} scheme The id of the input scheme. If not specified,
/// then the current scheme is used.
/// @return {real} The name of the input scheme.
if (argument_count > 0)
{
	return ds_map_find_value(argument[0], "_name");
}
return global.__ceInputSchemeCurrent[? "_name"];