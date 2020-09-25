///@description Move

if not player_hit
{
	state = (confusion ? states.confusion : states.move);
}

image_speed = (player_hit ? fly_animation_speed : move_animation_speed);


if move_x < 0
{
	move_x += deceleration;	
}
else if move_x > 0
{
	move_x -= deceleration;
}	

move_x = clamp(move_x, -max_move_speed, max_move_speed);

if not player_hit
{
	if place_meeting(x+move_x, y, op_solid)
	{
		while not place_meeting(x+sign(move_x), y, op_solid)
		{
			x += sign(move_x);
		}
		move_x = -move_x;
		direction_facing = -direction_facing;
	}
}

x += move_x;


image_xscale = direction_facing;
move_x += acceleration * direction_facing;	

distance_from_player = point_distance(x,y, o_player.x, o_player.y);

if player_hit
{
	y -= 1;	
}
