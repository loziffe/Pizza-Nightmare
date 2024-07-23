sprite_index = sp_pizzaboy
//automaticaly pizza boy
dieType = choose(0, 1)
if dieType == 0
	image_angle = floor(random_range(0, 250 + 1));

xspd = floor(random_range(-10, 10 + 1));
yspd = 0
grav = .3

