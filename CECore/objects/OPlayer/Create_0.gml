event_inherited();

sprites[? stateIdle] = SprPlayerIdle;
sprites[? stateWalking] = SprPlayerWalk;
sprites[? stateBlocking] = SprPlayerBlock;
sprites[? stateAttacking] = SprPlayerAttack;
sprites[? stateKnockback] = SprPlayerKnockback;
sprites[? stateHealing] = SprPlayerHeal;

movementSpeed = 300;

attackPower = 20;

/// @var {real}
playerNumber = instance_number(object_index);