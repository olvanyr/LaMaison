
if collision_circle(x,y,15,oPlayer, false, true)
{
	if play_sound = false && !audio_is_playing(sound)
	{
		audio_play_sound(sound,5,false);
	}
	
	play_sound = true;
	
	
}else play_sound = false;