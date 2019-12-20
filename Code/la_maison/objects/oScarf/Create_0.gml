
player = noone;
y_variation = 0;


if !layer_exists("Scarf")
{
	layer_create(depth_layer.scarf,"Scarf");
}

if !layer_exists("Shadow_scarf")
{
	layer_create(depth_layer.shadow_scarf,"Shadow_scarf");
}

layer = layer_get_id("Scarf");