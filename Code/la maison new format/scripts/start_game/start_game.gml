///@desc start_game
///@arg room_to_go


function start_game() {
		global.pause = false;
		instance_destroy(oMenu);
		room_goto(global.start_param[0]);
		if(!instance_exists(oPlayer))
		{
			instance_create_layer(x,y,"Instances",oPlayer);
		}
		oPlayer.x = global.start_param[1];
		oPlayer.y = global.start_param[2];
		oCamera.x = global.start_param[1];
		oCamera.y = global.start_param[2];
}