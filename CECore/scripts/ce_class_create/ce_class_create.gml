/// @func ce_class_create([base[, final]])
/// @desc Creates a new class descriptor.
/// @param {real} [base] The index of the base class definition script. Use
/// `noone` (default) for no base class.
/// @param {bool} [final] True to mark the class as final. Final classes cannot
/// be inherited. Defaults to `false`.
/// @return {real} The id of the created class descriptor.
/// @example
/// Following code shows two class definition scripts, one defines a class
/// *point* which has properties *x* and *y*, other defines a class *circle*
/// which inherits from the *point* class and has an additional property
/// *radius*.
/// ```gml
/// // point_class()
/// CE_PRAGMA_ONCE;
/// var _point = ce_class_create();
/// ce_class_define_properties(_point, [
///     "x", 0,
///     "y", 0,
/// ]);
///
/// // circle_class()
/// CE_PRAGMA_ONCE;
/// var _circle = ce_class_create(point_class);
/// ce_class_define_property(_circle, "radius", 0);
/// ```
/// @note This script must be called only from class definition scripts in
/// combination with [CE_PRAGMA_ONCE](./CE_PRAGMA_ONCE.html)!
var _baseId = (argument_count > 0) ? argument[0] : noone;
var _final = (argument_count > 1) ? argument[1] : false;
var _class = ce_callstack_get_script(1);

ce_assert(!ds_map_exists(global.__ceClasses, _class),
	"Class " + script_get_name(_class) + " already exists! Did you forget CE_PRAGMA_ONCE?");

if (_baseId != noone)
{
	script_execute(_baseId); // Create inherited class descriptor
	var _base = global.__ceClasses[? _baseId];
	ce_assert(!_base[? "_final"], "Cannot inherit from final class "
		+ script_get_name(_baseId) + "!");
}

var _descriptor = ds_map_create();
_descriptor[? "_base"] = _baseId;
_descriptor[? "_class"] = _class;
_descriptor[? "_final"] = _final;
_descriptor[? "_destructor"] = noone;
global.__ceClasses[? _class] = _descriptor;
return _descriptor;