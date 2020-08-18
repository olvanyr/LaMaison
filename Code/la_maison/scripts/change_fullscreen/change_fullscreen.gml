if window_get_fullscreen()
{
	window_set_fullscreen(false);
	global.fullscreen = false;
}else
{
	window_set_fullscreen(true);
	window_set_position((window_get_width()/2),(window_get_height()/2));
	global.fullscreen = true;
}
