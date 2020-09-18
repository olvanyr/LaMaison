if (place_meeting(x,y,oPlayer))
{
	if (global.objects == noone)
	{
		global.objects = string(name);
	}else
	{
		global.objects = global.objects + "," + string(name);
	}
	
	global.objects_array = split_string(global.objects,",");
	save_game();
	instance_destroy();
}

y = anchorY + sin(timer*frequency)*amplitude;
timer++;
if (timer == 630){timer = 1;}
