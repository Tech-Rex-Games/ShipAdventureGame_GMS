draw_sprite(spr_FX_shadowMedium,0,x + 8,y + 25)
draw_self()

if distance_to_object(obj_player) <= 32{
	draw_sprite(spr_HUD_E,0,x,y - 20)
}
