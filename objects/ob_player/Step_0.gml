key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right)
key_jump  = keyboard_check_pressed(ord("Z"))
key_shoot = keyboard_check_pressed(ord("C"))
key_run = keyboard_check(ord("X"))

var move = key_right - key_left

if state == "normal"
{	
	xspd = move * movespd
}
yspd = yspd + grav

if place_meeting(x+xspd, y, ob_wall)

{
	while (!place_meeting(x + sign(xspd), y, ob_wall))
	{
		x = x + sign(xspd)
	}
	xspd = 0;
}
x = x + xspd

if place_meeting(x, y+yspd, ob_wall)
{
	while (!place_meeting(x, y + sign(yspd), ob_wall))
	{
		y = y + sign(yspd)
	}
	yspd = 0;
	
}
y = y + yspd

if place_meeting(x, y+1, ob_wall) && (key_jump) && state = "normal"
{
	yspd = -15
	
}
if place_meeting(x,y,ob_ranchbullet) && inv == 0
{
	scr_playerhurt()
}

if key_shoot && state == "normal"
{
	state = "shooting"
	xspd = 0
	instance_create_depth(x, y, 0, ob_bullet)
	audio_play_sound(sn_pistolshot, 5, false)
	sprite_index = sp_pepgunshoot
	image_index = 1
}

if place_meeting(x, y, ob_hurthitbox) && inv == 0
{
	scr_playerhurt()
}
if global.hp <= 0 && state != "dying"
{
	state= "dying"
	xspd = 0
	audio_stop_all()
	audio_play_sound(sn_gameover,0,false)
	sprite_index = sp_pepdying
	image_index = 0
	
	
}
if key_run && state == "normal" || key_run && state == "running"
{
	state = "running"
	if start == 0
		if image_xscale == 1
		{	
			xspd = 3
			start = 1
		}	
		else
		{
			xspd = -3
			start = 1
		}	
	if image_xscale == 1
		xspd += .1
	else 
		xspd -= .1
		
}
if keyboard_check_released(ord("X"))
{
	do
	{
		if image_xscale == 1
			xspd -= .1
		else 
			xspd += .1
	} until xspd <= 0
	
	state = "normal"
}
// Animation

if (!place_meeting(x, y+1, ob_wall)) && state == "normal" 
{
	
	sprite_index = sp_pepgunjumpprep
	
		

	//add jump sprite here

}
else
{
	if (xspd == 0) && state == "normal"
		sprite_index = sp_pepgunidle
	if (xspd !=0) && state == "normal"
		sprite_index = sp_pepgunwalk
}		
if (xspd != 0) image_xscale = sign(xspd)