// light_alpha : set the intensity of the light, 1 means the color on the light sprite are removed completely from the surface

//light_color : this can change the color set to noone, if no color 
//light_color_alpha : set the intensity of the color on the light, to much don't look great

//light_x = this can be change to make some efect 

// light_xscale : this can be change to change size of the light

//light_angle : this can be change to oriantate the light
state = "shut";
image_speed = 0;
image_index = image_number -1;

light_x = x;
light_y = y - 63;

delta_scale = 0.3;
scale = 0;

normal_scale = 10;
scale_speed = 0.1;
scale_shrinking_speed = 0.01;
once = false;

timer = 0;
light = false;