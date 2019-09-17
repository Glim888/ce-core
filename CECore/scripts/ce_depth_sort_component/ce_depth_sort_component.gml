/// @func ce_depth_sort_component()
/// @desc The definition of the depth sort component class.
CE_PRAGMA_ONCE;

var _depthSortComponent = ce_class_create(ce_component_class);
ce_class_define_properties(_depthSortComponent, [
	// The depth of the component.
	"depth", 0,
	// A script executed when the component is added to an instance.
	"onAdd", ce_depth_sort_component_on_add,
]);