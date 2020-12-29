// talk to NPC
var infoIsNear = collision_circle(x, y, 35, obj_info, false, false);
if (infoIsNear && !inDialog)
{
	// remove "Press Enter"sign
	instance_destroy(press_Enter);
	
	// call event whenever close to npc0, for npc0 to listen and launch dialog
	event_invoke(event.dialogCall_info);
	
	// prevent loading dialog while already in dialog
	inDialog = true;
}

var smokerIsNear = collision_circle(x, y, 35, npc1, false, false);
if (smokerIsNear && !inDialog)
{
	
	// call event whenever close to npc0, for npc0 to listen and launch dialog
	event_invoke(event.dialogCall_smoker);
	
	// prevent loading dialog while already in dialog
	inDialog = true;
}

var conductIsNear = collision_circle(x, y, 35, obj_conductor, false, false);
if (conductIsNear && !inDialog)
{
	
	// call event whenever close to npc0, for npc0 to listen and launch dialog
	event_invoke(event.dialogCall_conduct);
	
	// prevent loading dialog while already in dialog
	inDialog = true;
}


