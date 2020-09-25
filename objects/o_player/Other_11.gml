/// @description Evade

var _percent_until_end = alarm[0] / (global.one_second * evade_time)
image_alpha = 1 - _percent_until_end;

o_player_hand.image_alpha = image_alpha;
o_player_off_hand.image_alpha = image_alpha;
o_bow.image_alpha = image_alpha;

event_user(player_states.move);