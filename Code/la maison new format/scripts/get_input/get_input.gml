///@description check the input
function get_input() {

	//move
	right =	 keyboard_check(global.key_right);
	left =	 keyboard_check(global.key_left);
	down =	 keyboard_check(global.key_down);
	up =	 keyboard_check(global.key_up);

	//cam
	up_cam = 0;
	down_cam = 0;
	right_cam = 0;
	left_cam = 0;

	//jump
	jump = keyboard_check_pressed(global.key_jump);
	jump_released = keyboard_check_released(global.key_jump);

	//action
	action = keyboard_check_pressed(global.key_action);


	//dialogue/menu
	enter =			keyboard_check_pressed(global.key_menu_enter);
	menu_left =		keyboard_check(global.key_menu_left);
	menu_right =	keyboard_check(global.key_menu_right);
	menu_up =		keyboard_check_pressed(global.key_menu_up);
	menu_down =		keyboard_check_pressed(global.key_menu_down);
	pause =			keyboard_check_pressed(global.key_pause);


}
