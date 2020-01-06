/// @description set_layer
/// @arg layer
/// @arg depth

var _layer = argument0;
var _depth = argument1;


//check if the layer exist, if not, creat it and move the object to the layer
if !layer_exists(_layer)
{
	layer_create(_depth,_layer);
}

layer = layer_get_id(_layer);