max_move_speed = 2.7*random_range(0.95, 1.05);
acceleration = 0.05;
deceleration = 0.02;
direction_facing = 1;
move_x = 0;

max_hit_points = 2;
hit_points = max_hit_points;


attack_range = 100 + random_range(0, 100);
attack_knockback = 5;

arrow_knockback = 9;
knockback_deceleration = 0.2;

arrow_hit_score = 150;
arrow_kill_score = 1250;

move_animation_speed = 0.5;
attack_animation_speed = 0.6;
knockback_animation_speed = 0;
death_animation_speed = 0.3;

confusion = false;
question_mark = false;

min_xp_points = 24;
max_xp_points = 30;

coin_count = 1;

feather_speed = 3;
feather_angle_difference = 20;
feather_created = false;

attack_cooldown = 3;

single_frame = false;
depth = o_player_hand - 2;

state = states.move;

sprites[states.move] = s_bird;
sprites[states.attack] = s_bird;
sprites[states.knockback] = s_bird;
sprites[states.confusion] = s_bird;
sprites[states.death] = s_bird;

flap_sound = false;