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