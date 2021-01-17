// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@arg targetX
///@arg targetY
///@arg width_factor
///@arg height_factor
///@arg targetDialog

function pan_camera(){
	if (instance_exists(obj_Camera)){
		with(obj_Camera){
			
			if (!panning){			
				var orig_width = width;
				var orig_height = height;
				
				targetX = argument0;
				targetY = argument1;
				targetWidth = orig_width / argument2;
				targetHeight = orig_height / argument3;
				panned = false;
				panning = true;
			
			}
			if ((xTo <= targetX + 1) && (xTo >= targetX -1)){
				dialog_begin(argument4);
				protag.inDialog = true;
				panning = false;
				panned = true;
			}
			else
			{
				event_perform_object(obj_Camera, ev_step, 0);
				pan_camera(argument0, argument1, argument2, argument3, argument4);
			}
		}
	}
}