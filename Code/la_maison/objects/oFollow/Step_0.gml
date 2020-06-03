if instance_exists(oPlayer)
{
	if abs(x - oPlayer.x) < fov
	{
		oCamera.follow = self;
	}else oCamera.follow = oPlayer;
}