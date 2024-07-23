// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerhurt(){
	with ob_player
	{
		audio_play_sound(sn_pephurt,0,false)
		inv = 1
		global.hp -= 1
		image_alpha = .5
		alarm_set(0, 150)
	}
}