angle += angle_dir;

alpha += alpha_life 
if (alpha >= 1) {alpha_life = -alpha_life}

if (alpha <= 0)	{instance_destroy();}