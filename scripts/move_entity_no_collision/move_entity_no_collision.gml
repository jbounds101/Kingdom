if move_x < 0
{
	move_x += deceleration;	
}
else if move_x > 0
{
	move_x -= deceleration;
}	

move_x = clamp(move_x, -max_move_speed, max_move_speed);
x += move_x;