if room == r_play
{
	if o_input.escape
	{
		if not paused
		{
			if instance_exists(o_player)
			{
				instance_deactivate_all(true);
				instance_activate_object(o_input);
				instance_activate_object(o_ground);
				instance_activate_object(o_overlay);
				instance_activate_object(op_upgrade_button);
				instance_activate_object(o_upgrades);
				instance_activate_object(o_fence);
				instance_activate_object(o_watchtower);
				instance_activate_object(o_exit_button_upgrade);
				paused = true;
			}
			
		}
		else
		{
			instance_activate_all();
			paused = false;	
		}
	}
	
	
	
	
	
	
	if (paused == false)
	{
		if not (instance_exists(o_player))
		{
			if not (instance_exists(op_enemy))
			{
				if set_timer == false
				{
					set_timer = true;
					alarm[0] = 1 * global.one_second;
				}
			}
		}
	}
}