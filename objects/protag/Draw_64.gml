/// @description Insert description here
// You can write your code in this editor

if (displayedGetOut && !displayedTab){
	
	draw_9slice(spr_dialog_frame, 0, 320, 290, 720, 116, 64, 64);
	draw_text_ext_transformed(400, 310, "You can now press tab to access         the Bank Form menu.", 20, 300, 2, 2, 0);
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

if (displayIngSoc){
	draw_sprite_ext(spr_war_is_peace, 0, 100, 100, 1, 1, 0, c_white, 1);
	displayIngSoc = false;	
}

draw_text(10, 10, "score:");
draw_text(40, 30, protag_score);
