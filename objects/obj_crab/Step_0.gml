if distance_to_object(obj_player) <= 64 && seenPlayer = false {
	seenPlayer = true
	sprite_index = spr_crabRun
	audio_play_sound(s_playerSpotted,1,0)
	instance_create_depth(x + 15,y - 3, -3, obj_FX_playerSpotted)
}

if seenPlayer = true && startDeath = false {
	mp_potential_step(obj_player.x,obj_player.y,.3,solid)
}

//Damaging the Player
if distance_to_object(obj_player) <= 1 && canDamage = true{
	audio_play_sound(s_lostLife,1,0)
	canDamage = false
	obj_controller.Lives -= 1
	instance_create_depth(0,0,-10,obj_HUD_playerDamaged)
	alarm[1] = 90
}