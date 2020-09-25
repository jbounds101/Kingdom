///@description Knockback

image_speed = knockback_animation_speed;
image_xscale = -sign(move_x);

alarm[0] = 0;

knockback_entity();
if move_x == 0
{
	state = states.move;
}
