image_alpha -= random_range(0.04, 0.05);
if image_alpha <= 0
{
	instance_destroy();	
}

speed *= 0.85;