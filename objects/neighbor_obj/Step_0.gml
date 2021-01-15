/// @description Insert description here
// You can write your code in this editor

var protagIsNear= collision_circle(x, y, 35, protag, false, false);
if (protagIsNear && !protag.talkedToNico0){
	protag.talkedToNico0 = true;
	
	dialog_nico0_begin();
	
	protag.inDialog = true;
}
else if (protag.talkedToNico0 && !protag.inDialog){
	instance_destroy(self)	
}