
enum pause_menu_tab
{
	collectible,
	settings,
	length 
};

tab = 1;
text_color = c_white;

#region // menu
// some constante
down_up_sound = noone;
inputting_sound = noone;
face_one = noone;
face_two = noone;
circle_perimeter = 50;

//typing constante
text_part = "";
text = "";
completed = false;

// set Enum for the menu

enum pause_menu_page
{
	intro,
	main,
	sound,
	input,
	restart,
	restart2,
	reset,
	height //so I now how many number of ellement I have
}

enum pause_menu_element
{
	script_runner,
	toggle,
	slider,
	input,
	page_transfer
}

//creat the "pages" of the menu and store them into ds_grid

ds_menu_intro = create_menu_page(
	["START",				pause_menu_element.script_runner,	start_game],
	["SETTINGS",			pause_menu_element.page_transfer,	pause_menu_page.main				 ],
	["RESET GAME",			pause_menu_element.page_transfer,	pause_menu_page.restart				 ],
	["EXIT",				pause_menu_element.script_runner,	game_end						     ],
);	


if (intro_menu) {
	
ds_menu_main = create_menu_page(
	["FULLSCREEN",			pause_menu_element.toggle,			change_fullscreen,		global.fullscreen,		["ON", "OFF"]],
	["SOUND",				pause_menu_element.page_transfer,	pause_menu_page.sound],
	["CONTROL",				pause_menu_element.page_transfer,	pause_menu_page.input],
	["RESET SETTINGS",	pause_menu_element.page_transfer,	pause_menu_page.reset],
	["BACK",				pause_menu_element.page_transfer,	pause_menu_page.intro],
);	

}else{
ds_menu_main = create_menu_page(
	["FULLSCREEN",			pause_menu_element.toggle,		change_fullscreen,		global.fullscreen,		["ON", "OFF"]],
	["SOUND",				pause_menu_element.page_transfer,	pause_menu_page.sound],
	["CONTROL",				pause_menu_element.page_transfer,	pause_menu_page.input],
	["RESET SETTINGS",	pause_menu_element.page_transfer,	pause_menu_page.reset],
	["EXIT GAME",				pause_menu_element.script_runner,	game_end						     ],
);		

};

ds_menu_audio = create_menu_page(
	["MASTER",		pause_menu_element.slider,		change_volume,			"mastervolume",				global.mastervolume,		[0,1]],
	["SOUNDS",		pause_menu_element.slider,		change_volume,			"soundsvolume",				global.soundsvolume,		[0,1]],
	["MUSIC",		pause_menu_element.slider,		change_volume,			"musicvolume",				global.musicvolume,			[0,1]],
	["BACK",		pause_menu_element.page_transfer,	pause_menu_page.main],
);

ds_menu_controls = create_menu_page(
	["UP",				pause_menu_element.input,			"key_up",				global.key_up],
	["LEFT",			pause_menu_element.input,			"key_left",				global.key_left],
	["RIGHT",			pause_menu_element.input,			"key_right",			global.key_right],
	["DOWN",			pause_menu_element.input,			"key_down",				global.key_down],
	["JUMP",			pause_menu_element.input,			"key_jump",				global.key_jump],

	["PAUSE",			pause_menu_element.input,			"key_pause",			global.key_pause],
	
	["BACK",			pause_menu_element.page_transfer,	pause_menu_page.main],
);

ds_menu_restart = create_menu_page(
	["NO",				pause_menu_element.page_transfer,	pause_menu_page.intro],
	["YES",				pause_menu_element.page_transfer,	pause_menu_page.restart2],
);	
ds_menu_reset = create_menu_page(
	["NO",				pause_menu_element.page_transfer,	pause_menu_page.reset],
	["YES",				pause_menu_element.script_runner,	reset_settings],
);	
ds_menu_restart2 = create_menu_page(
	["NO",							pause_menu_element.page_transfer,	pause_menu_page.intro],
	["YES, DELET MY SAVE",			pause_menu_element.script_runner,	reset_game						     ],
);

if (intro_menu) {page = 0}else{page = 1};


menu_pages = [ds_menu_intro,ds_menu_main,ds_menu_audio,ds_menu_controls,ds_menu_restart,ds_menu_restart2,ds_menu_reset];
var i = 0, array_len = array_length_1d(menu_pages);

repeat(array_len)
{
	menu_option[i] = 0;
	i++;
}

inputting = false;
toggle = false;

any_pressed = 0;

last_input = 0;

#endregion
