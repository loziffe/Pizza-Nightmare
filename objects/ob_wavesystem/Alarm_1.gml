if global.wave <=5
{
	repeat(5)
	{
		enemy = choose(ob_cheeseslime, ob_forkknight)
		randX = floor(random_range(-10, 10 + 1));
		randY = floor(random_range(-10, 0 + 1));
	
		var rand_spawn = instance_find(ob_spawn, irandom(instance_number(ob_spawn) - 1));
		instance_create_depth(rand_spawn.x + randX, rand_spawn.y + randY, 0, enemy)
		check = 0
	}
}

if global.wave <= 8 && global.wave >= 6
{
	repeat(8)
	{
		if !instance_exists(ob_ranchshooter)
		{
			enemy = choose(ob_cheeseslime, ob_forkknight, ob_ranchshooter)
		}
		else
		{
			enemy = choose(ob_cheeseslime, ob_forkknight)
		}
		randX = floor(random_range(-10, 10 + 1));
		randY = floor(random_range(-10, 0 + 1));
	
		var rand_spawn = instance_find(ob_spawn, irandom(instance_number(ob_spawn) - 1));
		instance_create_depth(rand_spawn.x + randX, rand_spawn.y + randY, 0, enemy)
		check = 0
	}
}
if global.wave >= 9 
{
	repeat(12)
	{
		if !instance_exists(ob_ranchshooter)
		{
			enemy = choose(ob_cheeseslime, ob_forkknight, ob_ranchshooter)
		}
		else
		{
			enemy = choose(ob_cheeseslime, ob_forkknight)
		}
		randX = floor(random_range(-10, 10 + 1));
		randY = floor(random_range(-10, 0 + 1));
	
		var rand_spawn = instance_find(ob_spawn, irandom(instance_number(ob_spawn) - 1));
		instance_create_depth(rand_spawn.x + randX, rand_spawn.y + randY, 0, enemy)
		check = 0
	}
}
