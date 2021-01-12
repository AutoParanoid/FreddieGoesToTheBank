/// @description Insert description here
// You can write your code in this editor

var protagIsNear= collision_circle(x, y, 55, protag, false, false);
if (protagIsNear && !talkedToProtag){
	talkedToProtag = true;
	
	event_invoke(event.dialogCall_coffeOut);
	
	protag.inDialog = true;
}