// Inherit the parent event
event_inherited();


// move
switch (state)
{
case "move": 
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
	
	if input.jump && grounded 
	{
		vsp = jump_speed;
	}
	
	if move != 0
	{
		walk_speed += walk_acceleration;
		if walk_speed > max_walk_speed walk_speed = max_walk_speed;
	}
	hsp = walk_speed * move;
	
	var distance_to_wall = 0;
	var distance_to_slope = 0;
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
	
	
	if place_meeting(x,y + 1, oWall) && !place_meeting(x,y + 1,oSlope)
	{
		mask_index = sPlayer;
	}
	
	
	if position_meeting(x + 1,y,oSlope) || position_meeting(x - 1,y,oSlope) || position_meeting(x,y + 1,oSlope)
	{
		mask_index = sPlayer_colision;
	}
	
	if (position_meeting(x,y + 1,oSlope) || place_meeting(x,y,oSlope)) && mask_index == sPlayer_colision
	{
		y-= 3;
		move_contact_solid(270, -1);
	}
	
	
	//show_debug_message("walk_speed : " + string(walk_speed));
	show_debug_message("vsp : " + string(vsp));
	show_debug_message("mask index : " + string(sprite_get_name(mask_index)));
break;
}