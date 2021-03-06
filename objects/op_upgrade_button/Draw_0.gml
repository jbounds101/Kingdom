draw_self();

draw_set_font(f_score_mini);
draw_set_halign(fa_center);

draw_text(x, y-60, "+25% Arrow Speed");
draw_text(x, y-45, "Current: " + string(floor(o_upgrades.arrow_speed_upgrade*100)) + "%");

if (hovering == true) and (tier != 4)
{
	if (global.coins >= cost) 
	{
		draw_text_color(x, y-30, ("COST: " + string(cost)), c_yellow, c_yellow, c_yellow, c_yellow, 1);
	}
	else
	{
		draw_text_color(x, y-30, ("COST: " + string(cost)), c_red, c_red, c_red, c_red, 1);
	}
}
else
{
	if (tier != 4)
	{
		draw_text(x, y-30, "COST: " + string(cost));
	}
	else
	{
		draw_text_color(x, y-30, "FULLY UPGRADED", c_red, c_red, c_red, c_red, 1);	
	}
}

draw_set_halign(fa_left);