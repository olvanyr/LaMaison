if (door[0]!= -4)
{
	for(var i = 0; i < array_length(door); i+=2)
	{
		layer_sprite_index(door[i],door[i+1]);
	}

}