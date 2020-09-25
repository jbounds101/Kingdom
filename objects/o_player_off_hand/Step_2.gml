if not instance_exists(o_player) exit;


if not (o_player.state == player_states.roll)
{
	image_alpha = o_player.image_alpha;
}

depth = o_bow.depth - 2;
var _mouse_direction = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);
image_angle = _mouse_direction;


       
if o_bow.image_index >= 1
{
	if o_bow.image_index <= 7
	{
		x = o_player_hand.x - ((distance_from_hand+o_bow.image_index)*cos(degtorad(_mouse_direction)));
		y = o_player_hand.y + ((distance_from_hand+o_bow.image_index)*sin(degtorad(_mouse_direction)));
	}
	else
	{
		x = o_player_hand.x - ((distance_from_hand+8)*cos(degtorad(_mouse_direction)));
		y = o_player_hand.y + ((distance_from_hand+8)*sin(degtorad(_mouse_direction)));
	}
	if o_bow.image_index > 10
	{
		x = o_player_hand.x - ((distance_from_hand+o_bow.image_index)*cos(degtorad(_mouse_direction)));
		y = o_player_hand.y + ((distance_from_hand+o_bow.image_index)*sin(degtorad(_mouse_direction)));
	}
}
else
{
	x = o_player_hand.x - (distance_from_hand*cos(degtorad(_mouse_direction)));
	y = o_player_hand.y + (distance_from_hand*sin(degtorad(_mouse_direction)))
}
