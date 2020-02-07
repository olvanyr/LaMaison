
if !instance_exists(oInput)
{
	input = instance_create_layer(0,0,"Instances",oInput)
}else input = oInput;

//Set every menu fonctionality depending of the page
var ds_ = menu_pages[page], ds_height = ds_grid_height(ds_);
	

// if the action is not simple, we go ther by inputing
/*
if(inputting){
	switch(ds_[# 1, menu_option[page]])
	{
		case <expression2>:
		
		break;
		//in the simple branching dialogue system, we don't have that
	}
	
}
*/
//thing that happen even when not inputing
switch(ds_[# 1, 0]){
	case menu_element.text: 
		
		face_one = (ds_[# 2, 0]); 
		face_two = (ds_[# 3, 0]); 
	break;
}
//face_one = sprite_get_name(ds_[# 2, 0]); 
//show_debug_message("face_one : " + string((face_one)));


if !inputting //if we are not inputing it means that we can move in the menu
{
	//beacause it is a dialogue system, wee need to ignore the first option
	var first_page = 1; //if we want to include the first option, we put this variable
	var ochange = input.menu_down - input.menu_up;
	if(ochange != 0)
	{
		menu_option[page] += ochange;
		//audio
		audio_play_sound(down_up_sound,5,false);
	}
	
	if(menu_option[page] > ds_height-1) { menu_option[page] = first_page; }
	if(menu_option[page] < first_page) { menu_option[page] = ds_height-1; }
}



//when we presse enter, I input and execute the action if simple or a sinlge script
if(input.enter){
	switch(ds_[# 1, menu_option[page]]){
		case menu_element.script_runner: script_execute(ds_[# 2, menu_option[page]]); break;
		case menu_element.page_transfer: page = ds_[# 2, menu_option[page]]; break;
			inputting = !inputting;
			break;
	}
	//audio
	audio_play_sound(inputting_sound,5,false);
	
}
