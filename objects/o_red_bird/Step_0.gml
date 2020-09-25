sprite_index = (player_hit ? s_red_bird_fly : s_red_bird);
if not instance_exists(o_player) 
{
	event_user(states.death);
	exit;
}


event_user(state);
