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

//in witch room do the game start ?
global.start_param [0] = room0; //in witchroom ? 
global.start_param [1] = 87; //at what position on x ?
global.start_param [2] = 87; //at what position on y ?


//unified color for when you have to type siomething
global.typing_color = c_blue;

global.pause = false;

global.zoom_max = 4;

global.tile_size = 8;

//global.objects_array : { { bidule,truc },  }
//global.objects_array : { { bidule,btruc },  }
global.objects_array = noone;
global.objects = noone;



//load audio group
if (!audio_group_is_loaded(audiogroup_sound))
{
	audio_group_load(audiogroup_sound);
}
if (!audio_group_is_loaded(audiogroup_music))
{
	audio_group_load(audiogroup_music);
}

//fullscreen
global.fullscreen = window_get_fullscreen();

// volume
global.mastervolume = 1;
global.soundsvolume = 1;
global.musicvolume = 1;

// control
//game
global.key_left					= ord("Q");
global.key_right				= ord("D");
global.key_up					= ord("Z");
global.key_down					= ord("S");
global.key_jump					= vk_space;
global.key_action				= ord("A");
global.key_pause				= vk_escape;

//dialogue

global.key_menu_left			= vk_left;
global.key_menu_right			= vk_right;
global.key_menu_up				= vk_up;
global.key_menu_down			= vk_down;
global.key_menu_enter			= vk_enter;

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