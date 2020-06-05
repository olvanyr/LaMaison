/// @description Insert description here
// You can write your code in this editor

if scale < 1 && life_spawn > timer 
{
	scale += scale_speed; 
}else
{
	if get_timer() mod 10 == 0
	{
		light_xscale = light_xscale + random_range(-0.1,0.1);

		if light_xscale > 1.1 light_xscale = 1.1;
		if light_xscale < 0.9 light_xscale = 0.9;
		light_yscale = light_xscale;
	}
	
	
}

if life_spawn < timer 
{
	scale -= scale_speed;
	if scale < 0 instance_destroy();
}

if dir_change direction += 0.1 else direction -= 0.1;

x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

light_x = x;
light_y = y;

light_xscale = scale;
light_yscale = light_xscale;

timer ++;

