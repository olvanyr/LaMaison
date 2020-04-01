

global.view_width	= camera_get_view_width(view_camera[0]) * 8;
global.view_height	= camera_get_view_height(view_camera[0]) * 8;

display_set_gui_size(global.view_width, global.view_height);

var gwidth = global.view_width, gheight = global.view_height;


var ds_ = menu_pages[page], ds_height = ds_grid_height(ds_); // I actualy just need the current grid that y draw
var y_buffer = 50, x_buffer = 16; //how far away the element are from each other or from the divide line
var start_y = (gheight/2) - ((((ds_height-1)/2)*y_buffer)), start_x = gwidth/4; // where I start to draw the text, so it is half the amout of space that I need from the center
var ltx = start_x - x_buffer, lty, c, xo; //left text exposition ltx

//Draw Background
var background_sprite = sDialogue_box;
draw_sprite_ext(background_sprite,0,start_x,gheight/2,1,1,0,c_white,1);


#region Draw text elements
draw_set_font(fMenu);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

var yy = 0; 


repeat(ds_height)
{
	lty = start_y + (yy*y_buffer);
	c = make_color_rgb(225,43,43);
	xo = - string_width(ds_[# 0, 0])/2;
	
	if(yy == menu_option[page]) 
	{
		if ds_[# 1, menu_option[page]] == menu_element.typing
		{
			c = global.typing_color;
		}else c = make_color_rgb(220,216,216);	
		xo = x_buffer/2 - (string_width(ds_[# 0, 0])/2);
	}
	
	if yy = 0
	{
		  var ltx = start_x + (3*x_buffer); //left text exposition ltx
	}else var ltx = start_x - (4*x_buffer); //left text exposition ltx
	
	draw_text_color(ltx + xo, lty, ds_[# 0, yy], c,c,c,c, 1);
	switch(ds_[# 1, menu_option[page]])
	{
		
		case menu_element.typing: 
			text = ds_[# 0, menu_option[page]];
			//show_debug_message("text : " + string(text));
			//show_debug_message("text_part : " + string(text_part));
			if(yy == menu_option[page]) 
			{
				var c = make_color_rgb(220,216,216);
				draw_text_color(ltx + xo, lty, text_part, c,c,c,c, 1);
			}
			
		break;
	}
	
	
	yy++;
}
#endregion

#region Draw Options on Right Side //don't realy used neither into a simple dialogue system
/*
draw_set_halign(fa_left);
var rtx = start_x + x_buffer, rty;

yy = 0; repeat(ds_height){
	rty = start_y + (yy*y_buffer);
	
	switch(ds_[# 1, yy]){
	}
	
	yy++;
}
*/
#endregion


#region draw other element
//draw_face


var background_width = sprite_get_width(background_sprite);
draw_sprite_ext(face_one,0,(start_x) - (background_width/2),gheight/2,4,4,0,c_white,1);
draw_sprite_ext(face_two,0,(start_x) + (background_width/2),gheight/2,4,4,0,c_white,1);
#endregion
