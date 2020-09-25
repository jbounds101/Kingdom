/// @description

max_move_speed = 4.4*random_range(0.95, 1.05);
acceleration = 0.2;
deceleration = 0.1;
direction_facing = 1;
move_x = 0;

max_hit_points = 0.01;
hit_points = max_hit_points;


attack_range = 40;
attack_knockback = 7;

arrow_knockback = 6;
knockback_deceleration = 0.2;

arrow_hit_score = 50;
arrow_kill_score = 500;

move_animation_speed = 0.8;
attack_animation_speed = 0.6;
knockback_animation_speed = 0;
death_animation_speed = 0.1;
fly_animation_speed = 0.4;

confusion = false;
question_mark = false;

min_xp_points = 13;
max_xp_points = 18;

coin_count = 1;

single_frame = false;
depth = o_player_hand - 14;

state = states.move;

sprites[states.move] = s_red_bird;
sprites[states.attack] = s_red_bird;
sprites[states.knockback] = s_red_bird;
sprites[states.confusion] = s_red_bird;
sprites[states.death] = s_red_bird;

if x <= o_player.x
{
	direction_facing = 1;	
}
else
{
	direction_facing = -1;	
}

player_hit = false;

alarm[1] = global.one_second * random_range(0.05, 0.3);