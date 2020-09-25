if room == r_play
{
	if paused
	{
		draw_set_halign(fa_middle);
		draw_set_font(f_score);
		draw_text(view_get_wport(view_camera[0])/2, 24, "COINS: " + string(global.coins));	
		draw_set_halign(fa_left);
	}
	
	

	if not instance_exists(o_player) exit;

	var _health_border = 100;
	var _stamina_border = 120;

	var _stamina_regen_offset = 88;

	var _right_edge = max(_health_border*o_player.max_hit_points, _stamina_border*o_player.max_stamina) + 10;

	draw_sprite_ext(s_hud, 0, 0, 0, _right_edge, 1, 0, c_white, 1);
	draw_sprite(s_hud_edge, 0, _right_edge, 0);

	for (var i = 0; i < o_player.max_hit_points; i++)
	{
		var _filled = i < o_player.hit_points;
		draw_sprite(s_heart_ui, _filled, 6+_health_border*i, 0);
	}	

	for (var i = 0; i < o_player.max_stamina; i++)
	{
		var _filled = i < o_player.stamina;
		var _recharge = i < (o_player.stamina+1);
		draw_sprite(s_stamina_ui, _filled+_recharge, 4+_stamina_border*i, 100);
	}	

	if (o_player.stamina < o_player.max_stamina)
	{
		var _color = make_color_rgb(87,49,102);
		draw_rectangle_color(_stamina_border*o_player.stamina+_stamina_regen_offset, 136, 
		(_stamina_border*o_player.stamina)+(-o_player.alarm[1] / 
		(o_player.stamina_gain_time * global.one_second)*70+_stamina_regen_offset), 
		159, _color, _color, _color, _color, false);
	}




	draw_sprite_ext(s_hud, 0, 1450, 0, 500, 0.4, 0, c_white, 1);
	draw_sprite_ext(s_hud_edge, 0, 1450, 0, -1, 0.4, 0, c_white, 1);

	draw_set_font(f_score);

	if global.score_points >= 100000
	{
		zero = "";
	}
	else if global.score_points >= 10000
	{
		zero = "0";
	} 
	else if global.score_points >= 1000
	{
		zero = "00";	
	}
	else if global.score_points >= 100
	{
		zero = "000";	
	}
	else if global.score_points >= 10
	{
		zero = "0000";	
	}
	else if global.score_points >= 0
	{
		zero = "00000";	
	}


	draw_text(1460, 10, "SCORE: " + zero + string(global.score_points));
	draw_text(20, 1000, "LEVEL: " + string(o_player.level));
	draw_text(1560, 1000, "COINS: " + string(global.coins));


	draw_rectangle_color(320, 1064, 320+((o_player.xp_points/o_player.xp_until_next_level)*384)+1, 1000, c_white, c_white, c_white, c_white, false);
	draw_sprite(s_xp_bar, 0, 320, 1000);
}
if room == r_controls
{
	draw_set_font(f_score)
	draw_text(180, 200, "MOVE: A or D");
	draw_text(180, 300, "SHOOT: LEFT MOUSE (HOLD)");
	draw_text(180, 400, "BLINK: Q");
	draw_text(180, 500, "ROLL: SPACEBAR");
	draw_text(180, 600, "UPGRADES: ESCAPE");
}