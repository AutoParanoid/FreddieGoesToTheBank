/// @description Insert description here
// You can write your code in this editor

if (displayedGetOut && !displayedTab){
	
	draw_9slice(spr_dialog_frame, 0, 320, 90, 720, 516, 64, 64);
	if (keyboard_check(vk_enter)){
		displayedTab = true;
	}
}

if (spokenWithBankTeller && room = CityCentre && !displayedTab){
	inDialog = true;
	
	draw_sprite(spr_go_home, 0, 320, 90);
	if (keyboard_check_released(vk_enter)){
		spokenWithBankTeller = false;
		inDialog = false;
		displayedGetOut = true;
	}
}