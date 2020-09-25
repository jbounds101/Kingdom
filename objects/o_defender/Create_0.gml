/// @description

max_move_speed = 0.7*random_range(0.95, 1.05);
acceleration = 0.6;
deceleration = 0.3;
direction_facing = 1;
move_x = 0;

max_hit_points = 3;
hit_points = max_hit_points;


attack_range = 140*random_range(0.85, 1.25);;
attack_knockback = 10;

arrow_knockback = 3;
knockback_deceleration = 0.2;

arrow_hit_score = 50;
arrow_kill_score = 1200;

move_animation_speed = 0.5;
attack_animation_speed = 0;
knockback_animation_speed = 0;
death_animation_speed = 0.1;

confusion = false;
question_mark = false;

min_xp_points = 18;
max_xp_points = 22;

coin_count = 3;

single_frame = false;
depth = o_player_hand - 12;

state = states.move;

sprites[states.move] = s_defender;
sprites[states.attack] = s_defender_death;
sprites[states.knockback] = s_defender_knockback;
sprites[states.confusion] = s_defender;
sprites[states.death] = s_defender_death;

shield = instance_create_layer(x+(12*direction_facing), y, "Instances", o_shield)
shield.depth = depth - 1;

distance_from_player = 0;

time_to_spawn = 10;