creator = noone;
shadow = noone;
set_layer("Scarf",depth_layer.scarf);

if !instance_exists(shadow)
{
	with instance_create_layer(x,y,"Instances",oShadow_caster)
	{
		sprite_index = other.sprite_index;
		other.shadow = self;
	}
}