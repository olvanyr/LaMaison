// some constante
down_up_sound = noone;
inputting_sound = noone;
face_one = noone;
face_two = noone;

// set Enum for the menu

enum menu_page
{
	main,
	a,
	b,
	height //so I now how many number of ellement I have
}

enum menu_element
{
	script_runner,
	text,
	page_transfer
}


//creat the "pages" of the menu and store them into ds_grid



ds_menu_main = create_menu_page(
	["Are you done with your gender shit ?",				menu_element.text,			sPlayer_neutral, sDad_neutral], 
	["Never",												menu_element.page_transfer,	menu_page.a], 
	["NEVER BUT IN CAPS LOCK",													menu_element.page_transfer,	menu_page.b],
);	

ds_menu_a = create_menu_page(
	["Nice ! and now ?  ",			menu_element.text,	sCharacter1_happy, sCharacter2_happy], 
	["I don't know",				menu_element.page_transfer,	menu_page.main],
	["not very well",				menu_element.page_transfer,	menu_page.b], 
	
);
ds_menu_b = create_menu_page(
	["Oh noooo ! and now?",			menu_element.text,	sCharacter1_nothappy, sCharacter2_nothappy], 
	["nice",						menu_element.page_transfer,	menu_page.a], 
	["I don't know",				menu_element.page_transfer,	menu_page.main],

);



page = 0;
menu_pages = [ds_menu_main,ds_menu_a,ds_menu_b];
var i = 0, array_len = array_length_1d(menu_pages);

repeat(array_len)
{
	menu_option[i] = 0;
	i++;
}

inputting = false;

