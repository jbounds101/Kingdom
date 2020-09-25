///@description Attack

state = (confusion ? states.confusion : states.attack);

image_speed = attack_animation_speed;

if alarm[0] <= 0
{
	if distance_from_player <= attack_range
	{
		alarm[0] = time_to_spawn * global.one_second;
	}
	var _spawn = instance_create_layer(x+choose(-40, 40), y, "Instances", o_knight_elite);
	repeat(200)
	{
		create_particle(_spawn.x, _spawn.y+23, random_range(1,3), random_range(0, 180), 1, c_black, o_particle);
	}
	image_index = 0;
	state = states.move;
}


var _spawn_intensity = abs(time_to_spawn-(alarm[0]/global.one_second));
if _spawn_intensity == time_to_spawn exit;
repeat(round(_spawn_intensity))
{
	create_particle(x, y+14, _spawn_intensity/2, random_range(0, 180), 1, c_purple, o_particle);
}

