/// @func ce_state_create(stateMachineComponent)
/// @desc Creates a new state of a state machine component.
/// @param {real} stateMachineComponent The id of the state machine component
/// instance.
/// @return {real} The id of the created state.
var _stateMachineComponent = argument0;
var _id = ce_get_prop(_stateMachineComponent, "stateIdNext");
ce_set_prop(_stateMachineComponent, "stateIdNext", _id + 1);
return _id;