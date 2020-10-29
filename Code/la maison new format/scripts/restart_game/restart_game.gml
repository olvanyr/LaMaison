///@desc restart_game


function reset_game() {

	init_game_variable();
	save_game();
	//alarm[2] = 2;
	page = pause_menu_page.intro;
}
function reset_settings() {

	init_setting_variable();
	save_game();
	//alarm[2] = 2;
	page = pause_menu_page.main;
	instance_destroy(self);
	with instance_create_layer(x,y,"Instances", oMenu)
	{
		intro_menu = false;
		page = 1;
	}
}