if !instance_exists(creator)
{
	instance_destroy();
}


image_xscale = creator.image_xscale;
x = creator.x;
y = creator.y;

if creator.vsp > 0 && !creator.grounded
{
	sprite_index = sPlayer_scarf_down;
}
if creator.vsp <= 0 && !creator.grounded
{
	sprite_index = sPlayer_scarf_up;
}

if creator.hsp > 0 || creator.hsp < 0
{
	sprite_index = sPlayer_scarf_left_right;
}