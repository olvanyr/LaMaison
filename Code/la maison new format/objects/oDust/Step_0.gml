x += hsp;
y += vsp;

if (alpha > 1) 
{
	oppening = false;
	delta_alpha = -delta_alpha;
}

alpha += delta_alpha;


if (alpha < 0 && !oppening) {instance_destroy();}