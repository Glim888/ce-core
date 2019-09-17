/// @func ce_change_state(stateMachineComponent, state)
/// @desc Sets a new state of a state machine component and triggers the
/// [CE_EV_STATE_CHANGED](./CE_EV_STATE_CHANGED.html) event with
/// `[stateMachineComponent, previousState]` as the event data.
/// @param {real} stateMachineComponent The id of the state machine component
/// instance.
/// @param {real} state The id of the new state.
/// @see ce_set_state
/// @see CE_EV_STATE_CHANGED
var _stateMachineComponent = argument0;
var _statePrev = ce_get_state(_stateMachineComponent);
ce_set_state(_stateMachineComponent, argument1);

with (ce_get_prop(_stateMachineComponent, "instance"))
{
	ce_trigger_event(CE_EV_STATE_CHANGED, [_stateMachineComponent, _statePrev]);
}