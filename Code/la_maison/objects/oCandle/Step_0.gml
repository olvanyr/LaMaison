if light
{
	if state == "lighting"
	{
		set_state_sprite(sCandle_lignting,1,0);
		if animation_hit_frame(image_number-1)
		{
			set_state_sprite(sCandle_loop,1,0);
			state = "loop";
		}
	}
	if state == "loop"
	{
		set_state_sprite(sCandle_loop,1,0);
		if scale <= (60*scale_shrinking_speed)
		{
			state = "shut";
		}
	}
	if state == "shut"
	{
		set_state_sprite(sCandle_shut,1,0);
		if animation_hit_frame(5)
		{
			light_xscale = 0;
			light_yscale = 0;
			light = false;
			once = false;
		}
	}
	//make the light grow out of the candle instante of juste spawning
	if scale <= normal_scale && once = false
	{
		scale += scale_speed;
	}else 
	{
		once = true;
		scale -= scale_shrinking_speed;
	}
	light_xscale = scale;
	
	//make the light move a little bit to be more candely
	if get_timer() mod 5 == 0
	{
		light_xscale = light_xscale + random_range(-0.1,0.1);

		if light_xscale > scale + (scale*delta_scale) light_xscale = scale + (scale*delta_scale);
		if light_xscale < scale - (scale*delta_scale) light_xscale = scale - (scale*delta_scale);
		light_yscale = light_xscale;
	}
	
	light_yscale = light_xscale;
	
	
}else 
{
	light_xscale = 0;
	light_yscale = 0;
	if animation_hit_frame(image_number-1)
	{
		image_speed = 0;
	}
}

with place_meeting(x,y,oPlayer)
{
	if state == "lighting" && animation_hit_frame(3)
	{
		other.light = true;
		other.state = state;
	}
}

//show_debug_message("ligth : " + string(light));
