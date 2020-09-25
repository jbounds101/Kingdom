if move_x < 0
{
	move_x += deceleration;	
}
else if move_x > 0
{
	move_x -= deceleration;
}	

if abs(move_x) <= 0.1
{
	move_x = 0;	
}

if not (state == player_states.roll)
{
	move_x = clamp(move_x, -max_move_speed-o_upgrades.max_move_speed_upgrade, max_move_speed+o_upgrades.max_move_speed_upgrade);
}

if place_meeting(x+move_x, y, op_solid)
{
	while not place_meeting(x+sign(move_x), y, op_solid)
	{
		x += sign(move_x);
	}
	move_x = 0;
}
x += move_x;