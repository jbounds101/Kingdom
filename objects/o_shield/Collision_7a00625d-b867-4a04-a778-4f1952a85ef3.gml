if op_enemy.confusion == true exit;
if other.state == player_states.knockback exit;
if abs(other.move_x) > 0.6
{
	other.move_x *= 0.6;
}