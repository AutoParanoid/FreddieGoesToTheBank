/// @description

x += (xTo - x) / 25;
y += (yTo - y) / 25;

if (follow != noone)
{
	// camera follows protag as he moves, rather than waiting for it to reach the border of the screen
	xTo = clamp(follow.x, width / 2, room_width - (width / 2));
	yTo = clamp(follow.y, height / 2, room_height - (height / 2));
}

var vm = matrix_build_lookat(xTo, yTo, -10, xTo, yTo, 0, 0, 1, 0);
camera_set_view_mat(camera_id, vm);

if (panning && !panned){
	follow = noone;
	
	xTo = lerp(x, targetX, 0.8);
	yTo = lerp(y, targetY, 0.8);
				
	width = lerp(width, targetWidth, 0.02);
	height = lerp(height, targetHeight, 0.02);
		
	var pm = matrix_build_projection_ortho(width, height, 1, 10000);
	camera_set_proj_mat(camera_id, pm);
	view_camera[0] = camera_id;
}