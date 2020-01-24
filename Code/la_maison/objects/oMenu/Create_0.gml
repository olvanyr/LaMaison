toggle = false; // use to make the erase save funtion

save_setting = false;

// some constante
down_up_sound = aDown_up_menu;
inputting_sound = aInputting_menu;


load_settings();

// set Enum for the menu

enum menu_page
{
	start,
	main,
	settings,
	audio,
	controls,
	controls_keyboard,
	slots,
	height //so I now how many number of ellement I have
}

enum menu_element
{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	image,
	slots,
	input
}

//creat the "pages" of the menu and store them into ds_grid

ds_menu_main = create_menu_page(
	["PLAY",		menu_element.page_transfer,	menu_page.slots], 
	["SETTINGS",	menu_element.page_transfer,	menu_page.settings],
);


page = 0;
menu_pages = [ds_menu_main];

var i = 0, array_len = array_length_1d(menu_pages);

repeat(array_len)
{
	menu_option[i] = 0;
	i++;
}

inputting = false;

any_pressed = 0;



