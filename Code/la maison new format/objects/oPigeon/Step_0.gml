if (instance_exists(oPlayer) && instance_exists(oCamera))
{
if (distance_to_object(oPlayer) < oCamera.view_w_half)
{
	switch state {
		case "idle" :
		{	
			set_state_sprite(anim_idle,0,0);
			rng = irandom(100);
			if (rng == 1) {state = "eat";}
			if (rng == 2) {state = "look";}
			if (rng == 3) {state = "stand";}
			if (rng == 4) {state = "turn";}
			if (rng == 5) 
			{
				if (abs((x-(image_xscale)) - start_x) > max_range)
				{
					image_xscale = -image_xscale;
				}
				state = "walk";	
			}
			if (abs(oPlayer.x - x) < fov && fly)
			{
				state = "fly";
				direction = random_range(10,170);
			}
		}break;
		case "eat" :
		{	
			set_state_sprite(anim_eat,1,0);
			if (animation_hit_frame(image_number-1))
			{
				state = "idle";
				rng = 0;
			}
		}break;
		case "look" :
		{	
			set_state_sprite(anim_look,1,0);
			if (animation_hit_frame(image_number-1))
			{
				state = "idle";
				rng = 0;
			}
		}break;
		case "stand" :
		{	
			set_state_sprite(anim_stand,1,0);
			if (animation_hit_frame(image_number-1))
			{
			
				image_speed = 0;
			}
			timer ++;
			if (timer > 60)
			{
				timer = 0;
				state = "idle";
				rng = 0;
			}
		}
		break;
		case "turn" :
		{	
			image_xscale = -image_xscale;
			state = "idle";
			rng = 0;
		}break;
		case "walk" :
		{	
			set_state_sprite(anim_walk,0.5,0);
		
			timer ++;
			if (timer > 150)
			{
				timer = 0;
				state = "idle";
				rng = 0;
			}else
			{
				x += -image_xscale*0.1;
			}
		}break;
		case "fly" :
		{	
			set_state_sprite(anim_fly,1,0);
			image_xscale = -sign(lengthdir_x(2,direction));
			x += lengthdir_x(2,direction);
			y += lengthdir_y(2,direction);
			if (distance_to_object(oPlayer) > oCamera.view_w_half)
			{
				instance_destroy();
			}
		
		}break;
	}

	if show
	{
		show_debug_message("state : " + string(state));
	}
}
}