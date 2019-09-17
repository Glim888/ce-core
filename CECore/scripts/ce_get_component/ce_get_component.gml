/// @func ce_get_component(id, component)
/// @desc Retrieves instance's component of given class.
/// @param {real} id The id of the instance.
/// @param {real} component The index of the component class definition script.
/// @return {bool} The id of the component instance or `noone` if the instance
/// does not have a component of given class.
var _id = argument0;
var _component = argument1;

with (_id)
{
	var _components = __ceComponents;
	var i = 0;

	repeat (ds_list_size(_components))
	{
		var _inst = _components[| i++];
		if (ce_class_of(_inst) == _component)
		{
			return _inst;
		}
	}
}

return noone;