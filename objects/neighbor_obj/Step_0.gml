/// @description Insert description here
// You can write your code in this editor

var protagIsNear= collision_circle(x, y, 35, protag, false, false);
if (protagIsNear && !talkedToProtag){
	talkedToProtag = true;
	
	dialog_nico0_begin();
	
	protag.inDialog = true;
}
else if (talkedToProtag && !protag.inDialog){
	instance_destroy(self)	
}