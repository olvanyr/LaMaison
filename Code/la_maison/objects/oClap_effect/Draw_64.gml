
if keyboard_check_pressed(ord("A"))
{
	draw = true;
}


if draw == true
{
	if _y < -21
	{
		draw = false;
		_y = 20;
		spd = 0;
		dir = "pos"
	}
	if _y > height
	{
		spd = 0;
		dir = "neg"
		
		if room_exists(next_room)
		{
			room_goto(next_room);
		}
	}
	
	if dir == "pos"
	{
		spd += acceleration;
	}
	if dir == "neg"
	{
		spd -= acceleration;
	}
		
	_y += spd;
	
	var c = c_black;
	draw_rectangle_color(-20,-20,width,_y,c,c,c,c,false);
	

}

//show_debug_message("_y" + string(_y));