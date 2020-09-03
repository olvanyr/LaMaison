if (instance_exists(oPlayer))
{
	if (abs(oPlayer.x - x) < global.view_width)	
	{
		with (instance_place(x,y,oPlayer))
		{
			other.id.xset = image_xscale * abs(hsp);

			if (other.id.xset > 10) {other.id.xset = 10;}
			if (other.id.xset < -10) {other.id.xset = -10;}
		}

		draw_sprite_skew_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, xskew, 0);
	}
}