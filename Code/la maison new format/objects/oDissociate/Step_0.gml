if (particle_timer == 100)
{
	with (instance_create_layer(x,y,"Effects",oDissociate_effect))
	{
		_x = x + random_range(-50,50);
		_y = y + random_range(-50,50);
	}
	particle_timer = 0;
}
particle_timer ++;

if (state = "")
{
	move = 0;
	move_timer = 0;
	#region left right
	right = noone;
	right_goal = noone;
	left = noone;
	left_goal = noone;
	var cam_w_halph = camera_get_view_width(view_camera[0])/2;
	for (var i = 0; i < cam_w_halph; i++)
	{
		if (place_meeting(x + i,y,oWall) && right_goal == noone)
		{
			right_goal = x + i - global.tile_size;
		}

		if (place_meeting(x - i,y,oWall) && left_goal == noone)
		{
			left_goal = x - i + global.tile_size;
		}
			
		if (left_goal != noone && right_goal != noone) {break;}
	}
	if (right_goal == noone)	{right_goal = x + cam_w_halph - (6*global.tile_size);}
	if (left_goal == noone)	{left_goal = x - cam_w_halph + (6*global.tile_size);}
	#endregion
	#region jump
	right_jump = noone;
	left_jump = noone;
	jump = noone;
	
	if (place_meeting(x + (2*global.tile_size),y,oWall) && 
		!place_meeting(x + (2*global.tile_size),y - global.tile_size,oWall) &&
		!place_meeting(x + (2*global.tile_size),y - (2*global.tile_size),oWall) && 
		!place_meeting(x ,y - (3*global.tile_size),oWall)
		)
	{
		right_jump = true;
	}
	if (place_meeting(x - (2*global.tile_size),y,oWall) && 
		!place_meeting(x - (2*global.tile_size),y - global.tile_size,oWall) &&
		!place_meeting(x - (2*global.tile_size),y - (2*global.tile_size),oWall) && 
		!place_meeting(x ,y - (3*global.tile_size),oWall)
		)
	{
		left_jump = true;
	}
	//show_debug_message("right_jump : " + string(right_jump));
	#endregion
	if (right_jump = true)
	{
		right_goal = noone;
	}
	if (left_jump = true)
	{
		left_goal = noone;
	}

state = "wait";
}

switch (state)
{
case "wait":
//right
	if (right_goal != noone)
	{
		if (!instance_exists(right))
		{
			with (instance_create_layer(right_goal,y - 30,"Instances",oGoal))
			{
				creator = other.id;
				text = "right";
				right_goal = other.right_goal;
				other.right = id;
			}
		}
	}
//left
	if (left_goal != noone)
	{
		if (!instance_exists(left))
		{
			with (instance_create_layer(left_goal - 45,y - 30,"Instances",oGoal))
			{
				creator = other.id;
				text = "left";
				left_goal = other.left_goal;
				other.left = id;
			}
		}
	}
	
	//right_jump
	if (right_jump != noone)
	{
		if (!instance_exists(jump))
		{
			with (instance_create_layer(x + 20,y - 45,"Instances",oGoal))
			{
				creator = other.id;
				text = "jump";
				other.jump = id;
			}
		}
	}
	//right_jump
	if (left_jump != noone)
	{
		if (!instance_exists(jump))
		{
			with (instance_create_layer(x - 60,y - 45,"Instances",oGoal))
			{
				creator = other.id;
				text = "jump";
				other.jump = id;
			}
		}
	}
break;
case "right":
	if (x <= right_goal) 
	{
		move = 1;
		move_timer ++;
	}else 
	{
		state = "";
	}
break;
case "left":
	if (x >= left_goal) 
	{
		move = -1;
		move_timer ++;
	}else 
	{
		state = "";
	}
break;
case "jump":
	
	if (right_jump != noone && grounded)
	{
		vsp = 0;
		vsp_fraction = 0;
		vsp = jump_speed;
		grounded = false;
		move = 1;
		right_jump = noone;
	}
	if (left_jump != noone && grounded)
	{
		vsp = 0;
		vsp_fraction = 0;
		vsp = jump_speed;
		grounded = false;
		move = -1;
		left_jump = noone;
	}
	if (grounded)
	{
		state = "";
	}
	
break;
}

if (move_timer > dissociate_time){state = ""};

//show_debug_message("walk_speed : " + string(walk_speed));
//show_debug_message("vsp : " + string(vsp));
//show_debug_message("mask index : " + string(sprite_get_name(mask_index)));
//show_debug_message("distance_to_wall : " + string(distance_to_wall));
//show_debug_message("distance_to_slope : " + string(distance_to_slope));
//show_debug_message("y : " + string(y));
//show_debug_message("x : " + string(x));
//show_debug_message("left_goal : " + string(left_goal));
//show_debug_message("right_goal : " + string(right_goal));


#region applied movement
//move aplication
if (move != 0)
{
	image_xscale = move;
		
	walk_speed += walk_acceleration;
	if (walk_speed > max_walk_speed) {walk_speed = max_walk_speed;}
}
	
hsp = walk_speed * move;
#endregion
#region animation
if (hsp > 0)
{
	set_state_sprite(sPlayer_walk1,walk_anim_speed,0);
}
if (hsp < 0)
{
	set_state_sprite(sPlayer_walk1,walk_anim_speed,0);
}
if (hsp = 0)
{
	set_state_sprite(sPlayer_idle,0.1,0);
}
if (!grounded)
{
	if (vsp > 0) {set_state_sprite(sPlayer_jump,0,1);}
	if (vsp <= 0) {set_state_sprite(sPlayer_jump,0,0);}
		
}
	
#endregion
#region slope
	//check if there is a slope under 
	var distance_to_wall = 0;
	var distance_to_slope = 0;
	mask_index = sPlayer;
	while (!place_meeting(x,y + distance_to_wall, oWall) && distance_to_wall < 1000)
	{
		distance_to_wall++;
	}
	while (!place_meeting(x,y + distance_to_slope, oSlope) && distance_to_slope < 1000)
	{
		distance_to_slope++;
	}
	if (distance_to_wall >= distance_to_slope)
	{
		mask_index = sPlayer_colision;
	}else
	{
		mask_index = sPlayer;
	}
	
	if (distance_to_slope > 8) {mask_index = sPlayer;}
	
	//put the player in the air and back on the top of the slope 
	if ((position_meeting(x,y + 1,oSlope) || place_meeting(x,y,oSlope)) && mask_index == sPlayer_colision)
	{
		y-= 3;
		move_contact_solid(270, -1);
	}
	
#endregion

event_inherited();
