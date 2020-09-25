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
			
			var _knockback_direction;
			if direction >= 90 and direction < 270
			{
				_knockback_direction = -1;
			}
			else
			{
				_knockback_direction = 1;	
			}
			
			o_player.move_x = knockback * _knockback_direction;
			o_player.state = player_states.knockback;
			repeat random_range(4, 6)
			{
				create_particle(x, y, random_range(4, 4.5), (direction - 180) + random_range(-45, 45), 1, 
				make_color_rgb(34, 32, 52), o_gravity_particle);
			}
			instance_destroy();
		}
	}
}