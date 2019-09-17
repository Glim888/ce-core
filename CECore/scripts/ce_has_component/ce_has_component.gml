/// @func ce_has_component(id, component)
/// @desc Checks whether an instance has a component.
/// @param {real} id The id of the instance.
/// @param {real} component The index of the component class definition script.
/// @return {bool} True if the instance has the component.
var _id = argument0;
var _component = argument1;

with (_id)
{
	var _components = __ceComponents;
	var i = 0;

	repeat (ds_list_size(_components))
	{
		if (ce_class_of(_components[| i++]) == _component)
		{
			return true;
		}
	}
}

return false;