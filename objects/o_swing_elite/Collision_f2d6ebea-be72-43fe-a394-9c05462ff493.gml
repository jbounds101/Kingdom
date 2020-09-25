if not (other.state = player_states.roll) and not (other.invincible)
{
	if other.alarm[0] <= 0
	{
		if player_hit == false
		{
			player_hit = true;
			o_player.hit_points -= 1;
			var _hit_sound = audio_play_sound(so_player_hit, 80, false);
			audio_sound_pitch(_hit_sound, random_range(0.9, 1.1));
			o_player.move_x = o_knight_elite.attack_knockback * image_xscale;
			o_player.state = player_states.knockback;
			repeat random_range(20, 30)
			{
				create_particle((o_player.x + (10 * image_xscale)), y-14, random_range(4, 6), random(360), 1, 
				c_dkgray, o_gravity_particle);
			}
		}
	}
}


