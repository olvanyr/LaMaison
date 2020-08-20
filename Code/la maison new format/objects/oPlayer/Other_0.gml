if (running = true && running_checkpoint != noone)
{
	oPlayer.x = running_checkpoint.x;
	oPlayer.y = running_checkpoint.y;
	oCamera.x = running_checkpoint.x;
	oCamera.y = running_checkpoint.y;
	
	instance_destroy(oScarf_particle);
}