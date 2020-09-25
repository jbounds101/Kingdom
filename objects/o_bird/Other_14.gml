///@description Death

image_speed = death_animation_speed;

if ((image_alpha*10) % 2 == 1)
{
	var _feather = instance_create_layer(x + (random_range(-4 , 4)), y + (random_range(-4 , 4)), "Instances", o_feather_death);
	_feather.image_angle = random_range(0, 360);
	_feather.direction = _feather.image_angle;
	_feather.speed = random_range(0.2, 0.4) + (abs(move_x)/6);
}


image_alpha -= 0.1;

if image_alpha <= 0
{
	create_xp();
	create_coins();
	instance_destroy();	
}
