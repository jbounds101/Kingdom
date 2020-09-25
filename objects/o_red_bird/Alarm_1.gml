///@description Play chirp after x

var _chirp = audio_play_sound_at(so_red_bird_spawn, x, y, 0, 1000, 1500, 1, false, 70);
audio_sound_pitch(_chirp, random_range(0.9, 1.1));