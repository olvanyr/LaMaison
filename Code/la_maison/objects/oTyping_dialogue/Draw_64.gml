draw_set_font(font);
draw_set_halign(halign);
draw_set_valign(valign);
draw_text_transformed_color(x,y,text,image_xscale,image_yscale,image_angle,c_back,c_back,c_back,c_back,1);
draw_text_transformed_color(x,y,text_part,image_xscale,image_yscale,image_angle,c_front,c_front,c_front,c_front,1);