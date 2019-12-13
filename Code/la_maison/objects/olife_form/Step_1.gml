if position_meeting(x,y + 1,oWall) || position_meeting(x,y + 1,oSlope) || position_meeting(x + 1,y + 1,oSlope) || position_meeting(x - 1,y + 1,oSlope)
{
	grounded = true;
}else grounded = false;


