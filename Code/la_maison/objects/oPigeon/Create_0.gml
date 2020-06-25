state = "idle";
timer = 0;
start_x = x;
max_range = 20;

fly = irandom(5);
type = irandom(1);

fov = 20;
var random_depth = irandom(1)

if random_depth
{
	set_layer("Effects",depth_layer.effects);
}else set_layer("Tiles",depth_layer.tiles);

if type == 0
{
	anim_idle = sPigeon_idle0;
	anim_eat = sPigeon_eat0;
	anim_look = sPigeon_look0;
	anim_stand = sPigeon_stand0;
	anim_walk = sPigeon_walk0;
	anim_fly = sPigeon_fly0;
}
if type == 1
{
	anim_idle = sPigeon_idle1;
	anim_eat = sPigeon_eat1;
	anim_look = sPigeon_look1;
	anim_stand = sPigeon_stand1;
	anim_walk = sPigeon_walk1;
	anim_fly = sPigeon_fly1;
}

rng = 100;