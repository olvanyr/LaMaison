y = anchorY + sin(timer*frequency)*amplitude;
timer++;

if (timer == 630){timer = 1;}
draw_set_font(font);
draw_set_halign(halign);
draw_set_valign(valign);
draw_text_transformed_color(x,y,text,image_xscale,image_yscale,image_angle,c,c,c,c,1);

/*
show_debug_message("timer = " + string(timer));
show_debug_message("delta_y = " + string(y - anchorY));