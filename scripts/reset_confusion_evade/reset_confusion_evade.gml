if instance_exists(o_player)
{
	o_player.image_alpha = 1;
	o_player_hand.image_alpha = 1;
	o_player_off_hand.image_alpha = 1;
	o_bow.image_alpha = 1;

	o_player.image_blend = -1;
	o_player_hand.image_blend = -1;
	o_player_off_hand.image_blend = -1;
	o_bow.image_blend = -1;

	o_player.state = player_states.move;
}

if instance_exists(op_enemy)
{
	op_enemy.confusion = false;	
}