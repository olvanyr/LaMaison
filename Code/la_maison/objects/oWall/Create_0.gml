set_layer("Tiles",depth_layer.tiles);

set_layer("Walls",depth_layer.walls);


if visible
{
	instance_create_layer(x,y,"Tiles",oTile);
}

