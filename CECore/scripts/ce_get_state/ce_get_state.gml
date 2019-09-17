/// @func ce_get_state(stateMachineComponent)
/// @desc Retrieves the current state of a state machine component.
/// @param {real} stateMachineComponent The id of the state machine component
/// instance.
/// @return {real} The id of the current state of the state machine component.
gml_pragma("forceinline");
return ce_get_prop(argument0, "state");