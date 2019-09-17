event_inherited();

stateMachineComponent = ce_add_component(id, ce_state_machine_component);
aiComponent = noone;

stateIdle = ce_state_create(stateMachineComponent);
stateWalking = ce_state_create(stateMachineComponent);
stateBlocking = ce_state_create(stateMachineComponent);
stateAttacking = ce_state_create(stateMachineComponent);
stateKnockback = ce_state_create(stateMachineComponent);
stateHealing = ce_state_create(stateMachineComponent);

sprShadow = SprCharacterShadow;

/// @var {real} A mapping from state id to sprite index.
sprites = ds_map_create();

/// @var {real} The id of the team on which the character is. Characters on
/// different teams attack each other.
team = 0;

/// @var {real} Maximum number of health.
hpMax = 100;

/// @var {real} Current health.
hp = hpMax;

/// @var {real} Number of health potions.
potions = 0;

/// @var {real} Number of hp that will be recovered over time.
healing = 0;

/// @var {real} Number of pixels the character moves per second.
movementSpeed = 70;

/// @var {real} How much damage the character deals per attack.
attackPower = 10;

/// @var {real} Distance in pixels within which the character can hit its
/// target.
attackRange = 100;

ce_change_state(stateMachineComponent, stateIdle);