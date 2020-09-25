max_move_speed = 3;
acceleration = 0.6;
deceleration = 0.3;
knockback_deceleration = 0.4;
direction_facing = 1;
move_x = 0;

level = 1;
xp_points = 0;
xp_until_next_level = 100;
xp_level_factor = 0.15;
xp_current_factor = 1;

max_hit_points = 5;
hit_points = 5;

max_stamina = 3;
stamina = 3;
stamina_gain_time = 5;


evade_time = 2;

run_animation_speed = 0.6;
roll_animation_speed = 0.7;

roll_speed = 4;

invincible = false;
invincible_time = 0.5;

state = player_states.move;

enum player_states 
{
	move,
	evade,
	roll,
	knockback,
	death
}

