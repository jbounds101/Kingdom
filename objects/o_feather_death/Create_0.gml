image_speed = 0;
image_index = choose(0,1,2,3);
gravity = 0.1;
alarm[0] = global.one_second*5;
if not instance_exists(o_player) exit;
depth = o_player.depth + 20;