/// @func ce_inc_prop(id, prop)
/// @desc
/// @param {real} id
/// @param {string/real} prop
/// @param {any} value
/// @return {any}
gml_pragma("forceinline");
var _id = argument0;
var _prop = argument1;
var _value = ce_get_prop(_id, _prop);
ce_set_prop(_id, _prop, _value + 1);
return _value;