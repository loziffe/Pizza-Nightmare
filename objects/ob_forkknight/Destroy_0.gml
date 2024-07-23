var dead = instance_create_depth(x, y, 10, ob_baddiedead)
dead.sprite_index = sp_forknight_dead
audio_play_sound(sn_killenemy, 10, false)
global.enemies -= 1
with hurtbox
{
	instance_destroy()
}
