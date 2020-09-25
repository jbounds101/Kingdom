///@description Move

state = (confusion ? states.confusion : states.move);

image_speed = move_animation_speed;

move_entity();
if x <= o_player.x
{
	direction_facing = 1;	
}
else
{
	direction_facing = -1;	
}
image_xscale = direction_facing;

move_x += acceleration * direction_facing;	

if distance_from_player <= attack_range
{
	move_x = 0;
	image_index = 0;
	state = states.attack;
	alarm[0] = time_to_spawn * global.one_second;
}	


