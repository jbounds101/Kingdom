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
	

distance_from_player = point_distance(x,y, o_player.x, o_player.y);

if abs(distance_from_player) < 80
{
	move_x += acceleration * -direction_facing;
	image_xscale = -direction_facing;
}
else if abs(distance_from_player) > 120
{
	move_x += acceleration * direction_facing;
	image_xscale = direction_facing;
}

if abs(move_x) < 0.2
{
	image_speed = 0;
	move_x = 0;
}

if (distance_from_player <= attack_range) and alarm[0] <= 0
{
	image_xscale = direction_facing;
	alarm[0] = attack_cooldown * global.one_second;
	player_hit = false;
	move_x = 0;
	image_index = 0;
	state = states.attack;
}	


