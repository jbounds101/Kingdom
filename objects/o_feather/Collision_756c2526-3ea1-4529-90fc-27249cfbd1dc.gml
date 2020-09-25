repeat (random_range(10, 20))
{
	var _particle = instance_create_layer(x, y-2, "Particles", o_gravity_particle);
	_particle.direction = random_range(0, 180);
	_particle.speed = speed/2 + random_range(-0.2 , 0.4)
}
instance_destroy();