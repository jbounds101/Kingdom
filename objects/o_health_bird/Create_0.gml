max_move_speed = 1.7*random_range(0.95, 1.05);
acceleration = 0.6;
deceleration = 0.3;
direction_facing = 1;
move_x = 0;

max_hit_points = 0.01;
hit_points = max_hit_points;


attack_range = 0;
attack_knockback = 10;

arrow_knockback = 6;
knockback_deceleration = 0.2;

arrow_hit_score = 0;
arrow_kill_score = 3000;

move_animation_speed = 0.5;
attack_animation_speed = 0;
knockback_animation_speed = 0;
death_animation_speed = 0;

confusion = false;
question_mark = false;

min_xp_points = 0;
max_xp_points = 0;

coin_count = 0;

single_frame = false;
depth = o_player_hand - 10;

state = states.move;

if x <= o_player.x
{
	direction_facing = 1;	
}
else
{
	direction_facing = -1;	
}

sprites[states.move] = s_health_bird;
sprites[states.attack] = s_health_bird;
sprites[states.knockback] = s_health_bird;
sprites[states.confusion] = s_health_bird;
sprites[states.death] = s_health_bird;
