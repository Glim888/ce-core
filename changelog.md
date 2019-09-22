# Changelog 1.3.2
* Added shorthand scripts for getting, modifying and saving an object property value:
  * `ce_add_prop`
  * `ce_dec_prop`
  * `ce_div_prop`
  * `ce_inc_prop`
  * `ce_mul_prop`
  * `ce_pdec_prop`
  * `ce_pinc_prop`
  * `ce_sub_prop`
* Added new data structure "bucket".
* Added new component `ce_event_listener_component` which enables binding of multiple scripts (listeners) to custom events.
* Added new script `ce_instance_exists` which checks whether an instance of a class exists.
* Added new script `ce_get_event_retval` which returns the value returned from a custom event.
* Added new script `ce_snap`.
* Added new scripts `ce_array_get`, `ce_ds_list_get`, `ce_ds_map_get`.
* Added new script `ce_object_is`.
* **Removed** script `ce_timer_component_create` which was left in the extension by mistake and it is not required for proper functionality of the timer component.