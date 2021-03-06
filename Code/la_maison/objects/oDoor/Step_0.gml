if instance_exists(oPlayer)
{
	if image_index == 0
	{
		var x_dist = x - oPlayer.x;
		if abs(x_dist) < open_distance && closed == "noone"
		{
			image_speed = 1;
			image_xscale =  oPlayer.image_xscale;
			mask_index = -1;
		}
		
		if abs(x_dist) < open_distance && sign(x_dist) >= 0 && closed == "left"
		{
			image_speed = 1;
			image_xscale =  oPlayer.image_xscale;
			mask_index = -1;
		}
		
		if abs(x_dist) < open_distance && sign(x_dist) <= 0 && closed == "right"
		{
			image_speed = 1;
			image_xscale =  oPlayer.image_xscale;
			mask_index = -1;
		}
	}
}


if image_index > image_number-1
{
	image_speed = 0;
	var sprite = layer_sprite_create("Assets",x,y,sprite_index);
	layer_sprite_angle(sprite,image_angle);
	layer_sprite_xscale(sprite,image_xscale);
	layer_sprite_speed(sprite,image_speed);
	layer_sprite_index(sprite,image_number-1);
	instance_destroy();
}