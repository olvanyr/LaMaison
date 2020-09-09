if (get_timer() mod 10 == 0)
{
	light_xscale = light_xscale + random_range(-0.2,0.2);

	if (light_xscale > 1.2) {light_xscale = 1.2;}
	if (light_xscale < 0.8) {light_xscale = 0.8;}
	light_yscale = light_xscale;
}