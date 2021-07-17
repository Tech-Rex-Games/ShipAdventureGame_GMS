draw_sprite_stretched(spr_FX_shadowBig,0,x, y + 75, 130, 40)
draw_self()

if distance_to_object(obj_player) <= 64{
	draw_sprite(spr_HUD_E,0,x + 65,y + 60)
}
