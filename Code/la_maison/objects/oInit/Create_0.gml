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
	background		= 3600
}
//unified color for when you have to type siomething
global.typing_color = c_blue;


global.zoom_max = 4;

global.tile_size = 8;

//global.objects_array : { { bidule,truc },  }
//global.objects_array : { { bidule,btruc },  }
global.objects = noone;
global.objects_array = noone;



//load audio group
if !audio_group_is_loaded(audiogroup_sound)
{
	audio_group_load(audiogroup_sound);
}
if !audio_group_is_loaded(audiogroup_music)
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
global.key_pause				= ord("P");

//dialogue

global.key_menu_left			= vk_left;
global.key_menu_right			= vk_right;
global.key_menu_up				= vk_up;
global.key_menu_down			= vk_down;
global.key_menu_enter			= vk_enter;

load_game();
room_goto_next();