// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function contemplation_dialog_begin(){
	if (pan_camera(room_width / 2, room_height / 2, 1/2, 1/2, DIALOG_CONTEMPLATION, false, 0.25, 0.01)){
		protag.weirdEventOn = false;
		protag.seenTheLights = true;
	}
}