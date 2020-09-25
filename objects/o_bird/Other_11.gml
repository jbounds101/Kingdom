///@description Attack

if animation_hit_frame(4) and not feather_created and alarm[0] <= 0
{
	if not instance_exists(o_player) exit;
	alarm[0] = global.one_second * attack_cooldown;
	feather_created = true;
	var _ob_feather = instance_create_layer(x + (3 * image_xscale), y+10, "Instances", o_feather);
	var _angle = point_direction(x, y, o_player.x, o_player.y) +
	random_range(-feather_angle_difference, feather_angle_difference);

	_ob_feather.direction = _angle;
	_ob_feather.image_angle = _angle;
	_ob_feather.speed = feather_speed;
	

}

if animation_last_frame()
{
	feather_created = false;	
}

event_user(states.move);