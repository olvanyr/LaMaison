//var splits = split_string(string(room_get_name(room)),"_");
//zone = splits[0];

//collision
right =			place_meeting(x+1,y,oWall);
left =			place_meeting(x-1,y,oWall);
top =			place_meeting(x,y-1,oWall);
bottom =		place_meeting(x,y+1,oWall);

top_left =		position_meeting(bbox_left-1,bbox_top-1,oWall);
bottom_left =	position_meeting(bbox_left-1,bbox_bottom+1,oWall);
top_right =		position_meeting(bbox_right+1,bbox_top-1,oWall);
bottom_right =	position_meeting(bbox_right+1,bbox_bottom+1,oWall);

//state machin
state = "";
#region 3side
if right && !left && !top && !bottom state =																	"_3side_t_b_l";
if !right && left && !top && !bottom state =																	"_3side_t_b_r";
if !right && !left && top && !bottom state =																	"_3side_b_l_r";
if !right && !left && !top && bottom state =																	"_3side_t_l_r";
#endregion
#region 2side_1corner
if right && !left && top && !bottom  state =															"_2side_b_l_1corner";
if !right && left && top && !bottom state  =															"_2side_b_r_1corner";
if right && !left && !top && bottom state =																"_2side_t_l_1corner";
if !right && left && !top && bottom  state =															"_2side_t_r_1corner";
#endregion
#region 2side
if right && !left && top && !bottom && top_right state =												"_2side_b_l";
if !right && left && top && !bottom && top_left state =													"_2side_b_r";
if right && !left && !top && bottom && bottom_right state =												"_2side_t_l";
if !right && left && !top && bottom && bottom_left state =												"_2side_t_r";
#endregion
#region 2side_op
if !right && !left && top && bottom  state =															"_2side_l_r";
if right && left && !top && !bottom  state =															"_2side_t_b";
#endregion
#region 4side
if !right && !left && !top && !bottom state =															"_4side";
#endregion
#region 2corner diagonal
if right && left && top && bottom && !top_left && top_right && bottom_left && !bottom_right state =		"_2corner_tl_br";
if right && left && top && bottom && top_left && !top_right && !bottom_left && bottom_right state =		"_2corner_tr_bl";
#endregion
#region 1corner
if right && left && top && bottom && !top_left && top_right && bottom_left && bottom_right state =		"_1corner_tl";
if right && left && top && bottom && top_left && !top_right && bottom_left && bottom_right state =		"_1corner_tr";
if right && left && top && bottom && top_left && top_right && !bottom_left && bottom_right state =		"_1corner_bl";
if right && left && top && bottom && top_left && top_right && bottom_left && !bottom_right state =		"_1corner_br";
#endregion
#region 2corner
if right && left && top && bottom && !top_left && !top_right && bottom_left && bottom_right state =		"_2corner_tl_tr";
if right && left && top && bottom && top_left && top_right && !bottom_left && !bottom_right state =		"_2corner_bl_br";
if right && left && top && bottom && !top_left && top_right && !bottom_left && bottom_right state =		"_2corner_tl_bl";
if right && left && top && bottom && top_left && !top_right && bottom_left && !bottom_right state =		"_2corner_tr_br";
#endregion
#region 3corner
if right && left && top && bottom && top_left && !top_right && !bottom_left && !bottom_right state =	"_3corner_tr_bl_br";
if right && left && top && bottom && !top_left && top_right && !bottom_left && !bottom_right state =	"_3corner_tl_bl_br";
if right && left && top && bottom && !top_left && !top_right && bottom_left && !bottom_right state =	"_3corner_tl_tr_br";
if right && left && top && bottom && !top_left && !top_right && !bottom_left && bottom_right state =	"_3corner_tl_tr_bl";
#endregion
#region 1side
if right && !left && top && bottom && top_right && bottom_right state =									"_1side_l";
if !right && left && top && bottom && top_left && bottom_left state =									"_1side_r";
if right && left && !top && bottom && bottom_left && bottom_right state =								"_1side_t";
if right && left && top && !bottom && top_left && top_right state =										"_1side_b";
#endregion
#region 1side_1corner
if right && !left && top && bottom && top_right && !bottom_right state =		"_1side_l_1corner_br";
if !right && left && top && bottom && !top_left && bottom_left state =			"_1side_r_1corner_tl";
if right && left && !top && bottom && !bottom_left && bottom_right state =		"_1side_t_1corner_bl";
if right && left && top && !bottom && top_left && !top_right state =			"_1side_b_1corner_tr";
#endregion
#region 1side_1corner_mirror
if right && !left && top && bottom && !top_right && bottom_right state =		"_1side_l_1corner_tr";
if !right && left && top && bottom && top_left && !bottom_left state =			"_1side_r_1corner_bl";
if right && left && !top && bottom && bottom_left && !bottom_right state =		"_1side_t_1corner_br";
if right && left && top && !bottom && !top_left && top_right state =			"_1side_b_1corner_tl";
#endregion
#region 1side_2corner
if right && !left && top && bottom && !top_right && !bottom_right state =		"_1side_l_2corner";
if !right && left && top && bottom && !top_left && !bottom_left state =			"_1side_r_2corner";
if right && left && !top && bottom && !bottom_left && !bottom_right state =		"_1side_t_2corner";
if right && left && top && !bottom && !top_left && !top_right state =			"_1side_b_2corner";
#endregion
#region 4corner
if right && left && top && bottom && !top_left && !top_right && !bottom_left && !bottom_right state =	"_4corner";
#endregion
#region borderless
if right && left && top && bottom && top_left && top_right && bottom_left && bottom_right state =	"_template";
#endregion

sprite_index = asset_get_index("sTiles_" + string(zone) + string(state));
auto_tile_random_sprite();

/*
	show_debug_message("++++++++++++++++++++++++++++++++++++++++++");
	show_debug_message("left : " + string(left));
	show_debug_message("right : " + string(right));
	show_debug_message("top : " + string(top));
	show_debug_message("bottom : " + string(bottom));
	show_debug_message("top_left : " + string(top_left));
	show_debug_message("bottom_left : " + string(bottom_left));
	show_debug_message("top_right : " + string(top_right));
	show_debug_message("bottom_right : " + string(bottom_right));
	show_debug_message("++++++++++++++++++++++++++++++++++++++++++");
	
	show_debug_message("++++++++++++++++++++++++++++++++++++++++++");
	show_debug_message("state : " + string(state));
	show_debug_message("name : " +"sTile_" + string(zone) + string(state));

	show_debug_message("++++++++++++++++++++++++++++++++++++++++++");

