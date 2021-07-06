if distance_to_object(obj_player) <= 14 && keyboard_check(ord("E")) && xOpened = false {
	xOpened = true
	instance_create_depth(x , y, -1, obj_FX_bigPoof)
	audio_play_sound(s_dig,1,0)
	instance_change(obj_dugLadder,true)
}


//Playing Audio
if distance_to_object(obj_player) <= 8 && audio = true && xOpened = false {
	audio = false
	audio_play_sound(s_alert,1,0)
}

if distance_to_object(obj_player) > 8 && audio = false && xOpened = false {
	audio = true
	audio_play_sound(s_alertOff,1,0)
}