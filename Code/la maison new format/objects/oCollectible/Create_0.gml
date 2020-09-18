/// @desc

// Inherit the parent event
event_inherited();

if (in_list(global.objects_array,name)) {instance_destroy();}

anchorY = y;
frequency = 0.01;
amplitude = 2;
timer = 0;