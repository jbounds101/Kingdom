sprite_index = sprites[state];
if not instance_exists(o_player) 
{
	event_user(states.death);
	exit;
}
event_user(state);

