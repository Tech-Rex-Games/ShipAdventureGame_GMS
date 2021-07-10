if distance_to_object(obj_player) <= 14 && keyboard_check(ord("E")) && xOpened = false {
	xOpened = true
	instance_create_depth(x , y, -1, obj_FX_bigPoof)
	alarm[0] = 30
	sprite_index = spr_dugHole
	audio_play_sound(s_dig,1,0)
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

//Changing Depth
if !place_meeting(x,y,obj_tallGrass) && grassCovered = true {
	depth = -3
}