///@description Death

image_speed = death_animation_speed;
knockback_entity();

if animation_last_frame()
{
	image_index = image_number - 1;
	image_alpha -= 0.02;
	create_particle(x, y+23, random_range(1,3), random_range(0, 180), 1, c_black, o_particle);
	if image_alpha <= 0
	{
		create_xp();
		create_coins();
		instance_destroy();	
	}
}