if distance_to_object(obj_player) <= 10 && keyboard_check(ord("E")) {
	audio_play_sound(s_woosh,1,0)
	room_goto(MapRoomTesting)
}