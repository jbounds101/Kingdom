if ds_list_find_index(hit_objects, other) != -1
{
	exit;	
}

if not (other.state == states.knockback)
{
	other.move_x = o_knight.attack_knockback/2* image_xscale;
	other.state = states.knockback;
	repeat random_range(8, 10)
	{
		create_particle((other.x + (10 * image_xscale)), y-14, random_range(4, 6), random(360), 1, 
		c_dkgray, o_gravity_particle);
	}
}
