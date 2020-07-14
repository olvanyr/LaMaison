x = oPlayer.x;
y = oPlayer.y;

if keyboard_check_pressed(vk_pagedown) number --;
if keyboard_check_pressed(vk_pageup) number ++;

for (var i = 0; i < number+0; i++)
{
	angle = i * 360/number
	var _x = x + lengthdir_x(perimeter,angle);
	var _y = y + lengthdir_y(perimeter,angle);
	draw_sprite(sT_shirt,0,_x,_y);
}