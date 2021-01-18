/// @description Dusk Simulator 2000
// You can write your code in this editor

if (room = CityCentre && protag.beenToBank && !protag.beenToRoom0){
	draw_sprite_stretched(spr_dusk, 0, 0, 0, room_width, room_height);


	if (instance_exists(obj_firefly)){
		with (obj_firefly){
			// lighting glow effect
			var dif = choose(0.01, -0.01, 0);
			glowSize += dif;
			glowSize = clamp(glowSize, 0.7, 0.9);
	
			//gpu_set_blendmode(bm_subtract);	
			//draw_sprite_ext(spr_glow2, 0, x, y, glowSize, glowSize, 0, c_yellow, 1);	
	
			gpu_set_blendmode(bm_add);	
			draw_sprite_ext(spr_glow1, 0, x, y, -glowSize, -glowSize, 0, c_white, 1);	
			gpu_set_blendmode(bm_normal);
		}
	}
}