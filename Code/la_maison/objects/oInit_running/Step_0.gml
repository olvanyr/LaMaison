if instance_exists(oPlayer)
{
	oPlayer.running = true;
	oPlayer.max_walk_speed = 1.5;
	oPlayer.walk_anim_speed = 1;
	oPlayer.number_of_jump = 1;
}
if instance_exists(oCamera)
{
	oCamera.zoom = 1.5;
}