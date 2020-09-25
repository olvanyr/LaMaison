
_x += hsp;
_y += vsp;

alpha -= alpha_delta;

draw_set_font(font);
draw_set_halign(halign);
draw_set_valign(valign);

draw_text_ext_transformed_color(_x,_y,text,font_get_size(font),length,xscale,yscale,1,c,c,c,c,alpha);

timer++;
if (timer >= lifespan || alpha <= 0){instance_destroy()};