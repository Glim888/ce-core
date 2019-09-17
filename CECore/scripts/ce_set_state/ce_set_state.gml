/// @func ce_set_state(stateMachineComponent, state)
/// @desc Sets state of a state machine *without* triggering the
/// [CE_EV_STATE_CHANGED](./CE_EV_STATE_CHANGED.html) event.
/// @param {real} stateMachineComponent The id the state machine component
/// instance.
/// @param {real} state The id of the new state.
/// @see ce_change_state
/// @see CE_EV_STATE_CHANGED
gml_pragma("forceinline");
ce_set_prop(argument0, "state", argument1);