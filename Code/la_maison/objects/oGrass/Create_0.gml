/// @description Insert description here

rng = irandom_range(1,2);
if rng == 2
{
	if !layer_exists("Grass_back")
	{
		layer_create(depth_layer.grass_back,"Grass_back");
	}
	layer_depth(layer_get_id("Grass_back"), depth_layer.grass_back);
	layer = layer_get_id("Grass_back");
}else
{
	if !layer_exists("Effects")
	{
		layer_create(depth_layer.effects,"Effects");
	}
	layer_depth(layer_get_id("Effects"), depth_layer.effects);
	layer = layer_get_id("Effects");
}


move_contact_solid(270, -1);


image_speed = 0;



sprite_index = sGrass;
image_index = irandom(image_number-1);


xskew = 0;
xset = 0;