set_layer("Tiles",depth_layer.tiles);
layer_depth("Assets",depth_layer.assets);

set_layer("Walls",depth_layer.walls);

set_layer("Player",depth_layer.player);

#region dependencise
if !instance_exists(oInput)
{
	input = instance_create_layer(0,0,"Instances",oInput);
}
if !instance_exists(oScarf)
{
	with instance_create_layer(x,y,"Instances",oScarf)
	{
		creator = other.id;
	}
}
if !instance_exists(shadow)
{
	with instance_create_layer(x,y,"Instances",oShadow_caster)
	{
		sprite_index = other.sprite_index;
		other.shadow = self;
	}
}

if !instance_exists(oCamera)
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