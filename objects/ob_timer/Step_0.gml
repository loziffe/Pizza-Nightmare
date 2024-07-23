if(alarm[0] == -1) && dead = 0
{
	alarm[0]=50;
}	

if seconds >=60
{
	minutes += 1
	seconds -= 60
}
if seconds <= 0 && minutes <= 0
{
	global.hp = 0
	dead = 1
}
if seconds == -1 && minutes > 0
{
	seconds = 59
	minutes -= 1
}