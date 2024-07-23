sightbox.stop = 1
audio_play_sound(sn_ranchshoot,10,false)
sprite_index = sp_ranchshoot
image_index = 1
bullet = instance_create_depth(x,y,0,ob_ranchbullet)

if image_xscale = 1
{
	bullet.dir = 1
}
else 
{
	bullet.dir = -1
	bullet.image_xscale = -1

}



