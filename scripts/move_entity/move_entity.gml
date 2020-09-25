if move_x < 0
{
	move_x += deceleration;	
}
else if move_x > 0
{
	move_x -= deceleration;
}	

move_x = clamp(move_x, -max_move_speed, max_move_speed);

if place_meeting(x+move_x, y, op_solid)
{
	while not place_meeting(x+sign(move_x), y, op_solid)
	{
		x += sign(move_x);
	}
	move_x = 0;
}
x += move_x;