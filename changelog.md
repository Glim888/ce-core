# Changelog 1.3.2
* Added new data structure "bucket".
* Added new component `ce_event_listener_component` which enables binding of multiple scripts (listeners) to custom events.
* Added new script `ce_instance_exists` which checks whether an instance of a class exists.
* Added new script `ce_get_event_retval` which returns the value returned from a custom event.
* Added new script `ce_snap`.
* **Removed** script `ce_timer_component_create` which was left in the extension by mistake and it is not required for proper functionality of the timer component.