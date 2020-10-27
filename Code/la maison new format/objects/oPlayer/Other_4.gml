if (!instance_exists(oCamera))
{
	cam = instance_create_layer(0,0,"Instances",oCamera);
}else {cam = oCamera;}

//if the player is out of the forest, save the starting room to be the house
if (room == rMaison)
{
	global.start_param[0] = rMaison;
	save_game();
}