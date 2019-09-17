/// @func ce_sort_by_depth(depthSortComponent, depth)
/// @desc Sorts an instance containing given depth sort component by given value.
/// @param {real} depthSortComponent The id of the depth sort component instance.
/// @param {real} depth The depth to sort by. Smaller values mean closer to the
/// camera, larger values mean farther from the camera.
/// @example
/// Following code gets a list of objects containing the depth sort component
/// and sorts them by their position on the *y* axis.
/// ```gml
/// var _objects = ce_objects_with_component(true, ce_depth_sort_component);
/// while (ce_iter(_objects, ds_type_list))
/// {
///     with (CE_ITER_VALUE)
///     {
///         ce_sort_by_depth(depthSortComponent, -y);
///     }
/// }
/// ds_list_delete(_objects);
/// ```
var _id = argument0;
var _depth = clamp(floor(-argument1 / CE_DEPTH_SORT_ALIGN), 0, array_length_1d(global.__ceDepthLayers) - 1);
ce_set_prop(_id, "depth", _depth);

with (ce_get_prop(_id, "instance"))
{
	layer = global.__ceDepthLayers[_depth];
}