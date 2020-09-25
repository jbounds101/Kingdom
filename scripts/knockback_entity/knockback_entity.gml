if move_x < 0
{
	move_x += knockback_deceleration;	
	if move_x > 0
	{
		move_x = 0;	
	}
}
else if move_x > 0
{
	move_x -= knockback_deceleration;
	if move_x < 0
	{
		move_x = 0;	
	}
}	

if place_meeting(x+move_x, y, op_solid)
{
	while not place_meeting(x+sign(move_x), y, op_solid)
	{
		x += sign(move_x);
	}
	move_x = -move_x;
}
x += move_x;	
