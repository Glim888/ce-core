/// @func ce_ds_index_destroy(index)
/// @desc Destroys the index, including all contained maps.
/// @param {real} index The id of the index.
gml_pragma("forceinline");
ds_map_destroy(argument0);