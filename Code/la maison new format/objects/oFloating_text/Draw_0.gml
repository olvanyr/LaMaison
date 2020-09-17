y = anchorY + sin(timer*frequency)*amplitude;
timer++;

draw_set_font(font);
draw_set_halign(halign);
draw_set_valign(valign);
draw_text_transformed_color(x,y,text,image_xscale,image_yscale,image_angle,c,c,c,c,1);