max_move_speed = 0.85*random_range(0.95, 1.05);
acceleration = 0.4;
deceleration = 0.3;
direction_facing = 1;
move_x = 0;

max_hit_points = 1.8;
hit_points = max_hit_points;


attack_range = 160*random_range(0.95, 1.05);
attack_knockback = 16;

arrow_knockback = 8;
knockback_deceleration = 0.15;

arrow_hit_score = 125;
arrow_kill_score = 1100;

move_animation_speed = 0.6;
attack_animation_speed = 0.5;
knockback_animation_speed = 0;
death_animation_speed = 0.1;

confusion = false;
question_mark = false;

min_xp_points = 20;
max_xp_points = 26;

coin_count = 2;


single_frame = false;
depth = o_player_hand - 10;

state = states.move;

sprites[states.move] = s_skeleton;
sprites[states.attack] = s_skeleton_attack;
sprites[states.knockback] = s_skeleton_knockback;
sprites[states.confusion] = s_skeleton;
sprites[states.death] = s_skeleton_death;

charge_acceleration = 4;
charge_max_speed = 9;
exiting_charge = false;
charging = false;
player_hit = false;
attack_cooldown = 1.5;