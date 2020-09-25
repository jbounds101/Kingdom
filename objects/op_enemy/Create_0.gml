max_move_speed = 0.7*random_range(0.95, 1.05);
acceleration = 0.6;
deceleration = 0.3;
direction_facing = 1;
move_x = 0;

max_hit_points = 3;
hit_points = max_hit_points;


attack_range = 40;
attack_knockback = 10;

arrow_knockback = 6;
knockback_deceleration = 0.2;

arrow_hit_score = 100;
arrow_kill_score = 1000;

move_animation_speed = 0.5;
attack_animation_speed = 0.6;
knockback_animation_speed = 0;
death_animation_speed = 0.1;

confusion = false;
question_mark = false;

min_xp_points = 16;
max_xp_points = 20;

coin_count = 1;

single_frame = false;
depth = o_player_hand - 10;

state = states.move;

enum states 
{
	move,
	attack,
	knockback,
	confusion,
	death
}

sprites[states.move] = s_knight;
sprites[states.attack] = s_knight_attack;
sprites[states.knockback] = s_knight_knockback;
sprites[states.confusion] = s_knight;
sprites[states.death] = s_knight_death;
