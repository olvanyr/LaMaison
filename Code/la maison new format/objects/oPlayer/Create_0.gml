// Inherit the parent event
event_inherited();


#region dependencise

if (!instance_exists(oInput))
{
	input = instance_create_layer(x,y,"Instances",oInput);
}else {input = oInput.id;}

if (!instance_exists(oCamera))
{
	cam = instance_create_layer(0,0,"Instances",oCamera);
}else {cam = oCamera;}

cam.x = x;
cam.y = y;
cam.follow = self;

if (!instance_exists(oMenu))
{
	with instance_create_layer(x,y,"Instances",oMenu)
	{
		intro_menu = false;
		page = 1;
	}
}

#endregion



// matches light animation
temp_light = noone;
draw_black_sprite = false;

// initialise state engine
state = "move";


//move state 
	walk_speed = 0;
	walk_anim_speed = 0.6;
	walk_acceleration = 0.035;
	max_walk_speed = 1;
	jump_speed = -5;

	//double jump
	jump = 0;
	number_of_jump = 1;
	previous_jump_number = 0;
	
	shadow = noone;
	
	//platform setting
	//jump_speed = -4;
	//gravity_speed = 0.3;
	//max_walk_speed = 1.5;

//specifique room
running = false;
running_checkpoint = noone;


