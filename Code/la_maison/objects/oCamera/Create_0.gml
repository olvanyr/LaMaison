//set up camera
cam = view_camera[0];

view_w = camera_get_view_width(cam);
view_h = camera_get_view_height(cam);
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

zoom = 1;