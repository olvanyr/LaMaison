set_layer("Tiles",depth_layer.tiles);

set_layer("Effects",depth_layer.effects);

layer_depth("Assets",depth_layer.assets);

set_layer("Walls",depth_layer.walls);

set_layer("Player",depth_layer.player);

#region dependencise
if (!instance_exists(oInput))
{
	input = instance_create_layer(0,0,"Instances",oInput);
}

if (!instance_exists(oCamera))
{
	cam = instance_create_layer(x,y,"Instances",oCamera);
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