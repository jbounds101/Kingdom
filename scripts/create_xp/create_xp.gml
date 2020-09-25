
repeat(random_range(min_xp_points, max_xp_points))
{
	instance_create_layer(x+random_range(-4, 4), y+random_range(-4, 4), "Instances", o_experience);	
}