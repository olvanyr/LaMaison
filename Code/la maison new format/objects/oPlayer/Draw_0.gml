/// @desc

// Inherit the parent event
event_inherited();
if (draw_black_sprite)
{
	draw_sprite(sBlack_background,0,x,y);
}

switch (state)
{
	case "lighting": 
		draw_sprite_ext(sPlayer_flame,image_index,x,y,image_xscale,image_yscale,direction,c_white,1);
	break;
}

if (instance_place(x,y,oSmoke))
{
	var _rng = irandom(5);
	if (get_timer() mod 10 == 0 && _rng == 3)
	{
		with instance_create_layer(x,y -20,"Effects",oBark)
		{
			text = "*tousse*";
			lifespan = 60;
			vsp = -0.1;
			hsp = 0.3;
			alpha_delta = 0.01;
			xscale = 0.3;
			yscale = 0.3;
		}
	}
	
}