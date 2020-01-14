
draw_circle_color(x,y,light_range,c_red,c_red,true);

lights = ds_list_create();

with(oLight)
{
	var light_distance = distance_to_point(other.x, other.y);
    if(light_distance <= other.light_range)
	{
        ds_list_add(other.lights, id);
	}
}

if(!ds_list_empty(lights))
{
    for(var i=0; i<ds_list_size(lights); i++)
    {
        var light = ds_list_find_value(lights, i);
        var dist = distance_to_point(light.x, light.y);
		alpha = 1 - lerp(0,1,dist/light_range);
		x_factor = -2 * (dist / light_range) * sign(x - light.x);
		
		if light.y > y y_factor = lerp(1,1.2,1 - (dist / light_range));
		if light.y <= y y_factor = lerp(0.8,1,dist / light_range);
		draw_sprite_ext(sprite_index,image_index,x - x_factor,y,image_xscale, image_yscale * y_factor, 0,c,alpha);
		
    }
}


draw_self();
