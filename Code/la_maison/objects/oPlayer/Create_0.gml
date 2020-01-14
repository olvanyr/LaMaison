// Inherit the parent event
event_inherited();

// initialise state engine
state = "move";


//move state 
	walk_speed = 0;
	walk_anim_speed = 0.6;
	walk_acceleration = 0.035;
	max_walk_speed = 1;
	jump_speed = -4;
	//double jump
	jump = 0;
	number_of_jump = 2;
