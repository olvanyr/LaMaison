if (place_meeting(x,y,oPlayer) && once)
{
	once = false;
	oClap_effect.next_room = next_room;
	oClap_effect.draw = true;
	oClap_effect.player_x = player_x;
	oClap_effect.player_y = player_y;
	oClap_effect.player_state = player_state;
}

y = anchorY + sin(timer*frequency)*amplitude;
timer++;
if (timer == 630){timer = 1;}