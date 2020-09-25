if not instance_exists(o_player) exit;

x_position = lerp(x_position, (o_player.x + ((mouse_x - o_player.x) / 2)) - camera_get_view_width(current_camera) / 2, 0.5);
x_position = round_n(x_position, 1/scale);

y_position = (o_player.y/2) + (mouse_y/2) - 160;
y_position = round_n(y_position, 1/scale);

y_position = clamp(y_position, o_player.y - 200, o_player.y/2-10)

camera_set_view_pos(current_camera, x_position, y_position);

audio_listener_position(x_position, y_position, 0);