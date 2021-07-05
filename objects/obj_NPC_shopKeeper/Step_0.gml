if distance_to_object(obj_player) <= 32 && obj_player.y > y && keyboard_check(ord("E")) {

}


//Playing Audio
if distance_to_object(obj_player) <= 32 && obj_player.y > y && audio = true {
	audio = false
	audio_play_sound(s_alert,1,0)
}

if distance_to_object(obj_player) > 34 && audio = false {
	audio = true
	audio_play_sound(s_alertOff,1,0)
}