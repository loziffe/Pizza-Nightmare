if global.enemies <= 0
{	
	check = 1
	global.wave += 1
	if instance_exists(ob_timer)	
	{
		ob_timer.seconds += 30
	}
	alarm_set(1, 10)

}

