set_layer("Tiles",depth_layer.tiles);

set_layer("Walls",depth_layer.walls);

if (visible)
{
	alarm[0] = 1;
}


if (!instance_exists(oEffect_controller))
{
	controller = instance_create_layer(x,y,"Instances",oEffect_controller);
}else
{
	controller = oEffect_controller;
}
