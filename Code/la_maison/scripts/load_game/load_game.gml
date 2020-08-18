if (file_exists("sav.json"))
{
	var _wrapper = load_JSON_from_file("sav.json");
	var _list = _wrapper[? "ROOT"]; //= var _list = ds_map_find_value(_wrapper,"ROOT");
	for (var i=0; i < ds_list_size(_list); i++)
	{
	var _map = _list[| i];
		
		window_set_fullscreen(_map[? "fullscreen"]);
		global.fullscreen = _map[? "fullscreen"];
		
		
		if ds_map_exists(_map,"MASTERVOLUME")	global.mastervolume				= _map[? "MASTERVOLUME"];
		if ds_map_exists(_map,"SOUNDSVOLUME")	global.soundsvolume				= _map[? "SOUNDSVOLUME"];
		if ds_map_exists(_map,"MUSICVOLUME")	global.musicvolume				= _map[? "MUSICVOLUME"];
		if ds_map_exists(_map,"up")				global.key_up					= _map[? "up"];
		if ds_map_exists(_map,"left")			global.key_left					= _map[? "left"];
		if ds_map_exists(_map,"right")			global.key_right				= _map[? "right"];
		if ds_map_exists(_map,"down")			global.key_down					= _map[? "down"];
		if ds_map_exists(_map,"jump")			global.key_jump					= _map[? "jump"];
		if ds_map_exists(_map,"action")			global.key_action				= _map[? "action"];
		if ds_map_exists(_map,"menu_up")		global.key_menu_up				= _map[? "menu_up"];
		if ds_map_exists(_map,"menu_down")		global.key_menu_down			= _map[? "menu_down"];
		if ds_map_exists(_map,"enter")			global.key_menu_enter			= _map[? "enter"];
		if ds_map_exists(_map,"objects")		global.objects					= _map[? "objects"]
	}
	ds_map_destroy(_wrapper);
	
	global.objects_array = split_string(global.objects,",");
}

