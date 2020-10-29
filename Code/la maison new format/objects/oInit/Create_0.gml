enum depth_layer
{
	sky				= -2000,
	glowing_walls	= -1700,
	light			= -1500,
	effects			= -1000,
	typing			= - 500,
	player			= 0,
	scarf			= 50,
	shadows			= 100,
	doors			= 120,
	tiles			= 150,
	grass_back		= 170,
	walls			= 200,
	assets			= 1000,
	lamppost		= 1200,
	bush			= 1300,
	tree			= 1500,
	wallpaper		= 3000,
	background		= 3600
}

init_game_variable();

init_setting_variable();

//load audio group
if (!audio_group_is_loaded(audiogroup_sound))
{
	audio_group_load(audiogroup_sound);
}
if (!audio_group_is_loaded(audiogroup_music))
{
	audio_group_load(audiogroup_music);
}


load_game();


set_layer("Effects",depth_layer.effects);

if (!instance_exists(oCamera))
{
	cam = instance_create_layer(x,y,"Instances",oCamera);
}



//set up camera
cam = view_camera[0];

global.view_width = camera_get_view_width(cam);
global.view_height = camera_get_view_height(cam);

with instance_create_layer(0,0,"Effects",oMenu)
{
	global.pause = true;
}