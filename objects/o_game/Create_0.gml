// Intialize (completely random, fix audio position)
randomize();
audio_listener_orientation(0,1,0,0,0,1);

// Global variables
global.coins = 0;
global.one_second = 100;
global.score_points = 0;

// Variables for GUI / spawning / pause
zero = "";
set_timer = false;
paused = false;

// Initializes the score array
for (var i = 0; i < 10; i++)
{
    global.score_array[i, 0] = "???";
	global.score_array[i, 1] = 0;
}

// Plays the looping background music
audio_play_sound(so_music, 50, true);

// Set custom cursor
cursor_sprite = s_cursor;

// Sends user to the menu (after boot screen)
room_goto(r_menu);