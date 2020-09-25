/// @description Move

move_entity_roll();

mouse_angle = point_direction(x, y, mouse_x, mouse_y);
var _x_input = o_input.right - o_input.left;

if _x_input != 0
{
	direction_facing = _x_input;
}

if _x_input == 0
{
	image_index = 0;
	image_speed = 0;
}
else
{
	image_speed = run_animation_speed;
	move_x += acceleration * direction_facing;
}
	
	
if mouse_angle >= 270 or mouse_angle < 90
{
	image_xscale = 1;	

}
else
{
	image_xscale = -1;	
}

if mouse_angle >= 45 and mouse_angle <= 135
{
	o_bow.depth = o_player.depth+2;	
	sprite_index = s_player_up;
}
else
{
	o_bow.depth = o_player.depth-2;
	sprite_index = s_player;
}
	
if alarm[0] <= 0
{
	if ((o_input.evade) && ((o_bow.image_index == 0) || (o_bow.image_index >= 12)))
	{
		if stamina >= 1
		{
			if not place_meeting(mouse_x, y, op_solid)
			{
				x = mouse_x;
				stamina -= 1;
				state = player_states.evade;
				var _sound = audio_play_sound(so_teleport, 60, false);
				audio_sound_pitch(_sound, random_range(0.9, 1.1));
				alarm[0] = evade_time * global.one_second;
				if instance_exists(op_enemy)
				{
					op_enemy.confusion = true;
				}
		
				image_alpha = 0.5;
				o_player_hand.image_alpha = image_alpha;
				o_player_off_hand.image_alpha = image_alpha;
				o_bow.image_alpha = image_alpha;
		
				repeat (300)
				{
					create_particle(x, y+random_range(0, 24), random_range(1, 5), random_range(0, 180), random_range(0.7, 1),
					make_color_rgb(random_range(100, 255), 0, random_range(100, 255)), o_big_particle);
				}
			}
		}
		else
		{
			// Not enough stamina
		}	
	}
}	

if o_input.roll and (o_input.left or o_input.right)
{
	reset_confusion_evade();
	if o_input.right
	{
		direction_facing = 1;	
	}
	else
	{
		direction_facing = -1;	
	}
	image_xscale = direction_facing;
	
	state = player_states.roll;
	image_index = 0;
}