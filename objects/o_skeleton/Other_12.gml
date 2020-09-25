///@description Knockback

image_speed = knockback_animation_speed;
image_xscale = -sign(move_x);

if exiting_charge and (abs(move_x) > 4)
{
	var _shadow = instance_create_layer(x, y, "Instances", o_skeleton_shadow);
	_shadow.sprite_index = s_skeleton_knockback;
}

knockback_entity();
if move_x == 0
{
	state = states.move;
	exiting_charge = false;
}

