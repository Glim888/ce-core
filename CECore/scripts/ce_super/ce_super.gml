/// @func ce_super(id, prop[, data])
/// @desc Calls `script_execute` with a value of an inherited property *prop* as
/// the first argument, an *id* of the object as the second argument and *data*
/// as the third argument.
/// @param {real} id The id of the object.
/// @param {string/real} prop The property identifier.
/// @param {any} [data] The data to be passed as the third argument. Defaults to
/// `undefined`.
/// @return {any} The return value of the `script_execute` call or `undefined` if
/// the object does not have given property.
gml_pragma("forceinline");
var _object = argument[0];
var _prop = argument[1];
var _data = (argument_count > 2) ? argument[2] : undefined;
return ce_call(_object[? "_base"], _prop, _data);