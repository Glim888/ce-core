/// @func _ce_iter_restore_context()
if (ds_stack_size(global.__ceIterStack) > 0)
{
	var _context = ds_stack_pop(global.__ceIterStack);
	global.__ceIterStruct = _context[0];
	global.__ceIterType = _context[1];
	global.__ceIterCounter = _context[2];
	global.__ceIterIndex = _context[3];
	global.__ceIterIndexPrev = _context[4];
}