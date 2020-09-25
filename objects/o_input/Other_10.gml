///@description Input Check

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));

left_click = mouse_check_button(mb_left);
left_click_clicked = mouse_check_button_pressed(mb_left);
left_click_released = mouse_check_button_released(mb_left);

evade = keyboard_check_pressed(ord("Q"));

roll = keyboard_check_pressed(vk_space);

activate = keyboard_check_pressed(ord("E"));

escape = keyboard_check_pressed(vk_escape);
