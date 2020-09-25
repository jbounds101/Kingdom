ini_open("scores.ini");
var _ninth_num = ini_read_real("9", "score", 0);


if global.score_points > _ninth_num
{
	if not input_finished
	{
		if ( keyboard_lastkey != -1 )
		{
			if ( (keyboard_lastkey >= 65 && keyboard_lastkey <= 90) || keyboard_lastkey == 190)
			{
			    if ( keyboard_lastkey == 190 )
			    {
			        if (string_pos(".", input_string) == 0)
			        {
			            input_string += keyboard_lastchar   
			        }
			    }
			    else
			    {
					if string_length(input_string) < 10
					{
						input_string += keyboard_lastchar
					}
			    }
			}
   
			// Check for backspace key
			if ( keyboard_lastkey == 8 )
			{
			    if ( string_length(input_string) > 0 )
			    {
			        input_string = string_delete(input_string, string_length(input_string), 1)
			    }
			}
    
			// Check for Enter Key
			if (keyboard_lastkey == 13 )
			{
				if string_length(input_string) > 0
				{
					input_finished = true
					alarm[0] = global.one_second*0.2;
				}
			}
			keyboard_lastkey = -1
		}
	}
}
else
{
	input_finished = true	
	
}
ini_close();


if input_finished
{
	input_name = input_string;
	if processed == false
	{
		processed = true;
		ini_open("scores.ini");
		for (var i = 0; i<10; i++)
		{
			global.score_array[i, 0] = ini_read_string(string(i), "name", "???");
			global.score_array[i, 1] = ini_read_real(string(i), "score", 0);
		}
		ini_close();

		for (var i = 0; i<10; i++)
		{
			if (global.score_points > global.score_array[i, 1])
			{
				for (var j = 9; j>i; j--)
				{
					global.score_array[j, 0] = global.score_array[j-1, 0];	
					global.score_array[j, 1] = global.score_array[j-1, 1];
				}
		
				global.score_array[i, 0] = input_name;
				global.score_array[i, 1] = global.score_points;
				break;
			}
		}

		ini_open("scores.ini");
		for (var i = 0; i<10; i++)
		{
			ini_write_string(string(i), "name", global.score_array[i, 0]);
			ini_write_real(string(i), "score", global.score_array[i, 1]);
		}
		ini_close();
	}
}

if input_finished and processed
{
	if alarm[0] <= 0
	{
		if keyboard_check_pressed(vk_enter)
		{
			global.score_points = 0;
			room_goto(r_menu);
		}
	}
}