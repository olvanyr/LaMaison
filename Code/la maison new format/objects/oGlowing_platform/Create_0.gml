set_layer("Glowing_walls",depth_layer.glowing_walls);
set_layer("Walls",depth_layer.walls);

once = false;

dominante_color = choose("red","green","blue");

red = random_range(0,255);
blue = random_range(0,255);
green = random_range(0,255);

if (dominante_color == "red") {red = 200; rect_c_clear = make_color_rgb(red+55,green,blue);}
if (dominante_color == "green") {green = 200; rect_c_clear = make_color_rgb(red,green+55,blue);}
if (dominante_color == "blue") {blue = 200; rect_c_clear = make_color_rgb(red,green,blue+55);}

rect_c = make_color_rgb(red,green,blue);

//rect_c_clear = make_color_rgb(red,green,blue);