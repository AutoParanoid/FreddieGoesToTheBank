// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pan_to_player(){
	protag.heardRamadan0 = true;
	
	pan_camera(protag.x, protag.y, 2, 2, DIALOG_RAMADAN0_11, true);
	
	obj_dialog.left_facing = !obj_dialog.left_facing;
	
	obj_Camera.follow = self;
}