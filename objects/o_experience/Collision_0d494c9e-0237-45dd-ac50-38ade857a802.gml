if not instance_exists(other) exit;
var _direction = point_direction(other.x, other.y, x, y);
var _acceleration = 0.5;
motion_add(_direction, _acceleration)