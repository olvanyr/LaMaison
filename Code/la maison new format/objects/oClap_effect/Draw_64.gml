
var c = c_black;

if (draw == true)
{
	width = display_get_gui_width() + 20;
	height = display_get_gui_height() + 20;
	if (_y < -21)
	{
		draw = false;
		_y = -20;
		spd = 0;
		dir = "pos"
	}
	
	if (_y > height)
	{
		_y = height;
		spd = 0;
		dir = "neg"
		
		if (room_exists(next_room))
		{
			if (instance_exists(oPlayer))
			{
				oPlayer.x = player_x;
				oPlayer.y = player_y;
				if (player_state != "noone") {oPlayer.state = player_state;}
			}
			
			
			room_goto(next_room);
		}
	}
	
	if (dir == "pos")
	{
		spd += acceleration;
	}
	if (dir == "neg")
	{
		spd -= acceleration;
	}
		
	_y += spd;
}

draw_set_alpha(1);
	draw_rectangle_color(-20,-20,width,_y,c,c,c,c,false);
	draw_set_alpha(1);