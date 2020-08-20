
if (counter = 1)
{
	x = creator.x;
	y = creator.y - 20;
}
if (counter = 2)
{
	x = creator.x-5;
	y = creator.y - 25; 
}
if (counter = 3)
{
	x = creator.x+5;
	y = creator.y - 25;
}
if (counter = 4)
{
	x = creator.x;
	y = creator.y - 30;
}

if (creator != noone)
{
	if (counter == creator.jump)
	{
		image_speed = 1;
	}

	if (animation_hit_frame(image_number-1)) 
	{
		image_index = image_number-1;
		image_speed = 0;
	}

	if (creator.grounded)
	{
		image_speed = 0;
		image_index = 0;
	}
}else
{

	if (place_meeting(x,y,oPlayer))
	{
		with (oPlayer)
		{
			number_of_jump += 1;
			instance_destroy(other);
		}
	}

}