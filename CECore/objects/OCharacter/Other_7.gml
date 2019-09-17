switch (ce_get_state(stateMachineComponent))
{
case stateAttacking:
	character_attack();
	ce_change_state(stateMachineComponent, stateIdle);
	break;

case stateHealing:
	ce_change_state(stateMachineComponent, stateIdle);
	break;
}