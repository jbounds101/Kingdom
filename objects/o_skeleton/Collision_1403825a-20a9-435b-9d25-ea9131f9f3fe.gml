if ds_list_find_index(other.hit_objects, self) != -1
{
	exit;
}

if confusion exit;

exiting_charge = false;

repeat round((20*(1 / (other.hits+1))) * (other.speed / other.arrow_max_speed))
{
	var _particle_direction;
	if other.direction > 90 and other.direction <= 270
	{
		_particle_direction = -1;	
	}
	else
	{
		_particle_direction	= 1;
	}
	var _particle = instance_create_layer(x+(7*_particle_direction), other.y, "Particles", o_hit_particle);
	_particle.direction = ((other.direction-180) + random_range(-60, 60));
}
	
ds_list_add(other.hit_objects, self);
other.hits += 1;
if other.hits >= other.max_hits
{
	instance_destroy(other);
}
	
global.score_points += (state == states.death ? 0 : arrow_hit_score);
	
hit_points -= other.damage*(other.speed / other.arrow_max_speed);
	
var _arrow_direction;
if other.direction > 90 and other.direction <= 270
{
	_arrow_direction = -1;	
}
else
{
	_arrow_direction = 1;	
}

move_x = ((arrow_knockback * _arrow_direction) * (1 / (other.hits)) * (other.speed / other.arrow_max_speed));

var _hit_sound = audio_play_sound_at(so_hit_enemy, x, y, 0, 600, 1000, 1, false, 80);
audio_sound_pitch(_hit_sound, 
difference_min_max_cap(other.speed, other.arrow_max_speed, 0.8, 1) + random_range(-0.2 , 0.2));
audio_sound_gain(_hit_sound, (1 / other.hits), 0);

if hit_points > 0
{
	state = states.knockback;
}
else
{
	global.score_points += (state == states.death ? 0 : arrow_kill_score);
	state = states.death;
	image_index = 0;
}
