
if (!instance_exists(oInput))
{
	input = instance_create_layer(0,0,"Instances",oInput)
}else 
{
	input = oInput;
}

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
switch(ds_[# 1, menu_option[page]]){

	case menu_element.typing: 
		var text_part_lenght = string_length(text_part);
		var keyboard_string_lenght = string_length(keyboard_string);
		var text_lenght = string_length(text);

		if (string_copy(text,text_part_lenght + 1,1) == chr(32))
		{
			text_part += chr(32);
			//keyboard_string += " "
		}
		if (string_copy(keyboard_string,keyboard_string_lenght,1) == string_copy(text,text_part_lenght + 1,1))
		{
			text_part += string_copy(keyboard_string,keyboard_string_lenght,1);
			keyboard_string = "";
		}

		if (text_part_lenght == text_lenght)
		{
			completed = true;
		}
		
		//show_debug_message("keyboard_string : " + string(keyboard_string));
		//show_debug_message("text_part : " + string(text_part));
		//show_debug_message("text : " + string(text));
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
if(input.enter && !oClap_effect.draw){
		
	switch(ds_[# 1, menu_option[page]]){
		case menu_element.script_runner: script_execute(ds_[# 2, menu_option[page]]); break;
		case menu_element.page_transfer: 
		{
			if (rate)
			{
				add_dialogue_score(ds_);	
				//show_debug_message(rate_score);
			}
			page = ds_[# 2, menu_option[page]]; 
			menu_option[page] = 1;
		}break;
		case menu_element.typing: 
			if (completed = true) 
			{
				if (rate)
				{
					add_dialogue_score(ds_);
					//show_debug_message(rate_score);
				}
				page = ds_[# 2, menu_option[page]]; 
				completed = false;
				text_part = "";
				text = "";
			}
			break;
			inputting = !inputting;
			break;
	}
	
	if (completed = true) 
	{
		completed = false;
		text_part = "";
		text = "";
	}
	//audio
	audio_play_sound(inputting_sound,5,false);
	
}