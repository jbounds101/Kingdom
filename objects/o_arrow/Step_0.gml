image_angle = direction;

if ceil(speed) >= arrow_max_speed
{
	create_particle(x+ random_range(-6, 6), y+random_range(-1, 1), 1, 
	direction-180+(random_range(-20, 20)), 0.5, c_white, o_big_particle);	
}


damage = max_damage / (hits+1);
