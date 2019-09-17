/// @func ce_input_scheme_delete_action(scheme, action)
/// @desc Deletes the action from the input scheme.
/// @param {real} scheme The id of the input scheme.
/// @param {string/real} action The id of the action.
gml_pragma("forceinline");
ds_map_delete(argument0, argument1);