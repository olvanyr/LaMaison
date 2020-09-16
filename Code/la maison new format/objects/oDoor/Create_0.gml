sprite_index = sprite;
set_layer("Assets",depth_layer.assets);

target = oPlayer;


open_distance = 27;
image_speed = 0;

half_height = sprite_get_height(sprite)/2;

if (!instance_exists(oEffect_controller))
{
	controller = instance_create_layer(x,y,"Instances",oEffect_controller);
}else
{
	controller = oEffect_controller;
}

_x = 0;