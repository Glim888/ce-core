/// @func ce_state_machine_component_config()
/// @desc Configuration script of the state machine component.

/// @macro {string} The id of the event triggered when a state machine component
/// state is changed. The event data will contain the id of the previous event.
#macro CE_EV_STATE_CHANGED "ceStateChanged"