if in_list(light_room_list,room)
{
	set_layer("light",depth_layer.light);
	if !instance_exists(oSurface_light) instance_create_layer(0,0,"light",oSurface_light);
}