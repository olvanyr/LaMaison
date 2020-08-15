
if !instance_exists(oInput)
{
	input = instance_create_layer(0,0,"Instances",oInput)
}else input = oInput;


//Set every menu fonctionality depending of the page
var ds_ = menu_pages[page], ds_height = ds_grid_height(ds_);
	

if(inputting){
		
	switch(ds_[# 1, menu_option[page]]){		
		case pause_menu_element.slider:
			var hinput = input.right - input.left;
			if(hinput != 0){

				ds_[# 4, menu_option[page]] += hinput * 0.05;
				ds_[# 4, menu_option[page]] = clamp(ds_[# 4, menu_option[page]], 0, 1);
				variable_global_set(ds_[# 3, menu_option[page]], ds_[# 4, menu_option[page]]);
				change_volume(); //dynamicaly change the solume
				
				
			}
			
		break;
		
		case pause_menu_element.toggle:
		var hinput = input.right - input.left;
			if(hinput != 0){
				//audio
				
				ds_[# 3, menu_option[page]] += hinput;
				ds_[# 3, menu_option[page]] = clamp(ds_[# 3, menu_option[page]], 0, 1);
			}
		break;
		
		case pause_menu_element.input:
		if(any_pressed == 0)
		{
			var kk = keyboard_lastkey;
			if(kk != vk_enter){
				if(kk != ds_[# 3, menu_option[page]]) //audio
				ds_[# 3, menu_option[page]] = kk;
				variable_global_set(ds_[# 2, menu_option[page]], kk);
			}
		}
		
		break;
	}
	
} else 
{
	if toggle == false
	{
		var ochange = input.menu_down - input.menu_up;
		if(ochange != 0)
		{
			menu_option[page] += ochange;
			if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
			if(menu_option[page] < 0) { menu_option[page] = ds_height-1; }
		//audio
		audio_play_sound(down_up_sound,5,false);
		}
	}
}

if(input.enter){
	switch(ds_[# 1, menu_option[page]]){
		case pause_menu_element.script_runner: script_execute(ds_[# 2, menu_option[page]]); break;
		case pause_menu_element.page_transfer: page = ds_[# 2, menu_option[page]]; break;
		case pause_menu_element.slider:
		case pause_menu_element.toggle: if(inputting){ script_execute(ds_[# 2, menu_option[page]], ds_[# 3, menu_option[page]]); }
		case pause_menu_element.input:
			inputting = !inputting;
			alarm[1] = 1; // use to save the settings after they are edited
			break;
	}
	//audio
	audio_play_sound(inputting_sound,5,false);
	
}


/*
#region save setting

if(save_setting)
{
	save_settings();
	save_setting = false;

}
#endregion
