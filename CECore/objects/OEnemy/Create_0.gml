event_inherited();

aiComponent = ce_add_component(id, ai_component);

sprites[? stateIdle] = SprEnemyIdle;
sprites[? stateWalking] = SprEnemyWalk;
sprites[? stateBlocking] = SprEnemyBlock;
sprites[? stateAttacking] = SprEnemyAttack;
sprites[? stateKnockback] = SprEnemyKnockback;
sprites[? stateHealing] = SprEnemyHeal;

team = 1;