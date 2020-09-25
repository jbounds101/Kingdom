/// @description Death

repeat(50)
{
	create_particle(x, y+20, random_range(1,3), random_range(0, 180), 1, c_black, o_particle);
}

instance_destroy();
instance_destroy(o_bow);
instance_destroy(o_player_hand);
instance_destroy(o_player_off_hand);