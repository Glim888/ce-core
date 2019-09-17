/// @func ce_ds_index_create()
/// @desc Creates a new index, which is a map designed for holding another maps
/// and retrieving them quickly by their properties. You can think of it as of
/// a simple in-memory database. Currently only properties with string of real
/// values are indexed (keys that have arrays etc. as values won't be indexed).
/// @return {real} The id of the created index.
/// @note Reindexing data is currently not supported, so you should not edit the
/// maps once they are added to the index, otherwise it won't work properly!
gml_pragma("forceinline");
return ds_map_create();