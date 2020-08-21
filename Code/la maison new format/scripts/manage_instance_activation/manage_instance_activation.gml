///@description cmanage_instance_activation

function manage_instance_activation(){
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_activate_all();

//instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);
instance_deactivate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, false, true);
instance_activate_object(oInput);
instance_activate_object(oLight_manager);
instance_activate_object(oSurface_light);
instance_activate_object(oCamera);
instance_activate_object(oClap_effect);
instance_activate_object(oSky);
instance_activate_object(oMenu);
instance_activate_object(oEffect_controller);
}