/// @description Insert description here
x = floor(x);

lamppost[0] = sLamppost0;
lamppost[1] = sLamppost1;
lamppost[2] = sLamppost2;


rng = irandom_range(1,array_length_1d(lamppost)-1);
sprite_index = lamppost[rng];

if (!layer_exists(target_layer))
{
	layer_create(target_depth,target_layer);
}
layer_depth(layer_get_id(target_layer), target_depth);
layer = layer_get_id(target_layer);

move_contact_solid(270, -1);


image_speed = 0;


with (instance_create_layer(x,y,target_layer,oLight))
{
	light_color = other.light_color;
	light_sprite = other.light_sprite;
}
if (rng == 0 || rng == 1)
{
	with (instance_create_layer(x+14,y,target_layer,oLight))
	{
		light_color = other.light_color;
		light_sprite = other.light_sprite;
	}
}




xskew = 0;
xset = 0;
/*
show_debug_message("distance to bottom : " + string(distance_to_bottom));
show_debug_message("distance to top : " + string(distance_to_top));
show_debug_message("distance to top platform : " + string(distance_to_top_platform));


