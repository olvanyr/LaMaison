
wind = -1;

spd_reduction = 0.999;
alpha_reduction = 0.999;

image_speed = random_range(0.005,0.01);
image_index = random_range(0,6);
x += random_range(-3,3);
vsp = random_range(-0.1,-0.05);
hsp = random_range(-0.01,0.01);
image_xscale = choose(1,-1);
image_yscale = choose(1,-1);
alpha = 1;
color = c_white;
image_angle = random_range(0,360);

/*
image_speed = random_range(0.05,0.1);
image_index = random_range(0,6);
x += random_range(-3,3);
vsp = random_range(-0.4,-0.2);
hsp = random_range(-0.2,0.2);
image_xscale = choose(1,-1);
image_yscale = choose(1,-1);
alpha = 1;
color = c_white;
image_angle = random_range(0,360);
