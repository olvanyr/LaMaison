if keyboard_check_pressed(ord("H"))
{
save_game();

}


/*
if keyboard_check_pressed(vk_enter)
{
	trigger_bullet_time();
}
/*
if keyboard_check_pressed(ord("H"))
{
	oCamera.x = 73;
	oCamera.y = 583;
	oPlayer.x = 73;
	oPlayer.y =583;

}
if keyboard_check_pressed(vk_enter)
{
	with instance_create_layer(x,y,"Instances",oClap_effect)
	{
		next_room = rRunning;
		draw = true;
	}
}
*/

//fix the move and knockback against wall bug 
if place_meeting(x,y,oWall)
{
	if !place_meeting(x + 1,y,oWall)
	{
		x += 1
	}
	if !place_meeting(x - 1,y,oWall)
	{
		x -= 1
	}
}


// move
switch (state)
{
case "lighting": 
	set_state_sprite(sPlayer_match,1,0);
	if animation_hit_frame(2)
	{
		temp_light = instance_create_layer(x,y-14,"Effects",oLight_child)
		{
			light_color = make_color_rgb(255,124,34);
		}
	}
	if animation_hit_frame(image_number -1) 
	{
		instance_destroy(temp_light);
		state = "move";
	}
break;
case "move": 
	//reset everything when grounded
	if grounded 
	{
		jump = 0;
	}
	if !running
	{
		if input.right 
		{
			move = 1;		
		}
		if input.left
		{
			move = -1;
		}
	
		if (!input.right && !input.left) || (input.right && input.left) 
		{
			move = 0;
			walk_speed = 0;
		}
		
		if grounded && hsp != 0
		{
			if animation_hit_frame(1) || animation_hit_frame(5)
			{
				//audio_sound_pitch(aFootstep,choose(0.8,1.0,1.2));
				//audio_play_sound(aFootstep,priority.low,0);
				
				repeat(3)
				{
					with (instance_create_layer(x,bbox_bottom,"Effects",oGround_effect))
					{
						vsp = 0;
					}
				}
			}
		}
	}else 
	{
		move = 1;
		
		set_state_sprite(sPlayer_walk1,walk_anim_speed,0);
	}
	
	if input.jump && (grounded || jump < number_of_jump)
	{
		jump ++;
		vsp = 0;
		vsp_fraction = 0;
		vsp = jump_speed;
	}
	
	if place_meeting(x,y,oCandle) && input.action
	{
		state = "lighting";
	}
	
	// is landing ? 
	if !grounded alarm[9] = 2;
	
	#region animation
	if hsp > 0
	{
		set_state_sprite(sPlayer_walk1,walk_anim_speed,0);
	}
	if hsp < 0
	{
		set_state_sprite(sPlayer_walk1,walk_anim_speed,0);
	}
	if hsp = 0
	{
		set_state_sprite(sPlayer_idle,0.1,0);
	}
	if !grounded
	{
		if vsp > 0 set_state_sprite(sPlayer_jump,0,1);
		if vsp <= 0 set_state_sprite(sPlayer_jump,0,0);
		
	}
	
	#endregion
	
	//show_debug_message("walk_speed : " + string(walk_speed));
	//show_debug_message("vsp : " + string(vsp));
	//show_debug_message("mask index : " + string(sprite_get_name(mask_index)));
	//show_debug_message("distance_to_wall : " + string(distance_to_wall));
	//show_debug_message("distance_to_slope : " + string(distance_to_slope));
	//show_debug_message("y : " + string(y));
	
break;

}

//move aplication
if move != 0
{
	image_xscale = move;
		
	walk_speed += walk_acceleration;
	if walk_speed > max_walk_speed walk_speed = max_walk_speed;
}
	
hsp = walk_speed * move;


#region slope
	//check if there is a slope under 
	var distance_to_wall = 0;
	var distance_to_slope = 0;
	mask_index = sPlayer;
	while !place_meeting(x,y + distance_to_wall, oWall) && distance_to_wall < 1000
	{
		distance_to_wall++;
	}
	while !place_meeting(x,y + distance_to_slope, oSlope) && distance_to_slope < 1000
	{
		distance_to_slope++;
	}
	if distance_to_wall >= distance_to_slope
	{
		mask_index = sPlayer_colision;
	}else
	{
		mask_index = sPlayer;
	}
	
	if distance_to_slope > 8 mask_index = sPlayer;
	
	//put the player in the air and back on the top of the slope 
	if (position_meeting(x,y + 1,oSlope) || place_meeting(x,y,oSlope)) && mask_index == sPlayer_colision
	{
		y-= 3;
		move_contact_solid(270, -1);
	}
	
#endregion
#region effects
//create the firefly for the forest
if room == rRunning
{
	if get_timer() mod 10 == 0
	{
		repeat(choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,2,2))
		{
			var random_x = x + random_range(-global.view_width/2,global.view_width/2);
			var random_y = y + random_range(-global.view_height/2,global.view_height/2);
			instance_create_layer(random_x,random_y,"Instances",oFireflie);
		}
	}
}
//display the number of jump left
if room == rRunning
{
	if number_of_jump != previous_jump_number
	{
		with oJump
		{
			if creator == other instance_destroy();
		}
		for(var i = 1;i < number_of_jump +1; i++)
		{
			with instance_create_layer(x,y,"Effects",oJump)
			{
				creator = other;
				counter = i;
			}
		}
	}
	previous_jump_number = number_of_jump;
}

//add the black background for in the dark platforming
if room == rRunning
{
	draw_black_sprite = true;
}

#endregion
// Inherit the parent event
event_inherited();

//show_debug_message("state : " + string(state));
//show_debug_message("jump : " + string(jump));
//show_debug_message("global.objects_array : " + string(global.objects_array[1]));