
//collision
var _right =		place_meeting(x+1,y,oOne_way_wall);
var _left =			place_meeting(x-1,y,oOne_way_wall);
var _top =			place_meeting(x,y-1,oOne_way_wall);
var _bottom =		place_meeting(x,y+1,oOne_way_wall);

if (!_right && !_left && !_top && !_bottom) {instance_destroy();}