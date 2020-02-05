if !instance_exists(oBullet_time)
{
	instance_create_layer(x,y,"Instances",oBullet_time)
}

global.bullet_time = !global.bullet_time;