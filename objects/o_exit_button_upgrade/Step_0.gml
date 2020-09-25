if o_game.paused
{
	x = camera_get_view_x(view_camera[0]) + 420;
	y = camera_get_view_y(view_camera[0]) + 220;
	visible = true;
	if image_index == 1
	{
		if o_input.left_click_clicked
		{
			o_game.paused = false;
			global.coins = 0;
			global.score_points = 0;
			room_goto(r_menu);
		}
	}
}
else
{
	visible = false;
	x = 0;
	y = 0;
}	

