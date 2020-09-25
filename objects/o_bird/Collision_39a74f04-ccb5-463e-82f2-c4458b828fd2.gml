var _direction = point_direction(x, y, other.x, other.y);
if _direction == 180
{
	_direction = 1;	
}
else
{
	_direction = -1;
}
move_x += 0.2*_direction;