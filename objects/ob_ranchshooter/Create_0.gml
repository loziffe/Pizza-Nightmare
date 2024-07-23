xspd = 0
yspd = 0
grav = 1
hp = 2
alarm_set(1, 10)
onFloor = 0
playerDead = 0
stop = 0
sightbox = instance_create_depth(x,y,0,ob_sightbox)
with sightbox 
{
	crID = other.id
}
