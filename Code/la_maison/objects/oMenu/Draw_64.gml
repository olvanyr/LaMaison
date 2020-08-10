var gwidth = global.view_width, gheight = global.view_height;

display_set_gui_size(gwidth, gheight);

if visible
{
	if page == pause_menu_tab.collectible
	{
		var c = c_black;
		draw_set_alpha(0.6);
		draw_rectangle_color(-10,-10,gwidth+10,gheight+10,c,c,c,c,false);
		draw_set_alpha(1);
		circle_display(gwidth/2,gheight/2,50,global.objects_array,1.7,1.7);
		var scale = 2;
		draw_sprite_ext(sPlayer_idle1,0,gwidth/2,(gheight/2)+((sprite_get_height(sPlayer_idle1)/2)*scale),scale,scale,0,c_white,1);
	}
}