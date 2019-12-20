// Inherit the parent event
event_inherited();


set_layer("Player",depth_layer.player);
#region dependencise
if !instance_exists(oInput)
{
	input = instance_create_layer(0,0,"Instances",oInput);
}
#endregion


#region scraf
y_variation = 0;
#endregion

// initialise state engine
state = "move";


//move state 
	walk_speed = 0;
	walk_acceleration = 0.035;
	max_walk_speed = 1;
	jump_speed = -4;
