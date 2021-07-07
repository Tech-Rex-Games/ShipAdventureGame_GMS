if distance_to_object(obj_player) <= 64 && keyboard_check(ord("E")) {
	audio_play_sound(s_woosh,1,0)
	room_goto(MapRoomTesting)
}

//Playing Audio
if distance_to_object(obj_player) <= 64 && audio = true {
	audio = false
	audio_play_sound(s_alert,1,0)
}

if distance_to_object(obj_player) > 64 && audio = false {
	audio = true
	audio_play_sound(s_alertOff,1,0)
}