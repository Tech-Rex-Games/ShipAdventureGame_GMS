canDamage = false
if startDeath = false {
	audio_play_sound(s_crabDead,1,0)
}
startDeath = true
sprite_index = spr_crabDeath
alarm[0] = 3