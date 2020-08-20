draw_self();

var x_dist = x - oPlayer.x;

if (abs(x_dist) < open_distance)
{
	if (closed == "left"		&& sign(x_dist) <= 0)	{draw_sprite_ext(sLock1,0,x,y - half_height,-1,1,0,c_white,1);}
	if (closed == "right"	&& sign(x_dist) >= 0)		{draw_sprite_ext(sLock1,0,x,y - half_height,1,1,0,c_white,1);}
}