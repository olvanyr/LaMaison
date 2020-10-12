set_layer("Effects",depth_layer.effects);

set_layer("Background",depth_layer.background);

set_layer("Tiles",depth_layer.tiles);

set_layer("Walls",depth_layer.walls);

set_layer("Assets",depth_layer.assets);

set_layer("Scarf",depth_layer.scarf);

set_layer("Wallpaper",depth_layer.wallpaper);

set_layer("Player",depth_layer.player);


#region dependencise
if (!instance_exists(oInput))
{
	input = instance_create_layer(x,y,"Instances",oInput);
}

if (!instance_exists(oCamera))
{
	cam = instance_create_layer(x,y,"Instances",oCamera);
}

if (!instance_exists(oLight_manager))
{
	instance_create_layer(x,y,"Instances",oLight_manager);
}
if (!instance_exists(oMenu))
{
	instance_create_layer(x,y,"Instances",oMenu);
}
#endregion

//set up camera
cam = view_camera[0];

global.view_width = camera_get_view_width(cam);
global.view_height = camera_get_view_height(cam);