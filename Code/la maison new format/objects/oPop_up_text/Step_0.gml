if (instance_place(x,y,oPlayer))
{
	if (instance == noone)
	{
		instance = instance_create_layer(x,y - 10,"Instances",oBark);
		instance.text = text;
		instance.lifespan = lifespan;
		instance.halign = fa_center;
		instance.valign = fa_middle;
		if (once){instance_destroy()};
	}
	
}else
{
	if (instance != noone)
	{
		instance_destroy(instance);
	}
	instance = noone;
}