if (global.bullet_time) 
{
	room_speed --;
	if (room_speed < 20)
	{
		room_speed = 20;
	}
}else
{
	room_speed ++;
	if (room_speed > 60)
	{
		room_speed = 60;
	}
}