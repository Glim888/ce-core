/// @func ce_component_class()
/// @desc The definition of the component class.
CE_PRAGMA_ONCE;

var _component = ce_class_create();
ce_class_define_properties(_component, [
	// The id of the instance that contains the component.
	"instance", noone,
	// The priority of the component. Components with higher priority have their
	// event callbacks executed before the ones with lower priority.
	"priority", 0,
	// Script executed when a component is added to an instance. Use `undefined`
	// for no script.
	"onAdd", undefined,
	// Script executed when a component is removed from an instance. Use `undefined`
	// for no script.
	"onRemove", undefined,
	// List of objects which so far had the component. If a component is removed
	// from all instances of an object, the object is still kept in the list.
	"objects", ds_list_create(),
	// Similar to list of objects, but this one contains only the base objects,
	// which is handy in the `with` clause, to prevent accessing single instance
	// multiple times.
	"ancestors", ds_list_create(),
]);