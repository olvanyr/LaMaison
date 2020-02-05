if instance_exists(oCamera)
{
	if abs(x - oCamera.x) > oCamera.view_w
	{
		instance_destroy();
	}
}

timer += 0.1;


y += sin(timer) / 4;