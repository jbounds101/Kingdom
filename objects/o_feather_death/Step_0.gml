if place_meeting(x, y+vspeed-4, o_ground)
{
	gravity = 0;
	speed = 0;
	
}

if gravity == 0
{
	image_alpha -= 0.05;	
	if image_alpha <= 0
	{
		instance_destroy();	
	}	
}