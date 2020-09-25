///@description Attack

state = (confusion ? states.confusion : states.attack);

image_speed = attack_animation_speed;

if animation_hit_frame(3) and single_frame == false
{
	single_frame = true;
	var _swing = instance_create_layer(x-(12*direction_facing), y+7, "Instances", o_swing_elite);	
	_swing.image_xscale = direction_facing;
	_swing.hit_objects = ds_list_create();
	ds_list_add(_swing.hit_objects, self);
}
	
if animation_last_frame()
{
	single_frame = false;
	state = states.move;
}

