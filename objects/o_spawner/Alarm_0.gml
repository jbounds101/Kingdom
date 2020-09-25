///@description Enemy Spawn Timer

if not instance_exists(o_player) exit;

alarm[0] = ((global.one_second * 10) / ((o_player.level+1)/2));

max_enemies = o_player.level+2;



if instance_number(op_enemy) < max_enemies
{
	for (var i = instance_number(op_enemy); i < max_enemies; i++)
	{
		spawn_x = o_player.x;
		while abs(spawn_x-o_player.x) < 500
		{
			spawn_x = random_range(min_spawn_x, max_spawn_x);
		}
		
		var _looped = false;
		while (
		((instance_number(o_defender) >= defender_limit) and (enemy == o_defender)) or
		((instance_number(o_bird) >= bird_limit) and (enemy == o_bird)) or
		((instance_number(o_red_bird) >= red_bird_limit) and (enemy == o_red_bird)) or
		((instance_number(o_skeleton) >= skeleton_limit) and (enemy == o_skeleton)) or
		(_looped == false))
		{
			_looped = true;
		
			switch (o_player.level) 
			{
				case 1:
					enemy = choose(o_knight, o_bird);
					break;
				case 2:
					enemy = choose(o_knight, o_bird, o_red_bird, o_skeleton);
					break;
				case 3:
					enemy = choose(o_knight, o_bird, o_red_bird, o_skeleton, o_defender);
					break;
				case 4:
					enemy = choose(o_knight, o_bird, o_red_bird, o_skeleton, o_defender, o_knight_elite);
					break;
				default:
					enemy = choose(o_knight, o_bird, o_red_bird, o_knight_elite, o_defender, o_skeleton);
					break;
			}
		}
		
	
		
		
		
		
		spawn_y = ground_unit_y;	
		
		if (enemy == o_bird)
		{
			spawn_y = flight_unit_y;	
		}
		instance_create_layer(spawn_x, spawn_y, "Instances", enemy);
	}
}



