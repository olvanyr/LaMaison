enum pause_menu_tab
{
	collectible,
	length 
};

page = 0;


#region // menu
// some constante
down_up_sound = noone;
inputting_sound = noone;
face_one = noone;
face_two = noone;

//typing constante
text_part = "";
text = "";
completed = false;

// set Enum for the menu

enum pause_menu_page
{
	main,
	a,
	b,
	height //so I now how many number of ellement I have
}

enum pause_menu_element
{
	script_runner,
	text,
	typing,
	page_transfer
}

//creat the "pages" of the menu and store them into ds_grid



ds_menu_main = create_menu_page(
	["Are you done with your gender shit ?",					pause_menu_element.text,			sPlayer_neutral, sDad_neutral], 
	["je pense pas non",										pause_menu_element.typing,		pause_menu_page.a,people.dad,3,people.mom,-5], 
	["NEVER BUT IN CAPS LOCK",									pause_menu_element.page_transfer,	pause_menu_page.b,people.uncle,1,people.mom,-5,people.uncle,2],
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
#endregion
