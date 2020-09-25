///@desc blink(c_white, c_black, 0.5);      
///@arg on_val      
///@arg off_val      
///@arg rate
var on_val = argument[0];     
var off_val = argument[1];     
var rate = (argument_count > 2 ? (argument[2] * 1000) : 1000);     
     
if (current_time % (rate * 2) >= rate) return on_val;     
return off_val;  