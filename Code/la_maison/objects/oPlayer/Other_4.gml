set_layer("Tiles",depth_layer.tiles);

set_layer("Walls",depth_layer.walls);

set_layer("Player",depth_layer.player);
#region dependencise
if !instance_exists(oInput)
{
	input = instance_create_layer(0,0,"Instances",oInput);
}

/*
if !instance_exists(oScarf)
{
	with instance_create_layer(x,y,"player",oScarf)
	{
		creator = other.id;
	}
}*/
#endregion
