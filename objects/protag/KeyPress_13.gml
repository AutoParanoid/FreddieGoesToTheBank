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
var conductIsNear = collision_circle(x, y, 35, obj_conductor, false, false);
if (smokerIsNear && !inDialog)
{	
	// call event whenever close to npc0, for npc0 to listen and launch dialog
	event_invoke(event.dialogCall_smoker);
	
	
}
else if (conductIsNear && !inDialog)
{
	// call event whenever close to npc0, for npc0 to listen and launch dialog
	event_invoke(event.dialogCall_conduct);
}

var superGirlIsNear = collision_circle(x, y, 35, SupermarketGirl_obj, false, false);
if (superGirlIsNear && !inDialog)
{
	
	// call event whenever close to npc0, for npc0 to listen and launch dialog
	super_dialog_begin();
	
	// prevent loading dialog while already in dialog
	if (instance_exists(obj_dialog)){
		inDialog = true;
	}
}

var bankTellerIsNear = collision_circle(x, y, 35, BankTeller_obj, false, false);
if (bankTellerIsNear && !inDialog)
{
	if (!protag.heardRamadan2){
		// call event whenever close to npc0, for npc0 to listen and launch dialog
		event_invoke(event.bank1);
	
		// prevent loading dialog while already in dialog
		if (instance_exists(obj_dialog)){
			inDialog = true;
			spokenWithBankTeller = true;
			alreadySpokenWithBankTeller = true;
		}
	}
	else{
		event_invoke(event.bank2);
		
		inDialog = true;
	}
}

var sandwichIsNear = collision_circle(x, y, 35, sandwich_obj, false, false);
if (sandwichIsNear && !inDialog)
{
	sandwich_obj.bites++;
}

var tableIsNear = collision_circle(x, y, 35, obj_table_can_talk, false, false);
if (tableIsNear && !inDialog && !spokenToTable)
{
	
	// call event whenever close to npc0, for npc0 to listen and launch dialog
	hall_dialog_begin();
	
	// prevent loading dialog while already in dialog
	if (instance_exists(obj_dialog)){
		inDialog = true;
	}
	
	obj_table_can_talk.visible = false;
	spokenToTable = true;
}
