if (flashing)
{
	if (get_timer() mod 10 == 0)
	{
		light_xscale = light_xscale + random_range(-flash_intensity,flash_intensity);

		if (light_xscale > 1+flash_intensity) {light_xscale = 1+flash_intensity;}
		if (light_xscale < 1-flash_intensity) {light_xscale = 1-flash_intensity;}
		light_yscale = light_xscale;
	}
}

