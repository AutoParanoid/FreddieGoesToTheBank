// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ramadan0_dialog_BSN(){
	dialog_begin(DIALOG_RAMADAN0_12);
	
	protag.heardRamadan0 = true;
	obj_dialog.left_facing = !obj_dialog.left_facing;
}