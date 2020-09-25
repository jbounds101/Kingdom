if not instance_exists(o_player) exit;
repeat(coin_count + round(random_range(0, o_player.level)))
{
	instance_create_layer(x+random_range(-4, 4), y+random_range(-4, 4), "Instances", o_coin);	
}