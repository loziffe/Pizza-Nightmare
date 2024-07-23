// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerdead(){
	with ob_player
	{
		state = "dead"
		dead = instance_create_depth(x, y, 20, ob_baddiedead)
		dead.sprite_index = sp_pepdeath
		instance_create_depth(x,y, 0, ob_death)
		ob_camera.follow = noone
		if instance_exists(ob_ranchshooter)
		{
			ob_ranchshooter.playerDead = 1
		}
		instance_destroy()
		
	}
}