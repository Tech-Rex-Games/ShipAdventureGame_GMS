if distance_to_object(obj_player) <= 14 && keyboard_check(ord("E")) && chestOpened = false {
	chestOpened = true
	instance_create_depth(x + 10, y + 5, -1, obj_FX_walkingDust)
	sprite_index = spr_chestOpen
	audio_play_sound(s_chestOpen,1,0)
	instance_create_depth(x - choose(32, -32), y + choose(32,64), -1, obj_coin)
	
	//50% Chance to Spawn 1 More Gold
	if choose(1,2) = 1 {
		instance_create_depth(x - choose(36, -36), y + choose(32,64), -1, obj_coin)
	}
	
	audio_play_sound(s_coinDrop,1,0)
}

//Playing Audio
if distance_to_object(obj_player) <= 14 && audio = true && chestOpened = false {
	audio = false
	audio_play_sound(s_alert,1,0)
}

if distance_to_object(obj_player) > 14 && audio = false && chestOpened = false {
	audio = true
	audio_play_sound(s_alertOff,1,0)
}