/// @func ai_component()
/// @desc The definition of the AI component class.
CE_PRAGMA_ONCE;

var _aiComponent = ce_class_create(ce_component_class);
ce_class_define_properties(_aiComponent, [
	// The id of the instance which the AI is attacking or `noone`.
	"target", noone,
	// The id of the timer used for attacking or `noone`.
	"timerAttack", noone,
	// The id of the timer used for blocking incoming attacks or `noone`.
	"timerBlock", noone,
	"onCustomEvent", ai_component_on_custom_event,
	"onUpdate", ai_component_on_update,
]);
ce_class_define_destructor(_aiComponent, ai_component_delete);