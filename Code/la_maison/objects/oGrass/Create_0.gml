/// @description Insert description here
x = floor(x);


rng = irandom_range(1,5);
if rng == 5
{
	if !layer_exists("Grass_back")
	{
		layer_create(depth_layer.grass_back,"Grass_back");
	}
	layer_depth(layer_get_id("Grass_back"), depth_layer.grass_back);
	layer = layer_get_id("Grass_back");

}else
{
	if !layer_exists("Effects")
	{
		layer_create(depth_layer.effects,"Effects");
	}
	layer_depth(layer_get_id("Effects"), depth_layer.effects);
	layer = layer_get_id("Effects");
}

move_contact_solid(270, -1);


image_speed = 0;


grass[0] = sGrass0;
grass[1] = sGrass1;
grass[2] = sGrass2;
grass[3] = sGrass3;
grass[4] = sGrass4;
grass[5] = sGrass5;
grass[6] = sGrass6;
grass[7] = sGrass7;
grass[8] = sGrass8;
grass[9] = sGrass9;
grass[10] = sGrass10;
grass[11] = sGrass11;
grass[12] = sGrass12;
grass[13] = sGrass13;
grass[14] = sGrass14;
grass[15] = sGrass15;
grass[16] = sGrass16;
grass[17] = sGrass17;
grass[18] = sGrass18;
grass[19] = sGrass19;

rng = irandom_range(1,array_length_1d(grass)-1);
sprite_index = grass[rng];


xskew = 0;
xset = 0;
/*
show_debug_message("distance to bottom : " + string(distance_to_bottom));
show_debug_message("distance to top : " + string(distance_to_top));
show_debug_message("distance to top platform : " + string(distance_to_top_platform));


