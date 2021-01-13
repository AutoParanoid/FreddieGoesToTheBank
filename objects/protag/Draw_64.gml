/// @description Insert description here
// You can write your code in this editor

if (spokenWithBankTeller && !inBank){
	inDialog = true;
	draw_sprite(spr_go_home, 0, 320, 90);
	if (keyboard_check(vk_enter)){
		spokenWithBankTeller = false;
		inDialog = false;
	}
}