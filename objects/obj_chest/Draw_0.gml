draw_sprite(spr_FX_shadowBig,0,x + 5,y + 25)
draw_self()

if distance_to_object(obj_player) <= 14 && chestOpened = false {
	draw_sprite(spr_HUD_E,0,x,y - 20)
}