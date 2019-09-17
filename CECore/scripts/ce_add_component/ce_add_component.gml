/// @func ce_add_component(id, component)
/// @desc Adds a component to an instance.
/// @param {real} id The id of the instance to which the component should be
/// added.
/// @param {real} component The index of the component class definition script.
/// @return {real} The id of the created component instance or `noone` if the
/// component was not added to the instance.
/// @example
/// Following code initalizes the component system within the calling instance
/// and adds the timer component to it.
/// ```gml
/// ce_init_components();
/// timerComponent = ce_add_component(id, ce_timer_component);
/// ```
/// @note This also triggers a custom event [CE_EV_COMPONENT_ADDED](./CE_EV_COMPONENT_ADDED.html)
/// within the instance.
/// @see ce_init_components
/// @see CE_EV_COMPONENT_ADDED
with (argument0)
{
	var _component = ce_make_instance(argument1);
	ce_set_prop(_component, "instance", id);
	ce_call(_component, "onInit");

	var _priority = ce_get_prop(_component, "priority");

	// Add to instance's components, sorted by priority
	var i = ds_list_size(__ceComponents) - 1;
	for (/**/; i >= 0; --i)
	{
		if (ce_get_prop(__ceComponents[| i], "priority") > _priority)
		{
			break;
		}
	}
	ds_list_insert(__ceComponents, i + 1, _component);

	// Register object
	var _objects = ce_get_prop(_component, "objects");
	ce_ds_list_add_unique(_objects, object_index);

	// Rebuild list of ancestors
	var _ancestors = ce_get_prop(_component, "ancestors");
	var _size = ds_list_size(_ancestors);

	for (var i = 0; i < _size; ++i)
	{
		var _object = _ancestors[| i];
		if (object_is_ancestor(object_index, _object))
		{
			break;
		}
		if (object_is_ancestor(_object, object_index))
		{
			_ancestors[| i] = object_index;
			break;
		}
	}

	// Execute onAdd script
	ce_call(_component, "onAdd");
	ce_trigger_event(CE_EV_COMPONENT_ADDED, _component);

	return _component;
}

return noone;