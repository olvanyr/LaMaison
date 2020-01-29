
if keyboard_check_pressed(ord("A"))
{
	draw = true;
}


if draw == true
{
	
	if _y > height/2
	{
		spd -= acceleration;
	}else 
	{
		spd += acceleration;
	}
	_y += spd;
	
	var c = c_black;
	draw_rectangle_color(-20,-20,width,_y,c,c,c,c,false);
	
	if _y >= height 
	{
		draw = false;
		_y = 0;
		spd = 0;
	}
}