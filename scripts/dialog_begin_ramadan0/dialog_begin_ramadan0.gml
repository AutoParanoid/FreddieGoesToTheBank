// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialog_begin_ramadan0(){
	
	if (instance_exists(obj_Camera)){
		with(obj_Camera){
			
			if (!panning){
				var orig_width = width;
				var orig_height = height;
			
				targetX = neighbor_obj.x + 20;
				targetY = neighbor_obj.y + 20;
				targetWidth = orig_width / 4;
				targetHeight = orig_height / 4;
				panning = true;
			}
			if (xTo <= targetX + 1){
				dialog_begin(DIALOG_RAMADAN0_0);
				protag.inDialog = true;
				panning = false;
				panned = true;
			}
		}
	}
	
	
}