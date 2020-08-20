target_depth = depth_layer.lamppost;
target_layer = "Lamppost";

if (!layer_exists(target_layer))
{
	layer_create(target_depth,target_layer);
}
layer_depth(layer_get_id(target_layer), target_depth);
layer = layer_get_id(target_layer);




state = "shut";
image_speed = 0;
image_index = image_number -1;

light_x = x;
light_y = y - 63;

delta_scale = 0.3;
scale = 0;

normal_scale = 10;
scale_speed = 0.1;
scale_shrinking_speed = 0.01;
once = false;

timer = 0;
light = false;