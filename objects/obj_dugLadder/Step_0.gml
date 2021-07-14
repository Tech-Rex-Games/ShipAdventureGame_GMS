if distance_to_object(obj_player) <= 14 && keyboard_check(ord("E")) && canEnter = true {
	audio_play_sound(s_woosh,0,0)
	room_goto(r_dungeon1)
}


//Playing Audio
if distance_to_object(obj_player) <= 8 && audio = true {
	audio = false
	audio_play_sound(s_alert,1,0)
}

if distance_to_object(obj_player) > 8 && audio = false {
	audio = true
	audio_play_sound(s_alertOff,1,0)
}