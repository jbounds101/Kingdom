///@description Confusion

image_speed = move_animation_speed;

if question_mark == false
{
	question_mark = true;
	if x <= o_player.x
	{
		direction_facing = -1;	
	}
	else
	{
		direction_facing = 1;	
	}
	ob_question_mark = instance_create_layer(x + (2*direction_facing), y-30, "Instances", o_question_mark);
}

ob_question_mark.x = x + (2*direction_facing);
move_entity_no_collision();
image_xscale = direction_facing;
move_x += acceleration * direction_facing;	
if place_meeting(x+sign(move_x), y, op_solid)
{
	direction_facing = -direction_facing;	
}

if ((o_player.alarm[0] <= 0) or (o_player.state == player_states.roll))
{
	confusion = false;	
	instance_destroy(ob_question_mark);
	state = states.move;
	question_mark = false;
}


