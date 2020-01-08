if surface_exists(surface)
{
	var _cw = camera_get_view_width(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
	
	surface_set_target(surface);
	
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0,0,_cw,_ch,false);
	draw_set_alpha(1);
	
	with(oLight)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(light_sprite,0,light_x-_cx,light_y-_cy,light_xscale,light_yscale,light_angle,c_white,light_alpha);
		gpu_set_blendmode(bm_normal);
		
	}
	with(oLight)
	{
		
		if light_color != noone
		{
			gpu_set_blendmode(bm_add)
			draw_sprite_ext(light_sprite,0,light_x-_cx,light_y-_cy,light_xscale,light_yscale,light_angle,light_color,light_color_alpha);
			gpu_set_blendmode(bm_normal);
		}
	}
	

	
}

if !surface_exists(surface)
{
	var _cw = camera_get_view_width(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
	
	surface = surface_create(_cw,_ch);
	
	surface_set_target(surface);
	draw_set_color(surface_color);
	draw_set_alpha(surface_alpha);
	draw_rectangle(0,0,_cw,_ch,false);
	
	
}

surface_reset_target();
draw_surface(surface,_cx,_cy);