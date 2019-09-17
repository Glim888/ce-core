/// @func ce_call_components(prop[, data])
/// @desc Executes [ce_call](./ce_call.html) on each of instance's components.
/// @param {string/real} prop The property identifier.
/// @param {any} [data] Additional data.
/// @see ce_call
var _prop = argument[0];
var _data = (argument_count > 1) ? argument[1] : undefined;
var _components = __ceComponents;
var i = 0;

repeat (ds_list_size(_components))
{
	ce_call(_components[| i++], _prop, _data);
}