sprite_index = sprites[state];
if not instance_exists(o_player) 
{
	event_user(states.death);
	exit;
}

distance_from_player = point_distance(x,y, o_player.x, o_player.y);
event_user(state);

if not instance_exists(shield) exit;
shield.x = x+(12*direction_facing);
shield.image_xscale = image_xscale;
if (animation_hit_frame(2) or animation_hit_frame(3))
{
	shield.y = y-1;	
}
else
{
	shield.y = y;	
}