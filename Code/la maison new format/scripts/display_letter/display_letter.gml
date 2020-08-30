///@desc hsp_and_collide(x,y,xscale,yscale,letter,index)
///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg letter
///@arg animated
function display_letter(_x,_y,_xscale,_yscale,_letters,_index) {
	

	var sprite = asset_get_index("sLetter_" + "A");


	var width = sprite_get_width(sprite);
	for(var i = 1; i < string_length(_letters)+1;i+=1)
	{
		var _letter = string_char_at(_letters,i);
		
		var sprite = asset_get_index("sLetter_" + _letter);
		draw_sprite_ext(sprite,_index,_x + width*i,_y,_xscale,_yscale,0,c_white,1);
	}
}