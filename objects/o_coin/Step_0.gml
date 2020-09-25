move_y += 0.2;
if place_meeting(x, y+move_y, o_ground) 
{
	while !place_meeting(x, y+sign(move_y), o_ground) 
	{
		y += sign(move_y);
	}
	move_y = 0;
	speed = 0;
	
}
y += move_y;
image_angle = direction;