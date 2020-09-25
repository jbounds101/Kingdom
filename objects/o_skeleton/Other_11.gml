///@description Attack

state = (confusion ? states.confusion : states.attack);

image_speed = attack_animation_speed;

mask_index = s_skeleton_attack;




if animation_hit_frame(4)
{
	charging = true;
	
	var _particle_direction_min;
	var _particle_direction_max;
	
	if image_xscale == -1
	{
		_particle_direction_min = 0;	
		_particle_direction_max = 90;
	}
	else
	{
		_particle_direction_min = 90;	
		_particle_direction_max = 180;
	}
	
	repeat(10)
	{
		create_particle(x, y+22, random_range(6, 8), 
		random_range(_particle_direction_min, _particle_direction_max), 
		1, (make_color_rgb(128, 65, 0)), o_gravity_particle);
	}
	move_x += charge_acceleration * direction_facing;
	
	_sound = audio_play_sound(so_skeleton_attack, 60, false);
	audio_sound_pitch(_sound, random_range(0.9, 1.1));
}

move_x = clamp(move_x, -charge_max_speed, charge_max_speed);

if place_meeting(x+move_x, y, op_solid)
{
	while not place_meeting(x+sign(move_x), y, op_solid)
	{
		x += sign(move_x);
	}
	move_x = -move_x;
}
x += move_x;

if image_index >= 4
{
	instance_create_layer(x, y, "Instances", o_skeleton_shadow);
}

if animation_last_frame()
{
	state = states.knockback;
	exiting_charge = true;
	charging = false;
}