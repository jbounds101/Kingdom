if animation_hit_frame(4) and flap_sound == false
{
	var _flap_sound = audio_play_sound(so_bird_flap, 30, false);
	audio_sound_pitch(_flap_sound, random_range(0.9, 1.1));
	flap_sound = true;	
}
if animation_hit_frame(5)
{
	flap_sound = false;	
}


sprite_index = sprites[state];
if not instance_exists(o_player) 
{
	event_user(states.death);
	exit;
}
event_user(state);

