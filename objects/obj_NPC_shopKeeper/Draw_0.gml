draw_self()

if distance_to_object(obj_player) <= 8 && obj_player.y > y {
	draw_sprite(spr_HUD_E,0,x,y - 20)
}