var _x = argument0;
var _y = argument1;
var _speed = argument2;
var _angle = argument3;
var _alpha = argument4;
var _color = argument5;
var _particle = argument6;

///@arg x
///@arg y
///@arg speed
///@arg angle
///@arg alpha
///@arg color
///@arg particleObject

var _particle;
_particle = instance_create_layer(_x, _y, "Particles", _particle);
_particle.speed = _speed;
_particle.image_angle = _angle;
_particle.direction = _angle;
_particle.image_alpha = _alpha;
_particle.image_blend = _color;
_particle.image_xscale = choose(-1, 1);
