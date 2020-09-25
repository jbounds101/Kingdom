/// @description Roll

sprite_index = s_player_roll;
image_speed = roll_animation_speed;

move_x = (direction_facing*roll_speed);

o_bow.image_alpha = 0;
o_player_hand.image_alpha = 0;
o_player_off_hand.image_alpha = 0;


move_entity_roll();

if (animation_last_frame())
{
	
	image_index = 0;
	state = player_states.move;
	
	o_bow.image_alpha = 1;
	o_player_hand.image_alpha = 1;
	o_player_off_hand.image_alpha = 1;
	
}



	

