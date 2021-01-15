/// @description Insert description here
// You can write your code in this editor

if (bites > 3) bites = 3;

switch (bites) {
	default: sprite_index = spr_sandwich; break;
	case 1: sprite_index = spr_sandwich1; break;
	case 2: sprite_index = spr_sandwich2; break;
	case 3:	sprite_index = spr_sandwich3; break;
}