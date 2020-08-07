if instance_exists(oPlayer)
{
	if abs(x - oPlayer.x) < open_distance && image_index == 0 
	{
		image_speed = 1;
		image_xscale =  oPlayer.image_xscale;
	}
}

if image_index > image_number-1
{
	image_speed = 0;
	var sprite = layer_sprite_create("Assets",x,y,sprite_index);
	layer_sprite_angle(sprite,image_angle);
	layer_sprite_xscale(sprite,image_xscale);
	layer_sprite_speed(sprite,0);
	layer_sprite_index(sprite,image_number-1);
	instance_destroy();
}