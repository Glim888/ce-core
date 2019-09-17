/// @func ce_state_machine_component()
/// @desc The definition of the state machine component class.
CE_PRAGMA_ONCE;

var _stateMachineComponent = ce_class_create(ce_component_class);
ce_class_define_properties(_stateMachineComponent, [
	// The id of the current state.
	"state", 0,
	// The id of the next created state.
	"stateIdNext", 0,
]);