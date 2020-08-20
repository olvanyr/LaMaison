


if (gravity_affected)
{
	//Aplly gravity
	vsp += gravity_speed;
	vsp += vsp_fraction;
	
	vsp_fraction = frac(vsp);
	
	vsp = vsp - vsp_fraction;
}

move_and_collide();


