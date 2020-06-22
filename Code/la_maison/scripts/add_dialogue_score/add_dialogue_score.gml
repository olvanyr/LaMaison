var ds_ = argument0;

for(var i=3;i<7;i+=2)
{
	rate_score[ds_[# i, menu_option[page]]] += ds_[# i+1, menu_option[page]];
	if rate_score[ds_[# i, menu_option[page]]] > max_score rate_score[ds_[# i, menu_option[page]]] = max_score;
	if rate_score[ds_[# i, menu_option[page]]] < 0 rate_score[ds_[# i, menu_option[page]]] = 0;
	
	if rate_score[ds_[# i, menu_option[page]]] == 0 || rate_score[ds_[# i, menu_option[page]]] == max_score 
	{
		with instance_create_layer(x,y,layer,oTransition)
		{
			state = "closing";
			next_room = room;
			timer = -3;
		}
		//room_restart();
	}
//rate_score[ds_[# 5, menu_option[page]]] += ds_[# 6, menu_option[page]];
}