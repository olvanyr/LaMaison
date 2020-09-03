if (door[0]!= -4)
{
	for(var i = 0; i < array_length(door); i+=2)
	{
		layer_sprite_index(door[i],door[i+1]);
	}

}
if (tile[0]!= -4)
{
	for(var i = 0; i < array_length(tile); i+=2)
	{
		layer_sprite_index(tile[i],tile[i+1]);
	}

}
if (forest_assets[0]!= -4)
{
	for(var i = 0; i < array_length(forest_assets); i+=2)
	{
		layer_sprite_index(forest_assets[i],forest_assets[i+1]);
	}

}