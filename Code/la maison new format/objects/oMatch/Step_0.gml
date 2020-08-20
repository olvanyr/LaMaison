if (instance_exists(oPlayer))
{
	if (oPlayer.state == "lighting")
	{
		visible = false;
	}else 
	{
		visible = true;
	}


	x = oPlayer.x;
	y = oPlayer.y - offset;

	image_xscale = oPlayer.image_xscale;

	if (oPlayer.sprite_index == sPlayer_walk1)
	{
		var index = round(oPlayer.image_index);
		if index == 0 offset = 0;
		if index == 1 offset = -1;
		if index == 2 offset = 0;
		if index == 3 offset = 1;
		if index == 4 offset = 0;
		if index == 5 offset = -1;
		if index == 6 offset = 0;
		if index == 7 offset = 1;
	}
}