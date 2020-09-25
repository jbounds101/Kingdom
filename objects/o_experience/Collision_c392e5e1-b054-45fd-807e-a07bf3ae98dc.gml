o_player.xp_points += 1;

audio_stop_sound(so_xp);
_sound = audio_play_sound(so_xp, 30, false);
audio_sound_pitch(_sound, random_range(0.9, 1.1));
	
instance_destroy();