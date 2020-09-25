///@arg start
///@arg end
///@arg difference
var _start, _end, _difference;

_start = argument0;
_end = argument1;
_difference = argument2;

var _result;

if (_start < _end)
{
    _result = min(_start + _difference, _end); 
}
else
{
    _result = max(_start - _difference, _end);
}

return _result;