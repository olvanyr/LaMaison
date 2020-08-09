/// @description split_string(x,y,perimeter)
/// @arg x
/// @arg y
/// @arg perimeter
/// @arg array_of object to display

var _x = argument0;
var _y = argument1;
var perimeter = argument2;
var array = argument3;
var angle = 0;
var number = array_length_1d(array);

for (var i = 0; i < number+0; i++)
{
	angle = i * 360/number
	var _x_angle = _x + lengthdir_x(perimeter,angle);
	var _y_angle = _y + lengthdir_y(perimeter,angle);
	draw_sprite(string_to_object(array[i]),0,_x_angle,_y_angle);
}