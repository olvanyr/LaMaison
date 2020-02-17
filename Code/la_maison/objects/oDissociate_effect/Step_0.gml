angle += angle_dir;

alpha += alpha_life 
if alpha >= 1 alpha_life = -alpha_life

show_debug_message("alpha : " + string(alpha));
show_debug_message("alpha-lifr : " + string(alpha_life));

if alpha <= 0	instance_destroy();