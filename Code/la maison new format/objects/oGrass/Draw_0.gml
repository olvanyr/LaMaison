if (instance_exists(oPlayer))
{
	if (abs(oPlayer.x - x) < global.view_width)	
	{
		with (place_meeting(x,y,oPlayer))
		{
			if (object_index == oPlayer)
			{
				other.xset = image_xscale * abs(hsp);

				if (other.xset > 10) {other.xset = 10;}
				if (other.xset < -10) {other.xset = -10;}
			}
		}

		draw_sprite_skew_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, xskew, 0);
	}
}