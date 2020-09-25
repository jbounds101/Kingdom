/// @description Knockback

sprite_index = s_player_knockback;
image_index = 0;

set_invincible();

knockback_entity();
if move_x == 0
{
	sprite_index = s_player;
	image_index = 0;
	state = player_states.move;
}
