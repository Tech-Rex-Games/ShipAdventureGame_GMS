//Name Above Boat

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

//Player Sprite Overlay
//Right
if facing = 1 {
	draw_sprite(spr_FX_shadowMedium,0,x + 33,y + 78)
	draw_sprite(spr_swashbucklerIdleRight,0,x + 25,y + 54)
}
//Left
if facing = 2 {
	draw_sprite(spr_FX_shadowMedium,0,x + 113,y + 78)
	draw_sprite(player_idleLeft,0,x + 105,y + 54)
}
//Up
if facing = 3 {
	draw_sprite(spr_FX_shadowMedium,0,x + 73,y + 121)
	draw_sprite(player_idleUp,0,x + 65,y + 95)
}