draw_set_font(f_score_mini);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

if not input_finished
{
draw_text(room_width/2, 14, "NEW HIGH SCORE!");
draw_text(room_width/2, 40, "ENTER NAME: ");
draw_text(room_width/2, 66, "PRESS (ENTER) TO CONFIRM");
draw_text(room_width/2, 100, input_string);

}

if input_finished
{
	var _y = 12;

	draw_text(room_width/2, 10, "HIGH SCORES - (PRESS (ENTER) TO RETURN TO MENU)");
	for (var i = 0; i<10; i++)
	{
		_y += 16;
		draw_set_halign(fa_right);
		draw_text(room_width/2 - 10, _y, string(global.score_array[i, 0]));
		draw_set_halign(fa_left);
		draw_text(room_width/2 + 10, _y, string(global.score_array[i, 1]));
		draw_set_halign(fa_center);
	}

}
draw_set_valign(fa_top);
draw_set_halign(fa_left);