// Inherit the parent event
event_inherited();

if !instance_exists(oCamera)
{
	cam = instance_create_layer(0,0,"Instances",oCamera);
}
cam.x = x;
cam.y = y;

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
	
	shadow = noone;
	
	//platform setting
	//jump_speed = -4;
	//gravity_speed = 0.3;
	//max_walk_speed = 1.5;

//specifique room
running = false;
running_checkpoint = noone;
