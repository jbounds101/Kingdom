///@description Move

state = (confusion ? states.confusion : states.move);

image_speed = move_animation_speed;

move_entity();

image_xscale = direction_facing;
move_x += acceleration * direction_facing;	



