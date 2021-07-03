//Test Remove Lives
if Lives > 0 {
	Lives -= 1
	audio_play_sound(s_lostLife,1,0)
	instance_create_depth(0,0,-10,obj_HUD_playerDamaged)
}