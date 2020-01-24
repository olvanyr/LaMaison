///@description check the input

//move
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
down = keyboard_check(vk_down);
up = keyboard_check(vk_up);


//jump
jump = keyboard_check_pressed(vk_space);
jump_released = keyboard_check_released(vk_space);

//dialogue
enter = keyboard_check_pressed(vk_enter);
menu_up = keyboard_check_pressed(vk_up);
menu_down = keyboard_check_pressed(vk_down);