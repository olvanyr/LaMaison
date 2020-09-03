
if (!instance_exists(oEffect_controller))
{
	controller = instance_create_layer(x,y,"Instances",oEffect_controller);
}else
{
	controller = oEffect_controller;
}


set_layer(target_layer,target_depth)

move_contact_solid(270, -1);


image_speed = 0;

image_index = irandom(image_number-1);


var sprite = layer_sprite_create(target_layer,x,y,sprite_index);
layer_sprite_speed(sprite,image_speed);

if (controller.forest_assets[0] == -4)
{
	var position = 0;
}else
{
	var position = array_length(controller.forest_assets)
}
controller.forest_assets[position]= sprite;
controller.forest_assets[position+1] = image_index;

instance_destroy();