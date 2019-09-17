/// @func ce_remove_component(id, component)
/// @desc Removes a component from an instance.
/// @param {real} id The id of the instance to remove the component from.
/// @param {real} component The id of the component instance to be removed.
/// @return {bool} True if the component was removed.
/// @note This also triggers a custom event [CE_EV_COMPONENT_REMOVED](./CE_EV_COMPONENT_REMOVED.html).
/// @see CE_EV_COMPONENT_REMOVED
var _component = argument1;

with (argument0)
{
	if (ce_ds_list_remove_first(__ceComponents, _component))
	{
		ce_trigger_event(CE_EV_COMPONENT_REMOVED, _component);
		ce_delete(_component);
		return true;
	}
}

return false;