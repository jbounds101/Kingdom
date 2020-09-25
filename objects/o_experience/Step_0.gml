if not instance_exists(o_player) exit;

var _direction = point_direction(x, y, o_player.x, o_player.y);
var _acceleration = 0.75;
motion_add(_direction, _acceleration)
var _max_speed = 6;
if speed > _max_speed
{
	speed = _max_speed;	
}