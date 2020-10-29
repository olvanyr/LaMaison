// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_game_variable(){
		//in witch room do the game start ?
		global.start_param [0] = rForest; //in witchroom ? 
		global.start_param [1] = 87; //at what position on x ?
		global.start_param [2] = 87; //at what position on y ?


		//unified color for when you have to type siomething
		global.typing_color = c_blue;

		global.pause = true;

		global.zoom_max = 4;

		global.tile_size = 8;

		//global.objects_array : { { bidule,truc },  }
		//global.objects_array : { { bidule,btruc },  }
		global.objects_array = noone;
		global.objects = noone;
}

function init_setting_variable(){
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

}