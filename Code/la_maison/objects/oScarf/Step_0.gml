
if instance_exists(oPlayer)
{
	player = oPlayer;
}

var distance_to_player_x = player.x - x - (player.image_xscale * 3);
var distance_to_player_y = player.y - 11 - y;

x += distance_to_player_x / 5;
y += distance_to_player_y / 5;