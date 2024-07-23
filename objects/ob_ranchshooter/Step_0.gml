if playerDead == 0
{
	image_xscale = sign(ob_player.x - x);
}
if instance_exists(ob_sightbox)
{
	sightbox.image_xscale = image_xscale
	sightbox.x = x 
	sightbox.y = y
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
	onFloor = 1
}
y = y + yspd

 if place_meeting(x, y+1, ob_wall)
 {
	 onFloor= 0
 }

 if hp <= 0 
	instance_destroy()
