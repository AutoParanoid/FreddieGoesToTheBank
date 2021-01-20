/// @description Insert description here
// You can write your code in this editor

var protagIsNear= collision_circle(x, y, 35, protag, false, false);
if (room = StudentAccomodationTopRoom && protagIsNear && !protag.talkedToNico0){
	protag.talkedToNico0 = true;
	
	dialog_nico0_begin();
	
	protag.inDialog = true;
}
else if (room = StudentAccomodationTopRoom && protag.talkedToNico0 && !protag.inDialog && x != updatedX0){
	instance_destroy();
}
else if (room = StudentAccomodationTopRoom && x == updatedX0 && ((protag.x - neighbor_obj.x) < 200) && !protag.heardRamadan0 && !protag.inDialog){
	dialog_begin_ramadan0();
	
	protag.inDialog = true;
}
else if (room = StudentAccomodationTopRoom && protag.heardRamadan0){
	instance_destroy();	
}
else if (room = StudentAccomodationGroundRoom && !protag.heardRamadan1 && ((protag.x - neighbor_obj.x) < 200) && !protag.inDialog){
	ramadan1_dialog_begin();
	
	protag.inDialog = true;
}
else if (room = StudentAccomodationGroundRoom && !protag.heardRamadan2 && protag.heardRamadan1  && ((protag.x - neighbor_obj.x) < 200) && !protag.inDialog && protag.beenToRoomAfterRamadan1){
	ramadan2_dialog_begin();
	
	protag.inDialog = true;
}