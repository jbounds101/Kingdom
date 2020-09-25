draw_self();

if hit_points > 0 and hit_points != max_hit_points
{
	draw_rectangle_color(x-12, y-26, x-12+(hit_points/max_hit_points)*24+1, y-24, c_white, c_white, c_white, c_white, false);
	draw_sprite(s_enemy_health_bar, 0, x-12, y-26);
}

if alarm[0] > 0
{
	draw_rectangle_color(x-12, y-32, x+2+(time_to_spawn-(alarm[0]/(global.one_second*time_to_spawn))*24), y-30, c_purple, c_purple, c_purple, c_purple, false);
	draw_sprite(s_enemy_health_bar, 0, x-12, y-32);
}