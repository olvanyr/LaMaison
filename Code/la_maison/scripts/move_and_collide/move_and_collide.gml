/// @description hsp_and_collide

if place_meeting(x + hsp, y, oWall)
{
	while !place_meeting(x + (sign(hsp)/100), y, oWall)
	{
		x += (sign(hsp)/100);
	}
	hsp = 0;
	walk_speed = 0;
}
x += hsp;


if place_meeting(x, y + vsp, oWall)
{
	while !place_meeting(x, y + sign(vsp), oWall)
	{
		y += sign(vsp);
	}
	vsp = 0;
}


if place_meeting(x, y + vsp, oSlope)
{
	while !place_meeting(x, y + sign(vsp), oSlope)
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;



/*  old way, don't remember why I have done it this way
if !place_meeting(x, y + _yspeed, wall)
{
	y += _yspeed;
}
	
if place_meeting(x, y + _yspeed, wall)
{
	if sign(_yspeed) == 1
	{
		hsp_contact_solid(270, -1);
		grounded = true;
	}
	vsp = 0;
}
*/
