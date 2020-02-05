// Inherit the parent event
event_inherited();

set_layer("Walls",depth_layer.walls);
set_layer("Doors",depth_layer.doors);

if !instance_exists(oWall)
{
	input = instance_create_layer(0,0,"Instances",oInput);
}