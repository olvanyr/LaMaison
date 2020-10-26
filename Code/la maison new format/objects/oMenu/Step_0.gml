if (global.pause) 
{
	if (!instance_exists(oInput))
	{
		input = instance_create_layer(0,0,"Instances",oInput)
	}else 
	{
		input = oInput;
	}
	

	//Set every menu fonctionality depending of the page
	var ds_ = menu_pages[page], ds_height = ds_grid_height(ds_);

	
	//changing tab
	if (!inputting && page == 1 && !intro_menu)
	{
		if (keyboard_check_pressed(ord("A"))) {tab ++;}
		if (keyboard_check_pressed(ord("E"))) {tab --;}
	}
	
	if (tab > pause_menu_tab.length-1) {tab = 0;}
	if (tab < 0) {tab = pause_menu_tab.length-1;}
	
	
	if (tab == pause_menu_tab.settings)
	{
		if(inputting){
		
			switch(ds_[# 1, menu_option[page]]){		
				case pause_menu_element.slider:
					var hinput = max(input.right,input.menu_right) - max(input.left,input.menu_left);
					if(hinput != 0){

						ds_[# 4, menu_option[page]] += hinput * 0.005;
						ds_[# 4, menu_option[page]] = clamp(ds_[# 4, menu_option[page]], 0, 1);
						variable_global_set(ds_[# 3, menu_option[page]], ds_[# 4, menu_option[page]]);
						change_volume(); //dynamicaly change the solume
						alarm[1] = 1; // use to save the settings after they are edited
				
					}
			
				break;
		
				case pause_menu_element.toggle:
					script_execute(ds_[# 2, menu_option[page]]);
					ds_[# 3, menu_option[page]] = !ds_[# 3, menu_option[page]];
					inputting = !inputting;
					alarm[1] = 1; // use to save the settings after they are edited
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
					alarm[1] = 1; // use to save the settings after they are edited
				}
		
				break;
			}
	
		} else 
		{
			if (toggle == false)
			{
		
				var ochange = max(input.down,input.menu_down) - max(input.up,input.menu_up);
				if (ochange == 0) {last_input = 0;}
		
				if(ochange != 0 && last_input == 0)
				{
					last_input = 1;
					menu_option[page] += ochange;
					if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
					if(menu_option[page] < 0) { menu_option[page] = ds_height-1; }
				//audio
				audio_play_sound(down_up_sound,5,false);
				}
			}
		}

		if(input.enter || input.jump){
			switch(ds_[# 1, menu_option[page]]){
				case pause_menu_element.script_runner: script_execute(ds_[# 2, menu_option[page]]); break;
				case pause_menu_element.page_transfer: page = ds_[# 2, menu_option[page]]; break;
				case pause_menu_element.slider:
				case pause_menu_element.toggle:
				case pause_menu_element.input:
					inputting = !inputting;
					break;
		
			}
	
			//audio
			audio_play_sound(inputting_sound,5,false);
	
		}
	}

}
/*
#region save setting

if(save_setting)
{
	save_settings();
	save_setting = false;

}
#endregion
