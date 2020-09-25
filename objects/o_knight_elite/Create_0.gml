/// @description

max_move_speed = 1.7*random_range(0.95, 1.05);
acceleration = 0.6;
deceleration = 0.3;
direction_facing = 1;
move_x = 0;

max_hit_points = 1.5;
hit_points = max_hit_points;


attack_range = 40;
attack_knockback = 14;

arrow_knockback = 4;
knockback_deceleration = 0.2;

arrow_hit_score = 150;
arrow_kill_score = 2000;

move_animation_speed = 1.3;
attack_animation_speed = 0.8;
knockback_animation_speed = 0;
death_animation_speed = 0.1;

confusion = false;
question_mark = false;

min_xp_points = 30;
max_xp_points = 36;

coin_count = 2;


single_frame = false;
depth = o_player_hand - 10;

state = states.move;

sprites[states.move] = s_knight_elite;
sprites[states.attack] = s_knight_elite_attack;
sprites[states.knockback] = s_knight_elite_knockback;
sprites[states.confusion] = s_knight_elite;
sprites[states.death] = s_knight_elite_death;
