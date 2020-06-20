if place_meeting(x,y-1,oPlayer)
{
	layer = layer_get_id("Glowing_walls");
	var red = color_get_red(c);
	var green = color_get_green(c);
	var blue = color_get_blue(c);
	
	rect_c_clear = make_color_rgb(red+25,green+25,blue+25);
}