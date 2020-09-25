image_speed = 0;

hit_objects = ds_list_create();
hits = 0;
max_hits = 3;
max_damage = 1.1*o_upgrades.arrow_damage_upgrade;
damage = 1.1*o_upgrades.arrow_damage_upgrade;

arrow_max_speed = 7;

image_angle = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);
direction = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);
alarm[0] = global.one_second*15;
gravity = 0.02;

