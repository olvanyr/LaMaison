var c = c_gray;
draw_rectangle_color(x -sprite_width/3,y -sprite_height/3,x +sprite_width/3,y +sprite_height/3,c,c,c,c,false);
if (instance_exists(oPlayer))
{
	if (place_meeting(x,y,oPlayer))
	{
		draw_sprite_ext(oPlayer.sprite_index,oPlayer.image_index,oPlayer.x + 6,oPlayer.y,oPlayer.image_xscale,oPlayer.image_yscale,0,c_white,1);
	}
}
draw_self();