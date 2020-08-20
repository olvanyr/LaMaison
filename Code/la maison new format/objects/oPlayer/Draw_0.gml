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
		draw_sprite(sPlayer_flame,image_index,x,y);
	break;
}