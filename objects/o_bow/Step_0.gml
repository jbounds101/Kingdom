if not instance_exists(o_player) exit;


if not (o_player.state == player_states.roll)
{
	image_alpha = o_player.image_alpha;
}

var _mouse_direction = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);
image_angle = _mouse_direction;

if alarm[2] > 0 exit;

if (o_player.state = player_states.evade)
{
	if (alarm[1] <= 0)
	{
		if o_input.left_click
		{
			o_player.alarm[0] = 0;
		}
	}
}

if o_player.state = player_states.knockback or o_player.state = player_states.roll
{
	if (o_player.state = player_states.roll)
	{
		image_alpha = 0;	
	}
	arrow_ready = false;
	image_index = 0;	
	alarm[1] = global.one_second * 0.25;
}
else
{
	if alarm[1] <= 0
	{
		if o_input.left_click
		{
			if image_index < 10
			{
				if alarm[0] <= 0
				{
					if image_index == 0
					{
						audio_play_sound(so_bow_charge, 60, false);	
					}
					alarm[0] = global.one_second * (frame_time - o_upgrades.draw_speed_upgrade);
					image_index += 1;
				}
			}
			else if (image_index == 10) and (arrow_ready == false)
			{
				arrow_ready = true;
			}
		}
	
		if o_input.left_click_released and image_index != 12
		{
			arrow_ready = false;
			audio_stop_sound(so_bow_charge);
			if image_index <= 3
			{
				image_index = 0;	
			}
			else if image_index >= 4
			{
				o_player.alarm[0] = 0;
				reset_confusion_evade();
				var _arrow = instance_create_layer(x, y, "Instances", o_arrow);
				_arrow.arrow_max_speed *= o_upgrades.arrow_speed_upgrade;
				
				audio_sound_pitch(so_arrow_fire,((_arrow.arrow_max_speed*(image_index / 10))
				/ _arrow.arrow_max_speed) + random_range(0, 0.1));
				audio_play_sound(so_arrow_fire, 65, false);
				
				_arrow.speed = (_arrow.arrow_max_speed*(image_index / 10));
				
				if round(_arrow.speed) < round(o_arrow.arrow_max_speed)
				{
					o_arrow.max_hits = 1;	
				}
				else
				{
					_arrow.image_index = 1;
				}
				
				if alarm[1] <= 0
				{
					image_index = 12;
				}
				alarm[1] = global.one_second * (arrow_recharge_time - o_upgrades.arrow_reset_time_upgrade);
			}
		}
	}
	if image_index >= 12
	{
		if alarm[0] <= 0
		{
			if not animation_last_frame()
			{
				alarm[0] = global.one_second * 0.05;
				image_index += 1;
			}
		}	
	}
	if animation_last_frame()
	{
		if alarm[1] <= 0
		{
			image_index = 0;	
		}
	}	
}