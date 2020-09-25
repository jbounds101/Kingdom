///@description Move

state = (confusion ? states.confusion : states.move);
distance_from_player = point_distance(x,y, o_player.x, o_player.y);
image_speed = move_animation_speed;

move_entity_no_collision();

if x <= o_player.x
{
	direction_facing = 1;	
}
else
{
	direction_facing = -1;	
}
image_xscale = direction_facing;





if (distance_from_player <= attack_range) and not confusion
{
	state = states.attack;
}	
else
{
	move_x += acceleration * direction_facing;		
}

