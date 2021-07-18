//draw_sprite_stretched(spr_HUD_mapOutline,0,0,0,1920,1080)

if obj_boat.facing = 1 {
	draw_sprite_stretched(spr_compass,1,20,850,210,222)
}
else if obj_boat.facing = 2 {
	draw_sprite_stretched(spr_compass,0,20,850,210,222)
}
else if obj_boat.facing = 3 {
	draw_sprite_stretched(spr_compass,2,20,850,210,222)
}
else {
	draw_sprite_stretched(spr_compass,3,20,850,210,222)
}


