if distance_to_object(obj_player) <= 1 && E_HUD_exists = false {
	instance_create_depth(x,y-24,-2,obj_HUD_E)
	E_HUD_exists = true
	audio_play_sound(s_alert,1,0)
}

if distance_to_object(obj_player) > 10 && instance_exists(obj_HUD_E) {
	instance_destroy(obj_HUD_E,1)
	E_HUD_exists = false
	audio_play_sound(s_alertOff,1,0)
}