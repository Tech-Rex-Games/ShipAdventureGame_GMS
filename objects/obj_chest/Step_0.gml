if distance_to_object(obj_player) <= 32 && keyboard_check(ord("E")) && chestOpened = false {
	chestOpened = true
	instance_create_depth(x + 10, y + 5, -1, obj_FX_walkingDust)
	sprite_index = spr_chestOpen
	audio_play_sound(s_chestOpen,1,0)
	instance_create_depth(x - 10, y + 50, -1, obj_coin)
	audio_play_sound(s_coinDrop,1,0)
}