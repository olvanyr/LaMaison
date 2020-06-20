enum depth_layer
{
	sky			= -2000,
	light		= -1500,
	effects		= -1000,
	typing		= - 500,
	player		= 0,
	scarf		= 50,
	shadows		= 100,
	doors		= 120,
	tiles		= 150,
	grass_back = 170,
	walls		= 200,
	assets		= 1000,
	lamppost	= 1200,
	bush		= 1300,
	tree		= 1500,
	background  = 3600
}
//unified color for when you have to type siomething
global.typing_color = c_blue;


global.zoom_max = 4;

global.tile_size = 8;

room_goto_next();