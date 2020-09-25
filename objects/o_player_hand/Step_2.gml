if not instance_exists(o_player) exit;

if not (o_player.state == player_states.roll)
{
	image_alpha = o_player.image_alpha;
}

depth = o_bow.depth - 1;
var _mouse_direction = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);
image_angle = _mouse_direction;
x = o_player.x + 16 * cos(degtorad(_mouse_direction));
y = o_player.y - 16 * sin(degtorad(_mouse_direction));
o_bow.x = x;
o_bow.y = y;
