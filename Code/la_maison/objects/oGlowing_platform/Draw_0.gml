var width = sprite_get_width(sprite_index)*image_xscale;
var height = sprite_get_height(sprite_index)*image_yscale;

//draw_sprite_ext(sGlowing_platform,0,x,y,image_xscale,image_yscale,direction,c,image_alpha);
//draw_rectangle_color(x,y,x + width,y + height,rect_c,rect_c,rect_c,rect_c,true);

draw_roundrect_color_ext(x - 1,y - 1,x - 1 + width,y - 1 + height,3,3,rect_c_clear,rect_c_clear,false);
draw_roundrect_color_ext(x,y,x - 2 + width,y - 2 + height,3,3,rect_c,rect_c,false);