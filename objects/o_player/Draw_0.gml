draw_self();

if alarm[0] > 0
{
	draw_rectangle_color(x-12, y-28, x-12+(alarm[0] / (evade_time * global.one_second))*24, y-26, c_purple, c_purple, c_purple, c_purple, false);
	draw_sprite(s_enemy_health_bar, 0, x-12, y-28);
}