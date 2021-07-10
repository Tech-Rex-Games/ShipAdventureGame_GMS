if playAudio = true {
	playAudio = false
	audio_play_sound(s_cutGrass,0,0)
	solid = false
	sprite_index = spr_cutGrass
	
	//CutGrass Emitters
	global.pe_GrassBlade1 = part_emitter_create(global.ps);
	global.pe_GrassBlade2 = part_emitter_create(global.ps);

	//CutGrass emitter positions. Streaming or Bursting Particles.
	var xp, yp;
	xp = x;
	yp = y;
	part_emitter_region(global.ps, global.pe_GrassBlade2, xp + 16, xp + 16, yp, yp+16, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps, global.pe_GrassBlade2, global.pt_GrassBlade2, choose(2,6));
	part_emitter_region(global.ps, global.pe_GrassBlade1, xp + 16, xp+16, yp, yp+16, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps, global.pe_GrassBlade1, global.pt_GrassBlade1, choose(2,6));
}