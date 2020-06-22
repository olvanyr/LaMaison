

if state == "closing"
{
	draw_set_alpha(timer);
	draw_rectangle_color(-20,-20,display_get_gui_width(),display_get_gui_height(),c,c,c,c,false);
	timer += 0.05;
	
	if timer >= 1
	{
		if room_exists(next_room) room_goto(next_room);
	}
	draw_set_alpha(1);
}
if state == "oppening"
{
	draw_set_alpha(timer);
	draw_rectangle_color(-20,-20,display_get_gui_width(),display_get_gui_height(),c,c,c,c,false);
	timer -= 0.03;
	
	if timer <= 0
	{
		instance_destroy();
	}
	draw_set_alpha(1);
}