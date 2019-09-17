ce_init_components();

timerComponent = ce_add_component(id, ce_timer_component);
depthSortComponent = ce_add_component(id, ce_depth_sort_component);

/// @var {real} Sprite used as a shadow of the object. Use `noone` for no shadow.
sprShadow = noone;

/// @var {real} Offset from the ground.
z = 0;

/// @var {real} Velocity on the z axis.
zSpeed = 0;

/// @var {bool} True if the object is flying in air.
inAir = false;