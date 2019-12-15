
var distance_to_player_x = player.x - x - (player.image_xscale * 3);
var distance_to_player_y = player.y - 11 - y;


for(var i = 1; i < 5; i++)
{
	draw_sprite_outline(sScraf,0,x + distance_to_player_x / i,y + i + distance_to_player_y / i,0.5,c_black);
}
for(var i = 1; i < 5; i++)
{
	draw_sprite(sScraf,0,x + distance_to_player_x / i,y + i + distance_to_player_y / i);
}