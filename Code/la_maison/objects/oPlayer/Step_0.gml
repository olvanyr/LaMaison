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
	
	show_debug_message("walk_speed : " + string(walk_speed));
break;
}