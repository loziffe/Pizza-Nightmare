if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x)/5;
y += (yTo - y)/5;
if room = mario
	camera_set_view_pos(view_camera[0],x-(camWidth*.55),y-(camHeight*.55));
else
	camera_set_view_pos(view_camera[0],x-(camWidth*.55),y-(camHeight*.55));