set_layer("Doors",depth_layer.doors);


//set variable to draw the text
font = fTyping;
valign = fa_top;
halign = fa_left;
string_w_empty = string_width(" ");
string_w = string_width(text);
string_h = string_height(text);

sprite_w = sprite_get_width(sprite_index)*image_xscale;
sprite_h = sprite_get_height(sprite_index)*image_yscale;

//show_debug_message("string_w : " + string(string_w));
//show_debug_message("string_w_empty : " + string(string_w_empty));
//show_debug_message("sprite_w : " + string(sprite_w));

if sprite_w - string_w > 0	target_xscale = 1 + (sprite_w - string_w) / sprite_w;
if sprite_h - string_h > 0  target_yscale = 1 + (sprite_h - string_h) / sprite_h;

if sprite_w - string_w <= 0	target_xscale = sprite_w/string_w;
if sprite_h - string_h <= 0	target_yscale = sprite_h/string_h;

//show_debug_message("target_xscale : " + string(target_xscale));



//door status
status = "closed";

//is the typing complete
completed = false;

with instance_create_layer(x + lengthdir_x(string_w_empty/2,image_angle),y + lengthdir_y(string_w_empty/2,image_angle),"Instances",oTyping)
{
	image_angle = other.image_angle;
	image_xscale = other.target_xscale;
	image_yscale = other.target_xscale;
	
	interaction = other;
	font = other.font;
	valign = other.valign;
	halign = other.halign;
	text = other.text;
}
