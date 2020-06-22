if state == "oppening"
{timer = 1;}
if state == "closing"
{timer = 0;}

c = c_black;

next_room = noone;

draw_rectangle_color(0,0,window_get_width(),window_get_height(),c,c,c,c,false);