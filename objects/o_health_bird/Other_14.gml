///@description Death

image_speed = death_animation_speed;



var _feather = instance_create_layer(x + (random_range(-4 , 4)), y + (random_range(-4 , 4)), "Instances", o_feather_death);
_feather.sprite_index = s_red_feather_death;
_feather.image_angle = random_range(0, 360);
_feather.direction = _feather.image_angle;
_feather.speed = random_range(0.2, 0.4) + (abs(move_x)/2);
_feather.image_blend = c_gray;


image_alpha -= 0.2;

if image_alpha <= 0
{
	instance_create_layer(x, y, "Instances", o_heart);
	instance_destroy();	
}