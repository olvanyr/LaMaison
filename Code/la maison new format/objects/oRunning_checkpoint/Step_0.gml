if (instance_exists(oPlayer))
{
	if (place_meeting(x,y,oPlayer) && oPlayer.running_checkpoint != self)
	{
		oPlayer.running_checkpoint = self;
	}
}