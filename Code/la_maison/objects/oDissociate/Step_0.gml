#region shadow
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
#endregion

if state = ""
{
	//right
	right = noone;
	right_goal = noone;
	left = noone;
	left_goal = noone;
	var cam_w_halph = camera_get_view_width(view_camera[0])/2;
	for (var i = 0; i < cam_w_halph; i++)
	{
		if place_meeting(x + i,y,oWall) && right_goal == noone
		{
			right_goal = x + i - global.tile_size;
		}

		if place_meeting(x - i,y,oWall) && left_goal == noone
		{
			left_goal = x - i + global.tile_size;
		}
			
		if left_goal != noone && right_goal != noone break;
	}
	if right_goal == noone	right_goal = x + cam_w_halph - (6*global.tile_size);
	if left_goal == noone	left_goal = x - cam_w_halph + (6*global.tile_size);
	
state = "wait";
}

switch (state)
{
case "wait":
//right
	if right_goal != noone
	{
		if !instance_exists(right)
		{
			with instance_create_layer(right_goal,y - 10,"Instances",oGoal)
			{
				creator = other.id;
				text = "right";
				right_goal = other.right_goal;
				other.right = id;
			}
		}
	}
//left
	if left_goal != noone
	{
		if !instance_exists(left)
		{
			with instance_create_layer(left_goal,y - 10,"Instances",oGoal)
			{
				creator = other.id;
				text = "left";
				left_goal = other.left_goal;
				other.left = id;
			}
		}
	}
break;
case "right":
	if x <= right_goal 
	{
		move = 1;
	}else 
	{
		move = 0;
		state = "";
	}
break;
case "left":
	if x >= left_goal 
	{
		move = -1;
	}else 
	{
		move = 0;
		state = "";
	}
break;
}



//show_debug_message("walk_speed : " + string(walk_speed));
//show_debug_message("vsp : " + string(vsp));
//show_debug_message("mask index : " + string(sprite_get_name(mask_index)));
//show_debug_message("distance_to_wall : " + string(distance_to_wall));
//show_debug_message("distance_to_slope : " + string(distance_to_slope));
//show_debug_message("y : " + string(y));
show_debug_message("x : " + string(x));
show_debug_message("left_goal : " + string(left_goal));
show_debug_message("right_goal : " + string(right_goal));





/*
// move
switch (state)
{
case "dissociate": 

	//if hsp == 0 goal = noone;
	if right_goal = noone
	{
		var cam_w_halph = camera_get_view_width(view_camera[0])/2;
		//check right
		for (var i = 0; i*global.tile_size < cam_w_halph; i++)
		{
			var tile_x = ((x div global.tile_size)*global.tile_size) + (global.tile_size/2);
			//show_debug_message("i : " + string(i));
			if place_meeting(tile_x + i*global.tile_size,y,oWall)
			{
				right_goal = tile_x + i*global.tile_size;
			}
			
			if right_goal != noone break;
		}
		if right_goal == noone right_goal = tile_x + cam_w_halph - (6*global.tile_size);
	}else
	{
		if !instance_exists(right)
		{
			with instance_create_layer(right_goal,y - 10,"Instances",oGoal)
			{
				creator = other.id;
				text = "right";
				right_goal = other.right_goal;
				other.right = id;
			}
		}
	}
	
	
	if instance_exists(right)
	{
		if right.completed
		{
			if x < (right_goal - 2)
			{
				move = 1;
			}else 
			{
				move = 0;
				instance_destroy(right);
				right_goal = noone;
			}
		}
	}
	
	
	
break;
}
*/

#region applied movement
//move aplication
if move != 0
{
	image_xscale = move;
		
	walk_speed += walk_acceleration;
	if walk_speed > max_walk_speed walk_speed = max_walk_speed;
}
	
hsp = walk_speed * move;
#endregion
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