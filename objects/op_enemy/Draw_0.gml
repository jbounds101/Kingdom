draw_self();

if hit_points > 0 and hit_points != max_hit_points
{
	draw_rectangle_color(x-12, y-26, x-12+(hit_points/max_hit_points)*24+1, y-24, c_white, c_white, c_white, c_white, false);
	draw_sprite(s_enemy_health_bar, 0, x-12, y-26);
}