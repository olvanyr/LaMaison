if !layer_exists("Walls")
{
	layer_create(depth_layer.walls,"Walls");
}

layer = layer_get_id("Walls");

//use to make the platform have a hitbox at the end of creat, so we can put grass on it
once = false;


max_timer = 180;
timer = max_timer

last_down_input = 0;