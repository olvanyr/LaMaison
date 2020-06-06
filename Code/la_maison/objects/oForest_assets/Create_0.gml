

if !layer_exists(target_layer)
{
	layer_create(target_depth,target_layer);
}
layer_depth(layer_get_id(target_layer), target_depth);
layer = layer_get_id(target_layer);

move_contact_solid(270, -1);


image_speed = 0;

image_index = irandom(image_number-1);


var sprite = layer_sprite_create(target_layer,x,y,sprite_index);
layer_sprite_speed(sprite,image_speed);
layer_sprite_index(sprite,image_index);

instance_destroy();