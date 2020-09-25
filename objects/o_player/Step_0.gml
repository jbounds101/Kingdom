if xp_points >= (xp_until_next_level^xp_current_factor)
{
	xp_current_factor += xp_level_factor;
	xp_points = 0;
	level += 1;
	instance_create_layer(choose(-536, 2744), 168, "Instances", o_health_bird);
}

if (state == player_states.roll)
{
	alarm[0] = 0;	
}

if (stamina < max_stamina) and (alarm[1] <= 0)
{
	alarm[1] = stamina_gain_time * global.one_second;	
}

if alarm[2] > 0
{
	image_blend = blink(c_white, c_ltgray, 0.2);	
}
else if alarm[2] <= 0
{
	image_blend = c_white;	
}

if (hit_points <= 0)
{
	state = player_states.death;	
}


event_user(state);

