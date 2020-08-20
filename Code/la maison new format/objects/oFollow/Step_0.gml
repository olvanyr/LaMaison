if (instance_exists(oPlayer))
{
	if (distance_to_object(oPlayer) < fov)
	{
		oCamera.follow = self;
	}else 
	{
		oCamera.follow = oPlayer;
	}
}