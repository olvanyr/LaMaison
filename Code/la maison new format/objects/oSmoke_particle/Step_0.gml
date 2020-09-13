x += hsp;
y += vsp;

hsp *= spd_reduction;
vsp *= spd_reduction;
hsp += wind * ((1-spd_reduction)/10);
wind -= 0.0001;
alpha *= alpha_reduction;