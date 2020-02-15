event_inherited();
var c = c_yellow;

var _x = x +  (global.tile_size*2);
draw_rectangle_color(_x,y,_x,y,c,c,c,c,0);

var _x = x +  (global.tile_size*2);
var _y = y -  (global.tile_size);
draw_rectangle_color(_x,_y,_x,_y,c,c,c,c,0);

var _x = x +  (global.tile_size*2);
var _y = y -  (global.tile_size*2);
draw_rectangle_color(_x,_y,_x,_y,c,c,c,c,0);

var _x = x +  (global.tile_size);
var _y = y -  (global.tile_size*3);
draw_rectangle_color(_x,_y,_x,_y,c,c,c,c,0);