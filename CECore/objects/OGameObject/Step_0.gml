ce_call_components("onUpdate");

EXIT_IF_PAUSED;

ce_sort_by_depth(depthSortComponent, -y);

// Gravity
z += ce_per_second(zSpeed);
zSpeed -= ce_per_second(500);

if (z > 0)
{
	inAir = true;
}
else if (z < 0)
{
	z = 0;
	zSpeed = 0;
	if (inAir)
	{
		inAir = false;
		ce_trigger_event("landed");
	}
}