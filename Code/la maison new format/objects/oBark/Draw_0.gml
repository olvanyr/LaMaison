
_x += hsp;
_y += vsp;

alpha -= alpha_delta;

draw_text_ext_transformed_color(_x,_y,text,1,100,xscale,yscale,1,c,c,c,c,alpha);

timer++;
if (timer >= lifespan || alpha <= 0){instance_destroy()};