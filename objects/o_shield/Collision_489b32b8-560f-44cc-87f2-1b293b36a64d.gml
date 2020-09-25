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
	var _particle = instance_create_layer(x+(-3*_particle_direction), other.y, "Particles", o_hit_particle);
	_particle.direction = ((other.direction-180) + random_range(-60, 60));
	_particle.image_blend = c_ltgray;
	instance_destroy(other);
}

var _sound = audio_play_sound(so_shield, 30, false);
audio_sound_pitch(_sound, random_range(0.7, 0.9));
