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
#endregion

//set up camera
cam = view_camera[0];

global.view_width = camera_get_view_width(cam);
global.view_height = camera_get_view_height(cam);