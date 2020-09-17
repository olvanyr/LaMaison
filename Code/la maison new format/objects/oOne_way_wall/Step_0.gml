
if (instance_exists(oPlayer))
{
	if oPlayer.x > x + 100 mask_index = sOne_way_wall;
	if oPlayer.x > (x + (2*(global.view_width/3))) sprite_index = _sprite;
}