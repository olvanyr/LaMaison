// Inherit the parent event
event_inherited();



#region dependencise
if !instance_exists(oInput)
{
	input = instance_create_layer(0,0,"Instances",oInput);
}
#endregion

// initialise state engine
state = "move";


//move state 
	walk_speed = 0;
	walk_acceleration = 0.07;
	max_walk_speed = 2;
	jump_speed = -4;
	
	last_x = x;
