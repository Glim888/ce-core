/// @func ce_sub_prop(id, prop, value)
/// @desc
/// @param {real} id
/// @param {string/real} prop
/// @param {any} value
/// @return {any}
gml_pragma("forceinline");
var _id = argument0;
var _prop = argument1;
var _newValue = ce_get_prop(_id, _prop) - argument2;
ce_set_prop(_id, _prop, _newValue);
return _newValue;