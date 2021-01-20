
if (!protag.seenTheLights || (protag.heardRamadan1 && !protag.beenToRoomAfterRamadan1)){
	instance_destroy();
}
else if (protag.beenToRoomAfterRamadan1){
	image_xscale = -0.02;
	init_ramadan2_dialog();
}
else{
	init_dialog_ramadan1();
}