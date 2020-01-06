layer = layer_get_id("Shadow_scarf");

for(var i = 1; i < 6; i++)
{
	var x_buffer = 0;
	if player.hsp != 0
	{
		x_buffer = player.image_xscale * i;
	}
	var distance_to_player_x = player.x - x - i - (player.image_xscale * 2.5);
	var distance_to_player_y = (player.y - (y_variation)) - 11 - y;

	var _x = x + distance_to_player_x / i;
	var _y = y + i + (distance_to_player_y ) / i;
	
	draw_sprite_outline(sScraf,0,_x,_y,0.5,c_black);
	draw_sprite(sScraf,0,_x,_y);
}
