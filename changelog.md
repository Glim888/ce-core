# Changelog 1.3.2
* Added shorthand scripts for getting, modifying and saving an object property value:
  * `ce_add_prop` adds a value to a property and returns the result,
  * `ce_dec_prop` decrements a property and returns the result,
  * `ce_div_prop` divides a property by given value and returns the result,
  * `ce_inc_prop` increments a property and returns the result,
  * `ce_mul_prop` multiplies a property by given value and returns the result,
  * `ce_pdec_prop` decrements a property and returns the original value,
  * `ce_pinc_prop` increments a property and returns the original value,
  * `ce_sub_prop` subtracts a value from a property and returns the result.
* Added new data structure "bucket" which is a map that holds values of same key in a list.
* Added new component `ce_event_listener_component` which enables binding of multiple scripts (listeners) to custom events.
* Added new script `ce_instance_exists` which checks whether an instance of a class exists.
* Added new script `ce_get_event_retval` which returns the value returned from a custom event.
* Added new script `ce_snap` which floors value to multiples of step.
* Added new scripts `ce_array_get`, `ce_ds_list_get`, `ce_ds_map_get` for retrieving value at given index of an array/list/map respectively with possibility to return a default value when the index does not exist.
* Added new script `ce_object_is` which returns true if object A is or inherits from object B.
* **Removed** script `ce_timer_component_create` which was left in the extension by mistake and it is not required for proper functionality of the timer component.