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

}*/

if instance_exists(shadow)
{
	with shadow
	{
		image_speed = other.image_speed;
		sprite_index = other.sprite_index;
		image_index = other.image_index;
		x = other.x;
		y = other.y;
		image_xscale = other.image_xscale;
	}
}

// move
switch (state)
{
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
	}else 
	{
		move = 1;
		
		set_state_sprite(sPlayer_walk1,walk_anim_speed,0);
		if vsp != 0 || hsp != 0
		{
			with instance_create_layer(x,y - 10,"Scarf",oScarf_particle)
			{
				image_angle = point_direction(x,y - 10, x + other.hsp, y - 10 + other.hsp);
			}
		}
	}
	
	if input.jump && (grounded || jump < number_of_jump)
	{
		jump ++;
		vsp = 0;
		vsp_fraction = 0;
		vsp = jump_speed;
	}
	
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
	
#endregion
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
// Inherit the parent event
event_inherited();