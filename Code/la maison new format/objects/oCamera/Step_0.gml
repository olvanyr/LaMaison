//update camera


//zoom 

if(zoom > global.zoom_max) {zoom = global.zoom_max;}


/*
if keyboard_check(ord("A"))
{
	zoom += 0.001;
}
if keyboard_check(ord("E"))
{
	zoom -= 0.001;
}
*/

//update destination
if (instance_exists(follow))
{
	xTo = follow.x
	yTo = follow.y
}


	

//update object position
var _x = (xTo - x) / 25
var _y = (yTo - y) / 25

x += _x;
y += _y;

//Keep camera centre isnide room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);



//screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0,shake_remain -((1/shake_length)*shake_magnitude));

//update camera view
camera_set_view_size(cam,  view_w * zoom, view_h * zoom);
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;



camera_set_view_pos(cam, x - view_w_half, y - view_h_half);


