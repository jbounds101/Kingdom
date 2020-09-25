if o_game.paused
{
	visible = true;
	// 100 - 240 - 380
	x = camera_get_view_x(view_camera[0]) + 100;
	y = camera_get_view_y(view_camera[0]) + 100;	
	image_index = tier;
	
	
	if hovering
	{
		if (global.coins >= cost) and (tier != 4)
		{
			if o_input.left_click_clicked
			{
				o_upgrades.arrow_speed_upgrade += 0.25;
				global.coins -= cost;
				tier += 1;
				cost *= 2;
				audio_play_sound(so_buy_upgrade, 80, false);
			}
		}
	}
}
else
{
	visible = false;
	x = 0;
	y = 0;
}