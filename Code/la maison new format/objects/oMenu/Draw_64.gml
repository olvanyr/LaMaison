if (global.pause) 
{

	var gwidth = global.view_width, gheight = global.view_height;

	display_set_gui_size(gwidth, gheight);

	// draw menu back
	var c = c_black;
	var rad = 5;
	draw_set_alpha(0.6);
	draw_roundrect_color_ext(-10,-10,gwidth+10,gheight+10,rad,rad,c,c,false);
	draw_set_alpha(1);
	draw_sprite_ext(sMenu_back,0,gwidth/2,gheight/2,(gwidth/(sprite_get_width(sMenu_back))),(gheight/(sprite_get_height(sMenu_back))),0,c_white,1);

	if (visible)
	{
		
		if (!intro_menu)
		{
			display_letter(3,gheight/2,1,1,"A",false);
			display_letter(gwidth-35,gheight/2,1,1,"E",false);
		}
		
		
		if (tab == pause_menu_tab.collectible)
		{	
			draw_circle(gwidth/2,gheight/2,circle_perimeter,true);
			
			circle_display(gwidth/2,gheight/2,circle_perimeter,global.objects_array,1.7,1.7);
			
			var scale = 2;
			draw_sprite_ext(sPlayer_idle1,0,gwidth/2,(gheight/2)+((sprite_get_height(sPlayer_idle1)/2)*scale),scale,scale,0,c_white,1);
		}
		if (tab == pause_menu_tab.settings)
		{
		
			var ds_ = menu_pages[page], ds_height = ds_grid_height(ds_); // I actualy just need the current grid that y draw
			var y_buffer = 15, x_buffer = 10; //how far away the element are from each other or from the divide line
			var start_y = (gheight/2) - ((((ds_height-1)/2)*y_buffer)), start_x = gwidth/2; // where I start to draw the text, so it is half the amout of space that I need from the center
			var ltx = start_x - x_buffer, lty, c, xo; //left text exposition ltx

			//Draw Background
		
			#region Draw elements on Left Side
			draw_set_font(fMenu);
			draw_set_valign(fa_middle);
			draw_set_halign(fa_right);

			var yy = 0; repeat(ds_height)
			{
				lty = start_y + (yy*y_buffer);
				c = text_color;
				xo = 0;
	
				if(yy == menu_option[page]) 
				{
					c = make_color_rgb(158,11,15);	
					xo = -x_buffer/2;
				}
				draw_text_color(ltx + xo, lty, ds_[# 0, yy], c,c,c,c, 1);
	
				yy++;
			}
			#endregion
			#region Draw Options on Right Side
			draw_set_halign(fa_left);
			var rtx = start_x + x_buffer, rty;

			yy = 0; repeat(ds_height){
				rty = start_y + (yy*y_buffer);
	
				switch(ds_[# 1, yy]){
					case pause_menu_element.slider:
						c = text_color;
						var len = 64;
						var current_val =(ds_[# 4, yy]);
						draw_line_width(rtx, rty, rtx + len, rty, 2);
			
						if(inputting and yy == menu_option[page]){ c = c_yellow; }
						draw_circle_color(rtx + (current_val * len), rty, 4, c,c, false);
						draw_text_color(rtx + (len*1.2), rty, string( floor(current_val*100) )+"%", c,c,c,c, 1);
			

					break;
		
					case pause_menu_element.toggle:
						c = text_color;
						var current_val = ds_[# 3, yy];
						var c1;
						var screen = "ON";
						if(current_val == 0){ c1 = c;screen = "OFF"; }
						if(current_val == 1){ c1 = c;screen = "ON"; }
			
						draw_text_color(rtx, rty, screen, c1,c1,c1,c1, 1);

					break;
		
					case pause_menu_element.input:
						var current_val = ds_[# 3, yy];
						switch(current_val){
							case vk_up:		current_val = "UP KEY"; break;
							case vk_left:	current_val = "LEFT KEY"; break;
							case vk_right:	current_val = "RIGHT KEY"; break;
							case vk_down:	current_val = "DOWN KEY"; break;
							case vk_space:	current_val = "SPACE"; break;
							case vk_escape:	current_val = "ESCAPE"; break;
							case vk_enter:	current_val = "ENTER"; break;
							default:		current_val = chr(current_val); 
						}
						c = text_color;
						if(inputting and yy == menu_option[page]){ c = c_yellow; }
						draw_text_color(rtx, rty, current_val, c,c,c,c, 1);
					break;
				}
	
				yy++;
			}
			#endregion
			#region draw other element
			#endregion
	
	
		}
	}
}