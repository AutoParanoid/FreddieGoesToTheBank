/// @description Insert description here
// You can write your code in this editor

if ((get_timer() - start_timer) > 2000000){
	if (room = The_End0) room_goto(The_End1);
	else if (room = The_End1) room_goto(The_End2);
}

if (room = The_End2 && keyboard_check(vk_anykey)) game_end();