if not other.invincible
{
	if not (other.state = player_states.roll)
	{
		if other.alarm[0] <= 0
		{
			if player_hit == false
			{
				player_hit = true;
				alarm[0] = global.one_second * 5;
				o_player.hit_points -= 1;
				var _hit_sound = audio_play_sound(so_player_hit, 80, false);
				audio_sound_pitch(_hit_sound, random_range(0.9, 1.1));
				o_player.move_x = o_red_bird.attack_knockback * image_xscale;
				o_player.state = player_states.knockback;
				repeat random_range(3, 4)
				{
					var _feather = instance_create_layer(x + (40 * direction_facing), y-3, "Instances", o_feather_death);
					_feather.sprite_index = s_red_feather_death;
					_feather.image_angle = random_range(0, 360);
					_feather.direction = _feather.image_angle;
					_feather.speed = random_range(0.2, 0.4) + (abs(move_x)/4);
				}
				repeat random_range(4, 6)
				{
					create_particle(x, y, random_range(4, 4.5), (-direction_facing*180) + random_range(-45, 45), 1, 
					c_dkgray, o_gravity_particle);
				}
			}
		}
	}
}