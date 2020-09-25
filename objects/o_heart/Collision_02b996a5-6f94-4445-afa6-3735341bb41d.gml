if o_player.hit_points < o_player.max_hit_points
{
	o_player.hit_points += 1;
	instance_destroy();
	audio_stop_sound(so_coin);
	_sound = audio_play_sound(so_coin, 40, false);
	audio_sound_pitch(_sound, random_range(0.9, 1.1));
}