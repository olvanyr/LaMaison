///@description check the input

//move
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
down = keyboard_check(vk_down);
up = keyboard_check(vk_up);

//cam
up_cam = 0;
down_cam = 0;
right_cam = 0;
left_cam = 0;

//jump
jump = keyboard_check_pressed(vk_space);
jump_released = keyboard_check_released(vk_space);

//action
action = keyboard_check_pressed(ord("A"));


//dialogue
enter = keyboard_check_pressed(vk_enter);
menu_up = keyboard_check_pressed(vk_up);
menu_down = keyboard_check_pressed(vk_down);