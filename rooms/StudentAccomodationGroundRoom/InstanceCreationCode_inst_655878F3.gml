if (!protag.seenTheLights || (protag.heardRamadan1 && !protag.beenToRoomAfterRamadan1)){
	instance_destroy();
}
else if (protag.beenToRoomAfterRamadan1){
	x = 60;
	y = 185;
	image_xscale = 0.02;
}