//Drop Shadow
//Right
if facing = 1 {
	draw_sprite_stretched(spr_FX_shadowBig,0,x, y + 75, 130, 40)
}
//Left
if facing = 2 {
	draw_sprite_stretched(spr_FX_shadowBig,0,x + 17, y + 75, 130, 40)
}
//Up
if facing = 3 {
	draw_sprite_stretched(spr_FX_shadowBig,0,x + 48, y + 55, 60, 100)
}
//Down
if facing = 4 {
	draw_sprite_stretched(spr_FX_shadowBig,0,x + 48, y + 40, 60, 100)
}



draw_self()